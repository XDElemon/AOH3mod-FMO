# -*- coding: utf-8 -*-
# r5c046z_docs.py —— 批 r5c046z：三轮调研 + 设计逻辑 + 计划书 §100 + INCR §44
import os, time
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
V1=os.path.join(R6S5,'调研_r5c046z_修正电脑端PhaseA_v1全量.md')
V2=os.path.join(R6S5,'调研_r5c046z_修正电脑端PhaseA_v2拓展.md')
V3=os.path.join(R6S5,'调研_r5c046z_修正电脑端PhaseA_v3定稿.md')
DESIGN=os.path.join(R6S5,'设计逻辑_r5c046z.md')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','incr_tmp.md') if False else os.path.join(BASE,'build_inputs','r5c046','INCR.md')
TS=time.strftime('%Y-%m-%d %H:%M')

V1='''# 调研（第一轮·全量）：全面检查设备现装版（电脑端 Phase A）并定位闪退
> 时点 ''' + TS + ''' ｜ 设备现装：apk `e0de5c46…` / dex `8629cee0…`（Earth3=18510 ✔ 资产正常）｜ 源脚本 `r5c046x_phaseA.py`（PC `E:\\WorkGroup\\glg\\work\\revs\\…`）

## 一、闪退现场（logcat crash buffer 原文，已存 `logcat_verifyerror_20260927.log`）
```
FATAL EXCEPTION: GLThread
java.lang.VerifyError: Verifier rejected class aoc.kingdoms.lukasz.map.battles.AirForceManager:
  int AirForceManager.pickStrikeTargetP(Airport, AirUnit$AirType) failed to verify:
  [0x57] register v3 has type Integer but expected Float
    at AA_Game.render(AA_Game.java:236) → GLSurfaceView$GLThread…
```
⇒ ART 校验器在**类首次使用**即否掉整个 `AirForceManager` ⇒ 一进游戏必崩（非资产/签名问题）。

## 二、装机版相对我方 r5c046w 的**全部**改动（方法级归一化比对）
| 项 | 内容 |
|---|---|
| 新增方法 5 个 | `updateOffensivesP(I)V`、`tryStrikeForAirportP(Airport;Random;AirType;)V`、`pickStrikeTargetP(Airport;AirType;)I`、`hasStrikeInFlightP(I;AirType;)Z`、`dbgStrikeP(II;String;)V` |
| 插入 1 | `update(civ)` 内 `updatePatrols` 之后 → `updateOffensivesP(p1)` ✔（位置/签名/调用 kind 全对） |
| 插入 1 | `executeAIAssignmentForAirport` 战时分支 → 玩家短路（E2） |
| 空标签 1 | `executeAIAssignment(I)` 多 1 个空标签（无害） |
| 消失 0 | — |
| 其它类 | `BtnMission` 与我方 w 版**语义等同**（归一化 0 行差，仅格式差异）⇒ 我方的 t/u/v/w 修复**都在** ✔ |
⇒ **不是"改了一堆"**：只动了 AFM 的 5 个新方法与 2 处插入。

## 三、逐方法审计（以**装机 dex**为准，非脚本）
| 方法 | 结论 |
|---|---|
| `pickStrikeTargetP` | **★Ver进Error 源**：`const/high16 v3,0x7f800000`（**int 常量**）与回边 `move v3, v4`（float）在循环头 `:cond_19` 汇合 ⇒ 合并类型判为 Integer ⇒ `cmpg-float …,v3`（要 float）失败；**同循环 v4** 也有 `Integer对象↔float` 汇合 ⇒ 修好 v3 后下一个报错就是它 |
| `tryStrikeForAirportP` | **关2 反向**：`if-eqz v3, :cond_51` ⇒ `autoStrikeOff==0`（＝开）反而跳过 ⇒ 与 `updateOffensivesP` 的 `if-nez` 互相抵消 ⇒ **永不派发**；关3/关6 经复核**方向正确**（关3：`cmpg-float`+`if-ltz`⇒ rnd<0.2 跳过；关6：`if-ltz v0`⇒ 无靶(−1)跳过 ✔） |
| `updateOffensivesP` | 总闸 `if-nez` ✔；但循环头 `v0` 存在 `List对象/int/AirType对象` **三方汇合**（靠"合并后未被读"侥幸过校验，脆弱） |
| `hasStrikeInFlightP` | 逻辑正确；但 `v4` 先 int 后对象、`v5` 分支两侧类型不同（同样属"侥幸型"写法） |
| `dbgStrikeP` | ✔（`AirDbgLog.e5ii(String,II)V` 确实存在） |
| E2（玩家短路） | 跳向**猜出来的既有标签 `:cond_ad`**，且 `v5` 在汇合处 `Player对象/int` ⇒ 结构脆弱、标签猜错会静默改老线行为 |
'''

