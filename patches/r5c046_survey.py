# -*- coding: utf-8 -*-
# r5c046_survey.py —— r5c046「全面调研」落盘
#   ① r6s5/调研_r5c046全面调研_v1.md    （只读调研结论，含全部行号证据）
#   ② 计划书 §55【重定基线2】            （把 r5c046 的真实范围写清）
#   ③ build_inputs/r5c046/INCR.md        （已应用补丁清单/未完成项/下一步/铁律与坑/关键路径）
# 本轮**未改一行 smali**，也未做任何装机。
import os, time

BASE = '/sdcard/GLG/历史23'
R6S5 = os.path.join(BASE, 'r6s5')
PLAN = os.path.join(R6S5, 'AI打击接入_调研与计划书v1.md')
DOC = os.path.join(R6S5, '调研_r5c046全面调研_v1.md')
INCR_DIR = os.path.join(BASE, 'build_inputs', 'r5c046')
INCR = os.path.join(INCR_DIR, 'INCR.md')

TS = time.strftime('%Y-%m-%d %H:%M')

DOC_TXT = r'''# r5c046 全面调研（P2a 真实范围重定）
调研时间：''' + TS + r''' ｜ 性质：**只读调研，未改一行 smali** ｜ 基线：r5c045（已验收，`msFxDrawTrail`×3 在树）
工作树：`/tmp/w3a/smali` ｜ 对象：`aoc/kingdoms/lukasz/map/battles/AirForceManager.smali` 等

> **一句话结论**：计划书 §54.6 里"要新建"的东西，**90% 已经在树里**（`a1*`/`a1b*` 两条智能线），
> 但它们被**每机场开关 `autoStrikeOff` 默认＝关** 卡死，且 `strikeTick_A1` 显式跳过玩家文明 ⇒
> 对 AI 文明**永久不生效**。今天 AI 的空袭 **100% 来自老随机线**（10% 概率门＋均匀随机选靶）。
> 因此 **r5c046 的真实工作是"接线 + 补 K + 补评分"，不是"从零造闸门"**。

---

## 一、基线与方法

- 工作树 `/tmp/w3a/smali`；`ProvinceDrawArmy.smali` 含 `msFxDrawTrail`（3 处）⇒ 是 r5c045 后的现役树。
- 本轮全部操作为 grep/sed/awk 只读；未运行 apktool/未汇编、未装机。
- 建筑定义取自**现役** apk：`/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r5c045.apk` 内
  `assets/game/buildings/Buildings.json`（11895 B，38 个建筑块）。

---

## 二、【核心发现 1】AI 派发有 **两条并行线**，每回合每文明都跑

调度链（已取证）：
```
GameThread_Turns.smali:1335  AirForceManager.updateAll()
  -> AirForceManager.updateAll() 7435-7468  遍历 allAirports.keySet()（按文明）
       -> AirForceManager.update(I) 7463    （每文明一次）
            -> 7146 executeAIAssignment(civID)      【线 L：老随机线】
            -> 7148 updatePatrols(civID)             （和平期巡逻，不动）
            -> 7173+ hasAAABuilding 循环（防空建筑，不动）
            -> 7265 strikeTick_A1(civID)             【线 S / 线 A：新智能线】
  updateMissions() 在 updateAll 7424（帧级路径另见 AA_Game:2066）
```

### 线 L（老 / "笨"线）—— 今天唯一真正在跑的 AI 空袭
```
executeAIAssignment(civID) 2851
  -> 探针 nA2s/nA2t/nA2w/nA2x/nA2y/nA2u（r5c027-r5c031 加）
  -> 判据：mode==AI 或 civID != 玩家civ（2900-2912）
  -> executeAIAssignmentForAirport(Airport) 1021
       概率门 rnd < 0.1（1027-1038；r5c029 修过极性）
       isAtWar(civID)（1040-1048）
       战时： aiPickVisibleTarget(BOMBER) 7999   <- 航程内 -> 过视野 -> **均匀随机**（8055）
               pickIdleDivKey 1066 -> createStrategicBombing 1071 -> activeMissions.add 1088
       和平： getRandomBorderProvince 1099 -> FIGHTER 航程内 -> createPatrol 1149
```
⇒ 线 L 的特征：**无上限、无评分、无记忆、每机场独立摇骰**。

### 线 S（战略轰炸智能线）—— 树里已有，但对 AI 不生效
```
strikeTick_A1(I) 7053
  门1 玩家跳过：if (p0 == player.iCivID) return   （7062，r5c026 C5 反转过）
  门2 战争门：isAtWar(p0)                         （7067-7069）
  a1bClock() 7073                               （日/时变化计数 a1bTurn）
  a1Snap(civ,-1) 7075  -> a1E(...) 5907         （快照 nA1e p0/apts/tgtciv/pl/all）
  a1Scan(civ) 7076 -> 战略轰炸线
  a1bScan(civ) 7077 -> 攻击机线
```
`a1Scan(I)` 6267 全貌：
```
每机场（getAirportsForCiv）：
  R5c020 开关门：autoStrikeOff==true ⇒ 跳过该机场（6337-6339）
  getProvincesInRange(ap, BOMBER) 6341 -> 遍历候选 pid
    getFogDrawArmy() ⇒ 跳过记忆重算，直接用旧 a1Known（6378-6384）
      else  a1HasMil(pid) ⇒ a1Known[pid]=6（有军建）或 4（无军建）（6386-6403）
    过滤：a1Known[pid] & 0x2 必须成立 ⇒ **只有"有军建"的省能入选**（6405-6411）★硬门
    过滤：目标省 civID 合法、!= 自己、且 DiplomacyManager.isAtWar(自己,目标)（6413-6423）
    每目标上限：a1Inflight(pid) < 2 才派（6424-6430）；否则记 a1Log(...k=4...) 6424-6446
    a1Dispatch(pid, civ) 6432 -> 6019
a1Dispatch(pid,civ) 6019：
  逐机场 pickIdleDivKey(BOMBER)：无空闲师 ⇒ a1Log k=1
  目标不在该机场航程 ⇒ a1Log k=2
  createStrategicBombing ⇒ assignedAircraft 空 ⇒ a1Log k=3
  成功 add ⇒ a1Log k=0，return true
a1HasMil(pid) 6143：
  Province.buildings(List<ProvinceConstructedBuilding>) ->
    getBuilding() 得 buildingID -> BuildingsManager.buildings.get(id)（带 0<=id<size 边界检查）->
    **iget GroupID == 1 ⇒ true**（6197 是全树 9 处读 GroupID 之一）
```

### 线 A（攻击机"自动打击"智能线）—— 树里已有，同样对 AI 不生效
```
a1bScan(civ) 7006：
  a1bDiag(civ) 7017（诊断探针 k=0xf..0x16）
  每机场：R5c020 开关门 autoStrikeOff==true ⇒ 跳过（7033-7035）
    a1bPick(ap, civ) 7036 -> 6650：候选=ATTACKER 航程内省
        必须 isEnemyArmyInProvince(civ)==true（6713/6722）★"打陆军"硬门
        记忆戳 a1Gsee[pid]=当前小时（6719），新鲜窗口 <= 6 回合*HOURS_PER_TURN（6729-6735）
        排序键 = （在飞数↑, 距离↑, 同档随机，档宽=航程*10%）（6739-6787）
        ★注释 6739 明写：**"不再有'每省≤2'上限"**（R5c019 取消）
    a1bDispatch(pid, civ) 7039 -> 6839：
        createAttackArmy(ap, -1, pid, divKey) 6880
        记 a1bBlind（选靶时该省不可见=1，6883-6893）、a1bAuto=1（6895-6897）
        探针 k=0x2a（blind）、k=0（成功）、k=1/2/3（无师/不在航程/无飞机）
线 A 的重瞄：a1bRetarget(fromPid, civ) 6500（public，被 AirMission:2146/2205 调）
        半程内(½航程) 选"有敌军的省"，键同上（在飞↑/距离↑/同档随机），
        并**清掉 fromPid 的 a1Gsee 记忆**（6505-6511）
```

### 探针现状（可以直接沿用/扩展，不必另造体系）
| 探针 | 出处 | 内容 |
|---|---|---|
| `nA1 ap=.. tgt=.. k=.. div=..` | a1Log 5855 | 线 S 逐次决策（k=0 成功 / 1 无空闲师 / 2 不在航程 / 3 无飞机 / 4 触发每目标上限） |
| `nA1e p0=.. apts=.. tgtciv=.. pl=.. all=..` | a1E 5907（由 a1Snap 5955 调） | 文明级快照 |
| `nA1b ap=.. tgt=.. k=.. div=..` | a1bLog 6460 | 线 A 逐次决策（k 码极多：0/1/2/3/4/8/9/0xb..0xe/0x12..0x16/0x1a/0x1b/0x28/0x29/0x2a/0x30..0x33） |
| `nA2s/nA2t/nA2w/nA2x/nA2y/nA2u` | 2854-2929 | 线 L 入口链 |
| `nA4d/nA4v/nA4e/nA4f` | p0War/p0V/p0K/p0Empty | 线 L 概率门/选靶/阻塞码 |

---

## 三、【核心发现 2】线 S / 线 A **默认永远不工作**（"AI 打得笨"的真根因）

1. **每机场开关 `Airport.autoStrikeOff`（反向语义：true＝关）**
   - 构造器默认 **true**：`Airport.smali:151-153`（注释"R5c020d: 开局默认＝关"）。
   - 线 S 消费点：`AirForceManager.smali:6338`；线 A 消费点：`7034`。
   - 全树**只有三个写点**：构造器（true）、读档（`LoadSavedGameManager:4175-4177`，落档字段名
     `SaveGameManager$Save_Airport.strikePaused`）、按钮（`InGame_AirForceOptions$BtnMission:131-134`，
     按钮文案见同文件 410-412「自动打击：开/关」）。
2. **`strikeTick_A1` 显式跳过玩家文明**：`7062 if-eq p0, playerCivID -> return`。
3. 结论：AI 文明的机场**没人能按下那个按钮** ⇒ `autoStrikeOff` 恒 true ⇒
   **线 S 与线 A 对 AI 全部失效**；玩家文明又被 7062 排除 ⇒ 两条智能线当前**谁都跑不到**。
   ⇒ AI 的空袭只可能来自线 L（10% 概率 ＋ 均匀随机）。这正是"AI 会派发但打得笨"的机制根因。

> 这也解释了历史探针里 `mil=1` 长期为 0：不是判据错，而是**那整条线根本没在执行**。

---

## 四、【核心发现 3】§54.6 定案项 vs 现状对照（避免重复造轮子）

| §54.6 定案项 | 现状 | 位置 / 处置 |
|---|---|---|
| 军事建筑判据 | **已有** `a1HasMil(I)Z` | 6143-6216；走 `Province.buildings` -> `getBuilding()` -> `GroupID==1`，带边界检查。**直接复用** |
| "军事建筑**优先**" | 现状是**硬门**（无军建省**永不入选**） | `a1Scan` 6384-6411（值 6/4 + bit0x2 过滤）。**需改为"置顶档"**，否则等同于"只打军建省" |
| 每目标在飞 ≤ 2 | **轰炸线已有** `a1Inflight(pid)I` | 6218-6264（按 `targetProvinceID` ＋ `type==STRATEGIC_BOMBING` 计数，**不排除已结束状态**），消费于 6424-6430 |
| 每目标 ≤ 2（攻击机线） | **已被有意取消** | 6639 注释：R5c019"不再有'每省≤2'上限" |
| 攻击机打陆军 | **已有硬门** `isEnemyArmyInProvince(civ)` | 6713/6722；但**没有按规模打分** |
| K=3（每文明×每类型在飞上限） | **完全没有** | 需要新 helper（例：`a1CivInflight(civ,type)`）＋在两条线的文明级入口判 |
| 同档随机 | **攻击机线已有**（档宽=航程×10%） | 6770-6787（a1bPk*）；轰炸线**没有**，按 Set 迭代序取首个 ⇒ 要补 |
| 经济 / 人口 评分 | **完全没有** | `Province.getEconomy()F`(11910)、`getEconomyWithBonuses()F`(11929)、`getPopulationSize()I`(12653)、`getPopulationTotal()I`(12662) 均可用 |
| 驻军规模 | 可用 `getArmyRegimentSize_InProvince()I`(11329) | 语义＝**该省归属文明的驻军团数**（`civID == province.getCivID()` 才累加）；`getArmySize()I`(11387)＝`iArmiesSize`（含所有方） |
| 难度分层 | 没有 | P4（r5c050） |
| 目标记忆 / 衰减 | **线 A 已有一版**：`a1Gsee[pid]` 小时戳 + 6 回合新鲜窗 | 6719/6729-6735；轰炸线的记忆是 `a1Known[pid]` 的 bit（可见性+军建）。P2b（r5c047）只做"衰减/换靶"，**不必从零造** |

---

## 五、【核心发现 4】军事建筑索引集：**已用现役 apk 复核通过**

- 现役 apk `assets/game/buildings/Buildings.json`：38 个建筑块；`GroupID` 分布 = `{3:7, 2:14, 1:9, 0:8}`。
- `GroupID==1` 的块下标 = **{15,16,17,18,19,34,35,36,37}**（与历史集**一字不差**，9 条）：
  | 下标 | 名称 |
  |---|---|
  | 15 | `Palisade`/`Walls`/`Castle`（城墙系） |
  | 16 | `Barracks`/`TrainingGrounds`/`ConscriptionCenter`（兵营系） |
  | 17 | `Armory`/`ArmoryWorkshop`（军械库系） |
  | 18 | `ArmsFactory`（兵工厂） |
  | 19 | `MilitaryBase`（军事基地） |
  | 34 | `空军基地` |
  | 35 | `雷达` |
  | 36 | `反导阵地` |
  | 37 | `中层反导雷达` |
- 且 34/35/36/37 就是引擎加载期按**本地化名**发现的静态 id：
  `BuildingsManager.AIRPORT_BUILDING_ID/RADAR_BUILDING_ID/AAA_BUILDING_ID/LONGRADAR_BUILDING_ID`
  （`BuildingsManager.smali:349-414`）⇒ 这 4 个**直接读静态字段**最稳；15-19 用索引集。
- **对历史结论的修正**：`BuildingsManager$Buildings` **确有** `GroupID:I` 字段，且全树有 **9 处** `iget ...GroupID`
  （`AI_Build:2334`、`Game:6316`、`Province:22129`、`AirForceManager:6197`(＝a1HasMil)、4 处 UI）
  ⇒ "运行时 GroupID 读出来是 -1 / 判据恒 false" 的说法**在当前树不成立**，且**不是**本次 `mil=1` 为 0 的原因
  （真因是第三节：**整条线没在跑**）。历史血案属于**已被移除的 MOD 侧实现**（`strikeScore/pickStrikeTarget`），
  与当前 `a1HasMil` 不是同一份代码。
  **处置**：r5c046 **不新造判据**，复用 `a1HasMil`；如后续要让"雷达/反导"单独加权，再读 4 个静态 id。

---

## 六、r5c046 的真实工作项（重定后的 P2a）

1. **【解绑】把线 S / 线 A 的开关语义改成"按文明"**
   `a1Scan:6337-6339` 与 `a1bScan:7033-7035` 两处条件改为：
   `if (civ == 玩家civ) 才检查 autoStrikeOff；否则（AI）一律视为"开"`。
   ⇒ 玩家机场仍受按钮控制（口径 B 的 UI 不废），AI 机场自动启用。
2. **【K=3】新增文明级在飞上限**
   新 helper（建议 `a1CivInflight(II)I`：`civID` ＋ `MissionType.ordinal()`，按 `state != COMPLETED && != ABORTED` 计）
   ＋在 `a1Scan`/`a1bScan` 的**文明级入口**判 `>= 3 ⇒ return`；探针 `nP2cap`。
3. **【评分】轰炸线**：把"军建硬门"改为"**置顶档**"（有军建 ⇒ 最高档），
   次档按 `getEconomy()`/`getPopulationSize()` 加权；**同档内随机**（照抄 `a1bPick` 的 a1bPk* 范式）。
   **攻击线**：保留 `isEnemyArmyInProvince` 硬门，档内改按 `getArmyRegimentSize_InProvince()`（驻军规模）排序。
4. **【线 L 去重】把 AI 的轰炸派发权收归线 S**（否则线 L 的 10% 随机派发会绕过 K 与评分）。
   两选：①概率门常量置 0（保留代码）②在 `executeAIAssignmentForAirport` 战时分支前加"AI 交给线 S"判。
   **`executeAIAssignmentForAirport` 的和平期 FIGHTER 巡逻分支保持不动。**
5. **【探针】** `nP2cap`（被 K 拦）/`nP2mil`（军建档命中）/`nP2s`（候选与分档），沿用 `a1Log`/`a1bLog` 的 k 码风格。
6. **不做**：Fade/记忆衰减（P2b=r5c047）、拦截机型重排（P3a=r5c048）、难度表（P4=r5c050）、清探针（P5=r5c051）。

---

## 七、风险与待办（必须保留）

- **风险 ①（强度突变）**：线 S/A 一旦解绑启用，AI 空袭量会从"每机场每回合 10%"跳到
  "**每文明每回合最多 K=3 条轰炸 ＋ 攻击机线若干**" ⇒ 强度变化很大。建议先 **dry-run（只统计不派）**
  或用探针回填，再决定 K 与是否保留线 L 的概率门。
- **风险 ②（军建硬门）**：若"只有军建省可打"，而战区军建稀少，AI 出击可能归零 ⇒ 这正是"置顶化"要解决的；
  改后必须用 `nP2mil` 实测（历史上该读数恒 0，现在应能出现）。
- **风险 ③**：`a1Inflight` 计数**不排除** COMPLETED/ABORTED，但任务在同一帧的 `updateMissions()` 里被移除
  （7636-7637），所以实际窗口很窄；新 helper 仍建议显式排除，避免误拦。
- **存档兼容**：`a1Known/a1Gsee/a1b*` 全是**运行态静态**，不落档 ✔；`autoStrikeOff` 落档字段名 `strikePaused`
  **不要动**，只改消费端 ⇒ 零存档风险。
- **待拍板 3 项**：①线 L 是否关闭（AI 空袭权收归线 S）②K=3 是否**同时**约束攻击机线（该线 R5c019 明确取消了每省≤2）
  ③攻击机"驻军规模"用 `getArmyRegimentSize_InProvince()`（省归属国驻军）即可，还是要另做"敌方团数"统计。
'''

