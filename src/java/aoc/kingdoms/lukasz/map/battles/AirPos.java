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
    /** 渲染平滑时间常数（毫秒）：位置更新是"每 tick 一跳"，这里把它抹平。 */
    private static final float SMOOTH_TAU_MS = 55.0f;
    /** 单帧最多平滑多久（卡顿保护）。 */
    private static final float SMOOTH_MAX_DT_MS = 100.0f;
    /** 两次记录的距离超过这个（世界单位）就当成"换腿/传送"，直接吸附，不许拖尾。 */
    private static final float SNAP_DIST = 60.0f;

    private static final long[] ID = new long[CAP];
    private static final float[] CX = new float[CAP];
    private static final float[] CY = new float[CAP];
    private static final float[] PX = new float[CAP];
    private static final float[] PY = new float[CAP];
    private static final long[] CT = new long[CAP];
    private static final long[] PT = new long[CAP];
    private static final float[] RX = new float[CAP];
    private static final float[] RY = new float[CAP];
    private static final long[] RT = new long[CAP];
    /** 上一次的位移方向（反向检测用）。 */
    private static final float[] LX = new float[CAP];
    private static final float[] LY = new float[CAP];
    private static final boolean[] USED = new boolean[CAP];
    private static int cursor = 0;

    /**
     * v148：missionID → slot 的**直接映射**（避免每帧对 512 槽线性扫描）。
     *
     * <p>为什么不用 `HashMap<Long,Integer>`：每帧每发弹都要查一次，装箱会持续产生垃圾。
     * 这里用"哈希桶 + 复核"：桶里只存提示，命中后仍要 `USED[slot] && ID[slot]==id` 复核；
     * 碰撞或槽位被环形覆盖时退回一次线性扫描并**重写桶**。删除不需要维护（复核兜底）。
     */
    private static final int IDX_SIZE = 2048;
    private static final int IDX_MASK = IDX_SIZE - 1;
    private static final long[] IDX_ID = new long[IDX_SIZE];
    private static final int[] IDX_SLOT = new int[IDX_SIZE];

    private static int idxHash(long id) {
        return (int) ((id ^ (id >>> 32)) & IDX_MASK);
    }

    private static void idxPut(long id, int slot) {
        int h = idxHash(id);
        IDX_ID[h] = id;
        IDX_SLOT[h] = slot;
    }

    private static void idxClear(long id) {
        int h = idxHash(id);
        if (IDX_ID[h] == id) {
            IDX_ID[h] = 0L;
            IDX_SLOT[h] = 0;
        }
    }

    /** 渲染侧复用的临时数组（只在渲染线程用，避免每帧分配）。 */
    private static final float[] SCRATCH = new float[2];

    /** 渲染侧总开关：关掉就回到旧的"省中心插值"路径（出问题时一键回退）。 */
    public static boolean enabled = true;

    /** 诊断计数。 */
    public static int dbgRecords = 0;
    /** 反向记录写日志的条数上限（诊断用，别刷爆文件）。 */
    private static int dbgRevWrites = 0;
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
                idxPut(id, slot);
            }
            boolean first = (CT[slot] == 0L);
            if (!first) {
                float ddx = wx - CX[slot];
                float ddy = wy - CY[slot];
                float dot = ddx * LX[slot] + ddy * LY[slot];
                float len2 = ddx * ddx + ddy * ddy;
                if (dot < 0.0f && len2 > 4.0f && dbgRevWrites < 400) {
                    dbgRevWrites++;
                    // 诊断：位置"往回走"时记一条，供真机排查（写 aircfg_diag.txt）
                    AirDbgLog.dWrite("APOS rev id=" + id
                            + " p=" + (int) CX[slot] + "," + (int) CY[slot]
                            + " c=" + wx + "," + wy
                            + " d=" + (int) (now - CT[slot]));
                }
                if (len2 > 0.01f) {
                    LX[slot] = ddx;
                    LY[slot] = ddy;
                }
            }
            // 旧位置变成"上一点"
            PX[slot] = CX[slot];
            PY[slot] = CY[slot];
            PT[slot] = CT[slot];
            CX[slot] = wx;
            CY[slot] = wy;
            CT[slot] = now;
            if (first) {
                RX[slot] = wx;
                RY[slot] = wy;
                RT[slot] = now;
            }
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
            idxClear(missionID);
            return false;
        }
        // 平滑：渲染位置一帧一小步地追目标位置。
        // 为什么不用"按速度外推"：位置是每 tick 一跳，相邻两次记录常常是
        // "隔 16ms、跳了 10 单位"，按这个速度外推会冲到 250 单位外，下一帧再弹回来
        // —— 真机上看到的就是"沿航线前后抽搐"。平滑既不会过冲，也不会抖。
        float dx = CX[slot] - RX[slot];
        float dy = CY[slot] - RY[slot];
        if (dx * dx + dy * dy > SNAP_DIST * SNAP_DIST) {
            RX[slot] = CX[slot];
            RY[slot] = CY[slot];
        } else {
            long last = RT[slot];
            float dt = (last == 0L) ? 16.0f : (float) (nowMs - last);
            if (dt < 0.0f) {
                dt = 0.0f;
            } else if (dt > SMOOTH_MAX_DT_MS) {
                dt = SMOOTH_MAX_DT_MS;
            }
            // 自适应时间常数：按"上一次记录的间隔"算，5 倍速（45ms 一跳）也能在 1~2 帧内追上，
            // 不会出现"追不上 → 下一跳再来一下"的顿挫。
            float interval = (float) (CT[slot] - PT[slot]);
            float tau = interval * 0.35f;
            if (tau < 12.0f) {
                tau = 12.0f;
            } else if (tau > 120.0f) {
                tau = 120.0f;
            }
            float a = 1.0f - (float) Math.exp(-dt / tau);
            RX[slot] += dx * a;
            RY[slot] += dy * a;
        }
        RT[slot] = nowMs;
        out[0] = RX[slot];
        out[1] = RY[slot];
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
        for (int i = 0; i < IDX_SIZE; i++) {
            IDX_ID[i] = 0L;
            IDX_SLOT[i] = 0;
        }
        cursor = 0;
    }

    /**
     * 按 missionID 找槽位（v148：先查直接映射，未命中才线性扫描并回填）。
     * 桶里存的是"提示"，必须以 `USED[slot] && ID[slot]==id` 复核 —— 槽位会被环形覆盖复用。
     */
    private static int find(long id) {
        int h = idxHash(id);
        if (IDX_ID[h] == id) {
            int slot = IDX_SLOT[h];
            if (slot >= 0 && slot < CAP && USED[slot] && ID[slot] == id) {
                return slot;
            }
        }
        for (int i = 0; i < CAP; i++) {
            if (USED[i] && ID[i] == id) {
                idxPut(id, i);
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
