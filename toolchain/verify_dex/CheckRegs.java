import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.instruction.formats.*;
import org.jf.dexlib2.iface.reference.*;
import java.io.File;
import java.util.*;
public class CheckRegs {
    public static void main(String[] args) throws Exception {
        DexFile df = DexFileFactory.loadDexFile(new File(args[0]), Opcodes.forApi(30));
        // 收集所有已定义方法签名（含 static 标记）
        Set<String> defined = new HashSet<>();
        for (ClassDef cd : df.getClasses()) {
            for (Method m : cd.getMethods()) {
                String sig = m.getDefiningClass() + "->" + m.getName() + m.getParameterTypes().toString() + "/" + m.getAccessFlags();
                defined.add(m.getDefiningClass() + "->" + m.getName() + m.getParameterTypes().toString());
            }
        }
        int totalBad = 0;
        for (ClassDef cd : df.getClasses()) {
            if (!cd.getType().startsWith("Laoc/kingdoms/lukasz/")) continue;
            for (Method m : cd.getMethods()) {
                MethodImplementation impl = m.getImplementation();
                if (impl == null) continue;
                int off = 0;
                for (Instruction insn : impl.getInstructions()) {
                    if (insn.getOpcode().name.startsWith("INVOKE") && !insn.getOpcode().name.contains("RANGE")) {
                        FiveRegisterInstruction f = (FiveRegisterInstruction) insn;
                        int regCount = f.getRegisterCount();
                        Reference ref = ((ReferenceInstruction) insn).getReference();
                        if (!(ref instanceof MethodReference)) { off += insn.getCodeUnits(); continue; }
                        MethodReference mr = (MethodReference) ref;
                        int exp = 0;
                        for (CharSequence t : mr.getParameterTypes()) { exp += (t.toString().equals("J") || t.toString().equals("D")) ? 2 : 1; }
                        if (!insn.getOpcode().name.contains("STATIC")) exp += 1;
                        if (regCount != exp) {
                            System.out.println("REGBAD " + cd.getType() + "." + m.getName() + " @0x" + Integer.toHexString(off) + " " + insn.getOpcode().name + " regs=" + regCount + " exp=" + exp + " -> " + mr.getDefiningClass() + "->" + mr.getName() + mr.getParameterTypes().toString());
                            totalBad++;
                        }
                    }
                    off += insn.getCodeUnits();
                }
            }
        }
        System.out.println("TOTAL REG BAD: " + totalBad);
    }
}
