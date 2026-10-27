package aoc.kingdoms.lukasz.map.battles;

import java.util.ArrayList;
import java.util.HashMap;

/**
 * v108：建造选型桥 —— **面板显示哪一架，出场就是哪一架**。
 *
 * <p>问题（2026-10-28 用户实测）：建造面板显示的是
 * {@code AirForceManager.getBestAidForType(civ, type.ordinal()+7)} 算出来的机型（例如 J36），
 * 但点击建造走的是 `Airport.startBuild(AirType)` —— 队列里只存 4 个类型，没有机型；
 * 出厂时 {@code stampAirUnit} 再**重新算一次** best aid。两次计算之间只要科技/代际判定变了，
 * 或者两处算法有任何分歧，就会出现"面板显示 J36、造出来是 J11"。
 *
 * <p>做法：点建造那一刻把"面板这次显示的那一架"记下来（FIFO，按 文明+类型 分桶），
 * 出厂时优先取这条记录；没有记录（AI 造机/开局播种/老档）才回落到原来的自动挑选。
 * 这样"显示 = 出厂"由构造保证，不依赖两处算法永远同步。
 */
public final class AirBuildPick {

    /** civID:typeOrdinal → 待出厂的 aid 队列（建造完成顺序 = 入队顺序）。 */
    private static final HashMap<String, ArrayList<Integer>> PENDING =
            new HashMap<String, ArrayList<Integer>>();

    private AirBuildPick() {
    }

    private static String keyOf(int civID, int typeOrdinal) {
        return civID + ":" + typeOrdinal;
    }

    /** 面板点建造时记录：这次要造的是面板当前显示的那一架。aid&lt;0 视为不记录。 */
    public static void push(int civID, int typeOrdinal, int aid) {
        if (aid < 0 || typeOrdinal < 0 || typeOrdinal > 3) {
            return;
        }
        String k = keyOf(civID, typeOrdinal);
        ArrayList<Integer> q = PENDING.get(k);
        if (q == null) {
            q = new ArrayList<Integer>();
            PENDING.put(k, q);
        }
        q.add(Integer.valueOf(aid));
    }

    /**
     * 面板点击建造时调用（smali 只传 typeOrdinal，一个 invoke）。
     * 内部按**面板算法**再算一次"现在显示的是哪一架"，并记进 FIFO ——
     * 与 BtnBuild.buildElementHover 用的是同一个 `getBestAidForType(playerCiv, ord+7)`。
     */
    public static void noteClick(int typeOrdinal) {
        try {
            int civ = 0;
            try {
                civ = aoc.kingdoms.lukasz.jakowski.Game.player.iCivID;
            } catch (Throwable ignored) {
            }
            int aid = AirForceManager.getBestAidForType(civ, typeOrdinal + 7);
            push(civ, typeOrdinal, aid);
        } catch (Throwable ignored) {
        }
    }

    /** 出厂取值：优先用点建造时的记录，没有再回落到自动挑选。 */
    public static int takeOrPick(int civID, Object typeObj) {
        int ord = -1;
        try {
            ord = ordinalOf(typeObj);
        } catch (Throwable ignored) {
        }
        if (ord >= 0) {
            ArrayList<Integer> q = PENDING.get(keyOf(civID, ord));
            if (q != null && !q.isEmpty()) {
                int aid = q.remove(0).intValue();
                if (q.isEmpty()) {
                    PENDING.remove(keyOf(civID, ord));
                }
                if (aid >= 0) {
                    return aid;
                }
            }
        }
        return AirForceManager.getBestAidForType(civID, ord + 7);
    }

    /** AirUnit$AirType 在 Java 桩里是 Object ⇒ 反射取 ordinal。 */
    private static int ordinalOf(Object typeObj) {
        if (typeObj instanceof Enum) {
            return ((Enum<?>) typeObj).ordinal();
        }
        try {
            java.lang.reflect.Method m = typeObj.getClass().getMethod("ordinal");
            Object v = m.invoke(typeObj);
            if (v instanceof Integer) {
                return ((Integer) v).intValue();
            }
        } catch (Throwable ignored) {
        }
        return -1;
    }

    /** 读档/新局清理（跟其它 clear 一起调，避免残留的"待出厂"串到下一局）。 */
    public static void clear() {
        PENDING.clear();
    }

    /** 诊断：当前还挂着多少条待出厂记录。 */
    public static int pendingCount() {
        int n = 0;
        for (ArrayList<Integer> q : PENDING.values()) {
            n += q.size();
        }
        return n;
    }
}
