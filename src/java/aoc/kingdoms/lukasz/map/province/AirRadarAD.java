package aoc.kingdoms.lukasz.map.province;

import java.util.Iterator;
import java.util.Set;

/**
 * 防空阵地红盘（v48）：把「敌方有 AAA 防空建筑的省」的火力范围，喂进飞机盘那张离屏 FrameBuffer。
 *
 * <p>为什么要有这个类：红盘原来是 {@code RadarBitmap.refreshAd()} 把椭圆**逐行烘进整图 Pixmap**
 * （16 MB，60 帧节流、易主不刷新），和蓝雷达盘完全是两套东西。现在改成和蓝盘同一条路径：
 * 每帧现算 (盘心, 盘径) → {@code RadarOverlay.drawDiscAnyColor} → 同一个 FBO、同一次整图合成。
 *
 * <p>几何口径（与 {@code AirDefense.inRange} 的命中判定**同源**，别换成雷达的 300/600/2400）：
 * <ul>
 *   <li>盘心 = 该省中心 → {@code ProvinceDrawArmy.getAirDrawPosX/Y(pid, scale)}（屏幕像素，含地图平移）</li>
 *   <li>半径 = 100（有 RADAR / LONGWAVE 建筑时 130）× {@code MapBG.iMapScale} × {@code scale}</li>
 *   <li>纬度压扁 = {@code AirLat.r(rx, getCenterY_Real())}</li>
 *   <li>过滤 = {@code radarProvinces ∩ hasAAABuilding ∩ 敌方}（本国 AAA 不画，与旧烘焙层一致）</li>
 * </ul>
 */
public final class AirRadarAD {


    /** 敌方防空圈颜色：1.0 / 0.2 / 0.2。旧烘焙层是 0.8/0.2/0.2、屏上净 α 0.19；
     *  改走 FBO 后净 α 0.15 ⇒ 把 R 抬到 1.0，红通道亮度 0.152 → 0.15，视觉基本不变。 */
    private static final int COLOR_AD = 0xFF3333;

    private AirRadarAD() {
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
            final int dbgSet = set.size();
            // Real → 屏幕像素的拉伸系数（Earth3 = 1 × 4 = 4）；拿不到就按 1 兜底，圈会偏小但不崩
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
                aoc.kingdoms.lukasz.map.province.Province prov =
                        aoc.kingdoms.lukasz.jakowski.Game.getProvince(pid);
                if (prov == null) {
                    continue;
                }
                // v51：恢复敌我门 —— 只画**本国** AAA 的火力圈（敌方阵地的圈不该被玩家看见；
                // 与蓝雷达盘"谁建谁看得见"一致）。旧烘焙层是反过来的（只画敌方），两边都不要。
                if (prov.getCivID() != myCiv) {
                    continue;
                }
                if (!mgr.hasAAABuilding(pid)) {
                    continue;
                }
                // v130：红盘半径走配置（AirDefCfg: rangeReal / 有雷达取 rangeBonusReal）
                float base = aoc.kingdoms.lukasz.map.battles.AirDefCfgRt.engageReal(pid);
                float rf = base * (float) ims * scale;
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
                AirDiscQueue.addColor(cx, cy, rx, ry, COLOR_AD);   // v83：入库，与蓝盘一起按半径排序
            }
        } catch (Throwable t) {
            // 渲染线程上抛异常 = 直接闪退；与 AirRadarBld 一样吞掉
        }
    }
}
