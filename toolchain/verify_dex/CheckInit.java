import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.instruction.formats.*;
import org.jf.dexlib2.iface.reference.*;
import org.jf.dexlib2.iface.instruction.*;
import java.io.File;
import java.util.*;
public class CheckInit {
    public static void main(String[] args) throws Exception {
        DexFile df = DexFileFactory.loadDexFile(new File(args[0]), Opcodes.forApi(30));
        int total = 0;
        for (ClassDef cd : df.getClasses()) {
            if (!cd.getType().startsWith("Laoc/kingdoms/lukasz/")) continue;
            for (Method m : cd.getMethods()) {
                MethodImplementation impl = m.getImplementation();
                if (impl == null) continue;
                Map<Integer, String> news = new HashMap<>();
                int off = 0;
                for (Instruction insn : impl.getInstructions()) {
                    String op = insn.getOpcode().name;
                    // 简化：manual scan variants via instanceof
                    if (insn instanceof org.jf.dexlib2.iface.instruction.formats.Instruction21c) {
                        Instruction21c i21 = (Instruction21c) insn;
                        if (op.equals("NEW_INSTANCE")) {
                            news.put(i21.getRegisterA(), ((TypeReference)((ReferenceInstruction)insn).getReference()).getType());
                        } else {
                            news.remove(i21.getRegisterA());
                        }
                    } else if (insn instanceof org.jf.dexlib2.iface.instruction.formats.Instruction22c) {
                        Instruction22c i22 = (Instruction22c) insn;
                        news.remove(i22.getRegisterA());
                    } else if (insn instanceof org.jf.dexlib2.iface.instruction.formats.Instruction35c) {
                        Instruction35c i35 = (Instruction35c) insn;
                        if (i35.getRegisterCount() > 0) {
                            int r0 = i35.getRegisterC();
                            Reference ref = ((ReferenceInstruction) insn).getReference();
                            if (ref instanceof MethodReference) {
                                MethodReference mr = (MethodReference) ref;
                                if (mr.getName().equals("<init>")) {
                                    String cur = news.get(r0);
                                    String tgt = mr.getDefiningClass();
                                    if (cur != null) {
                                        if (!cur.equals(tgt)) {
                                            System.out.println("INITBAD " + cd.getType() + "." + m.getName() + " @0x" + Integer.toHexString(off) + " new=" + cur + " invoke=" + tgt);
                                            total++;
                                        }
                                    } else {
                                        // 未跟踪到 new：非致命（可能 move 等），仅统计
                                    }
                                }
                            }
                        }
                    } else if (insn instanceof org.jf.dexlib2.iface.instruction.formats.Instruction3rc) {
                        Instruction3rc i3 = (Instruction3rc) insn;
                        int r0 = i3.getStartRegister();
                        Reference ref = ((ReferenceInstruction) insn).getReference();
                        if (ref instanceof MethodReference) {
                            MethodReference mr = (MethodReference) ref;
                            if (mr.getName().equals("<init>")) {
                                String cur = news.get(r0);
                                String tgt = mr.getDefiningClass();
                                if (cur != null && !cur.equals(tgt)) {
                                    System.out.println("INITBAD " + cd.getType() + "." + m.getName() + " @0x" + Integer.toHexString(off) + " new=" + cur + " invoke=" + tgt);
                                    total++;
                                }
                            }
                        }
                    } else if (insn instanceof org.jf.dexlib2.iface.instruction.formats.Instruction22x) {
                        Instruction22x i22 = (Instruction22x) insn;
                        news.remove(i22.getRegisterA());
                    } else if (insn instanceof org.jf.dexlib2.iface.instruction.formats.Instruction31i) {
                        Instruction31i i31 = (Instruction31i) insn;
                        news.remove(i31.getRegisterA());
                    } else if (insn instanceof org.jf.dexlib2.iface.instruction.formats.Instruction21s) {
                        Instruction21s i21 = (Instruction21s) insn;
                        news.remove(i21.getRegisterA());
                    } else if (insn instanceof org.jf.dexlib2.iface.instruction.formats.Instruction11x) {
                        Instruction11x i11 = (Instruction11x) insn;
                        news.remove(i11.getRegisterA());
                    } else if (insn instanceof org.jf.dexlib2.iface.instruction.formats.Instruction12x) {
                        Instruction12x i12 = (Instruction12x) insn;
                        news.remove(i12.getRegisterA());
                    } else if (insn instanceof org.jf.dexlib2.iface.instruction.formats.Instruction23x) {
                        Instruction23x i23 = (Instruction23x) insn;
                        news.remove(i23.getRegisterA());
                    } else if (insn instanceof org.jf.dexlib2.iface.instruction.formats.Instruction10x) {
                        // gotos: 保守清空
                        news.clear();
                    }
                    off += insn.getCodeUnits();
                }
            }
        }
        System.out.println("TOTAL INIT BAD: " + total);
    }
}
