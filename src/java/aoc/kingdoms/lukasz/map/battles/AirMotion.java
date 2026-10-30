package aoc.kingdoms.lukasz.map.battles;

import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.HashSet;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.GameThreads.GameThread;
import aoc.kingdoms.lukasz.map.province.Province;

/**
 * M1d（v98）真实飞行运动学接线 —— 把 M1a 的 `AirCraft` 内核接进游戏。
 *
 * <p>M1a 只写了纯数学内核与 AirLab；M1b/M1c 只把“位置显示/选中”接上，移动仍是
 * “源省中心→目标省中心 + 计时器插值”。结果：没有转弯、机头不是运动切线、
 * 任务时长与距离不成比例。本类把每个 `AirMission` 的**位置真源**换成 `AirCraft`：</p>
 *
 * <ul>
 *   <li>每帧按真实时间折算 `dtTurns`（复用 v66 的帧钟：`AirMissileCore.speedDiv()` = 毫秒/回合），
 *       调 {@link AirCraft#step} 推进；速度/机动/燃料都来自任务里的飞机；</li>
 *   <li>把推进后的世界坐标写成 `AirPos`（渲染/选中/雷达都读它），并回写 `flightProgress`
 *       = 已飞距离 / 初始直线距离（⇒ 同样速度下，长途用时按距离变长，不再是固定计时器）；</li>
 *   <li>机头 = `AirCraft.heading`（真实运动方向）。素材机头朝左、libgdx 旋转逆时针为正，
 *       所以输出 `180 - heading`（与 `calcHeading` 同一约定；v99 的 `heading-180` 是镜像的）。</li>
 * </ul>
 *
 * <p>只动移动/朝向；战斗、弹药、拦截、AI 的调度逻辑一律不碰（那是 M2/M3/M6/M7）。</p>
 */
public final class AirMotion {

    /** 世界坐标输出（smali 在 moveDivisionAlongFlight 里 sget 后喂 AirPos/setProvinceID_Point）。 */
    public static int outX = 0;
    public static int outY = 0;

    /** 诊断计数。 */
    public static int dbgSteps = 0;
    /** v107d 诊断：速度日志预算（临时）。 */
    private static int dbgCreate = 0;
    public static int dbgInit = 0;

    /** missionID -> 飞行状态。 */
    private static final HashMap<Long, AirCraft> CRAFT = new HashMap<Long, AirCraft>();
    /** missionID -> 上一次推进的真实时间（ms）。 */
    private static final HashMap<Long, Long> LAST_MS = new HashMap<Long, Long>();
    /** 已经"到过目标点"的任务（命中后一律朝基地飞，不依赖状态机切 RETURNING）。 */
    private static final HashSet<Long> HIT = new HashSet<Long>();
    /** v110：missionID → 出生点（世界坐标），用来保证"掉头"必须发生在真的飞出去之后。 */
    private static final HashMap<Long, float[]> SPAWN = new HashMap<Long, float[]>();

    /** v110：单帧最大位移（世界像素）—— 任何倍速下都不许一帧跨省。 */
    private static final float MAX_STEP_PX = 12.0f;

    /** v108：掉头判定的绝对上限（世界像素）—— 任何帧率下都不许隔省掉头。 */
    private static final float HIT_TRIGGER_MAX = 12.0f;
    /** v108：掉头判定日志预算。 */
    private static int dbgHit2 = 0;
    /** v110：missionID 复用、清掉陈旧 HIT 的次数（诊断）。 */
    private static int dbgStale = 0;

    /** 单帧最大 dt（ms）：卡顿/暂停回来时不许瞬移。 */
    private static final long MAX_DT_MS = 120L;
    /** 缺飞机配置时的兜底速度（=800 × 0.05）。 */
    private static final float DEFAULT_SPEED_PX = 40.0f;
    private static final float DEFAULT_AGILITY = 0.5f;
    /** M1d 先不做燃油强制返航（M6 再接），给一个够用的滞空。 */
    private static final float DEFAULT_FUEL = 9999.0f;

    private static Field F_STATE;
    /** v109：到家强制返航的日志预算。 */
    private static int dbgHome = 0;

    private AirMotion() {
    }

