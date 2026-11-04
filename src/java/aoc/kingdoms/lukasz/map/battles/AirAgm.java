package aoc.kingdoms.lukasz.map.battles;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.province.Province;

/**
 * M4 AGM 对地弹（v155）：发射决策 + 弹池 + 防空拦截 roll。
 *
 * <p>用户 2026-11-05 拍板的口径：
 * <ul>
 *   <li><b>目标</b>：敌方陆军师 —— 只打师，不拆省/建筑/机场（拆楼是 S8 的口径，不走这里）；</li>
 *   <li><b>开火</b>：目标师一进 {@code AGMRange} 就打，不等飞到目标省（"进射程就直接开"）；</li>
 *   <li><b>伤害</b>：**暂不结算**。Land 侧正在做陆军改革，对陆军伤害等两线合并后再接
 *       （钩子预留在 {@link AirDamage#agmApplyDamage}，本类只负责把弹打出去并记账）；</li>
 *   <li><b>拦截</b>：目标省有防空阵地 ⇒ 发射时 roll 一次命中率，拦下则半空爆炸、不结算。</li>
 * </ul>
 *
 * <p>为什么弹池放本类、不往 {@code AirMission} 加字段：AirMission 的字段是**存档契约**
 * （`Save_AirMission` 只加不删），M4 还在试口径，先用 missionID → 剩余数的旁表，
 * 读档/新局由 {@link AirProjectileCore#clear()} 一并清掉。
 *
 * <p>为什么选目标要反射读字段：`ArmyDivision` 是树外类，桩里退化成 Object，
 * 直接按类型取字段/方法是 `NoSuchFieldError`（v143 真机闪退的同一类坑），按名字反射最稳。
 */
public final class AirAgm {

    /** 同一任务两次 AGM 齐射之间至少隔 4 游戏小时（与 AAM 同口径）。 */
    public static final int COOLDOWN_HOURS = 4;

    /** 每任务两次"看目标"之间至少隔 400ms（目标扫描要遍历全陆军表，别每帧扫）。 */
    public static final long SCAN_MS = 400L;

    /** missionID → 剩余 AGM 数。 */
    private static final java.util.HashMap<Long, Integer> LEFT = new java.util.HashMap<Long, Integer>();
    /** missionID → 上次开火的小时（TURN_ID*24+HOUR）。 */
    private static final java.util.HashMap<Long, Integer> LAST = new java.util.HashMap<Long, Integer>();
    /** missionID → 上次扫描的 System.currentTimeMillis()。 */
    private static final java.util.HashMap<Long, Long> SCAN = new java.util.HashMap<Long, Long>();

    /** 日志预算（每进程）：spawn/intc/hit/fire 共用，防止刷爆 diag。 */
    private static int logBudget = 120;

    private AirAgm() {
    }

    // ------------------------------------------------------------------ 入口

    /** 由 `AirLaunch.tick` 在 type == ATTACK_ARMY 时调用（每次任务 update 一次）。 */
    public static void tick(AirMission self) {
        try {
            doTick(self);
        } catch (Throwable t) {
            log("nAGM ERR " + t);
        }
    }

