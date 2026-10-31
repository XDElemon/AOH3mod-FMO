package aoc.kingdoms.lukasz.map.battles;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.jakowski.Game_Calendar;
import aoc.kingdoms.lukasz.map.province.Province;

/**
 * 空空发射决策（v143）：把 `AirMission.missileTick` 的**发射半段**整段搬到 Java。
 *
 * <p>为什么搬：原来发射判定（射程/4 小时冷却/弹池/目标选择）是 550 行手写 smali，
 * 里面混着枚举比较、邻省判定、字符串拼接，极性错一次就是"哑火"或"乱打"，而且闸门看不见。
 * 搬成 Java 后这些都由 javac 决定，smali 只留一句 invoke。
 *
 * <p>**在飞/小时钟那半段仍在 smali**（`missileTick` 前半）：v142 结算改由新弹表驱动后
 * 它已被 `AirDamage.onExpire` 的清理架空，等第 3 批连同 `msFx*` 字段一起删。
 *
 * <p>枚举序号是**存档契约**（`MissionType` 的 ordinal 进存档），不能重排：
 * <pre>
 *   MissionType : AIR_SUPERIORITY=0 ATTACK_ARMY=1 INTERCEPT=2 PATROL=3 STRATEGIC_BOMBING=4
 *   MissionState: ABORTED=0 COMPLETED=1 EN_ROUTE=2 EXECUTING=3 PLANNING=4 RETURNING=5
 *   AirType     : ATTACKER=0 BOMBER=1 FIGHTER=2 INTERCEPTOR=3
 * </pre>
 */
public final class AirLaunch {

    public static final int MT_ATTACK_ARMY = 1;
    public static final int MT_INTERCEPT = 2;
    public static final int MT_STRATEGIC_BOMBING = 4;

    public static final int MS_EN_ROUTE = 2;
    public static final int MS_EXECUTING = 3;

    public static final int AT_INTERCEPTOR = 3;

    /** 同一个任务两次齐射之间至少隔 4 游戏小时（1 回合 = 2 小时）。 */
    public static final int COOLDOWN_HOURS = 4;

    private AirLaunch() {
    }

    /** 由 `AirMission.missileTick` 每次调用（原版在 `AirMission.update` 的节流分支里）。 */
    public static void tick(AirMission self) {
        if (self == null) {
            return;
        }
        if (ord(field(self, "type")) != MT_INTERCEPT) {
            return;
        }
        int st = ord(field(self, "state"));
        if (st != MS_EN_ROUTE && st != MS_EXECUTING) {
            return;
        }
        if (self.airDivisionAtProvinceID <= 0) {
            return;
        }

        // ---- 弹池惰性初始化（每机弹数 × 存活机数）----
        if (self.missilePerPlane <= 0 && self.strikeKind != 2) {
            java.util.List list = self.aliveAircraft;
            if (list == null || list.size() <= 0) {
                return;
            }
            int aid = modelAidOf(self);
            int per = AirModelStats.missileCountOf(aid);
            self.missilePerPlane = per;
            self.missilesLeft = per * list.size();
            AirDbgLog.dKey("AIRDBG", "nMS init p=" + per + " n=" + self.missilesLeft
                    + " g=" + aid + " hpt=" + Game.HOURS_PER_TURN
                    + " t=" + Game_Calendar.TURN_ID + " h=" + Game_Calendar.HOUR);
        }
        if (self.missilesLeft <= 0) {
            if (self.strikeKind != 2) {
                self.strikeKind = 2;
                AirDbgLog.dKey("AIRDBG", "nMS dry t=" + Game_Calendar.TURN_ID
                        + " h=" + Game_Calendar.HOUR + " id=" + self.missionID);
            }
            return;
        }

        // ---- 冷却 ----
        int now = Game_Calendar.TURN_ID * 24 + Game_Calendar.HOUR;
        if (self.lastMissileHours > 0 && now - self.lastMissileHours < COOLDOWN_HOURS) {
            return;
        }

        // ---- 选目标（截击机优先打轰炸/对地，找不到再放宽）----
        AirMission tgt = pickTarget(self);
        if (tgt == null) {
            return;
        }

        // ---- 开火 ----
        int size = self.aliveAircraft.size();
        if (self.missilesLeft < size) {
            size = self.missilesLeft;
        }
        self.missilesLeft -= size;
        self.lastMissileHours = now;
        self.lastMissileMs = System.currentTimeMillis();
        self.strikeKind = 1;
        self.strikeTargetMissionID = tgt.missionID;
        self.strikeProgress = 0.0f;

        int aid = modelAidOf(self);
        int range = AirModelStats.missileRangeOf(aid);
        float spd = AirModelStats.missileSpeed(aid);
        int dist = (int) Game.getDistanceFromProvinceToProvince_Simpler(
                self.airDivisionAtProvinceID, tgt.airDivisionAtProvinceID);
        self.msFlyHours = AirMissileCore.flightHours(dist, range, spd);
        self.msFxTgtAt = tgt.airDivisionAtProvinceID;
        self.msFxInit = 0;

        AirDbgLog.dKey("AIRDBG", "nMS fire t=" + Game_Calendar.TURN_ID
                + " h=" + Game_Calendar.HOUR
                + " left=" + self.missilesLeft
                + " ammo=" + size
                + " tgt=" + tgt.missionID
                + " d=" + dist
                + " ft=" + self.msFlyHours
                + " r=" + range);

        // 旧视觉弹的初始化（第 3 批随 msFx* 一起退场）
        AirMissileCore.seedFx(self);
        AirMissileCore.markHourMode(self);
        // 新弹表：这一发是真正会结算的那颗
        AirProjectileCore.spawnFromMission(self);
        self.msFxTN = 0;
        self.msFxTH = 15;
    }

