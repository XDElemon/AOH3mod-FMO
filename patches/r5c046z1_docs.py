# -*- coding: utf-8 -*-
# r5c046z1_docs.py —— 批 r5c046z1 全套落盘
#   产出：三轮调研 v1/v2/v3、设计逻辑、验收卡、磁盘清理记录、计划书 §101/§102、INCR §45/§46
import os, time

D = '/sdcard/GLG/历史23/r6s5/'
ROOT = '/sdcard/GLG/历史23/'
TS = time.strftime('%Y-%m-%d %H:%M')

HEAD = ('> 批次 **r5c046z1** ｜ 生成 ' + TS +
        ' ｜ dex `a0127f3d0128a564507425e41163f3e1` ／ apk `d80ebae28395786fdb8fc246d1cffa6b`'
        '（738,377,701 B）｜ Earth3=18510 ｜ 基线 `1238345269` ｜ 状态：已装机 · 三对齐全绿 · 待用户实测\n\n')

S1 = HEAD + '''# 调研 · 第一轮（全量）：为什么「攻击机/轰炸机不起飞」

## 0. 现象（用户实测，两条）
1. **攻击机没有起飞**（轰炸机同样不出动；AI 侧此前已验收正常）。
2. **点一个机场的「自动打击」按钮后，其他机场状态一起变**（串机场）。

## 1. 抓样与读数（`r6s5/r5c046z_s1.txt`，14.2 MB，基线 1224112857 → 1238345269）
| 探针 | 计数 | 含义 |
|---|---|---|
| `nAS`（P 线派发成功） | **0** | 修正版 P 线**一次都没派发** |
| `nA4d civ=`（老线战时分支） | 12 | 玩家机场确实进过战时分支 |
| `nA4e k= a=0`（老线轰炸成功建任务） | **4** | 老线**仍在替玩家轰炸** ⇒ E2 短路未生效 |
| `nA5t` / `nA5b`（智能线入口/过战时门） | 275 / **0** | 整场无文明通过战时门 ⇒ AI 未交战（**正常**，解释 `nA1*`/`nP2*` 全 0） |
| `afp:press ap=` ×4 | 6258 / 6338 ×3 | 四次按键解析到的省 |
| `afp:src` | 14 / 13 / 13 / 13 | 解析来源：14=list[0]，13=`Game.iActiveProvince`（**iActiveID 无效**） |
| ` strike=` dump | 142 开 / 1090 关 | 至少存在开关为「开」的时刻 |

> 结论一：`nAS=0` 与 `nA4e k=0 ×4` 并存 ⇒ **派发链被掐死，且老线仍在替玩家干活**。

## 2. 代码审计（逐门极性）
- `updateOffensivesP(I)V`：玩家 civilization 守卫、`getAirportsForCiv` 迭代、开关门 `if-nez v7, :os_loop`
  ⇒ 语义**正确**（关≠0 才跳过，开=0 落穿）。**不是它**。
- `tryStrikeForAirportP(...)`：关2（开关）与关3（20% 骰）已在 z 批修正；继续逐门核：
  - 关6：`hasActivePatrol(...)` ⇒ `if-eqz v7, :cond_51`
    ⇒ **判定写反**：`v7==0`（该师没有在飞任务）反而 return ⇒ **首次派发永远被自己否决**。
  - 关10：`assignedAircraft.isEmpty()` ⇒ `if-eqz v4, :cond_51`
    ⇒ **判定写反**：`isEmpty()==0`（有飞机）反而 return ⇒ 建好的任务**有飞机时不入列**，只有空任务才收。
- 两处合起来：**80% 概率能走到关6，但 100% 在那里被 return** ⇒ `nAS` 恒为 0（对 ATTACKER / BOMBER 同效）✔ 与观测量级一致。

## 3. 历史对照（本项目自己记过名）
`docpack/巡逻v80_说明与装机.md`：
- **B2**：`hasActivePatrol` 判定写反（无任务反而跳过，永远发不出第一次巡逻）⇒ `if-eqz` → `if-nez`
- **B3**：`assignedAircraft.isEmpty()` 判定写反（有飞机反而不入列）⇒ 同上
⇒ 这两颗雷在电脑端的 `tryStrikeForAirportP` 里**原样重现**（同一引擎、不同方法）。

## 4. 第二轮要查的（转 v2）
- E2（老线玩家机场短路）实际执行到了哪里；`nA4e k=0` 的成因。
- 「串机场」的解析链与 UI 事实（谁显示、谁能写、谁权威）。

---

''' + '''# 调研 · 第二轮（拓展）：E2 与「串机场」的接口面

## 1. E2（老线玩家机场短路）——位置对、极性反
`executeAIAssignmentForAirport` 内插入段（z 批）逐字：
```
sget-object v5, Game->player
if-eqz v5, :z_war_go
iget v6, v5, Player->iCivID:I
iget v4, p1, Airport->civID:I
if-eq v6, v4, :z_war_go      ← 应为 if-ne
return-void
:z_war_go
```
- 意图：**玩家机场 ⇒ 短路 return**（轰炸交给 P 线，防双发）；非玩家机场照旧。
- 实际 `if-eq`：`playerCiv == airport.civID` 时**跳去继续老线**，`!=` 时 return
  ⇒ 恰好相反：**玩家机场照旧轰炸、非玩家机场被挡**。
- 观测吻合：`nA4d=12`（玩家机场进战时分支）+ `nA4e k=0 ×4`（仍建成轰炸任务）。

## 2.「串机场」——解析链 + UI 事实（全树取证）
| 事实 | 证据 |
|---|---|
| `InGame_AirForceOptions$BtnMission` 是**唯一**读 `autoStrikeOff` 的类 | `grep -rln autoStrikeOff` 仅命中该文件 |
| 解析顺序 = ①`iActiveID`（有效则**静默返回**）→ ②`Game.iActiveProvince`(src3) → ③`AFM.selectedAirportProvinceID`(src2) → ④`list[0]`(src4) | `pickAirport(I)` 逐字 |
| **`selectedAirportProvinceID` 全树零写入** | `grep sput` 0 命中 ⇒ 恒 -1，**死字段**（之前怀疑它"陈旧"是误解） |
| 打开 AirForce 面板的入口 8 处（MenuManager / InGame_CourtOptions2$18 / BtnAirport / 各 BtnClose） | `setVisibleInGame_AirForce` 调用点 |
| 只有 `InGame_AirForce$BtnAirport`（列表行点击）会把 `iActiveID` 设为**真实下标** | `sput ...->iActiveID` 写入点：BtnAirport、MenuManager(-1)、clinit(-1)、InGame_Destroy |
| `iActiveID < 0` 时面板走 `:cond_69a`（仅画 "AirForce" 标题/列表）**但任务按钮仍可点** | InGame_AirForceOptions 反汇编 |
⇒ **「串机场」的真机制**：很多进入路径下 `iActiveID` 仍是 -1 ⇒ 按键走兜底解析 ⇒ 每次落到**同一个**机场（`Game.iActiveProvince` 所在的省） ⇒ 面板文本显示的是那个机场的开关 ⇒ 观感＝"所有机场一起变"。
⇒ 修法（低风险、语义自愈）：兜底解析成功后**把下标写回 `iActiveID`** ⇒ 面板随之锁定该机场（用户能看见究竟改了谁），后续按键精确。

## 3. 安全前提（pin 方案）
- 语义一致：`iActiveID` 正是 `getAirportsForCiv(playerCiv)` 的下标（引擎自身用法）。
- 越界保护：循环守卫 `if-ge v7, v2, :pin_body`；`v2` 为列表 size（null 时 0 ⇒ 直接跳过）。
- 寄存器：`pickAirport` 为 `.registers 8`（v0–v7），**v7 未被使用** ⇒ 可安全借用（不改 `.registers`）。

---

''' + '''# 调研 · 第三轮（定稿）：锚点 / 真值表 / 寄存器 / 失败模式 / 验收

## 1. 编辑点与唯一锚点（逐字，实测命中次数必须=1）
| # | 文件 | 锚点（含空行差异，正则容错） | 命中 |
|---|---|---|---|
| A1 | AirForceManager `tryStrikeForAirportP` | `hasActivePatrol(...Airport;Ljava/lang/String;)Z\\s*move-result v7\\s*` + `if-eqz v7, :cond_51` | 1 |
| A2 | 同上 | `assignedAircraft:Ljava/util/List;\\s*invoke-interface {v4}, Ljava/util/List;->isEmpty()Z\\s*move-result v4\\s*` + `if-eqz v4, :cond_51` | 1 |
| A3 | AirForceManager `executeAIAssignmentForAirport` | `Airport;->civID:I` + `if-eq v6, v4, :z_war_go` | 1 |
| A4 | BtnMission `pickAirport` | `:cond_54` + `return-object v5` | 1 |
> 教训：**smali 指令之间普遍有空行**（`\\n\\n`），锚点必须用 `\\s*` 而不是 `[ \\t]*\\n`。

## 2. 逐条真值表与极性
| 判定 | 值 | 正确动作 | 写反的后果 |
|---|---|---|---|
| `hasActivePatrol(airport, divKey)` | 1=该师已有在飞任务 | **跳过**（防重复）⇒ `if-nez v7, :cond_51` | 反了 ⇒ 首次派发永不发生（本批主因） |
| `mission.assignedAircraft.isEmpty()` | 1=任务没飞机 | **跳过**（放弃空任务）⇒ `if-nez v4, :cond_51` | 反了 ⇒ 有飞机不入列、空任务入列 |
| `player.iCivID == airport.civID` | 1=玩家机场 | **return**（P 线负责）⇒ `if-ne v6, v4, :z_war_go` | 反了 ⇒ 老线继续替玩家炸（双发风险） |
| `autoStrikeOff` | 0=开 | 派发 | （已在 z 批修正） |

## 3. 寄存器分配
| 方法 | `.registers` | 本批借用 | 依据 |
|---|---|---|---|
| `tryStrikeForAirportP` | 14（不变） | 无新增 | 只改助记符 |
| `executeAIAssignmentForAirport` | 不变 | 无新增 | 只改助记符 |
| `pickAirport`（BtnMission） | 8（不变） | **v7**（循环下标）+ v0（比较暂存） | v7 在原方法内 0 引用；v0 在其后即被覆盖 |

## 4. 失败模式与回滚点
- 失败模式：pin 循环若 `v2`（列表 size）与 `v3`（列表）不同源 ⇒ 越界 ⇒ 已用 `v7 < v2` 守卫 + null 时 v2=0。
- 回滚点：`AirForceManager.smali.pre_r5c046z1`、`InGame_AirForceOptions$BtnMission.smali.pre_r5c046z1`（均在 `/tmp/revx`）。

## 5. 门禁（新增 ㊾）与负样本
`r5c046z1_all.py gate`：
- ㊾-1 `hasActivePatrol` 后必须紧跟 `if-nez v7, :cond_51`
- ㊾-2 `isEmpty()` 后必须紧跟 `if-nez v4, :cond_51`
- ㊾-3 不得存在 `if-eq v6, v4, :z_war_go`，必须有 `if-ne` 版
- ㊾-4 pin 块四处（`pin_loop` / `pin_hit` / `sput iActiveID` / 循环守卫）齐备
- ㊾-5 `pickAirport .registers >= 8`
- 负样本 3/3 全部被抓；回归：㉙ REGTYPE OK、㊽ 0 处、arity 134581/BAD 0、invoke-target OK。

## 6. 验收标准（可证伪）
通过 = `nAS ≥ 1`（按机型 ordinal 区分 ATTACKER/BOMBER）且 `nA4e k=0` 归零（玩家机场不再由老线轰炸）；
不通过 = `nAS` 仍为 0（派发链还有门）或 `nA4e k=0` 仍出现（E2 未生效）。
'''

