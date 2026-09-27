import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.instruction.formats.*;
import org.jf.dexlib2.iface.reference.*;
import java.io.File;
import java.util.*;

public class CheckInvoke {
    static int wideRegs(String[] types) {
        int n = 0;
        for (String t : types) { n += (t.equals("J") || t.equals("D")) ? 2 : 1; }
        return n;
    }
    public static void main(String[] args) throws Exception {
        DexFile df = DexFileFactory.loadDexFile(new File(args[0]), Opcodes.forApi(30));
        int totalBad = 0;
        for (ClassDef cd : df.getClasses()) {
            if (!cd.getType().equals("Laoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager;")) continue;
            for (Method m : cd.getMethods()) {
                if (!m.getName().equals("loadSave_Airforce")) continue;
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
                            System.out.println("BAD@0x" + Integer.toHexString(off) + " " + insn.getOpcode() + " regs=" + regCount + " exp=" + exp + " -> " + mr.getDefiningClass() + "->" + mr.getName() + mr.getParameterTypes());
                            totalBad++;
                        }
                    }
                    off += insn.getCodeUnits();
                }
            }
        }
        System.out.println("TOTAL BAD: " + totalBad);
    }
}
