import java.io.*;
import java.nio.file.*;
import java.util.*;
import java.util.regex.*;
import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.instruction.ReferenceInstruction;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.reference.*;
import org.jf.dexlib2.iface.instruction.*;

public class CheckRefs {
    // 只检查 aoc 前缀的自定义类引用是否存在（第三方/系统类不查）
    static Set<String> defined = new HashSet<>();
    static Pattern AOC = Pattern.compile("Laoc/kingdoms/lukasz/.*;");
    static int bad = 0;

    public static void main(String[] args) throws Exception {
        String dexPath = args[0];
        DexFile dex = DexFileFactory.loadDexFile(new File(dexPath), Opcodes.forApi(30));
        for (ClassDef cls : dex.getClasses()) {
            if (cls.getType().startsWith("Laoc/")) defined.add(cls.getType());
        }
        for (ClassDef cls : dex.getClasses()) {
            if (!cls.getType().startsWith("Laoc/")) continue;
            checkClass(cls);
        }
        System.out.println("CHECKREFS: defined=" + defined.size() + " MISSING_CLASS=" + bad);
    }

    static void checkClass(ClassDef cls) {
        for (Method m : cls.getMethods()) {
            if (m.getImplementation() == null) continue;
            for (Instruction ins : m.getImplementation().getInstructions()) {
                if (ins instanceof ReferenceInstruction) {
                    Reference ref = ((ReferenceInstruction) ins).getReference();
                    if (ref instanceof MethodReference) {
                        checkType(((MethodReference) ref).getDefiningClass());
                    } else if (ref instanceof FieldReference) {
                        checkType(((FieldReference) ref).getDefiningClass());
                    } else if (ref instanceof TypeReference) {
                        checkType(((TypeReference) ref).getType());
                    }
                }
                // invoke-polymorphic 等无需处理
            }
        }
    }

    static void checkType(String type) {
        if (!AOC.matcher(type).matches()) return;
        if (!defined.contains(type)) {
            bad++;
            if (bad <= 20) System.out.println("MISSING_CLASS: " + type);
        }
    }
}