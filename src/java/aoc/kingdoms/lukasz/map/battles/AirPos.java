package aoc.kingdoms.lukasz.map.battles;

/**
 * M1b-1：任务的**连续世界坐标**表（每个 missionID 一条）。
 *
 * <p>背景：现在逻辑层已经在 {@code AirMission.moveDivisionAlongFlight} 里把飞机沿
 * 「源省中心 → 目标省中心」的直线推进（用 {@code flightProgress} 插值，再用
 * {@code Game.setProvinceID_Point} 反查它落在哪个省）。但**渲染层没读这个坐标**：
 * {@code ProvinceDrawArmy.getAirSpriteX/Y} 拿 {@code airDivPrevProvinceID → airDivisionAtProvinceID}
 * 两个省中心做插值，于是屏幕上走的是"省中心→省中心"的折线，看起来就是逐省移动。</p>
 *
 * <p>本类就是那座桥：逻辑层每次算完坐标调 {@link #record(Object, int, int)} 记一笔；
 * 渲染层调 {@link #screenX}/{@link #screenY} 取**同一份坐标**。
 * 因为逻辑层是按 tick 更新（45~1000ms），这里按上一段速度做一次短程航位推算（≤400ms），
 * 让 60fps 下看起来是连续的；推算不出来就返回旧点，绝不乱飞。</p>
 *
 * <p>坐标系：世界坐标（Real 单位）。屏幕 = {@code (world + cam) * zoom}，与
 * {@code moveDivisionAlongFlight} 里的 {@code world = screen/scale - cam} 互逆。</p>
 */
public final class AirPos {

    /** 同时在表里的任务上限（一屏活跃任务远小于这个数）。 */
    private static final int CAP = 512;
    /** 超过这个时间没记录过 ⇒ 认为任务已经没了/暂停，不参与推算。 */
    private static final long STALE_MS = 20000L;
    /** 航位推算最多外推这么久（避免卡顿时把飞机推飞）。 */
    private static final long MAX_EXTRA_MS = 400L;

    private static final long[] ID = new long[CAP];
    private static final float[] CX = new float[CAP];
    private static final float[] CY = new float[CAP];
    private static final float[] PX = new float[CAP];
    private static final float[] PY = new float[CAP];
    private static final long[] CT = new long[CAP];
    private static final long[] PT = new long[CAP];
    private static final boolean[] USED = new boolean[CAP];
    private static int cursor = 0;

    /** 渲染侧复用的临时数组（只在渲染线程用，避免每帧分配）。 */
    private static final float[] SCRATCH = new float[2];

    /** 渲染侧总开关：关掉就回到旧的"省中心插值"路径（出问题时一键回退）。 */
    public static boolean enabled = true;

    /** 诊断计数。 */
    public static int dbgRecords = 0;
    public static int dbgHits = 0;
    public static int dbgMisses = 0;

    private AirPos() {
    }

    /**
     * 记一笔当前位置（逻辑层每 tick 调一次）。
     *
     * @param missionObj {@code AirMission} 本体
     * @param wx 世界坐标 x
     * @param wy 世界坐标 y
     */
    public static void record(Object missionObj, int wx, int wy) {
        try {
            if (!(missionObj instanceof AirMission)) {
                return;
            }
            long id = ((AirMission) missionObj).missionID;
            if (id == 0L) {
                return;
            }
            long now = System.currentTimeMillis();
            int slot = find(id);
            if (slot < 0) {
                slot = alloc();
                ID[slot] = id;
            }
            // 旧位置变成"上一点"（航位推算用）
            PX[slot] = CX[slot];
            PY[slot] = CY[slot];
            PT[slot] = CT[slot];
            CX[slot] = wx;
            CY[slot] = wy;
            CT[slot] = now;
            dbgRecords++;
        } catch (Throwable t) {
            // 渲染/逻辑线程都不能抛
        }
    }

    /**
     * 取当前世界坐标（带短程航位推算）。
     *
     * @param missionID 任务 id
     * @param nowMs 当前毫秒
     * @param out 长度 ≥2 的输出数组：out[0]=x、out[1]=y
     * @return true = 命中（调用方可以用它覆盖旧坐标）；false = 没有这个任务的位置
     */
    public static boolean worldOf(long missionID, long nowMs, float[] out) {
        int slot = find(missionID);
        if (slot < 0 || !USED[slot]) {
            return false;
        }
        if (nowMs - CT[slot] > STALE_MS) {
            USED[slot] = false;   // 过期：任务已经不在了
            return false;
        }
        float x = CX[slot];
        float y = CY[slot];
        long dt = CT[slot] - PT[slot];
        long extra = nowMs - CT[slot];
        if (dt > 0L && dt < 5000L && extra > 0L && extra <= MAX_EXTRA_MS) {
            float k = (float) extra / (float) dt;
            x += (CX[slot] - PX[slot]) * k;
            y += (CY[slot] - PY[slot]) * k;
        }
        out[0] = x;
        out[1] = y;
        return true;
    }

