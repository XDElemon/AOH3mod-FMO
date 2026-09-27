# -*- coding: utf-8 -*-
# r5c046_survey2.py —— r5c046「全面调研」第二轮落盘（三项口径已定 + 施工点取证）
#   ① r6s5/调研_r5c046专项_v2.md   （新增：师数取法 / 关线L爆炸半径 / 节拍 / 评分与K的设计）
#   ② 计划书 §56【定案2】
#   ③ build_inputs/r5c046/INCR.md   （覆盖更新：口径 + 施工点 + 验收）
# 本轮**未改一行 smali**。
import os, time

BASE = '/sdcard/GLG/历史23'
R6S5 = os.path.join(BASE, 'r6s5')
PLAN = os.path.join(R6S5, 'AI打击接入_调研与计划书v1.md')
DOC = os.path.join(R6S5, '调研_r5c046专项_v2.md')
INCR = os.path.join(BASE, 'build_inputs', 'r5c046', 'INCR.md')

TS = time.strftime('%Y-%m-%d %H:%M')

DOC_TXT = r'''# r5c046 专项调研 v2（三项口径落定 + 施工点取证）
时间：''' + TS + r''' ｜ 性质：**只读调研，未改一行 smali** ｜ 前序：`调研_r5c046全面调研_v1.md`（v1 给出"智能线已在树内、问题在没开"）
本轮范围：用户拍板后的三件事的**落地取证**——①关线 L ②K=3 约束攻击机线 ③驻军规模＝**师的数量**

---

## 一、用户口径（已定，写死）
1. **线 L（老随机线）关闭**（AI 空袭权收归线 S）。
2. **K=3 同时约束攻击机线**（线 S 与线 A 各按 `civID × MissionType` 限 3）。
3. **驻军规模＝师的数量（ArmyDivision 条数），不是团（regiment）数**；用户后续会改革这块 ⇒ **取数只走一处 helper，便于将来替换**。

---

## 二、【取证 A】"师的数量"怎么取（三选一，已定）

| 候选 | 位置 | 语义 | 判定 |
|---|---|---|---|
| `Province.getArmySize()I` | `Province.smali:11387` | `return iArmiesSize` ⇒ **该省在场师的总条数**（含各方） | ✅ **采用**（1 次调用、零遍历） |
| `Province.getArmy(I)ArmyDivision` | `Province.smali:11021` | `lArmies.get(i)`，try/catch，失败返回空师 | 备用（要做"**只数敌师**"时才用：遍历 `0..getArmySize()-1` 读 `ArmyDivision.civID`） |
| `Province.getArmyRegimentSize_InProvince()I` | `Province.smali:11329` | **省归属国的团数**（`civID == province.getCivID()` 才累加） | ❌ 不用（用户明确要师、不要团） |

- `iArmiesSize` 的写入点共 10 处（`Province.smali` 426/1314/1432/1538/8677/8709/8776/15631/15809/15865），全部在 `lArmies` 的
  add / remove / clear / load 路径 ⇒ **`iArmiesSize == lArmies.size()`**，可安全当作"师数"。
- **施工约束**：新增 helper（暂名 `a1DivCount(I)I`）内部**只允许有一处** `getArmySize()` 调用
  ⇒ 将来用户把"团/师"体制改掉时，**只改这一行**。

---

## 三、【取证 B】关闭线 L 的爆炸半径（结论：只关"战时分支"，零玩家影响）

`executeAIAssignmentForAirport` 1021-1200 的结构（已全文确认）：
```
1027-1038  概率门 0.1（**在所有分支之前** ⇒ 整方法的总闸）
1040-1048  isAtWar(civID)
1048-1096  【战时分支】aiPickVisibleTarget -> pickIdleDivKey -> createStrategicBombing -> activeMissions.add
1098-1166  【和平分支】getRandomBorderProvince -> FIGHTER 航程内 -> createPatrol -> activeMissions.add
1168-1200  阻塞码出口（p0K 1..6）
```

相关工厂的**全部**调用点（本树取证）：
| 工厂 | 调用点 | 归属 |
|---|---|---|
| `createStrategicBombing` | 1071 | **线 L 战时分支**（本次要关的） |
| | 6095 | 线 S（`a1Dispatch`）——保留 |
| | 812 | `createMissionForClick` 615-832＝**玩家点击地图手动出击**（含"和平时期不能轰炸敌国，请先宣战"提示）；唯一入口 4699（地图点击链） |
| `createAttackArmy` | 6880 | 线 A（`a1bDispatch`）——保留 |
| | 821 | `createMissionForClick`＝玩家手动 |
| `createPatrol` | 1149 | **线 L 和平分支**（AI 巡逻） |
| | 2629 | `tryPatrolForAirport` 2580-2647＝**玩家自动巡逻**（门：仅玩家 civ ＋ `mode==PATROL` ＋ 20% ＋ 空闲 FIGHTER ＋ `!hasActivePatrol` ＋ 边界省） |
| | 677 / 727 / 789 | `createMissionForClick`＝玩家手动 |

⇒ 结论：
1. **玩家手动出击/巡逻完全不经过线 L** ⇒ 关线 L 对玩家**零影响**（玩家按钮 `autoStrikeOff` 与手动点省照旧）。
2. 但 **AI 的和平期巡逻挂在线 L 的和平分支（1149）** ⇒ **只关"战时分支"**：
   推荐落点＝`isAtWar` 为真（1048 附近）进入 BOMBER 选靶**之前**插一道"AI 轰炸归线 S"的返回门；
   **概率门 1038 保持原样**（否则 AI 巡逻也会一起停）。
3. 关闭后 `aiPickVisibleTarget`(7999)/`p0V` 探针会变成**休眠**（保留代码，不删）。

---

## 四、【取证 C】节拍（K 与"每目标"的时间口径）
- `GameThread_Turns.smali:1331-1340`：调 `AirForceManager.updateAll()` 之后写 `iLastUpdateTurnID = Game_Calendar.TURN_ID`
  ⇒ **每个回合（TURN_ID 递增）调用一次**；
- `updateAll()` 7435-7468 按 `allAirports.keySet()`（文明）逐个调 `update(I)` 7463 ⇒ **每文明每回合一次**；
- `update(I)` 7083 内同时挂线 L（7146）与线 S/A（7265）。
⇒ K=3 与每目标 ≤2 都是**每回合**口径；与 ICBM `MaxTargets` 的并发语义近似（在多回合任务未落地前等价）。

---

## 五、设计（写码前的最终形态，仍不含代码）

### 5.1 关线 L（1 处）
- 位置：`executeAIAssignmentForAirport` 战时分支入口（`isAtWar` 真值之后、`aiPickVisibleTarget` 之前）。
- 动作：直接返回（探针 `nP2cap k=0x50` 之类的一次性计数，便于确认"关了多少次"）。
- 保留：概率门、和平分支、阻塞码出口。

### 5.2 K=3（新增 1 helper ＋ 2 个入口判）
- helper（暂名）`a1CivInflight(II)I`：入参 `civID` + `MissionType.ordinal()`；
  遍历 `getInstance().activeMissions`，计 `m.civID == civID && m.type.ordinal() == ord && m.state != COMPLETED && m.state != ABORTED`。
- 入口：`a1Scan` 文明级开头（6269 附近，`lProvinces` 取到之后）、`a1bScan` 文明级开头（7008 附近）各判 `>=3 ⇒ return`；
  探针 `nP2cap`（沿用 `a1Log`/`a1bLog` 的 k 码风格，新增码位）。
- 注意：**不逐机场判**（每文明一次判定即可，且省算力）。

### 5.3 轰炸线评分（a1Scan 的改造）
现状：遍历候选，**第一个通过门的候选立即 `a1Dispatch`**（可在一回合内多次派发）；军建是**硬门**（`a1Known & 0x2` 必须成立）。
改为：
1. **军建从硬门 → 置顶档**：`tier = hasMil ? 0 : 1`；雾下（`getFogDrawArmy()` 真）沿用 `a1Known` 里已存的军建位。
2. **同档内按分数**：`score = (int) getEconomy()`〔可叠加 `getPopulationSize()`，建议先只上经济，人口在 P3 一起上〕；
   保持"**分数相近＝同档随机**"（band 容差可设 `score * 0.1` 或固定阈值，照 `a1bPick` 的 band 范式）。
3. **每机场每回合只派 1 次**（一次性选最优）：需要在候选循环里只记录"最优候选 + 同档计数"，
   循环结束后再 `a1Dispatch` 一次。暂存用静态字段（照 `a1bPk*` 范式，**工具链限 16 寄存器**）：
   `a1PkTier:I` / `a1PkScore:I` / `a1PkN:I` / `a1PkPid:I`。
4. **保留**：`a1Known` 记忆写入、`DiplomacyManager.isAtWar` 精确交战门、`a1Inflight(pid) < 2` 每目标门、`autoStrikeOff` 解绑后的文明级开关。
> ⚠ 这是本批**行为变化最大**的一处：由"多候选多次派发"变为"每机场每回合一次最优派发"。K=3 会在此基础上再设上限。

### 5.4 攻击机线评分（a1bPick 的改造）
现状排序键 =（在飞数↑, 距离↑, 同档随机，档宽＝航程×10%），硬门＝`isEnemyArmyInProvince(civ)`。
改为（保留硬门与 `a1Gsee` 记忆戳）：
1. **主键＝师数 desc**（`a1DivCount(pid)`，即 `getArmySize()`）——贯彻"攻击机天生打陆军"；
2. 次键＝在飞数↑（分散，沿用现有）；再次＝距离 band 随机（沿用 `a1bPk*`）；
3. 师数同档判定：**相等即同档**（整数，band 容差可设 0 或 ±1）。
4. K=3 在 `a1bScan` 入口判（同 5.2）。

### 5.5 探针
`nP2cap`（被 K 拦，含"线 L 被关"计数位）/`nP2mil`（军建档命中，历史恒 0，本批应出现）/`nP2s`（候选数、选中档与分）。
风格沿用 `AirDbgLog.e5i(String;I)` ＋ `a1Log`/`a1bLog` 的 `nA1 ap=.. tgt=.. k=.. div=..` 形式（不引新体系）。

---

## 六、验收（可证伪）
| # | 现象 | 通过 | 不通过 |
|---|---|---|---|
| 1 | `mil=1`（军建档命中） | **出现**（历史恒 0） | 仍为 0 ⇒ 置顶档没生效 |
| 2 | `nP2cap` | 有计数（K 真在拦） | 无计数 ⇒ K 没接上 |
| 3 | AI 空袭量 | 有轰炸落地（`nA1 k=0`）/ 强度可控 | 完全不出击（军建/航程门过严） |
| 4 | 玩家手动出击 | 点省仍能出击、仍受"先宣战"提示约束 | 手动也失效 ⇒ 关错了分支 |
| 5 | AI 和平期巡逻 | `createPatrol` 仍有（线 L 和平分支未被误伤） | 巡逻归零 ⇒ 把整方法关掉了 |
| 6 | 稳定性 | 无闪退、帧率无可见下降 | 闪退/VerifyError ⇒ 寄存器或 invoke 目标错 |

门禁照旧：汇编 → arity → 八件套 ＋ ㉔ ＋ ㉘（新增 invoke 必须先跑负样本）→ 装机独立核验 md5 → 启动自检（crash=0）→ 归档 ＋ 附【设计逻辑】。

---

## 七、待确认的小口径（2 项）
1. **"每机场每回合只派 1 次"** 是否接受（当前是"多候选多次派发"）？若希望保留"多派"，则评分只能用于"选第一个而非最优"，会削弱评分意义。
2. 轰炸线分数里**是否现在就叠加人口**（`getPopulationSize()`），还是先只上经济、人口留到 P3？

---

## 八、本轮新增/修正的铁律
- 【新】**关线 L 只关战时分支**：`executeAIAssignmentForAirport` 的和平分支（1098-1166）承担 **AI 巡逻**，概率门在方法最前 ⇒ 不能靠"概率改 0"来关线 L。
- 【新】工厂调用点已全部盘清：玩家手动＝`createMissionForClick`（615-832，入口 4699）；玩家巡逻＝`tryPatrolForAirport`（2580-2647）。**这两个不经过线 L**。
- 【新】`iArmiesSize == lArmies.size()`（10 处写入均在 add/remove/clear/load）⇒ 可当"师数"；团数用 `getArmyRegimentSize_InProvince()`（本次不用）。
- 【新】`updateAll` 每回合一次、每文明一次（`GameThread_Turns:1331-1340`）⇒ K/每目标都是**每回合**口径。
- 【新】AirForceManager 的"选最优"暂存必须用**静态字段**（注释 56 行明示：工具链限 16 寄存器，故 `a1bPk*`/`a1bRt*` 静态度量）。
'''