V2='''# 调研（第二轮·拓展）：修正方案、不变量与风险
> 时点 ''' + TS + '''

## 一、修正原则（对齐"如何正确编写"规范）
1. **寄存器按类型分区**（对象/int/float/long 各占各的），**循环头逐边类型一致**。
2. **浮点初值必须走 float 渠道**（`Float.POSITIVE_INFINITY → floatValue()F`），禁用 `const/high16` 当 float。
3. **不跳猜标签**：只用自己的批次前缀标签（`:pst_*`/`:os_*`/`:hsf_*`/`:z_war_go`）。
4. **不提高既有方法 `.registers`**；新方法独立计算（14/10/12）。

## 二、逐处修正
| # | 位置 | 修法 |
|---|---|---|
| 1 | `pickStrikeTargetP` | **整方法重写**：v0 bestPid(int)/v2 ownCiv(int)/v7 pid(int)/v8 temp(int)｜v3 bestDist(float, 由 `Float.POSITIVE_INFINITY.floatValue()` 取得)/v9 dist(float)｜v4 List/Iterator(obj)/v5 Integer(obj)/v6 Province(obj) |
| 2 | `updateOffensivesP` | **整方法重写**：obj v0/v1/v2/v3/v6 ｜ long v4v5 ｜ int v7；总闸 `if-nez`（0=开）保留 |
| 3 | `hasStrikeInFlightP` | **整方法重写**：int v0/v2/v4/v7 ｜ obj v1/v3/v5/v6 ⇒ 消除 v4/v5 混用 |
| 4 | `tryStrikeForAirportP` | 关2 `if-eqz`→**`if-nez`**；关3 `if-ltz`→**`if-gez`**（落实 B3-A1 的 **20% 门**；原写法等价 80%） |
| 5 | E2 短路 | 换成**自定义标签** `:z_war_go` + `return-void`；用 v6(玩家文明)/v4(机场文明) 比较，**不写 v5 为 int** ⇒ 汇合处无类型冲突、不猜标签 |

## 三、不变量与红线
- **AI 链一行不动**（`strikeTick_A1`/`a1*`/`a1b*`/`a1Scan`/`a1bScan` 及 r5c025 玩家门）。
- 不碰巡逻链/扫荡/雷达/机炮/导弹/核爆/存档/`isAtWar(I)`/数值文件；**零新字段**。
- 既有方法 `.registers` 不变（由门禁 ㊽ 逐方法断言）。

## 四、风险与失败模式
| 风险 | 处置 |
|---|---|
| 新方法仍有类型混用 | 门禁 ㊽（含"const 寄存器被当 float 操作数"检查，补 ㉙ 盲区） |
| E2 短路范围过大（连和平分支也挡） | 短路点在**战时分支内**（`nA4d` 之后），和平分支不受影响 |
| 与 AI 双发 | E2 只对**玩家机场**短路；AI 机场仍走老线 |
| 装机需点确认框 | 用 `toolchain/autotap_install.sh`；若自动点按失效 ⇒ 人工点【继续】 |
'''