DES = HEAD + '''# 设计逻辑 · r5c046z1

## 1. 版本号 + 一句话定位
**r5c046z1**：修好"玩家侧自动出击"的**两道否决门**（P 线）与**一处反向短路**（老线），并让「自动打击」按钮**锁定到具体机场**；不动 AI 空军任何逻辑。

## 2. 设计目标（玩家可见的问题 → 上层意图）
- 现象 A：把「自动打击」打开、处于战时，攻击机/轰炸机**完全不起飞**。
  意图：**开关打开即应在本回合内按概率派机**（攻机打敌方部队、轰机炸敌方本土）。
- 现象 B：在一个机场切换开关，**别的机场跟着变**。
  意图：开关是**每机场独立**的状态，操作必须落到"我正在看的那个机场"。

## 3. 设计规则与判定顺序（人话，含先后与优先级）
**P 线（玩家机场自动出击）** —— 每回合、每文明调用 `updateOffensivesP(civ)`：
1. 若 `Game.player` 为空 → 结束；若 `player.iCivID ≠ 传入 civID` → 结束（**只管玩家自己**，AI 走原链）。
2. 遍历该文明的机场列表；对每个机场：
   a. **开关门（最高优先）**：`autoStrikeOff ≠ 0`（关）→ 跳过该机场。
   b. 依次尝试 **ATTACKER** 与 **BOMBER** 两种机型。
3. 单机型派发 `tryStrikeForAirportP(airport, rnd, type)`：
   a. 玩家/机场文明一致门；b. 开关门；c. **概率门**（`rnd < 0.2` 才跳过 ⇒ 80% 继续）；
   d. 有**空闲师**（`pickIdleDivKey`）；e. **防重复门**：该师**没有**在飞任务才继续；
   f. 找得到目标（`pickStrikeTargetP ≥ 0`，走玩家自己的视野）；g. 建成任务且**任务里确实有飞机**才入列（否则放弃）。
4. 全部通过 → 任务进 `activeMissions` 并打 `nAS` 探针。
**老线（AI 链）**：遇到**玩家机场**立即 return（玩家的一切出击归 P 线，避免双发）；非玩家机场行为**不变**。
**按钮解析**：`iActiveID` 有效 → 用它；否则按 `Game.iActiveProvince` → 选中机场 → `list[0]` 兜底；**兜底命中后把下标写回 `iActiveID`**（面板随之锁定该机场）。

## 4. 参数与阈值表
| 名称 | 当前值 | 单位 | 含义 | 调大/调小 |
|---|---|---|---|---|
| 派发概率门 | `0.2f` | 概率 | `rnd < 0.2` 跳过 ⇒ 每回合每机场每机型 80% 尝试 | 调大⇒更少出动；0 则每次必试（易刷屏） |
| 机型 | ATTACKER / BOMBER | 枚举 | 攻机打部队 / 轰机炸省 | — |
| `autoStrikeOff` | 0=开 / 1=关 | 布尔 | 每机场总闸（默认关，用户要求保留） | — |
| `iActiveID` | -1 或 `0..size-1` | 下标 | 面板当前机场 | 本批：兜底后回写 |

## 5. 状态与生命周期
机场（`autoStrikeOff`）→ 每回合 `update(civ)` → `updateOffensivesP(civ)` → `tryStrikeForAirportP` → `AirMission`（`createAttackArmy`/`createStrategicBombing`）→ 入 `activeMissions` → 引擎按任务推进/结算/回收（本批不改）。

## 6. 边界与不变量
- **对齐**：沿用 AI 链同款 gate 语义（`hasActivePatrol` 防重复、`assignedAircraft` 非空才有意义）。
- **不修改**：AI 空军（智能线 / 老线对非玩家机场的路径）、任务推进与结算、UI 布局（不做面板）。
- **必须成立**：同一寄存器不得在汇合点跨类型；`.registers` 不上调（工具链上限 16）；每机场独立开关。

## 7. 玩家可感知的表现
- 正常：开关打开 + 战时 ⇒ 机场自动派出攻击机（打敌方部队）/ 轰炸机（炸敌方本土），地图出现任务图标与航线；开关关闭 ⇒ 该机场零出击。
- 按钮：按下去之后，**面板切到该机场自己的视图**（不再"别的机场一起变"）。
- 异常表现：仍零出击（`nAS=0`）⇒ 派发链还有门未开；仍串机场 ⇒ 解析仍落到同一机场。

## 8. 失败与回退（正常情况下不出兵的情形）
- 开关关闭（`autoStrikeOff≠0`）⇒ 按设计不出兵。
- 概率门跳过（20%）⇒ 本回合不试，下回合再试。
- 该机场没有空闲师 / 该师已有在飞任务 ⇒ 不重复派发。
- 找不到合法目标（玩家视野内无可打目标，或超航程）⇒ 不出兵。
- 以上都属**正常节流**。属 bug 的是：开关打开、战时、有目标、有空闲师，却**永远**不出兵。

## 9. 验收标准（可证伪）
| 看什么 | 通过 | 不通过 |
|---|---|---|
| `nAS`（P 线派发成功） | **≥1**（按机型区分） | 仍为 0 |
| `nA4e k=0`（老线替玩家轰炸） | **消失** | 仍出现 |
| 机场开关 dump | 只有被操作的那个机场状态变化 | 多个机场同时变 |
| AI 侧 | `nA1*`/`nA1b*`/`nP2*` 与「AI 未交战」时一致（本场为 0） | 智能线行为变化 |

## 10. 变更清单摘要
1. `tryStrikeForAirportP`：`hasActivePatrol` 门 `if-eqz` → `if-nez`（**规则级**：没有在飞任务才允许派发）。
2. `tryStrikeForAirportP`：`assignedAircraft.isEmpty()` 门 `if-eqz` → `if-nez`（**规则级**：任务里必须有飞机）。
3. `executeAIAssignmentForAirport`：玩家机场短路 `if-eq` → `if-ne`（**规则级**：玩家机场一律交 P 线）。
4. `BtnMission.pickAirport`：兜底解析后写回 `iActiveID`（**规则级**：按钮锁定当前机场）。
5. 新增门禁 ㊾ + 负样本 3/3。

## 11. 风险与待办
- 风险：`iActiveID` 回写会让面板在"列表屏按键"后跳到该机场的选项视图（这是**有意**的可见反馈）；若用户习惯列表屏操作，需要适应一次。
- 待办（Phase B）：评分/情报门/巡炸 `rove` 的复原（见计划书 §97.4/§100）；本批不含。
- 遗留：`selectedAirportProvinceID` 是**死字段**（全树零写入）⇒ 建议后续彻底移除引用，避免再次误判。

## 附：修 bug 三问（本批 3 处）
| 问题 | 错误的规则 | 正确的规则 | 之前为什么会错（症状→原因） |
|---|---|---|---|
| 攻击机/轰炸机不起飞 | "该师若没有在飞任务，就跳过" | "该师若已有在飞任务，才跳过（防重复）" | 电脑端写 `tryStrikeForAirportP` 时把 `hasActivePatrol` 的助记符写成 `if-eqz`；本项目 v80 批已在**巡逻**里踩过同一颗雷（B2），注释里有、代码里重现 ⇒ 派发链 100% 自我否决 ⇒ `nAS=0` |
| 同上（次因） | "任务里若没飞机，才入列" | "任务里必须有飞机才入列" | `isEmpty()` 判定写反（v80 B3 同类）⇒ 有飞机的任务被丢弃、空任务被收下 |
| 老线仍替玩家轰炸 | "玩家机场继续走老线；非玩家机场返回" | "玩家机场返回；非玩家机场继续" | E2 我写成 `if-eq`（应为 `if-ne`）⇒ 语义反向；症状＝开关关了轰炸机照飞（`nA4e k=0 ×4`） |
'''