    private static void doTick(AirMission self) {
        if (self == null) {
            return;
        }
        int st = AirLaunch.ord(AirLaunch.field(self, "state"));
        if (st != AirLaunch.MS_EN_ROUTE && st != AirLaunch.MS_EXECUTING) {
            return;
        }
        if (self.airDivisionAtProvinceID <= 0) {
            return;
        }
        java.util.List alive = self.aliveAircraft;
        if (alive == null || alive.isEmpty()) {
            return;
        }
        int aid = AirLaunch.modelAidOf(self);
        if (aid < 0 || !AirModelStats.canAGMissile(aid)) {
            return;   // 打不了空地的机型根本不该有 AGM 弹池
        }
        // ---- 扫描节流（目标表是全陆军，别跟着帧跑）----
        long nowMs = System.currentTimeMillis();
        Long lastScan = SCAN.get(self.missionID);
        if (lastScan != null && nowMs - lastScan.longValue() < SCAN_MS) {
            return;
        }
        SCAN.put(self.missionID, Long.valueOf(nowMs));

        // ---- 弹池惰性初始化：每机弹数 × 存活机数 ----
        Integer leftObj = LEFT.get(self.missionID);
        if (leftObj == null) {
            int per = AirModelStats.missileCountOf(aid);
            int n = per * alive.size();
            LEFT.put(self.missionID, Integer.valueOf(n));
            leftObj = Integer.valueOf(n);
        }
        int left = leftObj.intValue();
        if (left <= 0) {
            return;
        }

        // ---- 冷却 ----
        int now = Game_Calendar.TURN_ID * 24 + Game_Calendar.HOUR;
        Integer lastHour = LAST.get(self.missionID);
        if (lastHour != null && now - lastHour.intValue() < COOLDOWN_HOURS) {
            return;
        }

        // ---- 选目标：射程内最近的敌方陆军师 ----
        int range = agmRangeOf(aid);
        int prefer = intOf(self, "targetProvinceID");
        Object army = pickTarget(self, range, prefer);
        if (army == null) {
            return;
        }
        int pid = intOf(army, "provinceID");
        String key = strOf(army, "key");

        // ---- 开火 ----
        int shots = AirAgmMath.shotsFor(alive.size(), left);
        if (shots <= 0) {
            return;
        }
        float[] out = new float[2];
        if (!AirPos.worldOf(self.missionID, nowMs, out)) {
            log("nAGM nopos m=" + self.missionID);
            return;
        }
        Province tp = Game.getProvince(pid);
        if (tp == null) {
            return;
        }
        float tx = tp.getCenterX() + tp.getShiftX();
        float ty = tp.getCenterY() + tp.getShiftY();

        int type = MissileTypeIds.indexOf("AGM");
        if (type < 0) {
            return;
        }
        float spd = AirModelStats.missileSpeed(aid);
        if (spd <= 0.0f) {
            spd = MissileTypes.speedOf(type);
        }
        float scale = AirProjectileCore.mapScale();
        float life = AirAgmMath.lifeFor(range, spd, scale);

        int fired = 0;
        for (int i = 0; i < shots; i++) {
            int slot = AirProjectileCore.spawnEx(type, self.civID, 0L, pid,
                    out[0], out[1], tx, ty, spd, life, 0.0f);
            if (slot < 0) {
                break;
            }
            AirProjectile p = AirProjectileCore.get(slot);
            if (p != null) {
                p.shooterMissionID = self.missionID;
                p.targetArmyKey = key;
                if (interceptable(pid, self.civID)) {
                    p.intercepted = true;
                    p.interceptAt = p.lifeTurns * 0.55f;
                    log("nAGM intc m=" + self.missionID + " p=" + pid + " key=" + key);
                }
            }
            fired++;
        }
        if (fired <= 0) {
            return;
        }
        LEFT.put(self.missionID, Integer.valueOf(left - fired));
        LAST.put(self.missionID, Integer.valueOf(now));
        log("nAGM fire m=" + self.missionID + " n=" + fired + " left=" + (left - fired)
                + " tgt=" + pid + " key=" + key + " d=" + (int) Math.sqrt(
                        (tx - out[0]) * (tx - out[0]) + (ty - out[1]) * (ty - out[1]))
                + " r=" + range);
    }

    // ------------------------------------------------------------------ 选目标

    /**
     * 在 {@code range} 内挑敌方陆军师：**任务指定的目标省优先**，没有就取最近的。
     *
     * <p>候选来自 `ArmyManager.lArmy`（全局陆军表）：跳过自己/盟国/空军编制（key `airhq*`）、
     * 空师（iArmy ≤ 0）、省不在射程内的。
     */
    static Object pickTarget(AirMission self, int range, int preferProvince) {
        Object listObj = staticField("aoc.kingdoms.lukasz.map.army.ArmyManager", "lArmy");
        if (!(listObj instanceof java.util.List)) {
            return null;
        }
        java.util.List list = (java.util.List) listObj;
        Object best = null;
        Object prefer = null;   // 任务指定省的师优先（"打 A 省就别把弹扔到 B 省"）
        int bestD = Integer.MAX_VALUE;
        for (int i = 0; i < list.size(); i++) {
            Object o;
            try {
                o = list.get(i);
            } catch (Throwable t) {
                continue;
            }
            if (o == null) {
                continue;
            }
            int civ = intOf(o, "civID");
            if (civ == self.civID || civ < 0) {
                continue;
            }
            String k = strOf(o, "key");
            if (k != null && k.startsWith("airhq")) {
                continue;   // 空军编制不是陆军师
            }
            if (intOf(o, "iArmy") <= 0) {
                continue;
            }
            int pid = intOf(o, "provinceID");
            if (pid < 0) {
                continue;
            }
            if (!atWar(self.civID, civ)) {
                continue;
            }
            if (!AirLaunch.inRange(self.airDivisionAtProvinceID, pid, range)) {
                continue;
            }
            if (pid == preferProvince) {
                prefer = o;
            }
            int d = provinceDist(self.airDivisionAtProvinceID, pid);
            if (d < bestD) {
                bestD = d;
                best = o;
            }
        }
        return prefer != null ? prefer : best;
    }