V3='''# 调研（第三轮·全量拓展·定稿）：r5c046z 施工定稿
> 时点 ''' + TS + ''' ｜ 基线树 `/tmp/revx`（＝设备现装版反汇编）

## 1. 编辑清单（6 处）
| # | 位置 | 手法 | 校验 |
|---|---|---|---|
| 1 | `pickStrikeTargetP` | 整方法替换 | 门禁 ㊽：无 `const→v3`、含 `floatValue()F`、无 const 寄存器作 float 操作数 |
| 2 | `updateOffensivesP` | 整方法替换 | ㊽：`if-nez v7, :os_loop` + 调用 tryStrike；`update(civ)` 内紧跟 `updatePatrols` |
| 3 | `hasStrikeInFlightP` | 整方法替换 | 编译 + 反汇编复核 |
| 4 | `tryStrikeForAirportP` 关2 | 锚点：`autoStrikeOff:Z` + `if-eqz v3, :cond_51`（空行容错正则） | ㊽：含 `if-nez v3, :cond_51` |
| 5 | 同上 关3 | 锚点：`cmpg-float v4, v4, v5` + `if-ltz v4, :cond_51` | ㊽：含 `if-gez v4, :cond_51` |
| 6 | E2 短路 | 锚点：PC 的 6 行块（含 `:cond_ad`） | ㊽：含 `:z_war_go`、**无** `if-eq v6, v5, :cond_ad` |

## 2. 真值表（关键分支）
| 判据 | 指令 | 期望 |
|---|---|---|
| 总闸 | `if-nez v7, :os_loop` | `autoStrikeOff!=0`（关）⇒ 跳过；`==0`（开）⇒ 继续 ✔ |
| 攻机驻军门 | `if-lez v8, :pst_loop` | ≤0（无驻军）⇒ 跳过 |
| 视野门 | `if-eqz v8, :pst_loop` | `getFogDrawArmy()==0`（迷雾隐去）⇒ 跳过；`true`＝可见 ✔ |
| 距离 | `cmpg-float v8, v9, v3` + `if-ltz v8, :pst_loop` | ≥0（不更近）⇒ 跳过 |
| 无目标 | `if-ltz v0, :pst_none` | <0 ⇒ 返回 −1 |
| 玩家短路 | `if-eq v6, v4, :z_war_go` | 玩家机场 ⇒ **不跳**（落穿 `return-void`，战时轰炸交给 P 线） |

## 3. 寄存器分配表
| 方法 | .registers | 分区 |
|---|---|---|
| `pickStrikeTargetP` | 14（p0=v11/p1=v12/p2=v13） | int v0/v2/v7/v8；float v3/v9；obj v4/v5/v6 |
| `updateOffensivesP` | 10（p0=v8/p1=v9） | obj v0/v1/v2/v3/v6；long v4v5；int v7 |
| `hasStrikeInFlightP` | 12（p0=v9/p1=v10/p2=v11） | int v0/v2/v4/v7；obj v1/v3/v5/v6 |
| 既有方法 | **均未改动** | 门禁 ㊽ 断言 |

## 4. 门禁与验收
- **㊽ `check_r5c046z_gate.py`**：负样本（修正前）**10 处** → 正样本（修正后）**0 处** ✔
- 回归：㉙ regtype AFM 37（不变，均为既有启发式）；㊷㊸ 0；㊶ 0；㊻ 0；arity BAD 0；invoke-target OK
- 已知门禁局限：㊹㊺/㊼ 对**标签重编号敏感**（装机 dex 里 `:t_go`→`:cond_1e` 等）⇒ 这两项在"反汇编树"上会误报，已改用**语义人工核对**（F5 门形态：`if-eqz v0, :cond_1e` + `if-ne v2, v3, :cond_1e` + `return-void` ✔；派发门 ：`:cond_66/:goto_66` 双标签 ⇒ 分支数判据需按"双标签"重写，列为门禁待改进项）
- 验收（可证伪）：①进游戏**不崩**（`logcat -b crash` 无 VerifyError）②开「自动打击」+ 战时 ⇒ `nAS type=… tgt=…` 出现 ③关总闸 ⇒ 无 `nAS` ④AI 侧 `nA1*`/`nA1b*`/`nP2*` 计数同量级
'''