    /**
     * 推进一帧。结果写入 {@link #outX}/{@link #outY}，并更新任务的 `flightProgress` 与 `AirPos`。
     * 不满足推进条件（不在飞/无法初始化）时，退化为“当前省中心”坐标，保证调用方拿到的坐标有效。
     */
    public static void step(Object missionObj) {
        AirMission m = (AirMission) missionObj;
        if (m == null) {
            return;
        }
        long nowMs = System.currentTimeMillis();
        if (isPaused()) {
            // v102：暂停时冻结 —— 位置原地、同时把时间戳推到当下，避免恢复时一次补步
            LAST_MS.put(Long.valueOf(m.missionID), Long.valueOf(nowMs));
            AirCraft frozen = CRAFT.get(Long.valueOf(m.missionID));
            if (frozen != null) {
                outX = (int) frozen.x;
                outY = (int) frozen.y;
            } else {
                fallbackToProvince(m, m.airDivisionAtProvinceID > 0
                        ? m.airDivisionAtProvinceID : m.sourceProvinceID);
            }
            return;
        }
        try {
            int ord = stateOrdinal(m);
            int tgt = targetProvince(m, ord);
            Province tp = tgt >= 0 ? Game.getProvince(tgt) : null;
            if (tp == null) {
                fallbackToProvince(m, m.airDivisionAtProvinceID > 0
                        ? m.airDivisionAtProvinceID : m.sourceProvinceID);
                return;
            }
            float tx = worldCx(tp);
            float ty = worldCy(tp);

            AirCraft c = CRAFT.get(Long.valueOf(m.missionID));
            if (c == null) {
                c = create(m, tx, ty);
                if (c == null) {
                    fallbackToProvince(m, tgt);
                    return;
                }
                CRAFT.put(Long.valueOf(m.missionID), c);
                SPAWN.put(Long.valueOf(m.missionID), new float[] { c.x, c.y });
                dbgInit++;
            }

            long now = System.currentTimeMillis();
            Long last = LAST_MS.get(Long.valueOf(m.missionID));
            long dtMs = last == null ? 16L : now - last.longValue();
            if (dtMs < 0L) {
                dtMs = 0L;
            } else if (dtMs > MAX_DT_MS) {
                dtMs = MAX_DT_MS;
            }
            LAST_MS.put(Long.valueOf(m.missionID), Long.valueOf(now));

            float msPerTurn = AirMissileCore.speedDiv();
            if (msPerTurn <= 0.0f) {
                msPerTurn = 300.0f;
            }
            float dtTurns = dtMs / msPerTurn;

            // v110：单帧位移上限。高倍速下 dtTurns 会被放大，一帧能跨过整个省
            // （实测 d=0：两帧就从 6335 省落到 6332 省中心，画面像"刚飞出去就回来"）。
            // 按本机速度反推夹一次，保证任何倍速下都不会一帧跨省。
            {
                float pxPerTurn = c.speedPxPerTurn;
                if (pxPerTurn > 0.0f) {
                    float maxDt = MAX_STEP_PX / pxPerTurn;
                    if (dtTurns > maxDt) {
                        dtTurns = maxDt;
                    }
                }
            }
            Long id = Long.valueOf(m.missionID);

            // 目标点：先把"到过目标"做成一枚与任务状态无关的标记（v103）。
            // 只要接近目标中心就永久改朝基地 —— 这样即使状态机没及时切 RETURNING，
            // 飞机也只会顺着转弯半径掉头，绝不会停在目标点。
            boolean hit = HIT.contains(id);
            if (!hit) {
                // v108：掉头判定必须用**夹好的**步长，并且有绝对上限。
                // 原来 stepDist 用未夹的 dtTurns：卡顿帧(dtMs→120ms)时 dtTurns 可达 0.8，
                // stepDist+8 能到 44px > 省间距 39px ⇒ 离目标还有一整省就判"到点"掉头（用户实测）。
                float dtClamped = dtTurns > AirCraft.MAX_DT_TURNS ? AirCraft.MAX_DT_TURNS : dtTurns;
                float stepDist = c.speedPxPerTurn * dtClamped;
                float trig = stepDist + 8.0f;
                if (trig > HIT_TRIGGER_MAX) {
                    trig = HIT_TRIGGER_MAX;
                }
                // v110：掉头必须发生在**真的飞出去之后**。两个坑：
                //   ① missionID 复用：HIT 从不清，新任务一带上就是"已到点"（日志里 mid 有负数，不是单调递增）；
                //   ② 两个省中心距离可能 < 12px，出生当帧就满足判定。
                float[] sp = SPAWN.get(id);
                float travelled = sp == null ? 9999.0f
                        : (float) Math.sqrt((c.x - sp[0]) * (c.x - sp[0]) + (c.y - sp[1]) * (c.y - sp[1]));
                if (c.distTo(tx, ty) <= trig && (travelled >= 8.0f || c.distTo(tx, ty) <= AirCraft.ARRIVE_RADIUS)) {
                    HIT.add(id);
                    hit = true;
                    if (dbgHit2 < 200) {
                        dbgHit2++;
                        try {
                            AirDbgLog.dWrite("nAM hit mid=" + m.missionID + " d=" + (int) c.distTo(tx, ty)
                                    + " trav=" + (int) travelled + " trig=" + trig
                                    + " spd=" + c.speedPxPerTurn);
                        } catch (Throwable ignored) {
                        }
                    }
                }
            }
            if (hit && (ord == 1 || ord == 2 || ord == 3)) {
                Province hp = Game.getProvince(homeProvince(m));
                if (hp != null) {
                    tx = worldCx(hp);
                    ty = worldCy(hp);
                }
            }

            if (ord == 1 || ord == 2 || ord == 3) { // EN_ROUTE / EXECUTING / RETURNING 都推进
                boolean flying = c.step(dtTurns, tx, ty);
                dbgSteps++;
                if (!flying) {
                    if (!hit) {
                        // 恰好停在目标点：立刻补一步朝基地，保证没有"停车帧"
                        HIT.add(id);
                        Province hp = Game.getProvince(homeProvince(m));
                        if (hp != null) {
                            c.step(dtTurns, worldCx(hp), worldCy(hp));
                        }
                    }
                    // v108：到家即完成 —— 原来只有 RETURNING(ord==3) 才置 1，
                    // 飞机停在基地上空但状态卡在 EN_ROUTE/EXECUTING 时会干等好几回合（用户实测）。
                    if (ord == 3 || hit || atHome(m, c)) {
                        m.flightProgress = 1.0f;
                    }
                } else if (ord == 1 || ord == 3) {
                    updateProgress(m, c, ord);
                }
            }

            outX = (int) c.x;
            outY = (int) c.y;
            AirPos.record(m, outX, outY);

            // v109：到家就收尾 —— 原版只在"state==RETURNING 且 当前省==基地省"时结算，
            // 飞机已经飞回基地省界附近却还没进省时会卡住好几回合（用户实测）。
            // 这里把"已回家"的任务状态推到 RETURNING，下一帧原版自己的结算就会跑
            // returnAirDivisionHome / returnToBase，不用再等状态机。
            if (hit && (ord == 1 || ord == 2) && atHome(m, c)) {
                if (forceReturning(m) && dbgHome < 100) {
                    dbgHome++;
                    try {
                        AirDbgLog.dWrite("nAM home mid=" + m.missionID + " ord=" + ord
                                + " d=" + (int) c.distTo(worldCx(Game.getProvince(homeProvince(m))),
                                                         worldCy(Game.getProvince(homeProvince(m)))));
                    } catch (Throwable ignored) {
                    }
                }
            }
        } catch (Throwable t) {
            // 运动学失败不许影响任务状态机：退回当前省中心
            try {
                fallbackToProvince(m, m.airDivisionAtProvinceID > 0
                        ? m.airDivisionAtProvinceID : m.sourceProvinceID);
            } catch (Throwable ignored) {
            }
        }
    }

