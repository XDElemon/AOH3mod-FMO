import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.Opcodes;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.reference.*;
import java.io.File;
import java.util.*;

public class DumpClass {
  public static void main(String[] a) throws Exception {
    String dex = a[0], cls = a[1];
    String mth = (a.length > 2) ? a[2] : null;
    DexFile df = DexFileFactory.loadDexFile(new File(dex), Opcodes.forApi(29));
    for (ClassDef cd : df.getClasses()) {
      if (!cd.getType().contains(cls)) continue;
      System.out.println("CLASS " + cd.getType());
      for (Field fd : cd.getFields()) System.out.println("FIELD " + fd.getAccessFlags() + " " + fd.getName() + " : " + fd.getType());
      for (Method m : cd.getMethods()) {
        if (mth != null && !m.getName().contains(mth)) continue;
        MethodImplementation mi = m.getImplementation();
        System.out.println("== " + m.getName() + "(" + m.getParameterTypes() + ")" + m.getReturnType() + " regs=" + (mi == null ? -1 : mi.getRegisterCount()));
        if (mi == null) continue;
        int off = 0;
        for (Instruction ins : mi.getInstructions()) {
          System.out.println("  L" + off + ": " + fmt(ins, off));
          off += ins.getCodeUnits();
        }
      }
    }
  }
  static String fmt(Instruction ins, int off) {
    StringBuilder sb = new StringBuilder(ins.getOpcode().name);
    if (ins instanceof ThreeRegisterInstruction) { ThreeRegisterInstruction t = (ThreeRegisterInstruction) ins; sb.append(" v" + t.getRegisterA() + ", v" + t.getRegisterB() + ", v" + t.getRegisterC()); }
    else if (ins instanceof TwoRegisterInstruction) { TwoRegisterInstruction t = (TwoRegisterInstruction) ins; sb.append(" v" + t.getRegisterA() + ", v" + t.getRegisterB()); }
    else if (ins instanceof OneRegisterInstruction) { OneRegisterInstruction t = (OneRegisterInstruction) ins; sb.append(" v" + t.getRegisterA()); }
    if (ins instanceof OffsetInstruction) { int o = ((OffsetInstruction) ins).getCodeOffset(); sb.append(" -> L" + (off + o)); }
    if (ins instanceof ReferenceInstruction) { Reference r = ((ReferenceInstruction) ins).getReference(); sb.append("  " + (r == null ? "" : r.toString())); }
    if (ins instanceof NarrowLiteralInstruction) sb.append("  lit=" + ((NarrowLiteralInstruction) ins).getNarrowLiteral());
    else if (ins instanceof WideLiteralInstruction) sb.append("  lit=0x" + Long.toHexString(((WideLiteralInstruction) ins).getWideLiteral()));
    return sb.toString();
  }
}