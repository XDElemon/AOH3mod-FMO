import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.reference.*;
import java.io.File;

// 打印某方法全部指令 + 实际跳转目标（用于复核控制流）
public class DumpTargets {
    public static void main(String[] a) throws Exception {
        DexFile df = DexFileFactory.loadDexFile(new File(a[0]), Opcodes.forApi(30));
        for (ClassDef cd : df.getClasses()) {
            if (!cd.getType().equals(a[1])) continue;
            for (Method m : cd.getMethods()) {
                if (!m.getName().equals(a[2])) continue;
                MethodImplementation impl = m.getImplementation();
                if (impl == null) { System.out.println("(no implementation)"); continue; }
                int off = 0;
                for (Instruction insn : impl.getInstructions()) {
                    String extra = "";
                    if (insn instanceof ReferenceInstruction) {
                        extra = "  " + ((ReferenceInstruction) insn).getReference().toString();
                    }
                    String tgt = "";
                    if (insn instanceof OffsetInstruction) {
                        int co = ((OffsetInstruction) insn).getCodeOffset();
                        tgt = String.format("  -> %04x", off + co);
                    }
                    String lit = "";
                    if (insn instanceof NarrowLiteralInstruction) {
                        lit = "  lit=" + ((NarrowLiteralInstruction) insn).getNarrowLiteral();
                    } else if (insn instanceof WideLiteralInstruction) {
                        lit = "  lit=" + ((WideLiteralInstruction) insn).getWideLiteral();
                    }
                    System.out.println(String.format("%04x: %s%s%s%s", off, insn.getOpcode().name, tgt, lit, extra));
                    off += insn.getCodeUnits();
                }
            }
        }
    }
}