    /** 选目标：遍历所有在飞敌机任务，取**最后一个**满足条件的（原版就是后者覆盖前者）。 */
    static AirMission pickTarget(AirMission self) {
        AirForceManager mgr = AirForceManager.getInstance();
        if (mgr == null || mgr.activeMissions == null) {
            return null;
        }
        boolean onlyStrike = isInterceptor(self);
        AirMission found = scan(self, mgr.activeMissions, onlyStrike);
        if (found == null && onlyStrike) {
            found = scan(self, mgr.activeMissions, false);
        }
        return found;
    }

    private static AirMission scan(AirMission self, java.util.List list, boolean onlyStrike) {
        AirMission best = null;
        int range = maxRangeOf(self);
        for (int i = 0; i < list.size(); i++) {
            Object o = list.get(i);
            if (!(o instanceof AirMission)) {
                continue;
            }
            AirMission e = (AirMission) o;
            if (e == self || e.civID == self.civID) {
                continue;
            }
            int st = ord(field(e, "state"));
            if (st != MS_EN_ROUTE && st != MS_EXECUTING) {
                continue;
            }
            if (e.airDivisionAtProvinceID <= 0) {
                continue;
            }
            if (e.aliveAircraft == null || e.aliveAircraft.isEmpty()) {
                continue;
            }
            if (onlyStrike) {
                int ty = ord(field(e, "type"));
                if (ty != MT_ATTACK_ARMY && ty != MT_STRATEGIC_BOMBING) {
                    continue;
                }
            }
            if (!inRange(self.airDivisionAtProvinceID, e.airDivisionAtProvinceID, range)) {
                continue;
            }
            best = e;
        }
        return best;
    }

    /**
     * 射程判定（原版 `missileIsNeighbor` 的逐字复刻）：
     * 同省 → 直接算；邻省拓扑 → 算（大省中心距可能超过射程）；否则按中心距 ≤ 射程。
     */
    static boolean inRange(int from, int to, int rangeReal) {
        if (from < 0 || to < 0) {
            return false;
        }
        if (from == to) {
            return true;
        }
        Province p = Game.getProvince(from);
        if (p == null) {
            return false;
        }
        int n = p.getNeighboringProvincesSize();
        for (int i = 0; i < n; i++) {
            if (p.getNeighboringProvinces(i) == to) {
                return true;
            }
        }
        Province q = Game.getProvince(to);
        if (q == null) {
            return false;
        }
        int dx = q.getCenterX_Real() - p.getCenterX_Real();
        int dy = q.getCenterY_Real() - p.getCenterY_Real();
        int r = rangeReal > 0 ? rangeReal : 100;
        return dx * dx + dy * dy <= r * r;
    }

    /** 第一架存活机的机型 id；没有活机回 -1。 */
    static int modelAidOf(AirMission m) {
        if (m == null || m.aliveAircraft == null || m.aliveAircraft.isEmpty()) {
            return -1;
        }
        Object o = m.aliveAircraft.get(0);
        return o instanceof AirUnit ? ((AirUnit) o).modelAid : -1;
    }

    /** 射程：取第一架存活机的 `MissileRange`，取不到回 100（原版同一兜底）。 */
    static int maxRangeOf(AirMission m) {
        int aid = modelAidOf(m);
        int r = aid >= 0 ? AirModelStats.missileRangeOf(aid) : 100;
        return r > 0 ? r : 100;
    }

    /** 第一架存活机是不是截击机（`AirUnit$AirType.INTERCEPTOR`）。 */
    static boolean isInterceptor(AirMission m) {
        if (m == null || m.aliveAircraft == null || m.aliveAircraft.isEmpty()) {
            return false;
        }
        Object o = m.aliveAircraft.get(0);
        if (!(o instanceof AirUnit)) {
            return false;
        }
        return ord(field(o, "type")) == AT_INTERCEPTOR;
    }

    /**
     * 反射读字段（v144 修 v143 闪退）。
     *
     * <p>为什么必须反射：`gen_java_stubs.py` 把树外/嵌套枚举类型退化成 `Object`，
     * 于是 javac 会按 `AirMission.type:Ljava/lang/Object;` 生成引用，而真类是
     * `type:LMissionType;` —— Dalvik 字段引用**带类型签名**，运行时直接
     * `NoSuchFieldError: No field type of type Ljava/lang/Object;`（v143 真机闪退）。
     * 按名字反射取的是真值，跟桩无关。
     *
     * <p>缓存 Field（key = 类名#字段名），每帧调用也不会成为热点。
     */
    private static final java.util.HashMap<String, java.lang.reflect.Field> FIELD_CACHE =
            new java.util.HashMap<String, java.lang.reflect.Field>();

    static Object field(Object o, String name) {
        if (o == null) {
            return null;
        }
        String key = o.getClass().getName() + "#" + name;
        java.lang.reflect.Field f = FIELD_CACHE.get(key);
        if (f == null) {
            try {
                f = o.getClass().getField(name);
                FIELD_CACHE.put(key, f);
            } catch (Throwable t) {
                return null;
            }
        }
        try {
            return f.get(o);
        } catch (Throwable t) {
            return null;
        }
    }

    /** 枚举在 Java 桩里是 Object ⇒ 反射取 ordinal（与 `AirBuildPick.ordinalOf` 同一手法）。 */
    static int ord(Object e) {
        if (e == null) {
            return -1;
        }
        if (e instanceof Enum) {
            return ((Enum<?>) e).ordinal();
        }
        try {
            Object v = e.getClass().getMethod("ordinal").invoke(e);
            if (v instanceof Integer) {
                return ((Integer) v).intValue();
            }
        } catch (Throwable ignored) {
        }
        return -1;
    }
}
