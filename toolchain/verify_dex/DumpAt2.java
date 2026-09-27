import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.reference.*;
import java.io.File;
public class DumpAt2 {
    public static void main(String[] args) throws Exception {
        DexFile df = DexFileFactory.loadDexFile(new File(args[0]), Opcodes.forApi(30));
        for (ClassDef cd : df.getClasses()) {
            if (!cd.getType().equals("Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;")) continue;
            for (Method m : cd.getMethods()) {
                if (!m.getName().equals("<init>")) continue;
                MethodImplementation impl = m.getImplementation();
                int off = 0;
                for (Instruction insn : impl.getInstructions()) {
                    if (off >= 0x500 && off <= 0x560) {
                        String extra = "";
                        if (insn instanceof org.jf.dexlib2.iface.instruction.ReferenceInstruction) {
                            Reference r = ((org.jf.dexlib2.iface.instruction.ReferenceInstruction) insn).getReference();
                            extra = " REF=" + r;
                        }
                        System.out.println(String.format("%04x: %s%s", off, insn.getOpcode().name, extra));
                    }
                    off += insn.getCodeUnits();
                }
            }
        }
    }
}