DESIGN_TXT = '''# 设计逻辑 · r5c046z（修正电脑端 Phase A：消除 VerifyError ＋ 修反向门）
> 交付 ''' + TS + ''' ｜ dex `b6d45e08…` ／ apk `ac9eb8e4…`（归档 `build_apk/dbg_signed77_v119_r5c046z.apk`）｜ 三轮调研见同批 `调研_r5c046z_*`

## 1) 版本 + 一句话定位
在**设备现装版（电脑端 Phase A）**基础上做**纯修正**：①消除 `pickStrikeTargetP` 的 VerifyError（游戏必崩）②修 `tryStrikeForAirportP` 关2 反向门 ③把概率门落实为 **20%** ④把三处"侥幸型"寄存器写法改成**类型分区** ⑤E2 短路改用自定义标签（不再猜既有标签）。**AI 链一行未动。**

## 2) 设计目标
- 玩家可见问题：**一进游戏就闪退**；即便不闪退，玩家的攻/轰也**永不派发**（两道门互相抵消）。
- 上层意图：让"玩家攻机＋轰机自动出击（B3-A1 最终版口径）"**真正跑起来**，且不碰 AI。

## 3) 规则与判定顺序（修后，每文明每回合）
1. `update(civ)`：`updatePatrols(civ)` → **`updateOffensivesP(civ)`**。
2. `updateOffensivesP`：①`Game.player==null` 或 `player.iCivID != civID` ⇒ 返回（**只服务玩家**）②逐机场：**`autoStrikeOff != 0`（按钮"关"）⇒ 跳过** ③对 ATTACKER、BOMBER 各调一次 `tryStrikeForAirportP`。
3. `tryStrikeForAirportP`（七道关）：①文明门 ②**总闸 `autoStrikeOff==0`** ③**20% 骰**（`rnd<0.2` 才继续）④`pickIdleDivKey` 非空 ⑤该师不在飞 ⑥`pickStrikeTargetP ≥ 0` ⑦任务 `assignedAircraft` 非空 ⇒ 入 `activeMissions` ＋ 探针 `nAS`。
4. `pickStrikeTargetP`：候选＝航程内敌省；逐省：**战争门**（`DiplomacyManager.isAtWar`）→（仅攻机）**驻军门** →（仅攻机）**视野门**（`getFogDrawArmy()==false` 跳过）→ **同型同省在飞去重** → **最近优先**。
5. 老线：`executeAIAssignmentForAirport` 战时分支里，**玩家机场直接 `return-void`**（轰炸已交给 P 线，防双发）；AI 机场不受影响。

## 4) 参数与阈值表
| 名称 | 值 | 含义 | 备注 |
|---|---|---|---|
| `autoStrikeOff` | 0＝开／1＝关 | **总闸**（默认关） | 与老线门同语义 |
| 出击骰 | `rnd < 0.2`（20%） | 每机场每机型每回合 | 原电脑端写法等价 80%，本批按 B3-A1 意图改 20% |
| 攻机驻军门 | `getArmySize() > 0` | 只打有敌军部队的省 | 仅 ATTACKER |
| 视野门 | `getFogDrawArmy()==true`＝可见 | 仅 ATTACKER（O4） | 绘制侧铁证定的极性 |
| 去重 | 同型＋同省在飞 ⇒ 不派 | `hasStrikeInFlightP` | 无额外限流 |

## 5) 状态与生命周期
`mode`/`autoStrikeOff` 的读写不变（按钮/存档）；P 线只**读** `autoStrikeOff`；新任务经 `AirMission` 既有生命周期；**零新字段**（存档安全）。

## 6) 边界与不变量
- **AI 链一行不动**；巡逻链、扫荡、雷达、机炮、导弹、核爆、存档、`isAtWar(I)`、数值文件均不碰；既有方法 `.registers` 不变（门禁断言）。

## 7) 玩家可感知的表现
- 游戏**能进**（不再一开就崩）；
- 在机场面板把「自动打击」切成"开"、处于战时 ⇒ 你的机场**自动派攻机打敌方部队、派轰机打敌方省份**（目标须在你自己的视野内/有敌军）；
- 关掉总闸 ⇒ 一律不自动出击；巡逻仍由巡逻键单独控制。

## 8) 失败与回退
| 现象 | 原因/处置 |
|---|---|
| 仍闪退 | 新方法残留类型混用 ⇒ 门禁 ㊽ 拦（负样本 10）；必要时回滚到 `r5c046w`（apk `e76ac94b…`） |
| 装了但不出击 | 总闸没开 / 20% 骰未过（多回合）/ 该机场无闲置师或无机 / 目标不可见 |
| AI 也变了 | E2 短路范围写错 ⇒ 已限定"战时分支内的玩家机场" |
| 回滚 | `AirForceManager.smali.pre_r5c046z` ＋ 归档 apk（w 版） |

## 9) 验收标准（可证伪）
| 观测 | 通过 | 不通过 |
|---|---|---|
| 启动 | `logcat -b crash` 无 VerifyError | 有 ⇒ 未修净 |
| 开总闸＋战时 | `nAS type=1/0 tgt=…` 出现 | 恒 0 ⇒ 门/派发仍有问题 |
| 关总闸 | `nAS` 为 0 | 有 ⇒ 总闸失效 |
| 目标合法性 | 攻机目标省 `getArmySize()>0` 且可见 | 打空省/迷雾省 ⇒ 门写反 |
| AI 回归 | `nA1*`/`nA1b*`/`nP2*` 同量级 | 明显变化 ⇒ 动了 AI 链 |
| 门禁 | ㊽ 0；㉙ 37（既有）；arity BAD 0；invoke-target OK | 任一不过 |

## 10) 变更清单摘要
| # | 位置 | 变更 |
|---|---|---|
| 1 | `pickStrikeTargetP` | 整方法重写（类型分区；`Float.POSITIVE_INFINITY.floatValue()` 取 float 初值） |
| 2 | `updateOffensivesP` | 整方法重写（obj/long/int 三分区，总闸 `if-nez` 保留） |
| 3 | `hasStrikeInFlightP` | 整方法重写（消除 v4/v5 混用） |
| 4 | `tryStrikeForAirportP` | 关2 `if-eqz`→`if-nez`；关3 `if-ltz`→`if-gez`（20% 门） |
| 5 | `executeAIAssignmentForAirport` E2 | 猜标签 `:cond_ad` → 自定义 `:z_war_go` ＋ `return-void`（不写 v5 为 int） |

## 11) 修 bug 三问
- **①闪退（VerifyError）**
 - 错误规则：用 `const/high16`（**int 类型常量**）给"最近距离"寄存器 `v3` 赋初值，而 `v3` 在循环回边被 float 赋值 ⇒ 循环头两条边类型不一致（Integer × Float）⇒ ART 校验器在 `cmpg-float … v3` 处判定 `register v3 has type Integer but expected Float` ⇒ **整类被拒**、`AA_Game.render` 每帧碰到 ⇒ 必崩。
 - 正确规则：**循环携带寄存器在所有边上必须同类型**；float 初值必须由 float 渠道产生（`Float.POSITIVE_INFINITY.floatValue()F`）。同循环的 `v4`（`Integer 对象` vs `float`）一并拆开。
 - 为什么之前会错：把"常量"当成无类型；且当时只做了"锚点唯一/真值表"自检，**没有做"循环头逐边类型一致性"检查**（本项目的 ㉙ 门禁也有此盲区）。
- **②永不派发**
 - 错误规则：`tryStrikeForAirportP` 关2 写 `if-eqz v3, :skip`，而项目语义是 **`autoStrikeOff==0` 为"开"** ⇒ 开闸时反而跳过；同时 `updateOffensivesP` 的总闸只放行 `==0` ⇒ 两道门互相抵消，**任何机场都过不了**。
 - 正确规则：关2 用 `if-nez v3, :skip`（与老线门 8303 逐字同义）。
 - 为什么之前会错：**凭直觉判断 `if-eqz` 语义**，没有先查项目内的权威点（老线门 + 按钮文案 `==0⇒"开"`）——这是本项目第 7 次"极性写反"类事故。
- **症状↔修复**：闪退 ↔ 修 ①；开总闸也不出击 ↔ 修 ②。
'''