PLAN_SEC = r'''

---

## 55. 【重定基线 2】r5c046 全面调研：智能线已在树内，问题在"没开"（''' + TS + r'''）
> 全文：**`r6s5/调研_r5c046全面调研_v1.md`**（含全部行号证据）
> 前提：基线 r5c045（已验收）；本轮**未改一行 smali**。

### 55.1 颠覆性结论（推翻 §54.2 的一部分假设）
- AI 派发**有两条并行线**（`update(I)` 内每回合都跑）：
  - **线 L（老/笨）**：`executeAIAssignment(civID)` 2851 -> `executeAIAssignmentForAirport` 1021
    （概率门 10% ＋ `aiPickVisibleTarget` 7999 **均匀随机**选靶）。**今天唯一真在跑**。
  - **线 S（战略轰炸智能）**：`strikeTick_A1` 7053 -> `a1Scan` 6267 -> `a1Dispatch` 6019
    （`a1HasMil` 军建硬门 ＋ `a1Inflight` 每目标 ≤2 ＋ `DiplomacyManager.isAtWar` 精确交战）。
  - **线 A（攻击机自动打击）**：`strikeTick_A1` -> `a1bScan` 7006 -> `a1bPick` 6650
    （`isEnemyArmyInProvince` 硬门 ＋ `a1Gsee` 记忆戳（6 回合新鲜窗）＋ 在飞↑/距离↑/同档随机）
    ＋ `a1bDispatch` 6839（`createAttackArmy`，记 `a1bBlind`/`a1bAuto`）＋ `a1bRetarget` 6500（半程重瞄）。
- **两条智能线当前"谁都跑不到"**：
  - `Airport.autoStrikeOff` 构造默认 **true＝关**（`Airport.smali:151-153`），线 S 消费于 6338、线 A 消费于 7034；
    全树只有三个写点（构造器、读档 `strikePaused`、按钮 `InGame_AirForceOptions$BtnMission:131-134`）。
  - `strikeTick_A1` 7062 **显式跳过玩家文明**。
  ⇒ AI 机场没人按按钮 ⇒ 线 S/A 对 AI 恒不生效；玩家文明被 7062 排除。
  ⇒ **"AI 打得笨"的真根因＝智能线没开，只剩 10% 随机线在跑**。
- 附带修正：`mil=1` 历史恒 0 **不是判据错**，而是**那整条线没在执行**。
  `BuildingsManager$Buildings->GroupID` 确存在且全树 9 处读取（含 `a1HasMil:6197`）。
- 军事建筑索引集**已用现役 apk 复核**：`GroupID==1` 的 9 条 = **{15,16,17,18,19,34,35,36,37}**（
  城墙系/兵营系/军械库系/兵工厂/军事基地 ＋ 空军基地/雷达/反导阵地/中层反导雷达）；
  后 4 个即 `BuildingsManager` 的 4 个静态 id ⇒ **不硬编码**，直接读静态字段。

### 55.2 r5c046（P2a）重定后的范围
1. **【解绑】** 线 S/A 的 `autoStrikeOff` 门改为"按文明"：玩家文明尊重按钮，**AI 文明一律视为开**
   （`a1Scan:6337-6339`、`a1bScan:7033-7035` 各一处条件）。
2. **【K=3】** 新 helper（`civID`＋`MissionType`，排除 COMPLETED/ABORTED）＋ 两条线**文明级入口**判 `>=3` 返回；探针 `nP2cap`。
3. **【评分】** 轰炸线：军建**硬门 -> 置顶档**，次档 `getEconomy()`/`getPopulationSize()`，**同档随机**（照 `a1bPick` 范式）；
   攻击线：保留"打陆军"硬门，档内按 `getArmyRegimentSize_InProvince()`（驻军规模）排序。
4. **【线 L 去重】** AI 轰炸派发权收归线 S（概率门置 0 或加"AI 转交"判）；**和平期 FIGHTER 巡逻分支不动**。
5. **【探针】** `nP2cap`/`nP2mil`/`nP2s`。
6. **不做**：Fade（P2b=r5c047）／拦截机型重排（P3a=r5c048）／难度表（P4=r5c050）／清探针（P5=r5c051）。

### 55.3 待拍板（三问）
1. **线 L 是否关闭**（AI 空袭权收归线 S）？——若不关，K 与评分会被 10% 随机线绕过。
2. **K=3 是否同时约束攻击机线**（该线 R5c019 明确取消了"每省 ≤2"）？
3. **攻击机"驻军规模"**用 `getArmyRegimentSize_InProvince()`（省归属国驻军）即可，还是要另做"敌方团数"统计？

### 55.4 风险
- 智能线启用后 AI 空袭量会从"每机场 10%"跳到"每文明 ≤K 条轰炸＋攻击机线" ⇒ 建议先 dry-run／探针回填。
- "只打军建省"若不改成置顶档，战区军建稀少时 AI 出击可能归零。
- `a1Known/a1Gsee/a1b*` 均为运行态静态、不落档 ✔；`autoStrikeOff` 落档字段 `strikePaused` 不动 ⇒ 零存档风险。
'''

