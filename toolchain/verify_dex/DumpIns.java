import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.instruction.formats.*;
import java.io.File;

public class DumpIns {
    public static void main(String[] args) throws Exception {
        DexFile df = DexFileFactory.loadDexFile(new File(args[0]), Opcodes.forApi(30));
        for (ClassDef c : df.getClasses()) {
            if (!c.getType().contains("ProvinceTouchExtraAction$23")) continue;
            for (Method m : c.getMethods()) {
                if (!m.getName().equals("extraAction")) continue;
                int acc = 0;
                for (Instruction ins : m.getImplementation().getInstructions()) {
                    String extra = "";
                    if (ins instanceof Instruction21t) extra = " v" + ((Instruction21t) ins).getRegisterA() + " -> 0x" + Integer.toHexString(((Instruction21t) ins).getCodeOffset());
                    if (ins instanceof Instruction22t) extra = " v" + ((Instruction22t) ins).getRegisterA() + " -> 0x" + Integer.toHexString(((Instruction22t) ins).getCodeOffset());
                    if (ins instanceof Instruction20t) extra = " -> 0x" + Integer.toHexString(((Instruction20t) ins).getCodeOffset());
                    System.out.println("0x" + Integer.toHexString(acc) + " " + ins.getOpcode().name + extra);
                    acc += ins.getCodeUnits();
                }
            }
        }
    }
}