PLAN_SEC='''

---

## 100. 【施工·已构建】r5c046z：修正电脑端 Phase A
### 100.1 全面检查结论（对设备现装版 e0de5c46/8629cee0）
只改了 AFM：新增 5 方法（`updateOffensivesP`/`tryStrikeForAirportP`/`pickStrikeTargetP`/`hasStrikeInFlightP`/`dbgStrikeP`）＋ 2 处插入（`update(civ)` 调 P 线；`executeAIAssignmentForAirport` 玩家短路）＋ 1 个空标签；`BtnMission` 与我方 w 版语义等同。**我方 t/u/v/w 修复全部在位**。
### 100.2 缺陷与修正
| 缺陷 | 性质 | 修正 |
|---|---|---|
| `pickStrikeTargetP` v3（int 常量↔float 汇合） | **VerifyError（必崩）** | 整方法重写 + float 渠道取初值 |
| 同方法 v4（Integer 对象↔float 汇合） | 潜在 VerifyError | 同上一并拆开 |
| `tryStrikeForAirportP` 关2 `if-eqz` | **反向门**（与总闸抵消 ⇒ 永不派发） | 改 `if-nez` |
| 关3 概率门 | 实际 80%（与 B3-A1 意图 20% 不符） | 改 `if-gez` ⇒ **20%** |
| `updateOffensivesP`/`hasStrikeInFlightP` 寄存器混用 | 侥幸过校验、脆弱 | 整方法重写（类型分区） |
| E2 跳猜标签 `:cond_ad` ＋ v5 类型汇合 | 脆弱/语义风险 | 自定义 `:z_war_go` + `return-void` |
### 100.3 门禁与产物
- 新增 **㊽ `check_r5c046z_gate.py`**（含㉙ 的"const 寄存器被当 float 操作数"盲区补丁）：负样本 **10** → 正样本 **0** ✔
- 回归：㉙ 37（既有启发式，不变）、㊷㊸ 0、㊶ 0、㊻ 0、arity BAD 0、invoke-target OK
- 产物：dex `b6d45e08e6fea309944fa3ff03d8c531`｜apk `ac9eb8e480d5df776083c17727d4c88f`（归档 `build_apk/dbg_signed77_v119_r5c046z.apk`，Earth3=18510）
- **装机状态**：安装被 vivo 确认框拦住（`INSTALL_FAILED_ABORTED: User rejected permissions`）⇒ 需人工点【继续】或用 `toolchain/autotap_install.sh`；apk 已就位于 `/data/local/tmp/r5c046z.apk`
'''

