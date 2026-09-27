import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.instruction.formats.*;
import java.io.File;

public class DumpIns2 {
    public static void main(String[] args) throws Exception {
        DexFile df = DexFileFactory.loadDexFile(new File(args[0]), Opcodes.forApi(30));
        for (ClassDef c : df.getClasses()) {
            if (!c.getType().contains("ProvinceTouchExtraAction$23")) continue;
            for (Method m : c.getMethods()) {
                if (!m.getName().equals("extraAction")) continue;
                int acc = 0;
                for (Instruction ins : m.getImplementation().getInstructions()) {
                    String ex = "";
                    if (ins instanceof OneRegisterInstruction) ex += " v" + ((OneRegisterInstruction) ins).getRegisterA();
                    else if (ins instanceof TwoRegisterInstruction) ex += " v" + ((TwoRegisterInstruction) ins).getRegisterA() + ",v" + ((TwoRegisterInstruction) ins).getRegisterB();
                    else if (ins instanceof ThreeRegisterInstruction) ex += " v" + ((ThreeRegisterInstruction) ins).getRegisterA() + ",v" + ((ThreeRegisterInstruction) ins).getRegisterB() + ",v" + ((ThreeRegisterInstruction) ins).getRegisterC();
                    if (ins instanceof Instruction22t) ex += " ->*" + ((Instruction22t) ins).getCodeOffset();
                    if (ins instanceof Instruction20t) ex += " ->*" + ((Instruction20t) ins).getCodeOffset();
                    System.out.println("0x" + Integer.toHexString(acc) + " " + ins.getOpcode().name + ex);
                    acc += ins.getCodeUnits();
                }
            }
        }
    }
}