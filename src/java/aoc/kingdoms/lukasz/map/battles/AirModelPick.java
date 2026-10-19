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

    /** 空军代际上限：3=只到三代（开局）；空军科技上线后由科技等级写入 */
    public static int AIR_GEN_MAX = 3;

    /** @return 机型下标（aid），找不到返回 -1 */
    public static int best(int civID, int group, int type) {
        int[] info = AirModelTables.INFO;
        if (info == null) {
            return -1;
        }
        int key = group * 4 + type;
        int cap = AIR_GEN_MAX;
        if (cap < 3) {
            cap = 3;
        }
        int bestAid = -1;
        int bestImg = -1;
        int fbAid = -1;
        int fbImg = 0x7fff;
        for (int aid = 0; aid < info.length; aid++) {
            int packed = info[aid];
            if ((packed >>> 16) != key) {
                continue;
            }
            int img = packed & 0xFF;
            int gen = ((img - 70) >> 4) + 3;
            if (gen <= cap) {
                if (img > bestImg) {          // 上限内取最高代
                    bestImg = img;
                    bestAid = aid;
                }
            } else if (img < fbImg) {         // 上限外留最低代兜底
                fbImg = img;
                fbAid = aid;
            }
        }
        if (bestAid >= 0) {
            return bestAid;
        }
        return fbAid;
    }
}
