import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.instruction.formats.*;
import org.jf.dexlib2.iface.reference.*;
import java.io.File;

/**
 * CheckCast —— 第六道防线：寄存器类型流检查
 * 抓错模式：move-result-object / const-string 写入的寄存器（Object 或具体类型如 String），
 *           未经 check-cast 直接 iget/iput 具体类字段 或 invoke 具体类方法 → ART VerifyError
 * 保守规则（防误报）：
 *   1) IGET/IPUT：源寄存器类型==Ljava/lang/Object; 且字段声明类!=Object → BAD
 *   2) IGET/IPUT：源寄存器类型==Ljava/lang/String;（任意字段）→ BAD（v119 实证案例）
 *   3) INVOKE*（非static）：receiver 寄存器==Object 或 ==String 且方法声明类!=Object/String → BAD
 *   4) 其余一律放行（未知/父类/宽类型 不报）
 */
public class CheckCast {
    static final String OBJECT = "Ljava/lang/Object;";
    static final String STRING = "Ljava/lang/String;";
    static String[] regs;
    static int bad = 0;
    static String curCls = "", curMth = "";
    static String target = "";
    static String lastInvokeRet = null;

    public static void main(String[] args) throws Exception {
        if (args.length > 1) target = args[1];
        DexFile df = DexFileFactory.loadDexFile(new File(args[0]), Opcodes.forApi(30));
        for (ClassDef cd : df.getClasses()) {
            for (Method m : cd.getMethods()) {
                MethodImplementation impl = m.getImplementation();
                if (impl == null) continue;
                curCls = cd.getType();
                curMth = m.getName();
                regs = new String[impl.getRegisterCount()];
                lastInvokeRet = null;
                for (Instruction insn : impl.getInstructions()) {
                    process(insn);
                }
            }
        }
        System.out.println("TYPE-FLOW BAD: " + bad);
    }

    static void process(Instruction insn) {
        String op = insn.getOpcode().name;

        if (op.startsWith("invoke")) {
            Reference ref = ((ReferenceInstruction) insn).getReference();
            if (ref instanceof MethodReference) {
                MethodReference mr = (MethodReference) ref;
                lastInvokeRet = mr.getReturnType();
                if (!op.contains("static")) {
                    int firstReg = -1;
                    if (insn instanceof FiveRegisterInstruction) {
                        firstReg = ((FiveRegisterInstruction) insn).getRegisterC();
                    } else if (insn instanceof RegisterRangeInstruction) {
                        firstReg = ((RegisterRangeInstruction) insn).getStartRegister();
                    }
                    if (target.length() > 0 && curCls.contains(target) && firstReg >= 0 && firstReg < regs.length
                            && (OBJECT.equals(regs[firstReg]) || STRING.equals(regs[firstReg]))
                            && !OBJECT.equals(mr.getDefiningClass()) && !STRING.equals(mr.getDefiningClass())) {
                        bad++;
                        System.out.println(String.format("BAD invoke: %s->%s %s.%s recv=%s",
                                curCls, curMth, mr.getDefiningClass(), mr.getName(), regs[firstReg]));
                    }
                }
            }
            return;
        }

        switch (op) {
            case "move-result-object": {
                int v = ((OneRegisterInstruction) insn).getRegisterA();
                regs[v] = (lastInvokeRet == null) ? OBJECT : lastInvokeRet;
                lastInvokeRet = null;
                break;
            }
            case "move-result": {
                int v = ((OneRegisterInstruction) insn).getRegisterA();
                regs[v] = null;
                lastInvokeRet = null;
                break;
            }
            case "new-instance": {
                int v = ((OneRegisterInstruction) insn).getRegisterA();
                regs[v] = ((TypeReference) ((ReferenceInstruction) insn).getReference()).getType();
                break;
            }
            case "const-string": case "const-string/jumbo": {
                int v = ((OneRegisterInstruction) insn).getRegisterA();
                regs[v] = STRING;
                break;
            }
            case "check-cast": {
                Reference ref = ((ReferenceInstruction) insn).getReference();
                int v = ((OneRegisterInstruction) insn).getRegisterA();
                regs[v] = (ref instanceof StringReference) ? ((StringReference) ref).getString() : null;
                break;
            }
            case "move-object": case "move-object/from16": case "move-object/16": {
                int a = ((TwoRegisterInstruction) insn).getRegisterA();
                int b = ((TwoRegisterInstruction) insn).getRegisterB();
                regs[a] = regs[b];
                break;
            }
            default: {
                if (op.startsWith("iget") || op.startsWith("iput")) {
                    int vS = ((TwoRegisterInstruction) insn).getRegisterB();
                    Reference ref = ((ReferenceInstruction) insn).getReference();
                    if (ref instanceof FieldReference) {
                        FieldReference fr = (FieldReference) ref;
                        if (target.length() > 0 && curCls.contains(target) && vS >= 0 && vS < regs.length
                                && (OBJECT.equals(regs[vS]) || STRING.equals(regs[vS]))
                                && !OBJECT.equals(fr.getDefiningClass()) && !STRING.equals(fr.getDefiningClass())) {
                            bad++;
                            System.out.println(String.format("BAD field: %s->%s %s.%s recv=%s",
                                    curCls, curMth, fr.getDefiningClass(), fr.getName(), regs[vS]));
                        }
                        // 读字段后写回寄存器类型(iget-object=字段类型; iget*=基本类型)
                        if (op.startsWith("iget")) {
                            int vD = ((TwoRegisterInstruction) insn).getRegisterA();
                            if (op.startsWith("iget-object")) {
                                regs[vD] = fr.getType();
                            } else {
                                regs[vD] = null;
                            }
                        }
                    }
                } else if (op.startsWith("sget-object")) {
                    // 精确追踪字段类型, 消除残留标记
                    Reference ref = ((ReferenceInstruction) insn).getReference();
                    if (ref instanceof FieldReference) {
                        int v = ((OneRegisterInstruction) insn).getRegisterA();
                        regs[v] = ((FieldReference) ref).getType();
                    }
                } else if (op.startsWith("sget") || op.startsWith("const") || op.startsWith("aget")) {
                    // 基本类型/未知 -> 清除标记(不报)
                    int v = ((OneRegisterInstruction) insn).getRegisterA();
                    regs[v] = null;
                } else if (op.startsWith("move") ) {
                    // 非对象 move -> 清除标记; move-object 系列已在上面单列
                    if (op.equals("move") || op.equals("move/from16") || op.equals("move/16")) {
                        int a = ((TwoRegisterInstruction) insn).getRegisterA();
                        regs[a] = null;
                    }
                }
                break;
            }
        }
    }
}