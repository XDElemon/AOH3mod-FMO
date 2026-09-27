import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.reference.*;
import java.io.File;

public class ProbeCalls {
    public static void main(String[] a) throws Exception {
        DexFile df = DexFileFactory.loadDexFile(new File(a[0]), Opcodes.forApi(30));
        String cls = a[1], pat = a[2];
        for (ClassDef cd : df.getClasses()) {
            if (!cd.getType().equals(cls)) continue;
            for (Method m : cd.getMethods()) {
                MethodImplementation impl = m.getImplementation();
                if (impl == null) continue;
                for (Instruction insn : impl.getInstructions()) {
                    if (!(insn instanceof ReferenceInstruction)) continue;
                    Reference r = ((ReferenceInstruction) insn).getReference();
                    if (!(r instanceof MethodReference)) continue;
                    MethodReference mr = (MethodReference) r;
                    String s = mr.getDefiningClass() + "->" + mr.getName();
                    if (s.contains(pat)) {
                        System.out.println("CALL in " + m.getName() + " -> " + s + " params=" + mr.getParameterTypes().size() + " ret=" + mr.getReturnType());
                    }
                }
            }
        }
    }
}