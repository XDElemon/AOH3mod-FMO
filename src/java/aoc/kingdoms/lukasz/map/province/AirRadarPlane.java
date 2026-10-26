package aoc.kingdoms.lukasz.map.province;

import java.util.List;

/**
 * 飞机红盘（v50）：把己方空中任务的「空空导弹射程」画成红圈，盘心跟飞机走。
 *
 * <p>用户口径（2026-10-23）：
 * <ul>
 *   <li>战斗机 / 截击机 / 攻击机：红圈 = <b>空空导弹射程</b>（{@code AirModelStats.missileRangeOf(aid)}）</li>
 *   <li>轰炸机：本批不画（{@code aid & 3 == 3} 跳过），等它自己的对地导弹射程接进来</li>
 * </ul>
 *
 * <p><b>v50 关键修复：从"蓝盘循环里顺带画"改成独立一遍。</b>
 * 原来红盘挂在 {@code drawAircraftRadar} 的蓝盘循环里，而那个循环有一串 legacy 守卫
 * （`isMyMission → sourceAirport → target≥0 → airDivisionAtProvinceID≥0 →
 * airhqKey 非空且 getKeyOrd∈[0,4) → 所在省非空`）。其中 `getKeyOrd` 那条在 v37 之后
 * 已是死逻辑（盘径改读 `AirRadar.maxDetect`），却会把序号≥4 的 key 整段掐掉；
 * `airDivisionAtProvinceID<0` 的任务也被跳过 ⇒ 红盘跟着蓝盘一起消失。
 * 现在红盘独立遍历 `AirForceManager.activeMissions`，不受这些守卫影响；
 * 盘心用与蓝盘**同一套插值公式**（prev→at 按动画进度），画在 `RadarOverlay.end()` 之前，
 * 因此与蓝盘同一次整图合成。
 */
public final class AirRadarPlane {

    /** 与敌方 AD 红盘同色：红圈 = 火力/威胁（后续要区分可改 0xFF8822 橙） */
    private static final int COLOR_PLANE = 0xFF3333;

    /** modelAid<0（极旧存档）时的兜底射程：Real 单位，与三代空空导弹同量级 */
    private static final float RANGE_FALLBACK = 100.0f;

    private AirRadarPlane() {
    }

    /** 独立画一遍：己方所有空中任务的导弹射程圈。挂在 RadarOverlay.end() 之前。 */
    public static void drawAllMissions(Object sbObj) {
        try {
            if (sbObj == null) {
                return;
            }
            aoc.kingdoms.lukasz.map.battles.AirForceManager mgr =
                    aoc.kingdoms.lukasz.map.battles.AirForceManager.getInstance();
            if (mgr == null) {
                return;
            }
            List missions = mgr.activeMissions;
            if (missions == null || missions.isEmpty()) {
                return;
            }
            aoc.kingdoms.lukasz.jakowski.Player.Player pl = aoc.kingdoms.lukasz.jakowski.Game.player;
            if (pl == null) {
                return;
            }
            aoc.kingdoms.lukasz.map.map.MapScale ms = aoc.kingdoms.lukasz.map.map.MapScale.class.cast(
                    aoc.kingdoms.lukasz.jakowski.Game.mapScale);
            if (ms == null) {
                return;
            }
            final int myCiv = pl.iCivID;
            final float scale = ms.getCurrentScale();
            if (scale <= 0.0f) {
                return;
            }
            int ims = 1;
            aoc.kingdoms.lukasz.map.map.MapBG bg = aoc.kingdoms.lukasz.map.map.MapBG.class.cast(
                    aoc.kingdoms.lukasz.jakowski.Game.mapBG);
            if (bg != null && bg.iMapScale > 0) {
                ims = bg.iMapScale;
            }
            final int n = missions.size();
            for (int i = 0; i < n; i++) {
                Object o = missions.get(i);
                if (!(o instanceof aoc.kingdoms.lukasz.map.battles.AirMission)) {
                    continue;
                }
                aoc.kingdoms.lukasz.map.battles.AirMission m =
                        (aoc.kingdoms.lukasz.map.battles.AirMission) o;
                if (m.civID != myCiv) {
                    continue;
                }
                int cur = m.airDivisionAtProvinceID;
                if (cur < 0) {
                    cur = m.sourceProvinceID;
                }
                aoc.kingdoms.lukasz.map.province.Province prov =
                        aoc.kingdoms.lukasz.jakowski.Game.getProvince(cur);
                if (prov == null) {
                    continue;
                }
                // 半径 = 任务内存活飞机的最大空空导弹射程（轰炸机跳过）
                int best = 0;
                boolean unknown = false;
                List alive = m.aliveAircraft;
                if (alive != null) {
                    final int an = alive.size();
                    for (int j = 0; j < an; j++) {
                        Object ao = alive.get(j);
                        if (!(ao instanceof aoc.kingdoms.lukasz.map.battles.AirUnit)) {
                            continue;
                        }
                        int aid = ((aoc.kingdoms.lukasz.map.battles.AirUnit) ao).modelAid;
                        if (aid < 0) {
                            unknown = true;
                            continue;
                        }
                        if ((aid & 3) == 3) {
                            continue;   // 轰炸机：等对地导弹射程
                        }
                        int r = aoc.kingdoms.lukasz.map.battles.AirModelStats.missileRangeOf(aid);
                        if (r > best) {
                            best = r;
                        }
                    }
                }
                if (best <= 0) {
                    if (!unknown) {
                        continue;       // 无可用机型（或纯轰炸机）⇒ 不画
                    }
                    best = (int) RANGE_FALLBACK;
                }
                int rx = (int) ((float) best * (float) ims * scale);
                if (rx < 1) {
                    continue;
                }
                // 盘心：与蓝飞机盘同一套插值（prev → at，按动画进度推进），保证红蓝同心、跟机移动
                int cx;
                int cy;
                int prev = m.airDivPrevProvinceID;
                if (prev >= 0 && prev != cur) {
                    int x1 = ProvinceDrawArmy.getAirDrawPosX(prev, scale);
                    int y1 = ProvinceDrawArmy.getAirDrawPosY(prev, scale);
                    int x2 = ProvinceDrawArmy.getAirDrawPosX(cur, scale);
                    int y2 = ProvinceDrawArmy.getAirDrawPosY(cur, scale);
                    int t = m.airDivSegAnimMs * 100;
                    int dur = m.airDivSegDurMs;
                    t = (dur > 0) ? (t / dur) : (t / 400);
                    if (t > 100) {
                        t = 100;
                    }
                    cx = x1 + (x2 - x1) * t / 100;
                    cy = y1 + (y2 - y1) * t / 100;
                } else {
                    cx = ProvinceDrawArmy.getAirDrawPosX(cur, scale);
                    cy = ProvinceDrawArmy.getAirDrawPosY(cur, scale);
                }
                // v94（M1b-2）：盘心改用 AirPos 的连续坐标（拿不到就是原值），红盘跟着飞机走
                cx = aoc.kingdoms.lukasz.map.battles.AirPos.fixX(m, cx);
                cy = aoc.kingdoms.lukasz.map.battles.AirPos.fixY(m, cy);
                int ry = aoc.kingdoms.lukasz.map.battles.AirLat.r(rx, prov.getCenterY_Real());
                AirDiscQueue.addColor(cx, cy, rx, ry, COLOR_PLANE);   // v83：入库，与蓝盘一起按半径排序
            }
        } catch (Throwable t) {
            // 渲染线程抛异常 = 闪退；与 AirRadarAD/Bld 一样吞掉，红圈没了但不影响游戏
        }
    }
}
