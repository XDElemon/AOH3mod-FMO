> Phase B（**路线 A**：挂到现有 P 线）｜生成 2026-09-27 06:10 ｜现装 r5c046z4 ｜ B1＝评分+情报门

# Phase B · 第二轮（拓展调研）：三个"骨架"方法的规格（用于行为对齐）

> 源码已丢，以下规格来自设计档真值表与批次台账，作为"行为对齐"的验收依据。

**`tryStrikeForAirport(airport, rnd, type)`** —— 门序：① 玩家文明一致 ② `mode` 门 ③ `0.2f` 概率门（＝80% 尝试）
④ 空闲师 `pickIdleDivKey` ⑤ `hasActivePatrol` 防重复 ⑥ 选靶 `≥0` ⑦ `if-eq p3, ATTACKER` 分派（ATTACKER→`createAttackArmy`，否则 `createStrategicBombing`）。
⇒ 与我们的 `tryStrikeForAirportP` **一致**（z1/z2 已把极性修正）；差异：Phase B 多"机型白名单"（我们已有）。

**`pickStrikeTarget(airport, type)`** —— 候选循环门序：省存在 → 被占省直通 → `isAtWar` →（仅攻机）驻军门 →（仅攻机）迷雾门（`if-eqz v7` 才收＝可见才收）→ 去重 → **最近/评分优先**（`cmpg(best,score)` 保留最小；**距离钳位 1000**）。
⇒ 我们的 `pickStrikeTargetP` 已有：`isAtWar`、攻机驻军门、攻机迷雾门（`getFogDrawArmy`）、去重、保留最小；**缺**：评分（B1）、情报门（B1）、被占省直通（可选）。

**`updateOffensives(civ)`** —— 每文明遍历机场 → 每机场对 ATTACKER/BOMBER 各调一次；r4c197 增设 `mode=rove` 巡炸分支。
⇒ 我们的 `updateOffensivesP` 已同构（玩家文明门 + 总闸 + 80% 掷骰 + 两机型）；**缺** rove（B2）。

## 血案清单（B1 必须用门禁钉死的方向）
| 批次 | 血案 | 方向 |
|---|---|---|
| r4c179 | `strikeScore` 军事档分支极性 | `hasMilitaryBuilding` 为**真**时走 tier2，不是 tier3 |
| r4c181 | 情报门极性 | 记忆命中=**允许**打；实时无军事→**遗忘**（炸光不派） |
| r4c189 | `AIRPORT_BUILDING_ID` 默认 -1 | 登记前必须有 `if-ltz` 守卫 |
| r4c190 | 档间分离 | 打分距离**钳位 1000** ⇒ tier1 ≤1100 < tier2 < tier3 |
| r4c191 | 选择方向 | 保留**最小**分 |
| r4c185 | 登记表生命周期 | 否证只发生在 Province 钩子内（列表已装载） |
