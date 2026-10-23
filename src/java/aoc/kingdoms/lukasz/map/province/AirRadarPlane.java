package aoc.kingdoms.lukasz.map.province;

import java.util.List;

/**
 * 飞机红盘（v49）：把「这个空中任务的空空导弹射程」画成一个红圈，盘心跟飞机走。
 *
 * <p>用户口径（2026-10-23）：
 * <ul>
 *   <li>战斗机 / 截击机 / 攻击机：红圈 = **空空导弹射程**（{@code AirModelStats.missileRangeOf(aid)}）</li>
 *   <li>轰炸机：本批**不画**，等它自己的对地导弹射程接进来（{@code aid & 3 == 3} 分流）</li>
 * </ul>
 *
 * <p>为什么按 {@code aid & 3} 分型而不读 {@code AirUnit.type} 枚举：
 * 机型槽位编码里 {@code aid = (gen-3)*16 + country*4 + type}，`type` 就是低 2 位
 * （0=F 1=I 2=A 3=B），纯算术、不依赖桩里的枚举常量，也不会因为类型重排而错位。
 *
 * <p>几何：盘心 = 调用方算好的**插值屏幕坐标**（与蓝飞机盘同一个 cx/cy，所以跟着飞机平滑移动）；
 * 半径 = 任务内存活飞机的最大导弹射程 × {@code MapBG.iMapScale} × scale（导弹射程与 AD 同源，是 Real 单位）；
 * 纵向 = {@code AirLat.r(rx, 所在省 getCenterY_Real())}（与蓝盘/红盘的纬度口径一致）。
 */
public final class AirRadarPlane {

    /** 与敌方 AD 红盘同色：红圈 = 火力/威胁。后续若要区分可换 0xFF8822（橙）。 */
    private static final int COLOR_PLANE = 0xFF3333;

    private AirRadarPlane() {
    }

    /**
     * @param sbObj        SpriteBatch（Java 侧只有 Object）
     * @param missionObj   AirMission
     * @param cx           盘心屏幕 X（调用方的插值坐标）
     * @param cy           盘心屏幕 Y
     */
    public static void drawMission(Object sbObj, Object missionObj, int cx, int cy) {
        try {
            if (sbObj == null || !(missionObj instanceof aoc.kingdoms.lukasz.map.battles.AirMission)) {
                return;
            }
            aoc.kingdoms.lukasz.map.battles.AirMission m =
                    (aoc.kingdoms.lukasz.map.battles.AirMission) missionObj;
            List list = m.aliveAircraft;
            if (list == null || list.isEmpty()) {
                return;
            }
            int best = 0;
            final int n = list.size();
            for (int i = 0; i < n; i++) {
                Object o = list.get(i);
                if (!(o instanceof aoc.kingdoms.lukasz.map.battles.AirUnit)) {
                    continue;
                }
                aoc.kingdoms.lukasz.map.battles.AirUnit u =
                        (aoc.kingdoms.lukasz.map.battles.AirUnit) o;
                int aid = u.modelAid;
                if (aid < 0) {
                    continue;
                }
                // 低 2 位 = 机型轴：0 战斗 1 截击 2 攻击 3 轰炸。轰炸机等"对地导弹射程"接入后再画。
                if ((aid & 3) == 3) {
                    continue;
                }
                int r = aoc.kingdoms.lukasz.map.battles.AirModelStats.missileRangeOf(aid);
                if (r > best) {
                    best = r;
                }
            }
            if (best <= 0) {
                return;
            }
            aoc.kingdoms.lukasz.map.map.MapScale ms = aoc.kingdoms.lukasz.jakowski.Game.mapScale;
            if (ms == null) {
                return;
            }
            final float scale = ms.getCurrentScale();
            if (scale <= 0.0f) {
                return;
            }
            int ims = 1;
            aoc.kingdoms.lukasz.map.map.MapBG bg = aoc.kingdoms.lukasz.jakowski.Game.mapBG;
            if (bg != null && bg.iMapScale > 0) {
                ims = bg.iMapScale;
            }
            int rx = (int) ((float) best * (float) ims * scale);
            if (rx < 1) {
                return;
            }
            int ry = rx;
            aoc.kingdoms.lukasz.map.province.Province prov =
                    aoc.kingdoms.lukasz.jakowski.Game.getProvince(m.airDivisionAtProvinceID);
            if (prov != null) {
                ry = aoc.kingdoms.lukasz.map.battles.AirLat.r(rx, prov.getCenterY_Real());
            }
            RadarDiag.log("PL alive=" + RadarDiag.i(list.size()) + " best=" + RadarDiag.i(best)
                    + " rx=" + RadarDiag.i(rx) + " cx=" + RadarDiag.i(cx) + " cy=" + RadarDiag.i(cy)
                    + " active=" + RadarOverlay.active);
            RadarOverlay.drawDiscAnyColor(sbObj, cx, cy, rx, ry, COLOR_PLANE);
        } catch (Throwable t) {
            // 渲染线程抛异常 = 闪退，与 AirRadarAD/AirRadarBld 同样吞掉
        }
    }
}