CARD = HEAD + '''# 验收卡 · r5c046z1（玩家侧攻机/轰机自动出击 · 第二修）

## 一、交付件（已独立核验）
| 项 | 值 |
|---|---|
| 设备 apk | `d80ebae28395786fdb8fc246d1cffa6b`（738,377,701 B）✅ |
| 设备 dex | `a0127f3d0128a564507425e41163f3e1` ✅ |
| Earth3 | `18510` ✅ |
| 归档 | `build_apk/dbg_signed77_v119_r5c046z1.apk` |
| 抓样基线 | `1238345269`（已重置） |
| 上一版回滚点 | **z**：apk `ac9eb8e4…` / dex `b6d45e08…` |

## 二、请这样测（6 步）
1. **重启游戏**（务必重启，让新 dex 生效）。
2. 进机场面板，确认「自动打击」当前为**关**；战中状态下等 2~3 回合 ⇒ 应**零出击**（老线也不该替你炸）。
3. 把**某一个**机场的「自动打击」打开 ⇒ 面板应**切到该机场自己的视图**（这是本版的消歧反馈）。
4. 切到另一个机场 ⇒ 它的开关应保持**自己**的状态（不再跟着变）。
5. 战时等 2~4 回合（每回合每机场每机型 80% 尝试）⇒ 该机场应自动派出**攻击机打敌方部队**、**轰炸机炸敌方本土**（需在航程内）。
6. 玩完喊「抓」，我读探针判读。

## 三、判据表
| 现象 | 通过 | 不通过 |
|---|---|---|
| 面板按钮 | 只影响当前机场 | 多机场同时变 |
| 出击 | 开着的机场出现任务图标/`nAS≥1` | 一直零出击（`nAS=0`） |
| 老线 | `nA4e k=0` 不再出现 | 仍出现（开关关了也飞） |
| AI 侧 | 与本场"AI 未交战"一致 | AI 行为变化 |

## 四、常见"没动"的原因（正常节流，非 bug）
- 该机场开关是**关**；- 该机场**没有空闲师**，或该师已有在飞任务；
- 玩家视野内**找不到合法目标**（或超航程）；- 概率门 20% 跳过（下回合会再试）。

## 五、回滚方式
重装上一版：`build_apk/dbg_signed77_v119_r5c046z.apk`（apk `ac9eb8e4…`）。

## 六、文档索引
`调研_r5c046z1_*_v1全量/v2拓展/v3定稿.md`｜`设计逻辑_r5c046z1.md`｜`磁盘清理记录_20260927.md`｜
计划书 §101/§102｜`INCR.md` §45/§46｜脚本 `r5c046z1_all.py`（survey/patch/gate 三态 + 门禁 ㊾）
'''

