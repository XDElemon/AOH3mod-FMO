import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.reference.*;
import java.util.*;

public class FindCall {
    public static void main(String[] args) throws Exception {
        String dex = args[0];
        DexFile df = DexFileFactory.loadDexFile(new java.io.File(dex), Opcodes.forApi(30));
        for (ClassDef c : df.getClasses()) {
            String cn = c.getType();
            if (!cn.contains("MenuManager") && !cn.contains("Game;")) continue;
            for (Method m : c.getMethods()) {
                String mn = m.getName();
                if (mn.contains("dbgSv") || mn.contains("dbgSpid") || mn.equals("setVisibleInGame_ProvinceArmy") || mn.equals("setActiveProvinceID")) {
                    StringBuilder sb = new StringBuilder();
                    if (m.getImplementation() != null) {
                        for (Instruction ins : m.getImplementation().getInstructions()) {
                            String s = ins.getOpcode().name + " ";
                            
                            if (ins instanceof ReferenceInstruction) {
                                Reference r = ((ReferenceInstruction)ins).getReference();
                                s = r.getClass().getSimpleName() + ":" + r.toString().substring(0, Math.min(70, r.toString().length()));
                            }
                            sb.append("|").append(s);
                        }
                    }
                    System.out.println("### " + cn + " -> " + m.getName() + m.getParameterTypes() + " (" + (m.getImplementation()!=null?"INST":"NO-CODE") + ")\n" + sb.toString().substring(0, Math.min(600, sb.toString().length())));
                }
            }
        }
        System.out.println("DONE");
    }
}