PLAN_SEC = r'''

---

## 56. 【定案 2】r5c046 三项口径 + 施工点取证（''' + TS + r'''）
> 全文：**`r6s5/调研_r5c046专项_v2.md`**；本轮**未改一行 smali**。
### 56.1 口径（用户拍板）
1. **线 L 关闭**（AI 空袭权收归线 S）。
2. **K=3 同时约束攻击机线**（按 `civID × MissionType`）。
3. **驻军规模 ＝ 师的数量**（`Province.getArmySize()`＝`iArmiesSize`＝`lArmies.size()`）；**不用团数**；取数集中在一处 helper，便于将来改革体制。
### 56.2 取证要点
- **关线 L 的爆炸半径**：`createStrategicBombing` 三处调用＝线 L 战时(1071)／线 S(6095)／**玩家手动**(812, `createMissionForClick` 615-832, 入口 4699)；
  `createPatrol` 六处＝线 L 和平(1149, **AI 巡逻**)／`tryPatrolForAirport`(2629, **玩家自动巡逻**)／手动(677/727/789)。
  ⇒ **玩家手动与玩家巡逻都不经过线 L**；但 **AI 巡逻在线 L 的和平分支** ⇒ **只关战时分支**（不能靠概率置 0，概率门在方法最前）。
- **节拍**：`GameThread_Turns:1331-1340` ⇒ `updateAll()` **每回合一次**，`update(I)` 每文明一次 ⇒ K/每目标＝每回合口径。
- **师数**：`iArmiesSize` 10 处写入全在 `lArmies` 的 add/remove/clear/load 路径 ⇒ 与 `lArmies.size()` 一致。
### 56.3 施工设计（写码前定稿，仍不含代码）
1. **关线 L**：`executeAIAssignmentForAirport` 战时分支入口（`isAtWar` 真之后、选靶之前）直接返回 ＋ 轻探针。
2. **K=3**：新 helper `a1CivInflight(civID, MissionType.ordinal())`（排除 COMPLETED/ABORTED）＋`a1Scan`/`a1bScan` **文明级入口**各判 `>=3 ⇒ return`；探针 `nP2cap`。
3. **轰炸线**：军建**硬门 → 置顶档**；同档内按 `getEconomy()` 分（人口是否同批上待定）；**每机场每回合只派 1 次**（选最优，静态暂存 `a1PkTier/a1PkScore/a1PkN/a1PkPid`，照 `a1bPk*` 范式）；保留 `a1Known` 记忆、精确交战门、`a1Inflight<2`。
4. **攻击线**：主键改 **师数 desc**（`a1DivCount`→`getArmySize()`），次键在飞↑，再次距离 band 随机；保留 `isEnemyArmyInProvince` 硬门与 `a1Gsee` 记忆戳。
5. **探针**：`nP2cap`/`nP2mil`/`nP2s`（沿用 `e5i`＋`nA1/nA1b` 风格）。
### 56.4 验收
`mil=1` 出现（历史恒 0）｜`nP2cap` 有计数｜AI 有轰炸落地且强度可控｜玩家手动出击照常（含"先宣战"提示）｜AI 和平期巡逻不归零｜无闪退。
### 56.5 待确认小口径
①"每机场每回合只派 1 次"是否接受 ②人口是否同批上（或留到 P3）。
'''

