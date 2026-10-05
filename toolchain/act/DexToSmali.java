import org.jf.baksmali.Baksmali;
import org.jf.baksmali.BaksmaliOptions;
import org.jf.dexlib2.DexFileFactory;
import org.jf.dexlib2.Opcodes;
import org.jf.dexlib2.iface.DexFile;
import java.io.File;

/** dex -> smali 树（baksmali API 直调，绕开缺 jcommander 的 Main） */
public class DexToSmali {
  public static void main(String[] a) throws Exception {
    DexFile df = DexFileFactory.loadDexFile(new File(a[0]), Opcodes.forApi(29));
    File out = new File(a[1]);
    out.mkdirs();
    BaksmaliOptions o = new BaksmaliOptions();
    o.apiLevel = 29;
    boolean ok = Baksmali.disassembleDexFile(df, out, 4, o);
    System.out.println("ok=" + ok);
  }
}