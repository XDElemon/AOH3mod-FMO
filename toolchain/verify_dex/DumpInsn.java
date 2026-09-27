import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import java.io.File;
public class DumpInsn {
    public static void main(String[] args) throws Exception {
        DexFile df = DexFileFactory.loadDexFile(new File(args[0]), Opcodes.forApi(30));
        for (ClassDef cd : df.getClasses()) {
            if (!cd.getType().equals("Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;")) continue;
            for (Method m : cd.getMethods()) {
                if (!m.getName().equals("<init>")) continue;
                MethodImplementation impl = m.getImplementation();
                int off = 0;
                for (Instruction insn : impl.getInstructions()) {
                    if (off >= 0x160 && off <= 0x1c0) {
                        System.out.println(String.format("%04x: %s", off, insn));
                    }
                    off += insn.getCodeUnits();
                }
            }
        }
    }
}
