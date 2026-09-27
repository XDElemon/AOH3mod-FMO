import org.jf.dexlib2.*;
import org.jf.dexlib2.iface.*;
import org.jf.dexlib2.iface.instruction.*;
import org.jf.dexlib2.iface.instruction.formats.*;
import java.io.File;
import java.util.*;

/** CheckUndef v2 — if-* 操作数"必定义"检查（CFG must-defined） */
public class CheckUndef {
    static int bad = 0;
    static String target = "";
    static final Set<String> DEF_OPS = new HashSet<>(Arrays.asList(
        "const","const/4","const/16","const/high16","const-wide","const-wide/16","const-wide/32",
        "const-wide/high16","const-string","const-string/jumbo","const-class",
        "move","move/from16","move/16","move-object","move-object/from16","move-object/16",
        "move-result","move-result-object","move-result-wide","move-exception",
        "sget","sget-object","sget-wide","sget-boolean","sget-byte","sget-char","sget-short",
        "iget","iget-object","iget-wide","iget-boolean","iget-byte","iget-char","iget-short",
        "new-instance","check-cast","aget","aget-object","aget-wide","aget-boolean","aget-byte",
        "aget-char","aget-short","filled-new-array"
    ));

    static class Ins {
        int addr; String op; int defReg = -1; int useReg = -1; int tgt = -1; int[] switchTgts = null;
    }

    public static void main(String[] args) throws Exception {
        String dex = args[0];
        if (args.length > 1) target = args[1];
        DexFile df = DexFileFactory.loadDexFile(new File(dex), Opcodes.forApi(30));
        for (ClassDef c : df.getClasses()) {
            if (!target.isEmpty() && !c.getType().contains(target)) continue;
            for (Method m : c.getMethods()) {
                if (m.getImplementation() != null) checkMethod(c.getType(), m);
            }
        }
        System.out.println("UNDEF BAD: " + bad);
    }

    static void checkMethod(String cls, Method m) throws Exception {
        List<Ins> L = new ArrayList<>();
        int acc = 0;
        for (Instruction ins : m.getImplementation().getInstructions()) {
            Ins e = new Ins();
            e.addr = acc;
            acc += ins.getCodeUnits();
            e.op = ins.getOpcode().name;
            if (e.op.startsWith("if-")) {
                if (ins instanceof Instruction22t) { e.useReg = ((Instruction22t) ins).getRegisterA(); e.tgt = e.addr + ((Instruction22t) ins).getCodeOffset(); }
            } else if (e.op.equals("goto") && ins instanceof Instruction20t) {
                e.tgt = e.addr + ((Instruction20t) ins).getCodeOffset();
            } else if ((e.op.equals("packed-switch") || e.op.equals("sparse-switch")) && ins instanceof ReferenceInstruction) {
                org.jf.dexlib2.iface.reference.Reference ref = ((ReferenceInstruction) ins).getReference();
                if (ref instanceof org.jf.dexlib2.iface.instruction.SwitchPayload) {
                    List<? extends org.jf.dexlib2.iface.instruction.SwitchElement> ses = ((org.jf.dexlib2.iface.instruction.SwitchPayload) ref).getSwitchElements();
                    e.switchTgts = new int[ses.size()];
                    for (int si = 0; si < ses.size(); si++) e.switchTgts[si] = e.addr + ses.get(si).getOffset();
                }
            } else if (ins instanceof OneRegisterInstruction && DEF_OPS.contains(e.op)) {
                e.defReg = ((OneRegisterInstruction) ins).getRegisterA();
            } else if (ins instanceof TwoRegisterInstruction && DEF_OPS.contains(e.op)) {
                e.defReg = ((TwoRegisterInstruction) ins).getRegisterA();
            }
            L.add(e);
        }
        if (L.isEmpty()) return;
        TreeMap<Integer,Integer> A = new TreeMap<>();
        for (int i = 0; i < L.size(); i++) A.put(L.get(i).addr, i);
        boolean[] params = new boolean[256];
        int rc = m.getImplementation().getRegisterCount();
        boolean inst = !"<init>".equals(m.getName()) && (m.getAccessFlags() & 0x8) == 0;
        int total = m.getParameterTypes().size() + (inst ? 1 : 0);
        if (inst) { int idx = rc - total; if (idx >= 0 && idx < 256) params[idx] = true; }
        for (int i = 0; i < m.getParameterTypes().size(); i++) {
            int idx = rc - total + (inst ? 1 : 0) + i;
            if (idx >= 0 && idx < 256) params[idx] = true;
        }
        java.util.Map<Integer,boolean[]> handlers = new java.util.HashMap<>();
        for (TryBlock<? extends ExceptionHandler> tb : m.getImplementation().getTryBlocks()) {
            for (ExceptionHandler h : tb.getExceptionHandlers()) {
                handlers.put(h.getHandlerCodeAddress(), params.clone());
            }
        }
        // 简化版：if-* useReg 必须在本方法中至少定义过一次
        boolean[] globDef = new boolean[256];
        for (Ins x : L) if (x.defReg >= 0) globDef[x.defReg] = true;
        for (int ri = 0; ri < 256; ri++) if (params[ri]) globDef[ri] = true;
        for (Ins x : L) {
            if (x.useReg >= 0 && !globDef[x.useReg]) {
                System.out.println("UNDEF BAD: " + cls + " -> " + m.getName() + " if-op " + x.op + " reg=v" + x.useReg + " addr=0x" + Integer.toHexString(x.addr));
                bad++;
            }
        }
    }

