package aoc.kingdoms.lukasz.map.battles;

import aoc.kingdoms.lukasz.jakowski.Game;
import aoc.kingdoms.lukasz.map.province.Province;
import aoc.kingdoms.lukasz.map.province.RadarBitmap;

/**
 * 飞机雷达盘（v42）：**并进建筑那张蓝层地图 Pixmap**，与建筑盘走同一条渲染路径。
 *
 * 为什么这么改：v40/v41 把飞机盘画进离屏 FrameBuffer，屏幕上只剩
 * `RadarOverlay.end()` 那一次整图合成；而那次合成的四边形 y 从 0 起、高 +fbH，
 * 本作投影的可视区间是 y ∈ [-GAME_HEIGHT, 0]（见 FBOProvincesBG.draw 的 -(posY+GAME_HEIGHT)），
 * ⇒ 合成整个画在屏幕上方 ⇒ 飞机盘"完全不见"，且因为 FBO 打开成功、降级路径按设计不触发。
 * 建筑盘从来不是这样画的：它是把所有省的盘逐行填进**同一张** Pixmap，最后整图画一次 α=0.1。
 * 飞机盘照抄这条路 ⇒ 同色、同 A、同 α、重叠天然不叠亮，且不可能再"画到屏幕外"。
 *
 * 本类只做**纯计算**（遍历玩家任务、算盘心/盘径，全部按位图像素）：
 *   discs(...) 返回 [cx, cy, rx, ry, cx, cy, rx, ry, ...]，每 4 个 float 一个盘。
 * 填盘（Pixmap.fillRectangle）留在 smali 的 RadarAirBake —— PairIP 桩把 libgdx 退化成 Object，
 * Java 里 `pm.fillRectangle(...)` 编不过（见 tools/build_java.sh 的桩机制）。
 *
 * 换算与建筑盘**逐位同式**（RadarBitmap.refresh 的蓝层）：
 *   cx = (centerX_Real - minX) * bmpW / rangeX
 *   cy = (centerY_Real - minY) * bmpH / rangeY
 *   rx = radarDetect * bmpW / (mapScaleI * rangeX)   ← 与建筑 R 同一公式（缩放抵消）
 *   ry = rx * AirLat.f(centerY_Real)                 ← 与建筑同一纬度压扁
 *
 * 契约：空表 / 无实例 / 无省份 / 探测范围 0 一律跳过，绝不抛异常（渲染线程）。
 */
public final class AirRadarBitmap {

    /** 上一次"玩家任务集合"的签名（脏标记用；0 表示还没初始化过） */
    private static int sig = 0;

    /** 第一次 syncDirty 只记签名、不刷盘（开局别多烘一次） */
    private static boolean sigReady = false;

    private AirRadarBitmap() {
    }

    /**
     * 只认玩家自己的任务。
     * 与 `ProvinceDrawArmy.isMyMission` 同口径（那个是 private，这里照抄判定）。
     */
    public static boolean isMine(AirMission mission) {
        if (mission == null) {
            return false;
        }
        if (Game.player == null) {
            return false;
        }
        return Game.player.iCivID == mission.civID;
    }

    /** 位图坐标：real 地图坐标 → 位图像素（与建筑蓝盘同一式） */
    public static int bmpCoord(int real, int min, int bmpDim, int range) {
        if (range <= 0) {
            return 0;
        }
        return (real - min) * bmpDim / range;
    }

    /**
     * 位图半径：探测范围（Real 单位）→ 位图像素。
     * 与建筑盘同一换算 `R * bmpW / (mapScaleI * rangeX)`；探测范围 <= 0 ⇒ 0（这个任务没有雷达）。
     */
    public static int bmpRadius(float detect, int bmpW, int mapScaleI, int rangeX) {
        if (detect <= 0.0f || bmpW <= 0 || mapScaleI <= 0 || rangeX <= 0) {
            return 0;
        }
        int r = (int) (detect * (float) bmpW / (float) (mapScaleI * rangeX));
        return r < 1 ? 1 : r;
    }

    /**
     * 每个玩家空中任务一个盘：[cx, cy, rx, ry, ...]（位图像素，可直接喂给逐行扫描线填充）。
     * 盘心 = 该任务**当前所在省**的中心；盘径 = 该任务存活飞机的最大 radarDetect。
     */
    public static float[] discs(int bmpW, int bmpH, int minX, int minY, int rangeX, int rangeY,
                                int mapScaleI) {
        if (bmpW <= 0 || bmpH <= 0 || rangeX <= 0 || rangeY <= 0 || mapScaleI <= 0) {
            return new float[0];
        }
        AirForceManager mgr = AirForceManager.getInstance();
        if (mgr == null) {
            return new float[0];
        }
        java.util.List missions = mgr.activeMissions;
        if (missions == null) {
            return new float[0];
        }
        int n = missions.size();
        float[] tmp = new float[n * 4];
        int k = 0;
        for (int i = 0; i < n; i++) {
            Object o = missions.get(i);
            if (!(o instanceof AirMission)) {
                continue;
            }
            AirMission m = (AirMission) o;
            if (!isMine(m)) {
                continue;
            }
            int pid = m.airDivisionAtProvinceID;
            if (pid < 0) {
                continue;
            }
            Province province = Game.getProvince(pid);
            if (province == null) {
                continue;
            }
            int rx = bmpRadius(AirRadar.maxDetect(m.aliveAircraft), bmpW, mapScaleI, rangeX);
            if (rx <= 0) {
                continue;
            }
            int cxReal = province.getCenterX_Real();
            int cyReal = province.getCenterY_Real();
            tmp[k] = (float) bmpCoord(cxReal, minX, bmpW, rangeX);
            tmp[k + 1] = (float) bmpCoord(cyReal, minY, bmpH, rangeY);
            tmp[k + 2] = (float) rx;
            tmp[k + 3] = (float) ((int) (rx * AirLat.f(cyReal)));
            k += 4;
        }
        if (k == tmp.length) {
            return tmp;
        }
        float[] out = new float[k];
        for (int i = 0; i < k; i++) {
            out[i] = tmp[i];
        }
        return out;
    }

    /**
     * 玩家任务的盘"变了没有"——变了就 {@link RadarBitmap#markDirty()}（沿用那边的 60 帧节流）。
     * 变了 = 任务数 / 任务所在省 / 该任务最大探测范围 任一变化（盘心或盘径要重烘）。
     * 分支全在 Java 里，smali 侧只有一条零寄存器的 invoke。
     */
    public static void syncDirty() {
        int s = signature();
        if (!sigReady) {
            sig = s;
            sigReady = true;
            return;
        }
        if (s == sig) {
            return;
        }
        sig = s;
        RadarBitmap.markDirty();
    }

    /** 玩家任务集合的签名：任务数 + 每个玩家任务的 (所在省, 最大探测范围) */
    public static int signature() {
        AirForceManager mgr = AirForceManager.getInstance();
        if (mgr == null) {
            return 0;
        }
        java.util.List missions = mgr.activeMissions;
        if (missions == null) {
            return 0;
        }
        int n = missions.size();
        int s = n + 1;
        for (int i = 0; i < n; i++) {
            Object o = missions.get(i);
            if (!(o instanceof AirMission)) {
                continue;
            }
            AirMission m = (AirMission) o;
            if (!isMine(m)) {
                continue;
            }
            s = s * 31 + m.airDivisionAtProvinceID;
            s = s * 31 + (int) AirRadar.maxDetect(m.aliveAircraft);
        }
        return s;
    }
}
