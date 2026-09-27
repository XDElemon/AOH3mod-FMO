import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.reference.*;
import java.io.File;
import java.util.*;

/** 精确悬空引用扫描 v2：
 *  对每个 invoke 的目标类 T，沿 T → 父类 → 接口 的继承链（仅在 dex 内）查方法是否被定义。
 *  链一旦走出 dex（JDK / gdx 等），标记为 UNKNOWN 跳过，避免误报。 */
public class ProbeDangling2 {
    static Map<String, ClassDef> defs = new HashMap<>();

    public static void main(String[] args) throws Exception {
        int limit = args.length > 1 ? Integer.parseInt(args[1]) : 60;
        DexFile df = DexFileFactory.loadDexFile(new File(args[0]), Opcodes.forApi(30));
        for (ClassDef cd : df.getClasses()) defs.put(cd.getType(), cd);

        int bad = 0, chk = 0, unk = 0;
        Map<String, Integer> byTarget = new TreeMap<>();
        for (ClassDef cd : df.getClasses()) {
            for (Method m : cd.getMethods()) {
                MethodImplementation impl = m.getImplementation();
                if (impl == null) continue;
                for (Instruction insn : impl.getInstructions()) {
                    if (!(insn instanceof ReferenceInstruction)) continue;
                    Reference r = ((ReferenceInstruction) insn).getReference();
                    if (!(r instanceof MethodReference)) continue;
                    MethodReference mr = (MethodReference) r;
                    String T = mr.getDefiningClass();
                    if (!T.startsWith("Laoc/kingdoms/lukasz/")) continue;
                    chk++;
                    Boolean ok = resolves(T, mr.getName(), mr.getParameterTypes());
                    if (ok == null) { unk++; continue; }
                    if (!ok) {
                        bad++;
                        String tag = T + "->" + mr.getName() + "(" + join(mr.getParameterTypes()) + ")";
                        byTarget.put(tag, byTarget.getOrDefault(tag, 0) + 1);
                        if (bad <= limit)
                            System.out.println("DANGLING " + cd.getType() + "." + m.getName() + "  ->  " + tag);
                    }
                }
            }
        }
        System.out.println("--- 按目标归并（次数）---");
        for (Map.Entry<String, Integer> e : byTarget.entrySet())
            System.out.println("  " + e.getValue() + "x  " + e.getKey());
        System.out.println("SCAN checked=" + chk + " DANGLING=" + bad + " SKIP_OUT_OF_DEX=" + unk);
    }

    /** true=在 dex 内的继承链上找到, false=在 dex 内链上找不到（=悬空，调用方要靠 dex 外的父类才可能解析） */
    static Boolean resolves(String t, String name, Collection<? extends CharSequence> ps) {
        Deque<String> q = new ArrayDeque<>();
        Set<String> seen = new HashSet<>();
        q.add(t);
        while (!q.isEmpty()) {
            String c = q.poll();
            if (!seen.add(c)) continue;
            ClassDef cd = defs.get(c);
            if (cd == null) continue;          // 走出 dex：不算数，继续看别的分支
            for (Method m : cd.getMethods())
                if (m.getName().equals(name) && join(m.getParameterTypes()).equals(join(ps))) return true;
            if (cd.getSuperclass() != null) q.add(cd.getSuperclass());
            for (String i : cd.getInterfaces()) q.add(i);
        }
        return Boolean.FALSE;
    }

    static String join(Collection<? extends CharSequence> ps) {
        StringBuilder sb = new StringBuilder();
        for (CharSequence p : ps) sb.append(p);
        return sb.toString();
    }
}