    /** 渲染用机头角度：素材机头朝左、libgdx 旋转逆时针为正 ⇒ 旋转 = 180° − 运动方向。 */
    public static float headingOf(Object missionObj) {
        try {
            AirMission m = (AirMission) missionObj;
            AirCraft c = CRAFT.get(Long.valueOf(m.missionID));
            if (c == null) {
                return 0.0f;
            }
            float r = 180.0f - c.heading;
            while (r <= -180.0f) {
                r += 360.0f;
            }
            while (r > 180.0f) {
                r -= 360.0f;
            }
            return r;
        } catch (Throwable t) {
            return 0.0f;
        }
    }

    /** v127：世界运动方向（度，0=+x，与 AirProjectile.heading 同一套；**不是**渲染机头）。 */
    public static float worldHeadingOf(Object missionObj) {
        try {
            AirMission m = (AirMission) missionObj;
            AirCraft c = CRAFT.get(Long.valueOf(m.missionID));
            return c == null ? 0.0f : c.heading;
        } catch (Throwable t) {
            return 0.0f;
        }
    }

    /** v127：本机世界速度（px/回合）；拿不到返回 0（防空弹算前置量用）。 */
    public static float speedOf(Object missionObj) {
        try {
            AirMission m = (AirMission) missionObj;
            AirCraft c = CRAFT.get(Long.valueOf(m.missionID));
            return c == null ? 0.0f : c.speedPxPerTurn;
        } catch (Throwable t) {
            return 0.0f;
        }
    }

