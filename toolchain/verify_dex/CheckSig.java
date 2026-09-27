import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.reference.*;
import java.io.File;
import java.util.*;
public class CheckSig {
    static Set<String> names = new HashSet<>();
    public static void main(String[] args) throws Exception {
        DexFile df = DexFileFactory.loadDexFile(new File(args[0]), Opcodes.forApi(30));
        for (ClassDef cd : df.getClasses()) {
            for (Method m : cd.getMethods()) {
                names.add(m.getName() + "(" + m.getParameterTypes().size() + ")");
            }
        }
        int bad = 0; int checked = 0;
        for (ClassDef cd : df.getClasses()) {
            for (Method m : cd.getMethods()) {
                MethodImplementation impl = m.getImplementation();
                if (impl == null) continue;
                for (Instruction insn : impl.getInstructions()) {
                    if (!(insn instanceof ReferenceInstruction)) continue;
                    Reference r = ((ReferenceInstruction) insn).getReference();
                    if (!(r instanceof MethodReference)) continue;
                    MethodReference mr = (MethodReference) r;
                    if (!mr.getDefiningClass().startsWith("Laoc/kingdoms/lukasz/")) continue;
                    checked++;
                    String key = mr.getName() + "(" + mr.getParameterTypes().size() + ")";
                    if (mr.getName().equals("ordinal") || mr.getName().equals("valueOf") || mr.getName().equals("values")) continue;
                    if (!names.contains(key)) {
                        System.out.println("MISSING: " + cd.getType() + " -> " + mr.getDefiningClass() + ":" + key);
                        bad++;
                        if (bad > 20) { System.out.println("...truncated"); return; }
                    }
                }
            }
        }
        System.out.println("SIG CHECKS: " + checked + " MISSING: " + bad);
    }
}
