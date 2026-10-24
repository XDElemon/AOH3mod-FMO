package aoc.kingdoms.lukasz.map.battles;

import java.io.FileOutputStream;

/**
 * 导弹诊断探针（v56 临时包专用）：记录"空战时为什么没打导弹"。
 *
 * <p>埋点两处（都在 AirMission.missileTick 里，smali 只加一条 invoke）：
 * <ul>
 *   <li>方法入口：本任务自己的省 / 目标省 / 距离² / 导弹射程² / 是否邻省 / 弹数 / 存活数 / 当前弹道状态</li>
 *   <li>导弹起飞后：算出的飞行小时（msFlyHours）</li>
 * </ul>
 *
 * <p>输出追加到游戏自己的外部目录 `aircfg_diag.txt`，每行以 `MDT ` 开头，最多 1500 行。
 * <p><b>发布版必须整体删除。</b>
 */
public final class AirMissileDiag {

    private static final String PATH =
            "/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/aircfg_diag.txt";
    private static final int MAX_LINES = 1500;
    private static final long GAP_MS = 150;

    private static int n = 0;
    private static long lastMs = 0;
    private static int nDraw = 0;
    private static int nStep = 0;

    private AirMissileDiag() {
    }

    private static void log(String s) {
        if (n >= MAX_LINES) {
            return;
        }
        n++;
        try {
            FileOutputStream os = new FileOutputStream(PATH, true);
            os.write(("MDT " + s + "\n").getBytes("UTF-8"));
            os.flush();
            os.close();
        } catch (Throwable t) {
            // 诊断失败不能影响战斗
        }
    }

    private static int dist2(aoc.kingdoms.lukasz.map.province.Province a,
                             aoc.kingdoms.lukasz.map.province.Province b) {
        if (a == null || b == null) {
            return -1;
        }
        int dx = a.getCenterX_Real() - b.getCenterX_Real();
        int dy = a.getCenterY_Real() - b.getCenterY_Real();
        return dx * dx + dy * dy;
    }

    private static boolean isNeighbor(aoc.kingdoms.lukasz.map.province.Province a, int targetPid) {
        if (a == null) {
            return false;
        }
        int sz = a.getNeighboringProvincesSize();
        for (int i = 0; i < sz; i++) {
            if (a.getNeighboringProvinces(i) == targetPid) {
                return true;
            }
        }
        return false;
    }

    /** missileTick 入口：把"能不能打到"的全部输入打出来 */
    public static void logTick(Object missionObj) {
        long now = System.currentTimeMillis();
        if (n >= MAX_LINES || now - lastMs < GAP_MS) {
            return;
        }
        lastMs = now;
        try {
            if (!(missionObj instanceof AirMission)) {
                return;
            }
            AirMission m = (AirMission) missionObj;
            int ownPid = m.airDivisionAtProvinceID;
            int tgtPid = m.targetProvinceID;
            int alive = (m.aliveAircraft == null) ? -1 : m.aliveAircraft.size();
            int aid = -1;
            int rng = 0;
            int cnt = 0;
            float mrr = 0f;
            boolean gun = false;
            if (alive > 0) {
                Object o = m.aliveAircraft.get(0);
                if (o instanceof AirUnit) {
                    aid = ((AirUnit) o).modelAid;
                    rng = AirModelStats.missileRangeOf(aid);
                    cnt = AirModelStats.missileCountOf(aid);
                    mrr = AirModelStats.missileRadarRange(aid);
                    gun = AirModelStats.hasGun(aid);
                }
            }
            aoc.kingdoms.lukasz.map.province.Province a = aoc.kingdoms.lukasz.jakowski.Game.getProvince(ownPid);
            aoc.kingdoms.lukasz.map.province.Province b = aoc.kingdoms.lukasz.jakowski.Game.getProvince(tgtPid);
            int d2 = dist2(a, b);
            boolean nb = isNeighbor(a, tgtPid);
            log("T id=" + m.missionID + " sk=" + m.strikeKind + " fx=" + m.msFxInit
                    + " own=" + ownPid + " tgt=" + tgtPid + " alive=" + alive
                    + " aid=" + aid + " rng=" + rng + " r2=" + (rng * rng)
                    + " cnt=" + cnt + " mrr=" + mrr + " gun=" + (gun ? 1 : 0)
                    + " d2=" + d2 + " nb=" + (nb ? 1 : 0)
                    + " tmid=" + m.strikeTargetMissionID + " h=" + m.msFlyHours
                    + " lmh=" + m.lastMissileHours);
        } catch (Throwable t) {
            log("EXC tick " + t.getClass().getName());
        }
    }