INCR_TXT = r'''# INCR.md —— r5c046 增量记录

批次：**r5c046（计划书 P2a：派发闸门细化 / 选靶智能化）**
状态：**调研完成，未开工写码**（用户口径：先全面调研）
基线：r5c045（已装机验收；dex `80b77370…` / apk `0afa275880…`）
本轮改动：**零 smali 改动**（纯只读调研）

## 1. 已应用补丁清单（本批）
- 无（本轮只落盘文档）。
- 落盘产物：
  - `r6s5/调研_r5c046全面调研_v1.md`（本批调研全文）
  - 计划书 `r6s5/AI打击接入_调研与计划书v1.md` **§55【重定基线 2】**
  - `build_inputs/r5c046/INCR.md`（本文件）

## 2. 未完成项
- [ ] 待用户拍板三问（见 §55.3）：
      ①线 L 是否关闭 ②K=3 是否约束攻击机线 ③"驻军规模"口径
- [ ] 开工 r5c046：解绑开关（按文明）＋K=3＋评分（轰炸置顶档/攻击按驻军）＋线 L 去重＋三探针
- [ ] 前置只读小调研（可并入开工）：`getArmyRegimentSize_InProvince` 的调用代价（每候选一次遍历）

## 3. 下一步
1. 用户确认三问 -> 出 r5c046 设计逻辑（11 项）-> 写码 -> 汇编 -> 八件套＋㉔＋㉘ -> 装机 -> 用户实测。
2. 验收硬指标：`nP2mil` 出现 `mil=1`（历史恒 0）；`nP2cap` 有计数；`nA4d war=1`/`nATK` 不下降。

## 4. 铁律与坑（本批新增/确认）
- 【新】`Airport.autoStrikeOff` **反向语义且默认 true（关）**；落档字段名 `strikePaused`。改语义只改消费端，别动字段。
- 【新】`strikeTick_A1:7062` 显式跳过玩家文明 ⇒ 玩家机场按钮只对"非玩家文明"的线无关……（本批要解绑）。
- 【新】线 S 的"军事建筑"是**硬门**（`a1Scan` 6384-6411，bit0x2 过滤），不是"优先"。
- 【新】线 A 的"每省 ≤2"在 R5c019 已被**有意取消**（6639 注释）⇒ 不要照 §54.6 盲目加回。
- 【新】`a1Inflight`(6218) 计数**不排除** COMPLETED/ABORTED；任务同帧 `updateMissions` 7636-7637 移除，窗口窄。
- 【旧·保留】新增 invoke 必须核"目标类真的声明了该方法"（门禁 ㉘ `check_invoke_target.py`），且**门禁自身要先跑负样本**。
- 【旧·保留】`BuildingsManager` 静态 id（AIRPORT/RADAR/AAA/LONGRADAR）是加载期按**本地化名**发现的（`BuildingsManager:349-414`）。
- 【已否证】"运行时 `GroupID` 读出 -1、判据恒 false" —— 当前树 `GroupID` 有 9 处被读取（含 `a1HasMil:6197`）；历史 `mil=1` 恒 0 的真因是**整条线没在跑**。

## 5. 关键路径
- 工作树：`/tmp/w3a/smali`
- 主文件：`aoc/kingdoms/lukasz/map/battles/AirForceManager.smali`
  - 线 L：`executeAIAssignment` 2851 / `executeAIAssignmentForAirport` 1021 / `aiPickVisibleTarget` 7999
  - 线 S：`strikeTick_A1` 7053 / `a1Scan` 6267 / `a1Dispatch` 6019 / `a1HasMil` 6143 / `a1Inflight` 6218 / `a1Log` 5855 / `a1Snap` 5955 / `a1E` 5907
  - 线 A：`a1bScan` 7006 / `a1bPick` 6650 / `a1bDispatch` 6839 / `a1bInflight` 6622 / `a1bRetarget` 6500 / `a1bDiag` 6924 / `a1bLog` 6460 / `a1bClock` 6482
  - 调度：`updateAll` 7340（per-civ `update(I)` 7463）／`update(I)` 7083（7146 线L、7265 strikeTick_A1）
- 开关：`Airport.autoStrikeOff`（`Airport.smali:48` 声明 / 151-153 默认；消费 6338、7034；写点 构造器/读档 4175-4177/按钮 `InGame_AirForceOptions$BtnMission:131-134`）
- 建筑定义（现役 apk 内）：`assets/game/buildings/Buildings.json`（38 块；GroupID==1 = {15,16,17,18,19,34,35,36,37}）
- 探针设施：`AirDbgLog.e5i(String;I)` / `dKey(String;String)`
- 参考 apk：`/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r5c045.apk`
'''

def main():
    os.makedirs(INCR_DIR, exist_ok=True)
    with open(DOC, 'w', encoding='utf-8') as f:
        f.write(DOC_TXT)
    with open(PLAN, 'a', encoding='utf-8') as f:
        f.write(PLAN_SEC)
    with open(INCR, 'w', encoding='utf-8') as f:
        f.write(INCR_TXT)
    print('[OK] doc   :', DOC, os.path.getsize(DOC), 'B')
    print('[OK] plan  :', PLAN, os.path.getsize(PLAN), 'B')
    print('[OK] incr  :', INCR, os.path.getsize(INCR), 'B')

if __name__ == '__main__':
    main()
