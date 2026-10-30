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
            // v133：Real → 世界的拉伸系数（Earth3 = 4）。之前蓝盘漏乘，只有配置值的 1/4。
            int ims = 1;
            aoc.kingdoms.lukasz.map.map.MapBG bg = aoc.kingdoms.lukasz.jakowski.Game.mapBG;
            if (bg != null && bg.iMapScale > 0) {
                ims = bg.iMapScale;
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
                // v130：蓝盘半径走配置（data/air_defense.json 的 detectRangeReal）
                if (!mgr.hasLongWaveRadarBuilding(pid) && !mgr.hasRadarBuilding(pid)
                        && !mgr.hasAAABuilding(pid)) {
                    continue;
                }
                float range = aoc.kingdoms.lukasz.map.battles.AirDefCfgRt.detectReal(pid);
                float rf = range * (float) ims * scale;
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