    /** 绘制路径入口：是否被调用、算出的屏幕坐标是否落在视口里 */
    public static void logDraw(Object missionObj) {
        try {
            if (!(missionObj instanceof AirMission)) {
                return;
            }
            AirMission m = (AirMission) missionObj;
            float zoom = aoc.kingdoms.lukasz.jakowski.Game.mapScale.getCurrentScale();
            int px = aoc.kingdoms.lukasz.jakowski.Game.mapCoords.getPosX();
            int py = aoc.kingdoms.lukasz.jakowski.Game.mapCoords.getPosY();
            int sx = (int) ((m.msFxX + px) * zoom);
            int sy = (int) ((m.msFxY + py) * zoom);
            if (nDraw >= 60) {
                return;
            }
            nDraw++;
            log("DRAW id=" + m.missionID + " fx=" + m.msFxInit + " x=" + (int) m.msFxX + " y=" + (int) m.msFxY
                    + " sx=" + sx + " sy=" + sy + " W=" + aoc.kingdoms.lukasz.jakowski.CFG.GAME_WIDTH
                    + " H=" + aoc.kingdoms.lukasz.jakowski.CFG.GAME_HEIGHT + " zoom=" + (int) (zoom * 100));
        } catch (Throwable t) {
            log("EXC draw " + t.getClass().getName());
        }
    }

    /** msFxStep 入口：逐帧推进真的被调到了 */
    public static void logStep(Object missionObj) {
        try {
            if (nStep >= 60 || !(missionObj instanceof AirMission)) {
                return;
            }
            nStep++;
            AirMission m = (AirMission) missionObj;
            log("STEP id=" + m.missionID + " fx=" + m.msFxInit + " x=" + (int) m.msFxX + " y=" + (int) m.msFxY);
        } catch (Throwable t) {
            log("EXC step " + t.getClass().getName());
        }
    }

    /** 导弹起飞（msFlyHours 刚算完）：确认"到底发射没有、飞多久" */
    public static void logFire(Object missionObj, int flyHours) {
        try {
            if (!(missionObj instanceof AirMission)) {
                return;
            }
            AirMission m = (AirMission) missionObj;
            int aid = -1;
            int rng = 0;
            int alive = (m.aliveAircraft == null) ? -1 : m.aliveAircraft.size();
            if (alive > 0) {
                Object o = m.aliveAircraft.get(0);
                if (o instanceof AirUnit) {
                    aid = ((AirUnit) o).modelAid;
                    rng = AirModelStats.missileRangeOf(aid);
                }
            }
            aoc.kingdoms.lukasz.map.province.Province a = aoc.kingdoms.lukasz.jakowski.Game.getProvince(m.airDivisionAtProvinceID);
            aoc.kingdoms.lukasz.map.province.Province b = aoc.kingdoms.lukasz.jakowski.Game.getProvince(m.targetProvinceID);
            log("FIRE id=" + m.missionID + " aid=" + aid + " rng=" + rng + " ft=" + flyHours
                    + " d2=" + dist2(a, b) + " sk=" + m.strikeKind);
        } catch (Throwable t) {
            log("EXC fire " + t.getClass().getName());
        }
    }
}
