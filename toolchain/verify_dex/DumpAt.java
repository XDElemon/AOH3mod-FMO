import org.jf.dexlib2.*;
import org.jf.dexlib2.dexbacked.DexBackedDexFile;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import java.io.*;
public class DumpAt {
    public static void main(String[] args) throws Exception {
        DexBackedDexFile df = DexFileFactory.loadDexFile(new File(args[0]), Opcodes.forApi(30));
        for (ClassDef cd : df.getClasses()) {
            if (!cd.getType().equals(args[1])) continue;
            for (Method m : cd.getMethods()) {
                if (!m.getName().equals(args[2])) continue;
                org.jf.dexlib2.iface.MethodImplementation impl = m.getImplementation();
                if (impl == null) continue;
                int off = Integer.parseInt(args[3], 16);
                for (Instruction ins : impl.getInstructions()) {
                    if (ins.getCodeAddress() >= off - 24 && ins.getCodeAddress() <= off + 40) {
                        System.out.printf("%04x: %s | %s\n", ins.getCodeAddress(), ins.getOpcode().name, ins.getClass().getSimpleName());
                    }
                }
            }
        }
    }
}
