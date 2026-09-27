import org.jf.dexlib2.*;
import org.jf.dexlib2.dexbacked.DexBackedDexFile;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import java.io.*;
public class Dump4 {
    public static void main(String[] args) throws Exception {
        DexBackedDexFile df = DexFileFactory.loadDexFile(new File(args[0]), Opcodes.forApi(30));
        for (ClassDef cd : df.getClasses()) {
            if (!cd.getType().equals(args[1])) continue;
            for (Method m : cd.getMethods()) {
                if (!m.getName().equals(args[2])) continue;
                MethodImplementation impl = m.getImplementation();
                int addr = 0;
                for (Instruction ins : impl.getInstructions()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(String.format("%04x: %s", addr, ins.getOpcode().name));
                    if (ins instanceof RegisterRangeInstruction) {
                        RegisterRangeInstruction r = (RegisterRangeInstruction) ins;
                        sb.append(" v"+r.getStartRegister()+".."+(r.getStartRegister()+r.getRegisterCount()-1));
                    } else if (ins instanceof ThreeRegisterInstruction) {
                        ThreeRegisterInstruction r = (ThreeRegisterInstruction) ins;
                        sb.append(" v"+r.getRegisterA()+",v"+r.getRegisterB()+",v"+r.getRegisterC());
                    } else if (ins instanceof TwoRegisterInstruction) {
                        TwoRegisterInstruction r = (TwoRegisterInstruction) ins;
                        sb.append(" v"+r.getRegisterA()+",v"+r.getRegisterB());
                    } else if (ins instanceof OneRegisterInstruction) {
                        OneRegisterInstruction r = (OneRegisterInstruction) ins;
                        sb.append(" v"+r.getRegisterA());
                    }
                    if (ins instanceof OffsetInstruction) {
                        int t = addr + ((OffsetInstruction) ins).getCodeOffset();
                        sb.append(" -> "+String.format("%04x", t));
                    }
                    System.out.println(sb.toString());
                    addr += ins.getCodeUnits();
                }
                System.out.println("-- end "+String.format("%04x",addr));
            }
        }
    }
}
