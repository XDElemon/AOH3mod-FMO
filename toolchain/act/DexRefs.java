import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.Opcodes;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.reference.*;
import java.io.File;

/** DexRefs —— 扫描全 dex 中对某名字（字段/方法/类型）的引用，打印调用者与方法 */
public class DexRefs {
  public static void main(String[] a) throws Exception {
    String dex = a[0];
    String needle = a[1];
    DexFile df = DexFileFactory.loadDexFile(new File(dex), Opcodes.forApi(29));
    int n = 0;
    for (ClassDef cd : df.getClasses()) {
      for (Method m : cd.getMethods()) {
        MethodImplementation mi = m.getImplementation();
        if (mi == null) continue;
        for (Instruction ins : mi.getInstructions()) {
          if (!(ins instanceof ReferenceInstruction)) continue;
          Reference r = ((ReferenceInstruction) ins).getReference();
          if (r == null) continue;
          String s = r.toString();
          if (s.indexOf(needle) < 0) continue;
          n++;
          System.out.println(cd.getType() + " :: " + m.getName() + " -> " + s);
        }
      }
    }
    System.out.println("total refs = " + n);
  }
}