    // ===== PART2: CFG 数据流 =====
    static void runFlow(String cls, String mname, List<Ins> L, TreeMap<Integer,Integer> A, boolean[] params, java.util.Map<Integer,boolean[]> handlers) {
        int n = L.size();
        // 块ID：0=入口；块边界：跳转目标地址
        boolean[] bstart = new boolean[n];
        bstart[0] = true;
        for (Ins e : L) if (e.tgt >= 0) { Integer j = A.get(e.tgt); if (j != null) bstart[j] = true; }
        int[] bid = new int[n];
        int nb = 0;
        for (int i = 0; i < n; i++) { if (bstart[i]) nb++; bid[i] = nb - 1; }
        // 每个指令的块号（bid已算）
        // 前驱：先收集每块的出口（跳到bstart块）
        List<int[]> preds = new ArrayList<>();
        for (int b = 0; b < nb; b++) preds.add(new int[0]);
        // 构建出口边
        for (int i = 0; i < n; i++) {
            Ins e = L.get(i);
            boolean isLast = (i == n - 1) || bstart[i + 1];
            int b = bid[i];
            // 1) 条件跳转：无论是否块尾，都建 tgt 边；fall 边只在块尾时建
            if (e.op.startsWith("if-") && e.tgt >= 0) {
                Integer j = A.get(e.tgt);
                if (j != null) preds.set(bid[j], add(preds.get(bid[j]), b));
                if (isLast && i + 1 < n) preds.set(bid[i + 1], add(preds.get(bid[i + 1]), b));
            } else if (e.op.startsWith("goto")) {
                Integer j = A.get(e.tgt);
                if (j != null) preds.set(bid[j], add(preds.get(bid[j]), b));
            } else if (e.switchTgts != null) {
                for (int t : e.switchTgts) {
                    Integer j = A.get(t);
                    if (j != null) preds.set(bid[j], add(preds.get(bid[j]), b));
                }
                if (isLast && i + 1 < n) preds.set(bid[i + 1], add(preds.get(bid[i + 1]), b));
            } else if (isLast && !e.op.startsWith("return") && !e.op.equals("throw")) {
                if (i + 1 < n) preds.set(bid[i + 1], add(preds.get(bid[i + 1]), b));
            }
        }
        // 迭代 must-defined
        boolean[][] in = new boolean[nb][];
        boolean[][] out = new boolean[nb][];
        for (int b = 0; b < nb; b++) { in[b] = null; out[b] = null; }
        // 入口块 in=params
        in[0] = params.clone();
        for (java.util.Map.Entry<Integer,boolean[]> h : handlers.entrySet()) {
            Integer j = A.get(h.getKey());
            if (j != null) in[bid[j]] = h.getValue();
        }
        // 块定义集（块内 defReg 累积）
        boolean[][] blkdef = new boolean[nb][];
        for (int b = 0; b < nb; b++) blkdef[b] = new boolean[256];
        for (int i = 0; i < n; i++) {
            if (L.get(i).defReg >= 0) blkdef[bid[i]][L.get(i).defReg] = true;
        }
        boolean change = true;
        int iters = 0;
        while (change && iters++ < 50) {
            change = false;
            for (int b = 0; b < nb; b++) {
                if (b == 0) continue;
                if (preds.get(b).length == 0) { if (in[b] == null) { in[b] = new boolean[256]; change = true; } continue; }
                boolean[] ni = new boolean[256];
                Arrays.fill(ni, true);
                for (int p : preds.get(b)) {
                    if (out[p] == null) continue;
                    for (int r = 0; r < 256; r++) if (!out[p][r]) ni[r] = false;
                }
                if (in[b] == null || !Arrays.equals(in[b], ni)) { in[b] = ni; change = true; }
            }
            for (int b = 0; b < nb; b++) {
                if (in[b] == null) continue;
                boolean[] no = in[b].clone();
                for (int r = 0; r < 256; r++) if (blkdef[b][r]) no[r] = true;
                if (out[b] == null || !Arrays.equals(out[b], no)) { out[b] = no; change = true; }
            }
        }
        // 检查 if-*: useReg 在指令处必须 defined
        for (int i = 0; i < n; i++) {
            Ins e = L.get(i);
            if (e.useReg >= 0) {
                int b = bid[i];
                boolean ok = (in[b] != null && in[b][e.useReg]);
                // 本块内该指令之前的 def
                if (e.addr >= 0x690 && e.addr <= 0x6a0) {
                    System.out.println("DBG 0x" + Integer.toHexString(e.addr) + " in5=" + (in[b]!=null && in[b][5]) + " bid=" + b + " preds=" + java.util.Arrays.toString(preds.get(b)));
                }
                if (!ok) {
                    for (int k = 0; k < i; k++) if (bid[k] == b && L.get(k).defReg == e.useReg) { ok = true; break; }
                }
                if (e.addr >= 0x690 && e.addr <= 0x6a0) {
                    System.out.println("DBG 0x" + Integer.toHexString(e.addr) + " in5=" + (in[b]!=null && in[b][5]) + " bid=" + b + " preds=" + java.util.Arrays.toString(preds.get(b)));
                }
                if (!ok) {
                    System.out.println("UNDEF BAD: " + cls + " -> " + mname + " if-op " + e.op + " reg=v" + e.useReg + " addr=0x" + Integer.toHexString(e.addr));
                    bad++;
                }
            }
        }
    }

    static int[] add(int[] a, int v) {
        for (int x : a) if (x == v) return a;
        int[] r = Arrays.copyOf(a, a.length + 1);
        r[a.length] = v;
        return r;
    }
}