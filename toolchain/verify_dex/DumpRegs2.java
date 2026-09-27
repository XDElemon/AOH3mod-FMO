import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.instruction.formats.*;
import org.jf.dexlib2.iface.reference.*;
import java.io.File;

// 打印某方法全部指令 + 实际跳转目标 + 字面量 + 【寄存器操作数】
// 用途：抓 ART 级 VerifyError（例如把对象寄存器当临时寄存器覆盖 → "non-reference type"）
public class DumpRegs2 {
    static String regs(Instruction in) {
        try {
            if (in instanceof FiveRegisterInstruction) {
                FiveRegisterInstruction f = (FiveRegisterInstruction) in;
                int n = f.getRegisterCount();
                int[] r = {f.getRegisterC(), f.getRegisterD(), f.getRegisterE(), f.getRegisterF(), f.getRegisterG()};
                StringBuilder sb = new StringBuilder(" {");
                for (int i = 0; i < n; i++) { if (i > 0) sb.append(", "); sb.append("v").append(r[i]); }
                return sb.append("}").toString();
            } else if (in instanceof ThreeRegisterInstruction) {
                ThreeRegisterInstruction f = (ThreeRegisterInstruction) in;
                return " {v" + f.getRegisterA() + ", v" + f.getRegisterB() + ", v" + f.getRegisterC() + "}";
            } else if (in instanceof TwoRegisterInstruction) {
                TwoRegisterInstruction f = (TwoRegisterInstruction) in;
                return " {v" + f.getRegisterA() + ", v" + f.getRegisterB() + "}";
            } else if (in instanceof OneRegisterInstruction) {
                return " {v" + ((OneRegisterInstruction) in).getRegisterA() + "}";
            } else if (in instanceof RegisterRangeInstruction) {
                return " [v" + ((RegisterRangeInstruction) in).getStartRegister() + " .. +" + ((RegisterRangeInstruction) in).getRegisterCount() + "]";
            }
        } catch (Throwable t) { return " {?}"; }
        return "";
    }

    public static void main(String[] a) throws Exception {
        DexFile df = DexFileFactory.loadDexFile(new File(a[0]), Opcodes.forApi(30));
        for (ClassDef cd : df.getClasses()) {
            if (!cd.getType().equals(a[1])) continue;
            for (Method m : cd.getMethods()) {
                if (!m.getName().equals(a[2])) continue;
                MethodImplementation impl = m.getImplementation();
                if (impl == null) { System.out.println("(no implementation)"); continue; }
                System.out.println(String.format("-- registers=%d params=%d", impl.getRegisterCount(), m.getParameterTypes().size()));
                int off = 0;
                for (Instruction in : impl.getInstructions()) {
                    String tgt = (in instanceof OffsetInstruction) ? String.format(" -> %04x", off + ((OffsetInstruction) in).getCodeOffset()) : "";
                    String lit = "";
                    if (in instanceof NarrowLiteralInstruction) lit = " lit=" + ((NarrowLiteralInstruction) in).getNarrowLiteral();
                    else if (in instanceof WideLiteralInstruction) lit = " lit=" + ((WideLiteralInstruction) in).getWideLiteral();
                    String ref = "";
                    if (in instanceof ReferenceInstruction) {
                        try { ref = "  " + ((ReferenceInstruction) in).getReference().toString(); } catch (Throwable t) {}
                    }
                    System.out.println(String.format("%04x: %s%s%s%s%s", off, in.getOpcode().name, regs(in), tgt, lit, ref));
                    off += in.getCodeUnits();
                }
            }
        }
    }
}