# AI 自动拦截对称化 · 实施计划书 v1

- 日期：2026-09-11
- 需求（用户观察）："好像只有当国家是玩家的时候，才会去自动拦截"——要求调研 + 计划
- 状态：✅ 已实施（R4c106→R4c107 修复，2026-09-11）——编码/构建/装机完成（八检全绿、724,237,651 B、装机 Success、dex2oat 零警告）；待复测
- 关联：《空战重做专案_设计v2》R6-6b-B（自动拦截）｜R6-5（导弹/拦截链）

---

## 一、调研结论（用户观察 ✅ 属实）

**自动拦截唯一链路（全部实证）**：
1. 探测入口：`PlayerFogOfWar.detectEnemyMissions()`（PGoW:113；调用点 `AA_Game:2064`、`RealTimeSim:224`；**整个函数 500ms 节流**，`airDetLastMs`）。
2. **玩家硬编码×4**：
   - `v1 = Game.player.iCivID`（PGoW:138-142）——只扫描"**与玩家交战**"的任务（`isAtWar(m.civID, player)`，PGoW:177 区段）；
   - 覆盖检测用玩家的 `radarProvinces/allAirports`（PGoW:340-459）；
   - `airDetSeen`（missionID）去重 → 调 `dispatchAutoIntercept(m)`（**唯一调用者** PGoW:459）；
   - dispatch 内：`Game.player.iCivID`（AFM:2791-2793）→ `getAirportsForCiv(玩家)`（AFM:2797）→ 选最近机场 → `createIntercept`（**全代码唯一创建点 AFM:2899**）。
3. **AI 侧现状**：`executeAIAssignment(civ)`（AFM:2664-2707）只调度 `mode==AI` 机场的巡逻/轰炸，**不创建 INTERCEPT**；AI 无任何自动拦截入口。
4. **结论：自动拦截 = 玩家专属**；AI 被轰炸只能靠"同省机炮/巡逻偶遇"。

## 二、目标与范围

- 目标：**AI 国家遭袭时也能自动起飞拦截**（与玩家对称）。
- 范围 **V1（建议）**：防守方 = 被袭任务的"**目标省归属国**"（单防守方）。
- 范围 **V2（登记）**：过境国拦截、占领省归属细化、多防守方。

## 三、方案（推荐：加法式，玩家链零改动）

1. **拆分参数化**：`dispatchAutoIntercept(m)` → 内部改用"防御方 civ"参数（新重载 `dispatchAutoInterceptCiv(I civ, AirMission m)`）；玩家入口原样调用（传 player civ）。
2. **新增 AI 扫描** `updateAIAutoIntercept()`（AFM 新方法），由 `updateMissions()`（AFM:4920）头部调用：
   - 门0：`now - aiDetLastMs < 500` → return（镜像 `airDetLastMs` 风格）；
   - 遍历 `activeMissions`：非空；state∈{EN_ROUTE,EXECUTING}；`m.airDivisionAtProvinceID > 0`；`prov = getProvince(m.targetProvinceID)` 非空；`defCiv = prov.getCivID()`；`defCiv>0 ∧ defCiv≠m.civID ∧ isAtWar(m.civID, defCiv)`；`defCiv ≠ 玩家`（玩家走原链）；`aiAirDetSeen` 防重；
   - → `dispatchAutoInterceptCiv(defCiv, m)`。
3. **复用**：机场筛选（有可用截击/战斗机、射程覆盖敌机当前位置、最近优先）、`pickIdleDivKey`、`createIntercept`、`recalcPool`、`activeMissions.add`——全部已通用，零改动。
4. **新字段**：`aiDetLastMs:J`、`aiAirDetSeen:Ljava/util/HashSet;`（AFM 字段区；风格参考 `dedupLastMs`@AFM:8）。
5. **探针**：成功点打 `nDR_AID ok k=<divkey> civ=<defCiv>`（dKey）；与既有 `nDR_DSPT ok k=` 双证据。

## 四、验收

1. 玩家轰炸 AI 国（目标省所属国有机场+闲置截击+敌机进入其飞机射程）→ `nDR_AID` + `nDR_DSPT` + 该任务 `um_p0end`（起飞）→ 迎击/交战；
2. 玩家自己遭袭 → 行为与现状完全一致（`nDR_DET/nDR_DSPT` 链不变）；
3. 回归：零闪退；无卡顿（500ms 级轻量扫描，与迷雾探测同级）。