    /**
     * 渲染用：任务当前的屏幕坐标 x（拿不到返回 {@link Integer#MIN_VALUE}，调用方回退旧逻辑）。
     */
    public static int screenX(Object missionObj, float scale, int camX, float[] scratch) {
        if (!enabled || !(missionObj instanceof AirMission)) {
            return Integer.MIN_VALUE;
        }
        if (!worldOf(((AirMission) missionObj).missionID, System.currentTimeMillis(), scratch)) {
            dbgMisses++;
            return Integer.MIN_VALUE;
        }
        dbgHits++;
        return (int) ((scratch[0] + camX) * scale);
    }

    /** 渲染用：任务当前的屏幕坐标 y（拿不到返回 {@link Integer#MIN_VALUE}）。 */
    public static int screenY(Object missionObj, float scale, int camY, float[] scratch) {
        if (!enabled || !(missionObj instanceof AirMission)) {
            return Integer.MIN_VALUE;
        }
        if (!worldOf(((AirMission) missionObj).missionID, System.currentTimeMillis(), scratch)) {
            return Integer.MIN_VALUE;
        }
        return (int) ((scratch[1] + camY) * scale);
    }


    /**
     * 渲染侧修正：拿到连续位置就用它，拿不到就原样返回旧坐标（调用方不用加分支）。
     *
     * @param missionObj 任务
     * @param original 原版 {@code getAirSpriteX/Y} 算出来的屏幕坐标
     */
    public static int fixX(Object missionObj, int original) {
        try {
            if (!enabled || missionObj == null) {
                return original;
            }
            float scale = 1.0f;
            int camX = 0;
            if (aoc.kingdoms.lukasz.jakowski.Game.mapScale != null) {
                scale = aoc.kingdoms.lukasz.jakowski.Game.mapScale.getCurrentScale();
            }
            if (aoc.kingdoms.lukasz.jakowski.Game.mapCoords != null) {
                camX = aoc.kingdoms.lukasz.jakowski.Game.mapCoords.getPosX();
            }
            if (scale <= 0.0f) {
                return original;
            }
            float[] scratch = SCRATCH;
            int v = screenX(missionObj, scale, camX, scratch);
            return v == Integer.MIN_VALUE ? original : v;
        } catch (Throwable t) {
            return original;
        }
    }

    /** 同 {@link #fixX}，y 分量。 */
    public static int fixY(Object missionObj, int original) {
        try {
            if (!enabled || missionObj == null) {
                return original;
            }
            float scale = 1.0f;
            int camY = 0;
            if (aoc.kingdoms.lukasz.jakowski.Game.mapScale != null) {
                scale = aoc.kingdoms.lukasz.jakowski.Game.mapScale.getCurrentScale();
            }
            if (aoc.kingdoms.lukasz.jakowski.Game.mapCoords != null) {
                camY = aoc.kingdoms.lukasz.jakowski.Game.mapCoords.getPosY();
            }
            if (scale <= 0.0f) {
                return original;
            }
            float[] scratch = SCRATCH;
            int v = screenY(missionObj, scale, camY, scratch);
            return v == Integer.MIN_VALUE ? original : v;
        } catch (Throwable t) {
            return original;
        }
    }

    /** 清空（读档/换局时调用，防止旧 missionID 串档）。 */
    public static void clear() {
        for (int i = 0; i < CAP; i++) {
            USED[i] = false;
            ID[i] = 0L;
        }
        cursor = 0;
    }

    private static int find(long id) {
        for (int i = 0; i < CAP; i++) {
            if (USED[i] && ID[i] == id) {
                return i;
            }
        }
        return -1;
    }

    private static int alloc() {
        // 先找空位，找不到就环形覆盖最老的一个
        for (int i = 0; i < CAP; i++) {
            if (!USED[i]) {
                USED[i] = true;
                CX[i] = 0.0f;
                CY[i] = 0.0f;
                PX[i] = 0.0f;
                PY[i] = 0.0f;
                CT[i] = 0L;
                PT[i] = 0L;
                return i;
            }
        }
        int slot = cursor;
        cursor = (cursor + 1) % CAP;
        USED[slot] = true;
        CX[slot] = 0.0f;
        CY[slot] = 0.0f;
        PX[slot] = 0.0f;
        PY[slot] = 0.0f;
        CT[slot] = 0L;
        PT[slot] = 0L;
        return slot;
    }
}
