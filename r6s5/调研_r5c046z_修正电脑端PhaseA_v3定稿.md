# 调研（第三轮·全量拓展·定稿）：r5c046z 施工定稿
> 时点 2026-09-26 21:03 ｜ 基线树 `/tmp/revx`（＝设备现装版反汇编）

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
