import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.instruction.formats.*;
import org.jf.dexlib2.iface.reference.*;
import java.io.File;
public class TypeTrace {
    public static void main(String[] a) throws Exception {
        DexFile df = DexFileFactory.loadDexFile(new File(a[0]), Opcodes.forApi(30));
        for (ClassDef cd : df.getClasses()) {
            if (!cd.getType().equals(a[1])) continue;
            for (Method m : cd.getMethods()) {
                if (!m.getName().equals(a[2])) continue;
                MethodImplementation impl = m.getImplementation();
                for (Instruction insn : impl.getInstructions()) {
                    String op = insn.getOpcode().name;
                    if (op.equals("MOVE_RESULT_OBJECT")) {
                        System.out.println(op + " A=" + ((OneRegisterInstruction) insn).getRegisterA());
                    } else if (op.equals("IGET") || op.equals("IGET_OBJECT") || op.equals("IGET_FLOAT")) {
                        int b = ((TwoRegisterInstruction) insn).getRegisterB();
                        System.out.println(op + " B=" + b + " ref=" + ((ReferenceInstruction) insn).getReference());
                    } else if (op.startsWith("INVOKE")) {
                        System.out.println(op + " ref=" + ((ReferenceInstruction) insn).getReference());
                    }
                }
            }
        }
    }
}
