import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.instruction.formats.*;
import java.io.File;
public class DumpRegs {
    public static void main(String[] a) throws Exception {
        DexFile df = DexFileFactory.loadDexFile(new File(a[0]), Opcodes.forApi(30));
        for (ClassDef cd : df.getClasses()) {
            if (!cd.getType().equals(a[1])) continue;
            for (Method m : cd.getMethods()) {
                if (!m.getName().equals(a[2])) continue;
                System.out.println("== "+m.getName()+m.getParameterTypes()+" registers="+m.getImplementation().getRegisterCount());
                int off=0;
                for (Instruction ins : m.getImplementation().getInstructions()) {
                    StringBuilder sb=new StringBuilder(String.format("%04x: %s", off, ins.getOpcode().name));
                    if (ins instanceof OneRegisterInstruction) sb.append(" v"+((OneRegisterInstruction)ins).getRegisterA());
                    if (ins instanceof TwoRegisterInstruction) sb.append(" v"+((TwoRegisterInstruction)ins).getRegisterA()+",v"+((TwoRegisterInstruction)ins).getRegisterB());
                    if (ins instanceof ThreeRegisterInstruction) sb.append(" v"+((ThreeRegisterInstruction)ins).getRegisterA()+",v"+((ThreeRegisterInstruction)ins).getRegisterB()+",v"+((ThreeRegisterInstruction)ins).getRegisterC());
                    if (ins instanceof Instruction35c) { Instruction35c i=(Instruction35c)ins; sb.append(" {"+i.getRegisterC()+","+i.getRegisterD()+","+i.getRegisterE()+","+i.getRegisterF()+","+i.getRegisterG()+"} n="+i.getRegisterCount()); }
                    System.out.println(sb);
                    off+=ins.getCodeUnits();
                }
            }
        }
    }
}
