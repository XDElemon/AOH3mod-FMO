import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.reference.*;
import java.io.File;
public class DumpMeth {
    public static void main(String[] args) throws Exception {
        DexFile df = DexFileFactory.loadDexFile(new File(args[0]), Opcodes.forApi(30));
        for (ClassDef cd : df.getClasses()) {
            if (!cd.getType().equals(args[1])) continue;
            for (Method m : cd.getMethods()) {
                if (!m.getName().equals(args[2])) continue;
                MethodImplementation impl = m.getImplementation();
                int off = 0;
                for (Instruction insn : impl.getInstructions()) {
                    String extra = "";
                    if (insn instanceof ReferenceInstruction) {
                        Reference r = ((ReferenceInstruction) insn).getReference();
                        extra = " " + r.toString();
                    }
                    System.out.println(String.format("%04x: %s%s", off, insn.getOpcode().name, extra));
                    off += insn.getCodeUnits();
                }
            }
        }
    }
}