    /** 两省中心距（Real 单位，与 MissileRange/AGMRange 同一空间）；取不到回 MAX。 */
    static int provinceDist(int from, int to) {
        if (from < 0 || to < 0) {
            return Integer.MAX_VALUE;
        }
        if (from == to) {
            return 0;
        }
        Province p = Game.getProvince(from);
        Province q = Game.getProvince(to);
        if (p == null || q == null) {
            return Integer.MAX_VALUE;
        }
        int dx = q.getCenterX_Real() - p.getCenterX_Real();
        int dy = q.getCenterY_Real() - p.getCenterY_Real();
        return (int) Math.sqrt((double) dx * dx + (double) dy * dy);
    }

    // ------------------------------------------------------------------ 拦截

    /**
     * 该省有没有敌方防空阵地，有就 roll 一次命中率。
     *
     * <p>只判一次（用户/调研口径：别让飞过三省就被 roll 三次）；
     * 判定放在发射时，命中率沿用 `AirDefCfg` 的单发命中率。
     */
    static boolean interceptable(int provinceID, int attackerCiv) {
        int sites = AirDefense.airDefenseAt(provinceID);
        if (sites <= 0) {
            return false;
        }
        Province p = Game.getProvince(provinceID);
        if (p == null) {
            return false;
        }
        int owner = p.getCivID();
        if (owner == attackerCiv) {
            return false;   // 自家阵地不拦自己
        }
        return AirAgmMath.rollHit((float) Math.random(), AirDefCfgRt.hitChance());
    }

    // ------------------------------------------------------------------ 纯函数
    // 齐射发数/寿命/拦截判定都在 AirAgmMath（闸门 B61 真跑），这里只留"射程兜底"这一条。

    /** 机型 AGM 射程：没有单独配就继承 MissileRange（数据侧已兜底，这里再兜一次）。 */
    public static int agmRangeOf(int aid) {
        int r = 0;
        try {
            r = AirModelStats.agmRangeOf(aid);
        } catch (Throwable ignored) {
        }
        if (r <= 0) {
            r = AirModelStats.missileRangeOf(aid);
        }
        return r > 0 ? r : 100;
    }

    // ------------------------------------------------------------------ 状态

    /** 读档/新局清空（由 `AirProjectileCore.clear` 调用）。 */
    public static void clear() {
        LEFT.clear();
        LAST.clear();
        SCAN.clear();
        logBudget = 120;
    }

    /** 任务结束时释放（可选；不做也只是几 KB 的旁表）。 */
    public static void forget(long missionID) {
        LEFT.remove(Long.valueOf(missionID));
        LAST.remove(Long.valueOf(missionID));
        SCAN.remove(Long.valueOf(missionID));
    }

    /** 剩余弹数（诊断/闸门用；没开过火返回 -1）。 */
    public static int leftOf(long missionID) {
        Integer v = LEFT.get(Long.valueOf(missionID));
        return v == null ? -1 : v.intValue();
    }

    // ------------------------------------------------------------------ 反射/工具

    private static Object staticField(String cls, String name) {
        try {
            return Class.forName(cls).getField(name).get(null);
        } catch (Throwable t) {
            return null;
        }
    }

    static int intOf(Object o, String name) {
        Object v = AirLaunch.field(o, name);
        return v instanceof Integer ? ((Integer) v).intValue() : -1;
    }

    static String strOf(Object o, String name) {
        Object v = AirLaunch.field(o, name);
        return v instanceof String ? (String) v : null;
    }

    /** 是否交战（走 `DiplomacyManager.isAtWar`；拿不到就按"不打"处理，宁可不打也别误伤盟友）。 */
    private static java.lang.reflect.Method AT_WAR;

    static boolean atWar(int a, int b) {
        if (a < 0 || b < 0 || a == b) {
            return false;
        }
        try {
            if (AT_WAR == null) {
                AT_WAR = Class.forName("aoc.kingdoms.lukasz.map.diplomacy.DiplomacyManager")
                        .getMethod("isAtWar", int.class, int.class);
            }
            Object v = AT_WAR.invoke(null, Integer.valueOf(a), Integer.valueOf(b));
            return v instanceof Boolean && ((Boolean) v).booleanValue();
        } catch (Throwable t) {
            return false;
        }
    }

    private static void log(String s) {
        if (logBudget <= 0) {
            return;
        }
        logBudget--;
        try {
            AirDbgLog.dWrite(s);
        } catch (Throwable ignored) {
        }
    }
}
