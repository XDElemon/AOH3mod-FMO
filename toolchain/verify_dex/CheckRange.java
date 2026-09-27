import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.instruction.formats.*;
import org.jf.dexlib2.iface.reference.*;
import java.io.File;
import java.util.*;

public class CheckRange {
    static int slots(List<? extends CharSequence> types, boolean isStatic) {
        int n = isStatic ? 0 : 1;
        for (CharSequence t : types) { String ts = t.toString(); n += (ts.equals("J") || ts.equals("D")) ? 2 : 1; }
        return n;
    }
    public static void main(String[] args) throws Exception {
        DexFile df = DexFileFactory.loadDexFile(new File(args[0]), Opcodes.forApi(30));
        int totalBad = 0;
        Map<String, Integer> accessMap = new HashMap<>();
        for (ClassDef cd0 : df.getClasses()) {
            for (Method m0 : cd0.getMethods()) {
                accessMap.put(cd0.getType() + "->" + m0.getName() + m0.getParameterTypes().toString(), m0.getAccessFlags());
            }
        }
        for (ClassDef cd : df.getClasses()) {
            if (!cd.getType().startsWith("Laoc/kingdoms/lukasz/")) continue;
            for (Method m : cd.getMethods()) {
                MethodImplementation impl = m.getImplementation();
                if (impl == null) continue;
                for (Instruction insn : impl.getInstructions()) {
                    if (insn.getOpcode().name.startsWith("INVOKE")) {
                        Reference ref = ((ReferenceInstruction) insn).getReference();
                        if (!(ref instanceof MethodReference)) continue;
                        MethodReference mr = (MethodReference) ref;
                        int regCount;
                        if (insn.getOpcode().name.contains("RANGE")) {
                            RegisterRangeInstruction r = (RegisterRangeInstruction) insn;
                            regCount = r.getRegisterCount();
                        } else {
                            FiveRegisterInstruction f = (FiveRegisterInstruction) insn;
                            regCount = f.getRegisterCount();
                        }
                        Integer f = accessMap.get(mr.getDefiningClass() + "->" + mr.getName() + mr.getParameterTypes().toString());
                        boolean isStatic = (f != null) ? ((f & 0x8) != 0) : false;
                        int slots = slots(mr.getParameterTypes(), isStatic);
                        if (regCount != slots) {
                            totalBad++;
                            System.out.println("BAD: " + cd.getType() + "->" + m.getName() + " insn=" + insn.getOpcode().name + " regs=" + regCount + " sigSlots=" + slots + " target=" + mr.getDefiningClass() + "->" + mr.getName() + mr.getParameterTypes());
                        }
                    }
                }
            }
        }
        System.out.println("TOTAL REG BAD: " + totalBad);
    }
}