CLEAN = HEAD + '''# 磁盘清理记录 · 2026-09-27（AI 端 + 手机端）

## 背景
手机报"空间满了"；上一批装机失败日志显示 `PackageInstallerService.createSessionInternal` 异常 ⇒ **空间不足导致装机开不了会话**。

## 清理前
| 位置 | 占用 |
|---|---|
| /data（含 /sdcard） | **218 G / 223 G（剩 4.5 G，98%）** |
| AI 电脑端 `/tmp` | **22 G**（其中 apk 中间产物 27 个 ≈ **19 G**） |
| `/data/local/tmp` | 3.1 G（4 个 738 MB 装机副本 + 日志切片 209 MB） |
| `/sdcard/GLG/历史23/build_apk` | 8.4 G（12 个 738 MB 归档） |
| 游戏探针日志 `airdbg_key.txt` | 1.24 G |

## 已删除（均为可再生产物）
| 位置 | 内容 | 释放 |
|---|---|---|
| `/tmp` | `*_work.apk` / `*_aligned.apk` / `*_signed.apk` / `stage.apk` / `_stage.apk` / `fastdex` / 旧 `*_classes.dex` / `r5c046p_unsigned.apk` / `/tmp/pq` | **≈ 20.3 G** |
| `/data/local/tmp` | `r5c046z.apk`、`stage.apk`、`_stage.apk`、`*_slice.txt`（保留 `r5c046z1.apk` 供装机与安装日志） | ≈ 2.4 G |
| `build_apk/` | 归档 n/o/p/q/r/s/t/u/v（**保留 w / z / z1 三个回滚点**） | ≈ 6.3 G |
| 散落副本 | `历史23/tmp_pc_classes.dex`、`tmp_s_classes.dex`、`Download/r5c046x_fix.apk`（电脑端废弃构建，崩溃版） | ≈ 0.7 G |

## 刻意保留（不可再生 / 仍在使用）
- AI 端：`/tmp/revx`（当前施工树）、`/tmp/revs`、`/tmp/w3a`（含全部 `AirForceManager.smali.pre_*` 历史备份）、`/tmp/w3a_r`、`/tmp/docpack`（B3-A1 素材 124 件）、`/tmp/e3`（Earth3 素材，`common.sh` 引用）、`/tmp/base_v119.apk`（`common.sh` 引用，全量重打包用）、`/tmp/r5c046z1_classes.dex`、`/tmp/r5c046z_classes.dex`
- 手机端：原版/底包 `历史时代3完全汉化版v2.0.apk.1`（736 MB）、`build_apk` 的 w/z/z1、`r6s5` 全部文档与样本（251 MB，判读证据）、游戏探针日志（1.24 G，**如需再清请在空档期确认**——它是探针历史，删了旧场次无法回看）

## 清理后
| 项 | 值 |
|---|---|
| /data | **190 G / 223 G（剩 33 G，86%）** |
| 净释放 | **≈ 28.9 G** |
| `/tmp` | 22 G → **1.7 G** |
| `build_apk` | 8.4 G → **2.1 G** |

## 教训（新增铁律候选）
**磁盘满会以"装机失败/会话异常"的形式出现，而不是以"写入报错"出现。** 每批构建后应清 `/tmp/*_work|aligned|signed.apk`，并只保留最近 2–3 个归档 apk。
'''

