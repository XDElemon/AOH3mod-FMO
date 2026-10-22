package aoc.kingdoms.lukasz.map.battles;

/**
 * 空军建造造价/工期（v37 修 bug）。
 *
 * 原实现 `Airport.p1bCost` / `Airport.getBuildTime` 都按 `types[type.ordinal()]` 取
 * AircraftTypes.json 的**前 4 行**（CN 三代），于是不管造哪架飞机都恒 200 金 / 3 回合，
 * 和建造面板上显示的机型造价完全不符。
 *
 * 修法：调用方（smali）先 `getBestAidForType(civ, ord+7)` 拿到"这个文明这个类型实际会造哪一架"
 * 的 aid，再把 aid 交给本类查 AirModelStats 的 COST / TIME 表（与 AircraftTypes.json 逐值一致，
 * 无人机的 ×0.6 / 工期-1 已经在数据里，不在这里二次打折）。
 *
 * 越界语义保持原样：aid < 0（编制数据没加载）→ 造价 -1（不可造）、工期 3（原默认）。
 */
public final class AirBuildCost {

    private AirBuildCost() {
    }

    /** 当前玩家文明 ID；没有玩家（初始化/读档早于 Player 建立）→ -1 */
    public static int playerCiv() {
        aoc.kingdoms.lukasz.jakowski.Player.Player p = aoc.kingdoms.lukasz.jakowski.Game.player;
        if (p == null) {
            return -1;
        }
        return p.iCivID;
    }

    /** 造价（金币）；aid 非法 → 退回按类型序号的旧行，仍然非法 → -1 */
    public static int costOfAid(int aid, int typeOrdinal) {
        if (aid < 0) {
            return -1;
        }
        int a = aid;
        if (a >= AirModelStats.COST.length) {
            a = typeOrdinal;
        }
        if (a < 0 || a >= AirModelStats.COST.length) {
            return -1;
        }
        return AirModelStats.COST[a];
    }

    /** 工期（回合）；aid 非法 → 退回按类型序号的旧行，仍然非法 → 3（原默认） */
    public static int timeOfAid(int aid, int typeOrdinal) {
        int a = aid;
        if (a < 0 || a >= AirModelStats.TIME.length) {
            a = typeOrdinal;
        }
        if (a < 0 || a >= AirModelStats.TIME.length) {
            return 3;
        }
        int t = AirModelStats.TIME[a];
        return t < 1 ? 1 : t;
    }
}
