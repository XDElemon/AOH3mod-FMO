package aoc.kingdoms.lukasz.map.battles;

import aoc.kingdoms.lukasz.map.civilization.Civilization;

/**
 * 开局授予：每个文明自动拥有本国那几条三代空军科技。
 *
 * 为什么需要它：
 *   三代编制的 `RequiredTechID` 现在挂的是真科技（只有这样科技面板才会在节点下列出
 *   "解锁编制"），而三代机必须**开局就能造** —— 不授予就会回到 v30 的"造不出飞机"。
 *
 * 为什么用 setTechnologyResearched 而不是 addTechnology：
 *   后者会触发 AI 解锁钩子、AI 研究重排、玩家"研究完成"通知，初始化阶段副作用太大；
 *   这里只置位，随后游戏自己的 buildTechTree() / buildTechTree_Load() 会把它当
 *   "已研究"处理：补 unlockedUnits、算科技加成、刷 unitsBest —— 各做一次，天然幂等。
 *
 * 调用点（都在游戏类里，只插一条 invoke-static，不用任何局部寄存器）：
 *   - `Civilization.buildTechTree()`：国别默认科技处理完之后、单位入表之前
 *   - `Civilization.buildTechTree_Load()`：方法体最前（读档时 lTechResearched 已恢复）
 */
public final class AirTechGrant {

    private AirTechGrant() {
    }

    /** 只授予"本国 + 三代"的空军科技；已经研究过的跳过（幂等） */
    public static void grant(Civilization civ) {
        if (civ == null) {
            return;
        }
        int group = AirForceManager.artGroupOf(civ.iCivID);
        for (int i = 0; i < 64; i++) {
            int techID = AirTechCiv.AIR_BASE + i;
            if (AirTechCiv.genOf(techID) != 3) {
                continue;
            }
            if (!AirTechCiv.allowedGroup(techID, group)) {
                continue;
            }
            if (civ.getTechResearched(techID)) {
                continue;
            }
            civ.setTechnologyResearched(techID, true);
        }
    }
}