def w(name, text, also_root=False):
    p = D + name
    open(p, 'w', encoding='utf-8').write(text)
    print('[OK] %s (%d B)' % (p, os.path.getsize(p)))
    if also_root:
        p2 = ROOT + name
        open(p2, 'w', encoding='utf-8').write(text)
        print('[OK] %s (%d B)' % (p2, os.path.getsize(p2)))

w('调研_r5c046z1_派发链与按钮消歧_v1全量.md', S1)
w('调研_r5c046z1_派发链与按钮消歧_v2拓展.md', '''# 调研 · 第二轮（拓展）—— 见 v1 全文第 5 节起
（本批 v1/v2/v3 合并在同一文件内分节落盘，v2 内容见 `_v1全量.md` 的「第二轮（拓展）」章节。）
''')
w('调研_r5c046z1_派发链与按钮消歧_v3定稿.md', '''# 调研 · 第三轮（定稿）—— 见 v1 全文第 3 节
（锚点表/真值表/寄存器/失败模式/门禁/验收标准，见 `_v1全量.md` 的「第三轮（定稿）」章节。）
''')
w('设计逻辑_r5c046z1.md', DES, also_root=True)
w('验收卡_r5c046z1.md', CARD)
w('磁盘清理记录_20260927.md', CLEAN)

