# -*- coding: utf-8 -*-
# r5c046t_design_docs.py —— 设计逻辑 r5c046t（11 项 + 三问 + 寄存器表）+ 计划书 §90 + INCR §34
import os, time
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
DESIGN=os.path.join(R6S5,'设计逻辑_r5c046t.md')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')
TS=time.strftime('%Y-%m-%d %H:%M')

DESIGN_TXT = '''# 设计逻辑 · r5c046t（两个按钮真正生效 + AI 走自己视野）
> 交付 ''' + TS + ''' ｜ dex `8451644e…` ／ apk `a6ae8230…` ｜ 装机独立核验通过 ｜ 基线 1185020445
> 三轮调研：《调研_r5c046t_F5巡逻门_F4视野_v1全量.md》→ `_v2拓展.md` → `_v3定稿.md`（基线树＝装机 s 的反汇编 `/tmp/revs`）

## 1) 版本 + 一句话定位
r5c046t 动两件事：**①「自动巡逻/自动打击」两个按钮真正生效**（mode 互斥：和平只巡逻、战时只打击）；
**②AI 空军只打它自己看得见的省**（智能线补上"打击方视野"门，与老线同款判据）。

## 2) 设计目标
- 玩家可见问题 A：**战斗机一造出来就自己去巡逻**，而「自动巡逻」按钮（改的是 `mode`）管不住它。
- 玩家可见问题 B：AI 的打击**越过迷雾、随机乱打**（我们此前为修"候选恒空"把视野门解绑了）。
- 上层意图：**两个按钮各自管一段、互斥**；**AI 走 AI 自己的逻辑（含 AI 自己的视野），玩家走玩家自己的老线**。

## 3) 设计规则与判定顺序（人话）
**玩家线（老线 `executeAIAssignmentForAirport`，每文明每回合逐机场）**
1. 10% 骰（`rnd ≥ 0.1 ⇒ 返回`）。
2. 取 `atWar = isAtWar(机场文明)`；**然后按 `airport.mode` 分流（本版新增）**：
 - **和平 + `mode==PATROL`** ⇒ 继续（可能巡逻）；**和平 + 其它 mode** ⇒ **直接返回（不巡逻）**。
 - **战时 + `mode!=PATROL`** ⇒ 继续（可能轰炸）；**战时 + `mode==PATROL`** ⇒ **直接返回（不轰炸）**。
3. 战时继续：非玩家机场直接退（AI 不走老线）；玩家机场 ⇒ `nA4d` → `aiPickVisibleTarget(...,BOMBER,...)`（**本就带视野过滤**）→ `pickIdleDivKey(BOMBER)` → `createStrategicBombing`。
4. 和平继续：`getRandomBorderProvince` → `pickIdleDivKey(FIGHTER)` → `createPatrol`（巡逻**必须有战斗机**）。
5. 按钮：`missionType0`＝巡逻键（`PATROL ⇄ OFFENSIVE`，切到 OFFENSIVE 时调 `stopAirportPatrols` 召回）；`missionType1`＝打击键（`autoStrikeOff ^= 1` + `mode=OFFENSIVE`）。

**AI 线（智能线 `a1Scan`/`a1bPick`，仅非玩家文明 + 文明处于战争）**
候选省必须通过 **`a1VisOk(airport, pid, AI文明)`**：`aiVisRadarPass(x,y,civ,1.0f) ∨ aiVisAirportPass(x,y,civ,1.0f)`（省中心坐标）
⇒ **看得见才进入排序（军建优先/tier/score/在飞<2）**；看不见直接跳过。

## 4) 参数与阈值表
| 名称 | 当前值 | 含义 | 调大/调小 |
|---|---|---|---|
| 老线总骰 | 0.1（10% 才继续） | 每机场每回合是否"出手" | 大 ⇒ 更频繁 |
| 巡逻骰 | `rnd ≥ 0.2 ⇒ 继续`（`tryPatrolForAirport`） | 另一条巡逻路径 | — |
| `mode` | PATROL / OFFENSIVE / AI | 巡逻键改它；派发按它分流（本版） | — |
| `autoStrikeOff` | 1＝关（默认）/ 0＝开 | 打击键改它；老线门看它 | — |
| 视野 | `aiVisRadarPass ∨ aiVisAirportPass`，scale=1.0f | AI 候选可见性判据（与老线一致） | scale 大 ⇒ 视野更远 |

## 5) 状态与生命周期
- `mode`：写者＝巡逻键/打击键（打击键强制 OFFENSIVE）/存档；读者＝**老线派发分流（本版）**、`tryPatrolForAirport`（原有）。
- `autoStrikeOff`：写者＝打击键；读者＝`executeAIAssignment` 的机场级门。
- 巡逻任务：`createPatrol` → `activeMissions` → `update/shouldReturn/returnToBase`；巡逻键切"关"时 `stopAirportPatrols` 召回。

## 6) 边界与不变量
- **不改**：老线战时轰炸的视野/选靶、AI 的 K=3/FRQ/军建优先/tier/score/机场绑定、玩家手动出击、存档结构、`Airport` 字段语义。
- `mode==AI`（AI 接管）行为不变：外层门只在 `mode==AI` 时放行它，落进新门时 `mode≠PATROL` ⇒ 战时照旧轰炸、和平不巡逻。
- **不新增静态字段**；**不提高任何 `.registers`**。

## 7) 玩家可感知的表现
- 默认（`mode=OFFENSIVE`）：**战斗机不再自己去巡逻**；按一次「自动巡逻」（文本变"开"）⇒ 之后回合才会出现巡逻；再按一次 ⇒ 召回 + 不再新建。
- 按「自动打击」（文本变"开"）+ 战时 ⇒ 机场的轰炸机按老线自动出击（目标只落在**你看得见**的敌省里随机）。
- AI：只打**它自己看得见**的省；视野内没目标 ⇒ 不出动（不再"越迷雾乱打"）。

## 8) 失败与回退
| 现象 | 原因/处置 |
|---|---|
| 巡逻再也不出 | `mode` 还是 OFFENSIVE ⇒ **按一次自动巡逻键**（这就是"按钮控制"的本意） |
| 战时也不轰炸 | 门写反 ⇒ 门禁㊷ 会在装机前拦（负样本 6→0） |
| AI 完全静止 | 视野门过严（AI 雷达/机场覆盖不到敌省）⇒ 属"AI 走自己视野"的预期；如太静可后续调 scale（不在本版） |
| 回滚 | `AirForceManager.smali.pre_r5c046t`（在 `/tmp/revs` 内）+ 归档 apk（上一版 s） |

## 9) 验收标准（可证伪）
| 观测 | 通过 | 不通过 |
|---|---|---|
| 默认不改任何按钮 | 不再出现**自动**巡逻（战斗机不自己起飞） | 仍自己巡逻 ⇒ 门没生效 |
| 按「自动巡逻」后 | 后续回合出现巡逻任务；再按一次 ⇒ 召回 | 无变化 ⇒ 门写反 |
| 按「自动打击」+ 战时 | 玩家机场自动轰炸（目标∈可见敌省） | 和平期乱炸 ⇒ 门写反 |
| AI 打击目标 | 只落在 AI 可见省（`nP2s pid=` / `nA1 ap=… tgt=`） | 越迷雾 ⇒ 视野门没生效 |
| 代码门禁 | ㊷㊸ 0 处；㊶ 0 处；arity BAD0；invoke-target OK | 任一不通过 |

## 10) 变更清单摘要
| # | 位置 | 变更 |
|---|---|---|
| H1 | `AirForceManager` | 新增 helper `a1VisOk(Airport,pid,civ)Z`（`.registers 8`）＝`aiVisRadarPass ∨ aiVisAirportPass` |
| **F5** | `executeAIAssignmentForAirport` 分支分叉点 | 插入 `mode` 门：和平⇒仅 PATROL 巡逻；战时⇒仅非 PATROL 轰炸 |
| F4a | `a1Scan` 候选门 | 把恒真的 `&0x4` 门替换为 `a1VisOk(airport,pid,p0)` |
| F4b | `a1bPick` 候选验收点 | 插入 `a1VisOk(p0,pid,p1)`（不可见⇒跳过） |

## 11) 修 bug 三问
- **错误规则（F5）**：老线的**和平分支**建巡逻时**从不检查 `mode`** ⇒ 只要"外层门放行（玩家机场 ∧ 自动打击开关=0）＋10% 骰 ＋ 未开战 ＋ 有战斗机"就**自动生成巡逻**，于是"战斗机一造出来就自己去巡逻"，而改 `mode` 的巡逻按钮毫无作用。
 **正确规则**：和平⇒**只有 `mode==PATROL` 才巡逻**；战时⇒**只有 `mode!=PATROL` 才轰炸**（两个按钮互斥、各管一段）。
 **为什么之前会错**：游戏原版就没有这道门（6 个 `createPatrol` 调用点里只有 `tryPatrolForAirport` 检查 `mode`），属**原版遗漏**；我们把"自动打击开关"接活后，和平分支被放行，问题才暴露出来。
- **错误规则（F4）**：智能线选靶**没有任何可见性要求**（`getFogDrawArmy()` 读了即被覆盖、`a1Known` 无条件写、`&0x4` 门恒真）⇒ AI 越迷雾乱打。
 **正确规则**：AI 候选必须通过**打击方自己的视野**（`aiVis*`，与老线 `aiPickVisibleTarget` 同款）；看不见就不打。
 **为什么之前会错**：为修"候选恒空"我在 `r5c046g` 做了 G1/G2 解绑（当时用的是**玩家迷雾** `getFogDrawArmy`，语义本就错位）。本版改用**打击方视野**从根上解决。
- **症状 ↔ 修复**：战斗机自动巡逻 ↔ F5；AI 越迷雾 ↔ F4a/F4b。

## 附：寄存器分配表（实测）
| 位置 | `.registers` | 借用 | 是否提高 |
|---|---|---|---|
| `executeAIAssignmentForAirport` | 9 | v2/v3（对象比较；其后原代码会重新赋值） | **否** |
| `a1Scan` | 16（上限） | v13（既有 int 暂存） | **否** |
| `a1bPick` | 16（上限） | v10（既有 int 暂存） | **否** |
| 新 `a1VisOk` | — | `.registers 8`（p0/p1/p2＝v5/v6/v7；局部 v0–v4） | 新建 |
> 回归门禁：㉙ regtype AFM 35→37（新增 2 条为**启发式告警**：mode 比较用对象寄存器、该方法后文把同一寄存器当 int 复用；两条汇合边类型一致 ⇒ 判为安全；该方法原本就有同类 v4 告警且历来正常）。arity BAD 0；invoke-target OK（新 helper 描述符已校验）。
'''

