package aoc.kingdoms.lukasz.map.battles;

/**
 * 防空配置的**运行时取用**（v130）：把 `data/air_defense.json` → `AirDefCfg` 的字段
 * 统一收口成四个入口，smali/渲染侧只调这里，避免"每个调用点自己推一遍"。
 *
 * <ul>
 *   <li>{@link #engageReal(int)}：交战半径（红盘 + 开火判定），有雷达取 {@code rangeBonusReal}；</li>
 *   <li>{@link #detectReal(int)}：探测半径（蓝盘），长波雷达 &gt; 雷达 &gt; 反导阵地自带；</li>
 *   <li>{@link #hitChance()}：单发命中率（0~1）；</li>
 *   <li>{@link #shotsDue(int, int)}：本回合允许的发射次数 = 阵地数 × 装填进度。</li>
 * </ul>
 *
 * 口径：`reloadHours <= 0` = 每回合一轮（旧行为）；1 回合 = 2 小时。
 * 所有取值失败都回落到旧常量（100/130、300、0.8、1h），保证配置坏掉也不会哑火。
 */
public final class AirDefCfgRt {

    private static final String T_AAA = "aaa";
    private static final String T_RADAR = "radar";
    private static final String T_MID = "midcourse";

    private static final float FB_ENGAGE = 100.0f;
    private static final float FB_DETECT = 500.0f;
    private static final float FB_DETECT_RADAR = 850.0f;
    private static final float FB_DETECT_MID = 2500.0f;
    private static final float FB_DISC = 1.0f;
    private static final float FB_HIT = 0.8f;
    private static final float FB_RELOAD = 1.0f;

    private static int iAAA = -1;
    private static int iRadar = -1;
    private static int iMid = -1;

    /** 每省上次结算装填的小时数（TURN_ID*24+HOUR）；0 = 未初始化。 */
    private static final int[] LAST_HOUR = new int[65536];

    private AirDefCfgRt() {
    }

    /** 配置链读取失败只记一次（`nCfg ERR`），方便真机定位；不影响兜底值。 */
    private static int cfgLogBudget = 6;

    private static void cfgLog(String s) {
        if (cfgLogBudget <= 0) {
            return;
        }
        cfgLogBudget--;
        try {
            AirDbgLog.dWrite(s);
        } catch (Throwable ignored) {
        }
    }

    private static void init() {
        if (iAAA >= 0 || iRadar >= 0 || iMid >= 0) {
            return;
        }
        try {
            iAAA = AirDefIds.indexOf(T_AAA);
        } catch (Throwable t) {
            iAAA = -1;
            cfgLog("nCfg ERR aaa " + t);
        }
        try {
            iRadar = AirDefIds.indexOf(T_RADAR);
        } catch (Throwable t) {
            iRadar = -1;
        }
        try {
            iMid = AirDefIds.indexOf(T_MID);
        } catch (Throwable t) {
            iMid = -1;
        }
    }

    /** 交战半径（Real）：本省有雷达取半径加成。 */
    public static float engageReal(int provinceID) {
        init();
        float r = FB_ENGAGE;
        if (iAAA >= 0) {
            try {
                r = AirDefCfg.rangeRealOf(iAAA);
                AirForceManager m = AirForceManager.getInstance();
                if (m != null && m.hasRadarBuilding(provinceID)) {
                    float b = AirDefCfg.rangeBonusRealOf(iAAA);
                    if (b > r) {
                        r = b;
                    }
                }
            } catch (Throwable ignored) {
            }
        }
        return r > 0.0f ? r : FB_ENGAGE;
    }