## 五、风险与登记

- 防守方只认"目标省归属国"；**过境国/占领省 → V2 登记**。
- 去重集不清理（与 `airDetSeen` 同风格；missionID 唯一，无副作用）。
- AI 全面"还手"后玩家轰炸难度上升——设计意图=对称（可观察后调触发频率）。

## 六、落点表（锚点）

| 点 | 位置 |
|---|---|
| 拆分参数化 dispatch | AFM:2769-3035（硬编码 2791-2797） |
| 玩家链不动 | PGoW:113 / 459 |
| AI 扫描挂点 | AFM.updateMissions（AFM:4920） |
| 新字段 | AFM 字段区（参考 AFM:8 dedupLastMs） |
| isAtWar 先例 | PGoW:177 |
| AI 现状证明 | AFM:2664-2707（executeAIAssignment） |

---

## 七、实施记录（R4c106，2026-09-11）

- **方案修订（实施时优化）**：不拆分签名，改用**静态覆盖字段 `dspCivForce:I`**（0=走玩家 / >0=强制指定国）——`dispatchAutoIntercept` 头部读该字段；**玩家链与 PGoW 调用点零改动**。
- **落码**（仅 AFM）：字段×3（`dspCivForce`/`aiDetLastMs`/`aiAirDetSeen`）＋新方法 `updateAIAutoIntercept()`（500ms 门控 / state∩{1,2} / 防守方=目标省归属国 / 交战判定 / missionID 去重 / 设置→调用→复位）＋挂点 `updateMissions` 头部＋探针 `nDR_AID ok k= civ=`。
- **构建链**：汇编 +508B → 八检全绿（SIG 152139/MISSING 15 白名单）→ 724,237,651 B → 签名 OK → 装机 Success + dex2oat 零警告。
- **待实战验收**：玩家轰炸 AI 国时观察 `nDR_AID`（civ=被炸国）＋ AI 拦截机 `um_p0end` 起飞迎击。

---

## 八、R4c109：雷达视野约束（2026-09-12）

- **需求**：AI 不得在**没有雷达探测/视野**时执行前出拦截（先定位确认"雷达视野"定义，不得假设）。
- **确认结论**：本库无 per-mission"探测状态"；"雷达视野"＝**位置级可见性**＝【本国雷达省椭圆（长波 2400 / 雷达 600 / AAA 300，÷`MapBG.iMapScale`，`calcCosK`+`calcInEllipse`）∪ 本国机场雷达圆（`radarRange`=等级×20+200）】——与玩家链 `detectEnemyMissions` 完全同口径。
- **实现（AFM 单文件）**：新字段 `aiVisSeen`；派发门前置 `aiRadarVision(敌,defCiv)`（false → 不派发、不记 `aiAirDetSeen`、探针 `nAVS blk`）；新方法×3（镜像两 Pass）；玩家链/`dispatchAutoIntercept` 本体零改动。
- **构建链**：汇编 +820B → 八检对照无回归（SIG 152159/15）→ 724,237,651 B → 签名 OK → 装机 Success + dex2oat 零警告（2026-09-12 00:22）。
- **待复测**：① 无雷达国 → 不入圈不拦截（`nAVS blk`）；② 入雷达圈（600/2400 或机场 220-300）→ `nDR_AID` 正常派发；③ 玩家链不变；④ 零闪退。
- 详档：《AI拦截雷达视野约束_实施报告v1.md》。
- **R4c107 修复（2026-09-11）**：首测发现 **AI 派发从未触发**——`aiAirDetSeen.contains` 判定方向写反（`if-eqz v9, :uai_next` = "首次见到反而跳过"，派发成死逻辑；㊿93 再犯）。修复：改为"未见过→去派发 / 已见过→跳过"（`if-eqz v9, :uai_go` + `goto :uai_next`）；重编+防线全绿、装机 Success + dex2oat 零警告；待复测。
> 刷新（2026-09-16）：R4c109 视野门／R4c139 隐身校正已上线；R4c163（切国迷雾丢失）＋R4c164（雷达圈滞留）双修完成；R4c165 飞机雷达实时开图上线（`fogFromPlanes`＋跨省 500ms 节流）；A1 游猎（返航中游猎＋HP<50% 过滤）调研定稿、待实施（下一会话）。
