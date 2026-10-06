import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.Opcodes;
import org.jf.dexlib2.iface.*;
import java.io.File;
public class DumpFind {
  public static void main(String[] a) throws Exception {
    DexFile df = DexFileFactory.loadDexFile(new File(a[0]), Opcodes.forApi(29));
    int n=0;
    for (ClassDef cd : df.getClasses()) {
      n++;
      if (cd.getType().contains(a[1])) {
        System.out.println(cd.getType());
        for (Method m : cd.getMethods()) System.out.println("    " + m.getName());
      }
    }
    System.out.println("total classes=" + n);
  }
}