INCR_TXT = r'''# INCR.md —— r5c046 增量记录（第二轮）

批次：**r5c046（P2a：派发闸门细化 / 选靶智能化）**
状态：**调研完成（两轮），尚未写码**
基线：r5c045（已装机验收；dex `80b77370…` / apk `0afa275880…`）
本轮 smali 改动：**零**（纯只读调研 ＋ 文档落盘）

## 0. 用户口径（已定）
1. **线 L（老随机线）关闭**（AI 空袭权收归线 S）。
2. **K=3 同时约束攻击机线**（按 `civID × MissionType`）。
3. **驻军规模＝师的数量**（`getArmySize()`；不用团数）；取数集中一处 helper，便于将来改革。

## 1. 已应用补丁清单（本批）
- 无 smali 补丁。
- 落盘产物：
  - `r6s5/调研_r5c046全面调研_v1.md`（第一轮：智能线已在树内／开关默认关／索引重复核）
  - `r6s5/调研_r5c046专项_v2.md`（第二轮：师数取法／关线 L 爆炸半径／节拍／设计定稿）
  - 计划书 **§55【重定基线 2】**、**§56【定案 2】**
  - 本文件

## 2. 未完成项
- [ ] 待确认小口径 2 项：①"每机场每回合只派 1 次"是否接受 ②人口是否同批上
- [ ] 写码 r5c046（见下"施工清单"）
- [ ] 汇编/门禁/装机/实测/归档（含【设计逻辑】）

## 3. 施工清单（写码顺序，待开工）
1. 关线 L：`executeAIAssignmentForAirport` 战时分支入口返回（**不动概率门、不动和平分支**）
2. `a1CivInflight(II)I` helper ＋ `a1Scan`/`a1bScan` 入口 K=3 门
3. `a1DivCount(I)I` helper（内部仅一处 `getArmySize()`）
4. `a1Scan` 评分改造（军建置顶档＋经济分＋同档随机＋每机场每回合一次）
5. `a1bPick` 主键改师数 desc
6. 探针 `nP2cap`/`nP2mil`/`nP2s`
7. 门禁：arity → 八件套 → ㉔ → ㉘（先负样本）

## 4. 下一步
按施工清单写码 → 汇编 → 装机 → 用户实测（抓样本判读）。

## 5. 铁律与坑（累计）
- 【新】关线 L **只能关战时分支**：和平分支(1098-1166)承担 **AI 巡逻**；概率门(1027-1038)在方法最前，置 0 会连巡逻一起关。
- 【新】玩家链路不经过线 L：手动＝`createMissionForClick`(615-832，入口 4699)；玩家巡逻＝`tryPatrolForAirport`(2580-2647)。
- 【新】`iArmiesSize == lArmies.size()`（10 处写入均在 add/remove/clear/load）⇒ 可当"师数"；团数＝`getArmyRegimentSize_InProvince()`（本批不用）。
- 【新】节拍：`updateAll()` 每回合一次、`update(I)` 每文明一次（`GameThread_Turns:1331-1340`）。
- 【新】选最优的暂存必须用**静态字段**（源文件 56 行注释：工具链限 16 寄存器；已有 `a1bPk*`/`a1bRt*`）。
- 【新】`strikeTick_A1:7062` 跳过玩家文明；`autoStrikeOff` 默认 true（关）⇒ 智能线对 AI 恒不生效（v1 结论）。
- 【旧·保留】新增 invoke 必须核目标类是否声明该方法（㉘ `check_invoke_target.py`，且先跑负样本）。
- 【旧·保留】`BuildingsManager` 静态 id（AIRPORT/RADAR/AAA/LONGRADAR）＝加载期按本地化名发现（`BuildingsManager:349-414`）。

## 6. 关键路径
见 v1 INCR 的"关键路径"一节（行号未变），新增：
- `Province.getArmySize()` 11387｜`Province.getArmy(I)` 11021｜`getArmyRegimentSize_InProvince()` 11329（不用）
- `createMissionForClick` 615-832（玩家手动，唯一调用 4699）｜`tryPatrolForAirport` 2580-2647（玩家巡逻）
- `GameThread_Turns.smali:1331-1340`（每回合驱动）
'''

def main():
    with open(DOC, 'w', encoding='utf-8') as f:
        f.write(DOC_TXT)
    with open(PLAN, 'a', encoding='utf-8') as f:
        f.write(PLAN_SEC)
    with open(INCR, 'w', encoding='utf-8') as f:
        f.write(INCR_TXT)
    print('[OK] doc  :', DOC, os.path.getsize(DOC), 'B')
    print('[OK] plan :', PLAN, os.path.getsize(PLAN), 'B')
    print('[OK] incr :', INCR, os.path.getsize(INCR), 'B')

if __name__ == '__main__':
    main()