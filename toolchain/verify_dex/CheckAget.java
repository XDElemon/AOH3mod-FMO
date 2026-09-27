import java.io.*;
import java.util.*;
import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.instruction.formats.*;

public class CheckAget {
    // 检查：aget-object 的数组源寄存器，若在指令流中被 const/const-string 赋值（无其它对象赋值覆盖）→ 疑似非数组被 aget（ART VerifyError 类型）
    static int bad = 0;

    public static void main(String[] args) throws Exception {
        DexFile dex = DexFileFactory.loadDexFile(new File(args[0]), Opcodes.forApi(30));
        for (ClassDef cls : dex.getClasses()) {
            if (!cls.getType().startsWith("Laoc/")) continue;
            for (Method m : cls.getMethods()) {
                if (m.getImplementation() == null) continue;
                checkMethod(cls.getType(), m);
            }
        }
        System.out.println("CHECKAGET: BAD=" + bad);
    }

    static void checkMethod(String clsType, Method m) {
        Iterable<? extends Instruction> it = m.getImplementation().getInstructions();
        Map<Integer, Integer> regType = new HashMap<>(); // 0=unk,1=const-string,2=const(数字/短常量),3=new-instance(对象)
        for (Instruction ins : it) {
            String op = ins.getOpcode().name;
            if (op.equals("CONST_STRING") || op.equals("CONST_STRING_JUMBO")) {
                regType.put(((OneRegisterInstruction) ins).getRegisterA(), 1);
            } else if (op.equals("CONST") || op.equals("CONST_4") || op.equals("CONST_16") || op.equals("CONST_HIGH16") || op.equals("CONST_WIDE") || op.equals("CONST_WIDE_16") || op.equals("CONST_WIDE_32") || op.equals("CONST_WIDE_HIGH16")) {
                if (ins instanceof OneRegisterInstruction) {
                    regType.put(((OneRegisterInstruction) ins).getRegisterA(), 2);
                }
            } else if (op.equals("NEW_INSTANCE")) {
                regType.put(((OneRegisterInstruction) ins).getRegisterA(), 3);
            } else if (op.equals("AGET_OBJECT")) {
                ThreeRegisterInstruction f = (ThreeRegisterInstruction) ins;
                Integer src = regType.get(f.getRegisterB());
                if (src != null && (src == 1 || src == 2)) {
                    bad++;
                    if (bad <= 20) {
                        System.out.println("BAD_AGET: " + clsType + "->" + m.getName() + " reg v" + f.getRegisterB() + " type=" + src);
                    }
                }
            }
        }
    }
}