    /** 探测半径（Real）：长波雷达 &gt; 雷达 &gt; 反导阵地自带。 */
    public static float detectReal(int provinceID) {
        init();
        try {
            AirForceManager m = AirForceManager.getInstance();
            if (m != null) {
                if (iMid >= 0 && m.hasLongWaveRadarBuilding(provinceID)) {
                    return AirDefCfg.detectRealOf(iMid);
                }
                if (iRadar >= 0 && m.hasRadarBuilding(provinceID)) {
                    return AirDefCfg.detectRealOf(iRadar);
                }
            }
        } catch (Throwable ignored) {
        }
        // 配置链拿不到时按建筑档位给兜底值（与 Buildings.json 现值一致）
        float fb = FB_DETECT;
        try {
            AirForceManager m2 = AirForceManager.getInstance();
            if (m2 != null) {
                if (m2.hasLongWaveRadarBuilding(provinceID)) {
                    fb = FB_DETECT_MID;
                } else if (m2.hasRadarBuilding(provinceID)) {
                    fb = FB_DETECT_RADAR;
                }
            }
        } catch (Throwable ignored) {
        }
        if (iAAA >= 0) {
            try {
                int idx = iAAA;
                AirForceManager m3 = AirForceManager.getInstance();
                if (m3 != null) {
                    if (iMid >= 0 && m3.hasLongWaveRadarBuilding(provinceID)) {
                        idx = iMid;
                    } else if (iRadar >= 0 && m3.hasRadarBuilding(provinceID)) {
                        idx = iRadar;
                    }
                }
                float r = AirDefCfg.detectRealOf(idx);
                if (r > 0.0f) {
                    return r;
                }
            } catch (Throwable ignored) {
            }
        }
        return fb;
    }

    /**
     * 蓝盘**绘制倍数**（v136 用户口径）：探测范围保持不变，只放大画出来的圈。
     * 建筑档位与 detectReal 同一套判定（长波 &gt; 雷达 &gt; 反导阵地）。
     */
    public static float discScale(int provinceID) {
        init();
        try {
            AirForceManager m = AirForceManager.getInstance();
            if (m != null) {
                if (iMid >= 0 && m.hasLongWaveRadarBuilding(provinceID)) {
                    return AirDefCfg.discScaleOf(iMid);
                }
                if (iRadar >= 0 && m.hasRadarBuilding(provinceID)) {
                    return AirDefCfg.discScaleOf(iRadar);
                }
            }
        } catch (Throwable ignored) {
        }
        if (iAAA >= 0) {
            try {
                int idx = iAAA;
                AirForceManager m3 = AirForceManager.getInstance();
                if (m3 != null) {
                    if (iMid >= 0 && m3.hasLongWaveRadarBuilding(provinceID)) {
                        idx = iMid;
                    } else if (iRadar >= 0 && m3.hasRadarBuilding(provinceID)) {
                        idx = iRadar;
                    }
                }
                float s = AirDefCfg.discScaleOf(idx);
                if (s > 0.0f) {
                    return s;
                }
            } catch (Throwable ignored) {
            }
        }
        return FB_DISC;
    }

    /** 单发命中率（0~1）。 */
    public static float hitChance() {
        init();
        if (iAAA < 0) {
            return FB_HIT;
        }
        float h = AirDefCfg.hitChanceOf(iAAA);
        return h >= 0.0f ? h : FB_HIT;
    }

    /** 装填间隔（游戏小时）；&lt;=0 表示每回合一轮。 */
    public static float reloadHours() {
        init();
        if (iAAA < 0) {
            return FB_RELOAD;
        }
        return AirDefCfg.reloadHoursOf(iAAA);
    }

    /**
     * 本回合允许的发射次数：阵地数 × 这段时间攒出来的齐射数（上限 4，防止读档后一次倾泻）。
     */
    public static int shotsDue(int provinceID, int sites) {
        if (sites <= 0) {
            return 0;
        }
        float rh = reloadHours();
        if (rh <= 0.0f) {
            return sites;
        }
        int now;
        try {
            now = aoc.kingdoms.lukasz.jakowski.Game_Calendar.TURN_ID * 24
                    + aoc.kingdoms.lukasz.jakowski.Game_Calendar.HOUR;
        } catch (Throwable t) {
            return sites;
        }
        if (provinceID < 0 || provinceID >= LAST_HOUR.length) {
            return sites;
        }
        int last = LAST_HOUR[provinceID];
        if (last <= 0 || now < last) {
            LAST_HOUR[provinceID] = now;
            return sites;
        }
        int due = (int) ((now - last) / rh);
        if (due <= 0) {
            return 0;
        }
        if (due > 4) {
            due = 4;
        }
        LAST_HOUR[provinceID] = now;
        return sites * due;
    }

    /** 读档/新局清理。 */
    public static void clear() {
        for (int i = 0; i < LAST_HOUR.length; i++) {
            LAST_HOUR[i] = 0;
        }
    }
}