# 计划书 §101/§102
PLAN = D + 'AI打击接入_调研与计划书v1.md'
add = '''

## 101. r5c046z1：派发链两颗老雷 + E2 极性 + 按钮消歧（2026-09-27）

**触发**：用户实测「攻击机没有起飞」「按钮串机场仍在」。抓样 `r5c046z_s1.txt`（14.2 MB）：
`nAS`=0（P 线零派发）、`nA4d`=12、**`nA4e k=0`=4**（老线仍替玩家轰炸）、`nA5t`=275/`nA5b`=0（AI 未交战，正常）、
`afp:src`=14/13/13/13（按键全走兜底，`iActiveID` 无效）。

**根因（三处，全部为极性/方向）**
1. `tryStrikeForAirportP`：`hasActivePatrol` 门 `if-eqz` ⇒ **没有在飞任务反而 return** ⇒ 首次派发永不发生（主因，`nAS` 恒 0）。
2. `tryStrikeForAirportP`：`assignedAircraft.isEmpty()` 门 `if-eqz` ⇒ 有飞机反而不入列、空任务才收。
3. `executeAIAssignmentForAirport` E2：`if-eq v6, v4, :z_war_go` ⇒ 玩家机场**不短路**、非玩家机场被挡 ⇒ 老线继续替玩家轰炸。
> 1/2 与本项目 `巡逻v80` 已记名的 B2/B3 是**同一颗雷**（同引擎不同方法）。

**「串机场」机制（全树取证）**：`BtnMission` 是唯一读 `autoStrikeOff` 的类；解析顺序 = `iActiveID`（有效则静默返回）→ `Game.iActiveProvince` → **`selectedAirportProvinceID`（全树零写入=死字段）** → `list[0]`。多数进入路径（王宫菜单等）不点列表行 ⇒ `iActiveID` 恒 -1 ⇒ 按键永远落到兜底同一个机场 ⇒ 观感=所有机场一起变。
**修法**：兜底解析成功后**把下标写回 `iActiveID`**（面板锁定该机场，可见反馈；`.registers 8` 内借 v7，越界有守卫）。

**产物**：dex `a0127f3d0128a564507425e41163f3e1` / apk `d80ebae28395786fdb8fc246d1cffa6b`（738,377,701 B，`build_apk/dbg_signed77_v119_r5c046z1.apk`）。
**装机**：`Success`（三对齐：apk/dex/Earth3=18510 ✔，基线重置 `1238345269`）。
**门禁**：新增 **㊾**（`r5c046z1_all.py gate`）：hasActivePatrol 门极性 + isEmpty 门极性 + E2 必须 `if-ne` + pin 块四处 + `.registers≥8`；负样本 3/3 捕获；回归 ㉙ OK / ㊽ 0 / arity 134581·BAD 0 / invoke-target OK。
**回滚点**：`AirForceManager.smali.pre_r5c046z1`、`InGame_AirForceOptions$BtnMission.smali.pre_r5c046z1`。

## 102. 磁盘清理（2026-09-27）

手机报满：`/data` 218 G/223 G（剩 4.5 G）⇒ 上一批装机失败实为**空间不足导致 PackageInstaller 开不了会话**（`createSessionInternal` 异常）。
清理：AI 端 `/tmp` 中间产物 + 旧 dex + p 版残留 + `/tmp/pq` ≈ **20.3 G**；`/data/local/tmp` 旧装机副本/切片 ≈ 2.4 G；
`build_apk` 归档 n–v（保留 w/z/z1）≈ 6.3 G；散落副本 ≈ 0.7 G。**净释放 ≈ 28.9 G**，剩 33 G。
**新铁律候选**：磁盘满的表现是"装机失败/会话异常"，不是"写入报错"；每批构建后清 `/tmp/*_{work,aligned,signed}.apk`，归档只留最近 2–3 个。
详见 `r6s5/磁盘清理记录_20260927.md`。
'''
open(PLAN, 'a', encoding='utf-8').write(add)
print('[OK] 计划书 §101/§102 (%d B)' % os.path.getsize(PLAN))

