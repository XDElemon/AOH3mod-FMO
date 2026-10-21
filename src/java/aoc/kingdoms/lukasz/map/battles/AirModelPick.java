package aoc.kingdoms.lukasz.map.battles;

/**
 * 机型选择：按「国家组 + 类型 + 空军代际上限」挑一架。
 *
 * 为什么不用 techId 判定：64 条机型的 techId 目前是**占位标签**（3→33/4→37/5→52/6→44），
 * 都是陆地科技。拿它当"是否已解锁"用会出现：文明研究了 44 号陆战科技 ⇒ 面板直接显示六代机。
 * 空军科技线（400 段）上线前，一律按代际上限决定，上限先固定 3。
 *
 * 之所以用 Java：原 bestIdx 是手写 smali（循环 + 两个"最佳"槽位），
 * 正好是"寄存器窗口算错/极性写反"的高危形态。
 */
public class AirModelPick {

    /** 代际上限（调试用保险丝）：默认 6 = 不限制；真上限由"研究过的科技"决定 */
    public static int AIR_GEN_MAX = 6;

    /**
     * 按「国家组 + 类型 + 已研究科技」挑机型：从六代往下找第一个已研究的，都没有就三代兜底。
     * 不用 unitsBest：那张表把四个国家的变体混在一起，不区分归属。
     */
    public static int best(int civID, int group, int type) {
        int[] info = AirModelTables.INFO;
        if (info == null) {
            return -1;
        }
        if (group < 0) {
            group = 0;
        }
        if (group > 3) {
            group = 3;
        }
        if (type < 0) {
            type = 0;
        }
        if (type > 3) {
            type = 3;
        }
        aoc.kingdoms.lukasz.map.civilization.Civilization civ =
                aoc.kingdoms.lukasz.jakowski.Game.getCiv(civID);
        // 从最高代往下找"该槽位的科技已经研究过"的机型；都没有就落三代兜底。
        // 以前这里用一个全局 AIR_GEN_MAX=3 常量，导致研究完四代科技照样只出三代机。
        for (int gen = 6; gen >= 3; gen--) {
            int aid = (gen - 3) * 16 + group * 4 + type;
            if (aid < 0 || aid >= info.length) {
                continue;
            }
            int tech = AirTechCiv.aidTechOf(aid);
            if (tech < 0) {
                continue;
            }
            // 科技代必须等于槽位代：一条科技只解锁它首代槽位那一代。
            // 跨代复用的机型（同一型号占两个不同代的槽位）不能因为研究过前一代科技
            // 就把后一代槽位也算成已解锁 —— 那会让面板显示高代机、数值却给低代。
            if (AirTechCiv.genOf(tech) != gen) {
                continue;
            }
            if (gen == 3) {
                return aid;                       // 三代：开局由 AirTechGrant 授予，永远可用
            }
            if (civ != null && civ.getTechResearched(tech)) {
                return aid;
            }
        }
        return group * 4 + type;
    }

    /** unitID 是 Units.json 里的空军段 7..10；转成机型表类型轴（ordinal ^ 1） */
    public static int bestForUnit(int civID, int unitID) {
        int axis = (unitID - 7) ^ 1;
        if (axis < 0 || axis > 3) {
            return -1;
        }
        return best(civID, AirForceManager.artGroupOf(civID), axis);
    }

    static boolean researched(int civID, int techID) {
        if (techID <= 0) {
            return false;
        }
        aoc.kingdoms.lukasz.jakowski.Game.getCiv(civID);
        aoc.kingdoms.lukasz.map.civilization.Civilization civ =
                aoc.kingdoms.lukasz.jakowski.Game.getCiv(civID);
        if (civ == null) {
            return false;
        }
        return civ.getTechResearched(techID);
    }
}