INCR_ADD='''
## 44. r5c046z：全面检查设备现装版 + 修正（VerifyError/反向门/寄存器混用）
- **检查**：装机版相对我方 w 只改了 AFM 的 5 个新方法 + 2 处插入（`update(civ)→updateOffensivesP`、战时分支玩家短路）+ 1 空标签；`BtnMission` 语义等同 ⇒ t/u/v/w 修复都在。
- **闪退根因**：`pickStrikeTargetP` 用 `const/high16`（int 常量）给循环携带的 float 寄存器 v3 赋初值，回边却是 float ⇒ 循环头类型冲突 ⇒ `[0x57] register v3 has type Integer but expected Float` ⇒ VerifyError（整类被拒，`AA_Game.render` 每帧触发）。同循环 v4 亦有 `Integer对象↔float` 汇合。
- **逻辑缺陷**：`tryStrikeForAirportP` 关2 `if-eqz`（与"0=开"相反）⇒ 与 `updateOffensivesP` 的 `if-nez` 互相抵消 ⇒ **永不派发**；关3 实际 80%（应为 20%）。
- **修正**：三个方法整方法重写（类型分区）+ 关2/关3 极性 + E2 改自定义标签 `:z_war_go`（不猜 `:cond_ad`、不产生 v5 类型汇合）。
- **门禁**：新增 ㊽（含"const 寄存器被当 float 操作数"检查，补㉙ 盲区）：负样本 10 → 正样本 0；㉙ 37（不变）；arity BAD 0；invoke-target OK。
- **产物**：dex `b6d45e08…`／apk `ac9eb8e4…`；**装机被 vivo 确认框拦截**（需人工点【继续】），apk 已在 `/data/local/tmp/r5c046z.apk`。
- **门禁待改进**：㊹㊺/㊼ 对标签重编号敏感（装机 dex 上会误报）⇒ 需改为语义化断言。
'''

def main():
    open(V1,'w',encoding='utf-8').write(V1)
    open(V2,'w',encoding='utf-8').write(V2)
    open(V3,'w',encoding='utf-8').write(V3)
    open(DESIGN,'w',encoding='utf-8').write(DESIGN_TXT)
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC)
    open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    for p in (V1,V2,V3,DESIGN,PLAN,INCR):
        print('[OK] %s (%d B)'%(p, os.path.getsize(p)))

if __name__=='__main__':
    main()
