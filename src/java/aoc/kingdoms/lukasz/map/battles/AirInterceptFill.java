package aoc.kingdoms.lukasz.map.battles;

import java.util.List;

/**
 * 拦截目标表填充（v53）。
 *
 * <p>背景：原来 `AirMission.createIntercept` 里只有一段"跳过无人机（isDrone）"的循环，
 * 而 `AirUnit.canIntercept()`（= 非无人机 且 `canAttackAir`）与 `canAttackAir` 字段
 * **全仓库 0 调用** —— "这架飞机能不能拦截"根本没参与筛选。
 *
 * <p>本类把这段逻辑搬进 Java（项目铁律：逻辑写 Java，smali 只做接线）：
 * 遍历敌方飞机，只把 `canIntercept()` 为真的 `unitID` 放进 `mission.targetAirUnitIDs`。
 *
 * <p>契约（越界/空表一律安全）：
 * <ul>
 *   <li>mission == null / units == null → 什么都不做</li>
 *   <li>列表里非 AirUnit 的元素跳过</li>
 *   <li>canIntercept() 为 false（无人机、或 canAttackAir=false 的机型）→ 跳过</li>
 * </ul>
 */
public final class AirInterceptFill {

    private AirInterceptFill() {
    }

    public static void fill(Object missionObj, List units) {
        if (missionObj == null || units == null) {
            return;
        }
        if (!(missionObj instanceof AirMission)) {
            return;
        }
        AirMission m = (AirMission) missionObj;
        List out = m.targetAirUnitIDs;
        if (out == null) {
            return;
        }
        final int n = units.size();
        for (int i = 0; i < n; i++) {
            Object o = units.get(i);
            if (!(o instanceof AirUnit)) {
                continue;
            }
            AirUnit u = (AirUnit) o;
            if (!u.canIntercept()) {
                continue;
            }
            out.add(Long.valueOf(u.unitID));
        }
    }
}
