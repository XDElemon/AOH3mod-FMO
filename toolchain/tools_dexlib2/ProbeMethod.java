import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import java.io.File;

public class ProbeMethod {
    public static void main(String[] a) throws Exception {
        DexFile df = DexFileFactory.loadDexFile(new File(a[0]), Opcodes.forApi(30));
        String cls = a[1], name = a[2];
        int n = 0;
        for (ClassDef cd : df.getClasses()) {
            if (!cd.getType().equals(cls)) continue;
            for (Method m : cd.getMethods()) {
                if (!m.getName().equals(name)) continue;
                StringBuilder sb = new StringBuilder();
                for (CharSequence p : m.getParameterTypes()) sb.append(p).append(" ");
                System.out.println("FOUND " + cd.getType() + " -> " + m.getName() + "(" + sb.toString().trim() + ") ret=" + m.getReturnType());
                n++;
            }
        }
        if (n == 0) System.out.println("NOTFOUND " + cls + " -> " + name);
    }
}