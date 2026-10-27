package aoc.kingdoms.lukasz.map.battles;

import java.lang.reflect.Field;
import java.util.HashMap;

import aoc.kingdoms.lukasz.jakowski.Game;
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
 *   <li>机头 = `AirCraft.heading`（真实运动方向）。精灵素材是**机头朝左**的，
 *       而原 `calcHeading` 返回 `180 - atan2(dy,dx)` 是镜像公式（水平对、上下反），
 *       所以这里输出 `heading - 180`，与 libgdx 顺时针旋转约定一致。</li>
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
    public static int dbgInit = 0;

    /** missionID -> 飞行状态。 */
    private static final HashMap<Long, AirCraft> CRAFT = new HashMap<Long, AirCraft>();
    /** missionID -> 上一次推进的真实时间（ms）。 */
    private static final HashMap<Long, Long> LAST_MS = new HashMap<Long, Long>();

    /** 单帧最大 dt（ms）：卡顿/暂停回来时不许瞬移。 */
    private static final long MAX_DT_MS = 120L;
    /** 缺飞机配置时的兜底速度（=800 × 0.05）。 */
    private static final float DEFAULT_SPEED_PX = 40.0f;
    private static final float DEFAULT_AGILITY = 0.5f;
    /** M1d 先不做燃油强制返航（M6 再接），给一个够用的滞空。 */
    private static final float DEFAULT_FUEL = 9999.0f;

    private static Field F_STATE;

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
        try {
            int ord = stateOrdinal(m);
            int tgt = targetProvince(m, ord);
            Province tp = tgt >= 0 ? Game.getProvince(tgt) : null;
            if (tp == null) {
                fallbackToProvince(m, m.airDivisionAtProvinceID > 0
                        ? m.airDivisionAtProvinceID : m.sourceProvinceID);
                return;
            }
            float tx = tp.getCenterX_Real();
            float ty = tp.getCenterY_Real();

            AirCraft c = CRAFT.get(Long.valueOf(m.missionID));
            if (c == null) {
                c = create(m, tx, ty);
                if (c == null) {
                    fallbackToProvince(m, tgt);
                    return;
                }
                CRAFT.put(Long.valueOf(m.missionID), c);
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

            if (ord == 1 || ord == 3) { // EN_ROUTE / RETURNING 才推进
                float msPerTurn = AirMissileCore.speedDiv();
                if (msPerTurn <= 0.0f) {
                    msPerTurn = 300.0f;
                }
                float dtTurns = dtMs / msPerTurn;
                boolean flying = c.step(dtTurns, tx, ty);
                dbgSteps++;
                if (!flying) {
                    m.flightProgress = 1.0f;
                } else {
                    updateProgress(m, c, ord);
                }
            }

            outX = (int) c.x;
            outY = (int) c.y;
            AirPos.record(m, outX, outY);
        } catch (Throwable t) {
            // 运动学失败不许影响任务状态机：退回当前省中心
            try {
                fallbackToProvince(m, m.airDivisionAtProvinceID > 0
                        ? m.airDivisionAtProvinceID : m.sourceProvinceID);
            } catch (Throwable ignored) {
            }
        }
    }

    /** 渲染用机头角度：素材机头朝左 ⇒ 旋转 = 运动方向 − 180°。 */
    public static float headingOf(Object missionObj) {
        try {
            AirMission m = (AirMission) missionObj;
            AirCraft c = CRAFT.get(Long.valueOf(m.missionID));
            if (c == null) {
                return 0.0f;
            }
            float r = c.heading - 180.0f;
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

    /** 读档/新局清理（由 LoadSavedGameManager 的 clear 钩子一起调）。 */
    public static void clear() {
        CRAFT.clear();
        LAST_MS.clear();
    }

    // ------------------------------------------------------------------ 内部

    private static AirCraft create(AirMission m, float tx, float ty) {
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
            x = sp.getCenterX_Real();
            y = sp.getCenterY_Real();
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

    /** 目标省：返航回基地省，其余去任务目标省。 */
    private static int targetProvince(AirMission m, int ord) {
        if (ord == 3) { // RETURNING
            if (m.sourceAirport != null) {
                return m.sourceAirport.provinceID;
            }
            return m.sourceProvinceID;
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
        float sx = sp.getCenterX_Real();
        float sy = sp.getCenterY_Real();
        float tx = tp.getCenterX_Real();
        float ty = tp.getCenterY_Real();
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

    private static void fallbackToProvince(AirMission m, int prov) {
        Province p = prov >= 0 ? Game.getProvince(prov) : null;
        if (p == null) {
            return;
        }
        outX = p.getCenterX_Real();
        outY = p.getCenterY_Real();
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