    /** 读档/新局清理（由 LoadSavedGameManager 的 clear 钩子一起调）。 */
    public static void clear() {
        CRAFT.clear();
        LAST_MS.clear();
        HIT.clear();
        SPAWN.clear();
    }

    // ------------------------------------------------------------------ 内部

    private static AirCraft create(AirMission m, float tx, float ty) {
        // v110：新任务一律从"未到点"开始 —— missionID 可能复用，HIT 里的旧记录必须清掉
        if (HIT.remove(Long.valueOf(m.missionID)) && dbgStale < 50) {
            dbgStale++;
            try {
                AirDbgLog.dWrite("nAM stale mid=" + m.missionID);
            } catch (Throwable ignored) {
            }
        }
        float x;
        float y;
        float[] out = new float[2];
        boolean havePos = false;
        try {
            havePos = AirPos.worldOf(m.missionID, System.currentTimeMillis(), out);
        } catch (Throwable ignored) {
        }
        if (havePos) {
            x = out[0];
            y = out[1];
        } else {
            Province sp = Game.getProvince(m.sourceProvinceID);
            if (sp == null) {
                return null;
            }
            x = worldCx(sp);
            y = worldCy(sp);
        }
        float heading = (float) Math.toDegrees(Math.atan2(ty - y, tx - x));
        float speed = DEFAULT_SPEED_PX;
        float agility = DEFAULT_AGILITY;
        try {
            Object u = firstUnit(m);
            if (u != null) {
                AirUnit au = (AirUnit) u;
                if (au.speed > 0.0f) {
                    speed = AirCraft.speedFor(au.speed);
                }
                if (au.agility > 0.0f) {
                    agility = au.agility;
                }
            }
        } catch (Throwable ignored) {
        }
        // v107d 诊断：确认运行时真拿到的机型速度（临时，查完删）
        if (dbgCreate < 200) {
            dbgCreate++;
            try {
                AirUnit au = null;
                Object o = firstUnit(m);
                if (o != null) {
                    au = (AirUnit) o;
                }
                AirDbgLog.dWrite("nAM init mid=" + m.missionID
                        + " n=" + (m.aliveAircraft == null ? -1 : m.aliveAircraft.size())
                        + "/" + (m.assignedAircraft == null ? -1 : m.assignedAircraft.size())
                        + " aid=" + (au == null ? -1 : au.modelAid)
                        + " uspd=" + (au == null ? -1.0f : au.speed)
                        + " px=" + speed + " ag=" + agility);
            } catch (Throwable ignored) {
            }
        }
        return new AirCraft(x, y, heading, speed / AirCraft.SPEED_K, agility, DEFAULT_FUEL);
    }

