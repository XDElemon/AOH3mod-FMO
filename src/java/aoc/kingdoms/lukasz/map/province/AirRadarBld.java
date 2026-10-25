package aoc.kingdoms.lukasz.map.province;

import java.util.Iterator;
import java.util.Set;

/** 建筑雷达盘（v44）：把本国雷达省的盘喂进飞机盘那张离屏 FrameBuffer。 */
public final class AirRadarBld {

    private static final String T_LONG  = "MIDCOURSE_ABM";
    private static final String T_RADAR = "RADAR";
    private static final String T_AAA   = "ABM_SITE";

    private AirRadarBld() {
    }

    public static void drawAll(Object sbObj) {
        try {
            if (sbObj == null) {
                return;
            }
            aoc.kingdoms.lukasz.map.battles.AirForceManager mgr =
                    aoc.kingdoms.lukasz.map.battles.AirForceManager.getInstance();
            if (mgr == null) {
                return;
            }
            AirDiscQueue.begin();   // v83：本帧盘队列从这里开始收集
            Set set = mgr.radarProvinces;
            if (set == null || set.isEmpty()) {
                return;
            }
            aoc.kingdoms.lukasz.jakowski.Player.Player pl = aoc.kingdoms.lukasz.jakowski.Game.player;
            if (pl == null) {
                return;
            }
            aoc.kingdoms.lukasz.map.map.MapScale ms = aoc.kingdoms.lukasz.jakowski.Game.mapScale;
            if (ms == null) {
                return;
            }
            final int myCiv = pl.iCivID;
            final float scale = ms.getCurrentScale();
            if (scale <= 0.0f) {
                return;
            }
            Iterator it = set.iterator();
            while (it.hasNext()) {
                Object o = it.next();
                if (!(o instanceof Integer)) {
                    continue;
                }
                int pid = ((Integer) o).intValue();
                Province prov = aoc.kingdoms.lukasz.jakowski.Game.getProvince(pid);
                if (prov == null) {
                    continue;
                }
                if (prov.getCivID() != myCiv) {
                    continue;
                }
                float range;
                if (mgr.hasLongWaveRadarBuilding(pid)) {
                    range = aoc.kingdoms.lukasz.map.battles.RadarDataManager.getRange(T_LONG);
                } else if (mgr.hasRadarBuilding(pid)) {
                    range = aoc.kingdoms.lukasz.map.battles.RadarDataManager.getRange(T_RADAR);
                } else if (mgr.hasAAABuilding(pid)) {
                    range = aoc.kingdoms.lukasz.map.battles.RadarDataManager.getRange(T_AAA);
                } else {
                    continue;
                }
                if (range <= 0.0f) {
                    // 配置加载失败时的兜底：与 RadarConfig.json 的三档一致
                    range = (range == 0.0f && mgr.hasLongWaveRadarBuilding(pid)) ? 2400.0f
                            : (mgr.hasRadarBuilding(pid) ? 600.0f : 300.0f);
                }
                float rf = range * scale;
                if (rf <= 0.0f) {
                    continue;
                }
                int rx = (int) rf;
                if (rx < 1) {
                    continue;
                }
                int cx = ProvinceDrawArmy.getAirDrawPosX(pid, scale);
                int cy = ProvinceDrawArmy.getAirDrawPosY(pid, scale);
                int ry = aoc.kingdoms.lukasz.map.battles.AirLat.r(rx, prov.getCenterY_Real());
                AirDiscQueue.addBlue(cx, cy, rx, ry);   // v83：入库，本帧末尾按半径排序统一绘制
            }
        } catch (Throwable t) {
        }
    }
}
