import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.Opcodes;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.reference.*;
import java.io.File;
import java.security.MessageDigest;
import java.util.*;

public class DexDiff {
  public static void main(String[] a) throws Exception {
    Map<String,String> A = sig(new File(a[0]));
    Map<String,String> B = sig(new File(a[1]));
    System.out.println("classesA=" + A.size() + " classesB=" + B.size());
    for (String k : B.keySet()) if (!A.containsKey(k)) System.out.println("NEW " + k);
    for (String k : A.keySet()) if (!B.containsKey(k)) System.out.println("GONE " + k);
    List<String> d = new ArrayList<String>();
    for (String k : A.keySet()) { String b = B.get(k); if (b != null && !b.equals(A.get(k))) d.add(k); }
    Collections.sort(d);
    for (String k : d) System.out.println("DIFF " + k);
    System.out.println("diff count = " + d.size());
  }
  static Map<String,String> sig(File f) throws Exception {
    DexFile df = DexFileFactory.loadDexFile(f, Opcodes.forApi(29));
    Map<String,String> out = new TreeMap<String,String>();
    for (ClassDef cd : df.getClasses()) {
      StringBuilder sb = new StringBuilder();
      sb.append("super=").append(cd.getSuperclass()).append(" ifaces=").append(cd.getInterfaces()).append('\n');
      sb.append("flags=").append(cd.getAccessFlags()).append('\n');
      for (Field fd : cd.getFields()) sb.append("F ").append(fd.getAccessFlags()).append(' ').append(fd.getType()).append(' ').append(fd.getName()).append('\n');
      List<String> ms = new ArrayList<String>();
      for (Method m : cd.getMethods()) {
        StringBuilder mb = new StringBuilder();
        mb.append("M ").append(m.getAccessFlags()).append(' ').append(m.getName()).append('(').append(m.getParameterTypes()).append(')').append(m.getReturnType());
        MethodImplementation mi = m.getImplementation();
        if (mi == null) mb.append(" ABSTRACT");
        else {
          mb.append(" regs=").append(mi.getRegisterCount());
          for (Instruction ins : mi.getInstructions()) {
            mb.append('|').append(ins.getOpcode().name);
            if (ins instanceof ThreeRegisterInstruction) { ThreeRegisterInstruction t=(ThreeRegisterInstruction)ins; mb.append(' ').append(t.getRegisterA()).append(',').append(t.getRegisterB()).append(',').append(t.getRegisterC()); }
            else if (ins instanceof TwoRegisterInstruction) { TwoRegisterInstruction t=(TwoRegisterInstruction)ins; mb.append(' ').append(t.getRegisterA()).append(',').append(t.getRegisterB()); }
            else if (ins instanceof OneRegisterInstruction) { OneRegisterInstruction t=(OneRegisterInstruction)ins; mb.append(' ').append(t.getRegisterA()); }
            if (ins instanceof ReferenceInstruction) { Reference r=((ReferenceInstruction)ins).getReference(); mb.append(' ').append(r==null?"":r.toString()); }
            if (ins instanceof NarrowLiteralInstruction) mb.append(" lit=").append(((NarrowLiteralInstruction)ins).getNarrowLiteral());
            else if (ins instanceof WideLiteralInstruction) mb.append(" lit=").append(((WideLiteralInstruction)ins).getWideLiteral());
            if (ins instanceof OffsetInstruction) mb.append(" off=").append(((OffsetInstruction)ins).getCodeOffset());
          }
        }
        ms.add(mb.toString());
      }
      for (String s : ms) sb.append(s).append('\n');
      out.put(cd.getType(), md5hex(sb.toString()));
    }
    return out;
  }
  static String md5hex(String s) throws Exception {
    MessageDigest md = MessageDigest.getInstance("MD5");
    byte[] d = md.digest(s.getBytes("UTF-8"));
    StringBuilder b = new StringBuilder();
    for (byte x : d) b.append(String.format("%02x", x));
    return b.toString();
  }
}