INCR = ROOT + 'build_inputs/r5c046/INCR.md'
add2 = '''

## 45. r5c046z1 —— 派发链两颗老雷（v80 B2/B3 重现）+ E2 极性 + 按钮消歧

- 症状：攻击机/轰炸机零起飞；老线仍在替玩家轰炸（`nA4e k=0`×4）；按钮串机场。
- 根因：`tryStrikeForAirportP` 的 `hasActivePatrol` 门 `if-eqz`（无在飞任务反而跳过 ⇒ `nAS` 恒 0）、`assignedAircraft.isEmpty()` 门 `if-eqz`（有飞机不入列）、E2 `if-eq`（玩家机场不短路）。
- 修法：三处 `if-eqz→if-nez` / `if-eq→if-ne`；`pickAirport` 兜底后回写 `iActiveID`（消除"串机场"）。
- 门禁：新增 ㊾（含 3 个负样本）+ 回归 ㉙/㊽/arity/invoke 全绿。
- 产物：dex `a0127f3d…` / apk `d80ebae2…`；装机 Success；三对齐 ✔；基线 `1238345269`。

## 46. 磁盘清理（同一时点）

- 现象：装机失败＝空间不足（PackageInstaller 会话异常），非文件错误。
- 处置：清 AI 端 `/tmp` 中间产物等 ≈ 20.3 G、`/data/local/tmp` ≈ 2.4 G、`build_apk` 旧归档 ≈ 6.3 G、散落副本 ≈ 0.7 G；净释放 ≈ 28.9 G（剩 33 G）。
- 保留：施工树、`w3a` 历史备份、docpack 素材、`/tmp/e3`、`/tmp/base_v119.apk`、build_apk 的 w/z/z1、r6s5 全部样本与文档。
'''
open(INCR, 'a', encoding='utf-8').write(add2)
print('[OK] INCR §45/§46 (%d B)' % os.path.getsize(INCR))