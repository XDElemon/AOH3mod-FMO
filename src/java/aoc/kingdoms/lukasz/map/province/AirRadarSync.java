package aoc.kingdoms.lukasz.map.province;

/**
 * 拆建筑后的雷达注册表对账（v77）。
 *
 * <p>原版 `Province.destroyBuilding` 在拆掉 RADAR / LONGRADAR / AAA 任意一栋后，
 * 直接调 `AirForceManager.unregisterRadar(pid)` —— 它不看这个省还剩不剩别的雷达类建筑，
 * 无条件 `radarProvinces.remove(pid)`。于是一拆就把整省从雷达注册表里摘掉：
 * 蓝盘、AD 红盘、以及依赖这一集合的判定全部消失，重新建一栋才被 `registerRadar` 加回来。</p>
 *
 * <p>本类在拆完后按"现存建筑"对账：还剩任意雷达类建筑就保持/恢复注册，一个都不剩才注销。</p>
 */
public final class AirRadarSync {

    private AirRadarSync() {
    }

    /** 拆掉一栋雷达类建筑之后调用；provinceID 为省 ID。 */
    public static void onRadarBuildingRemoved(int provinceID) {
        try {
            aoc.kingdoms.lukasz.map.battles.AirForceManager mgr =
                    aoc.kingdoms.lukasz.map.battles.AirForceManager.getInstance();
            if (mgr == null) {
                return;
            }
            if (mgr.hasRadarBuilding(provinceID)
                    || mgr.hasAAABuilding(provinceID)
                    || mgr.hasLongWaveRadarBuilding(provinceID)) {
                // 还有别的雷达类建筑：保持注册（registerRadar 幂等，顺手 markDirty）
                mgr.registerRadar(provinceID);
            } else {
                mgr.unregisterRadar(provinceID);
            }
        } catch (Throwable t) {
            // 建筑已拆；这里出错只是注册表不刷新，不能让拆建筑流程崩掉
        }
    }
}