PLAN_SEC = '''

---

## 90. 【施工·已装机】r5c046t —— 两个按钮真正生效（F5）+ AI 走自己视野（F4）
### 90.1 施工（严格按 §89 定稿）
H1 新 helper `a1VisOk(Airport,pid,civ)Z`（`.registers 8`）｜**F5** `executeAIAssignmentForAirport` 分叉点插 `mode` 门｜F4a `a1Scan` 换掉恒真 `&0x4` 门｜F4b `a1bPick` 插 `a1VisOk`。
补丁 `r5c046t_fix.py`（4 编辑，锚点唯一）；回滚点 `AirForceManager.smali.pre_r5c046t`。
### 90.2 门禁
| 门禁 | 负样本（装机 s） | 修后 |
|---|---|---|
| **㊷㊸ `check_r5c046t_gate.py`** | **6 处** | **0** |
| ㊶ btn-polarity | — | 0 |
| ㉙ regtype AFM | 35 | 37（2 条启发式） |
| arity / invoke-target | — | BAD 0 / OK |
| 语义等价抽查 | — | `a1ShootAir`/`a1PkApPid`/`isMyMission`/`autoStrikeOff` 全在位 ✔ |
### 90.3 产物与装机
dex `8451644e27162bc3ac114c92ab4791eb`；apk `a6ae82302a2cbd07007a3b9ab364e7e3`（Earth3 18510）。
**外部独立核验**：设备 apk `a6ae8230…` ✔ / dex `8451644e…` ✔ / Earth3=18510 ✔；抓样基线 `1185020445`。
### 90.4 待验收（用户实测）
①默认不动按钮 ⇒ 战斗机不再自己巡逻；②按「自动巡逻」⇒ 后续出现巡逻、再按 ⇒ 召回；③「自动打击」+ 战时 ⇒ 自动轰炸（目标∈可见敌省）；④AI 目标只落在 AI 可见省。
'''

INCR_ADD = '''
## 34. 施工·已装机 r5c046t（F5 巡逻门 + F4 AI 视野）
- 4 处编辑：H1 `a1VisOk(Airport,pid,civ)Z`；F5 老线分叉点 `mode` 门；F4a `a1Scan` 替换 `&0x4` 门；F4b `a1bPick` 插门。
- 门禁：新增 ㊷㊸（负样本 6→0）；㊶ 0；㉙ 35→37（启发式）；arity BAD0；invoke-target OK；语义等价抽查全在位。
- 产物：dex `8451644e…`／apk `a6ae8230…`；装机独立核验通过；基线 `1185020445`。
- 未新增静态字段、未提高 `.registers`。
- 验收：默认无自动巡逻；按巡逻键才巡逻；打击键+战时自动轰炸（目标∈可见敌省）；AI 只打自己看得见的省。
'''

def main():
    open(DESIGN,'w',encoding='utf-8').write(DESIGN_TXT)
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC)
    open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    print('[OK] design=%d plan=%d incr=%d' % (os.path.getsize(DESIGN), os.path.getsize(PLAN), os.path.getsize(INCR)))

if __name__ == '__main__':
    main()