    private static Object firstUnit(AirMission m) {
        try {
            if (m.aliveAircraft != null && !m.aliveAircraft.isEmpty()) {
                return m.aliveAircraft.get(0);
            }
            if (m.assignedAircraft != null && !m.assignedAircraft.isEmpty()) {
                return m.assignedAircraft.get(0);
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    /**
     * 游戏是否暂停：`GameThread.play==false` 时 `AirMission.update` 会直接 return，
     * 但 `RealTimeSim.updateFrame()`（渲染路径）仍会调 moveDivisionAlongFlight ⇒ 这里必须自己挡。
     */
    private static boolean isPaused() {
        try {
            GameThread gt = Game.gameThread;
            if (gt != null && !gt.play) {
                return true;
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    /**
     * v109：把任务状态推到 RETURNING（反射写 `state` 字段）。
     * 只在"已经回家"时调用，让原版结算链自己跑完；写失败就当没做。
     */
    private static boolean forceReturning(AirMission m) {
        try {
            if (F_STATE == null) {
                F_STATE = AirMission.class.getField("state");
            }
            Object cur = F_STATE.get(m);
            if (!(cur instanceof Enum)) {
                return false;
            }
            String name = ((Enum<?>) cur).name();
            if ("RETURNING".equals(name)) {
                return false;
            }
            Object ret = null;
            for (Object v : cur.getClass().getEnumConstants()) {
                if ("RETURNING".equals(((Enum<?>) v).name())) {
                    ret = v;
                    break;
                }
            }
            if (ret == null) {
                return false;
            }
            F_STATE.set(m, ret);
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    /** 是否已经停在基地上空（到家判定，用于让任务收尾）。 */
    private static boolean atHome(AirMission m, AirCraft c) {
        Province hp = Game.getProvince(homeProvince(m));
        if (hp == null) {
            return false;
        }
        return c.distTo(worldCx(hp), worldCy(hp)) <= AirCraft.ARRIVE_RADIUS + 3.0f;
    }

    /** 基地省（按机场优先；没有机场就用来源省）。 */
    private static int homeProvince(AirMission m) {
        if (m.sourceAirport != null) {
            return m.sourceAirport.provinceID;
        }
        return m.sourceProvinceID;
    }

    /** 目标省：返航回基地省，其余去任务目标省。 */
    private static int targetProvince(AirMission m, int ord) {
        if (ord == 3) { // RETURNING
            return homeProvince(m);
        }
        if (m.targetProvinceID >= 0) {
            return m.targetProvinceID;
        }
        return m.sourceProvinceID;
    }

    private static void updateProgress(AirMission m, AirCraft c, int ord) {
        Province sp = Game.getProvince(m.sourceProvinceID);
        Province tp = Game.getProvince(m.targetProvinceID);
        if (sp == null || tp == null) {
            return;
        }
        float sx = worldCx(sp);
        float sy = worldCy(sp);
        float tx = worldCx(tp);
        float ty = worldCy(tp);
        float total = (float) Math.sqrt((tx - sx) * (tx - sx) + (ty - sy) * (ty - sy));
        if (total < 1.0f) {
            total = 1.0f;
        }
        // 去程测"离目标还有多远"，返程测"离基地还有多远"，两者归一化到同一条航线长度
        float dist = ord == 3 ? c.distTo(sx, sy) : c.distTo(tx, ty);
        float pr = 1.0f - dist / total;
        if (pr < 0.0f) {
            pr = 0.0f;
        } else if (pr > 1.0f) {
            pr = 1.0f;
        }
        m.flightProgress = pr;
    }

    /**
     * 世界坐标（与 AirPos/setProvinceID_Point 同一空间）：`getCenterX()` 已经乘过
     * `MapBG.iMapScale`，再补 `shift` 就与 `iCenterShiftX` 对齐。
     * 注意**不要**用 `getCenterX_Real()`：那是未缩放坐标（差一个 iMapScale）。
     */
    private static float worldCx(Province p) {
        return p.getCenterX() + p.getShiftX();
    }

    private static float worldCy(Province p) {
        return p.getCenterY() + p.getShiftY();
    }

    private static void fallbackToProvince(AirMission m, int prov) {
        Province p = prov >= 0 ? Game.getProvince(prov) : null;
        if (p == null) {
            return;
        }
        outX = (int) worldCx(p);
        outY = (int) worldCy(p);
    }

    /**
     * 任务状态序号：PLANNING0 / EN_ROUTE1 / EXECUTING2 / RETURNING3 / COMPLETED4 / ABORTED5。
     * `state` 是嵌套枚举，Java 桩里退化成 Object ⇒ 用反射读真实字段再按 Enum 取序号。
     */
    private static int stateOrdinal(AirMission m) {
        try {
            if (F_STATE == null) {
                F_STATE = AirMission.class.getField("state");
            }
            Object s = F_STATE.get(m);
            if (s instanceof Enum) {
                return ((Enum<?>) s).ordinal();
            }
        } catch (Throwable ignored) {
        }
        return 1; // 读不到就按"在飞"处理，最多多走一帧
    }
}
