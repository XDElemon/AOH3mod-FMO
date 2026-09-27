# 调研（第三轮·全量拓展·定稿）：r5c046u 可施工定稿
> 时点 2026-09-26 15:55 ｜ 基线树 `/tmp/revs`（＝r5c046t 装机版反汇编）

## 1. 编辑清单（2 处，锚点唯一）
| # | 位置 | 锚点（逐字） | 动作 | 寄存器 |
|---|---|---|---|---|
| **G1** | `executeAIAssignment(I)V` | `    if-gez v4, :cond_65` | 改为 `if-gez v4, :t_gchk` ＋ `goto :cond_65` ＋ `:t_gchk` | 无新增（v3/v4 既有） |
| **G2** | `a1VisOk` helper 内 | `    invoke-static {p2}, …Game;->getProvince(I)…Province;`（带我的注释行做锚） | `{p2}` → **`{p1}`** | 无（p1＝pid） |

## 2. G1 真值表
| 条件 | 修后行为 |
|---|---|
| `mode==AI` | 派发 ✔（不变） |
| 无玩家（playerCiv<0） | 派发 ✔（`goto :cond_65`） |
| 玩家机场 ∧ `autoStrikeOff==0`（按钮"开"） | 派发 ✔ |
| 玩家机场 ∧ `autoStrikeOff==1`（按钮"关"） | **跳过** ✔（③ 的修复点） |
| 非玩家机场（任何开关状态） | **跳过** ✔ |

## 3. G2 真值表
`a1VisOk(airport, pid, civ) == 1 ⇔ aiVisRadarPass(x(pid), y(pid), civ, 1.0f) ∨ aiVisAirportPass(同参)`；`pid` 取 **p1**、`civ` 取 **p2**。

## 4. 门禁
- **㊹**：定位 `executeAIAssignment` 内 `invoke-direct …executeAIAssignmentForAirport` 的**前一行标签 X**；断言"跳向 X 的分支恰为 2 条"（1×`if-eq`＝mode==AI、1×`goto`＝无玩家），且**不存在** `if-gez v4, X`（坏模式）。负样本 r5c046t ⇒ 命中坏模式。
- **㊺**：断言 helper 内含 `invoke-static {p1}, …Game;->getProvince(I)`，且**不含** `{p2}, …getProvince`。负样本 r5c046t ⇒ 报错。

## 5. 验收（可证伪）
1. 打击键显示"关"（`autoStrikeOff=1`）＋战时 ⇒ **玩家机场零出击**（`nA4d` 不增）；
2. 打击键显示"开" ＋战时 ⇒ 出撃恢复（`nA4d`/`nA4v` 增加）；
3. AI：`nP2pick a≥0` 恢复（目标落在 AI 自己雷达/机场视野内）、`nP2frq`/`nP2s` 出现；
4. 回归：自动巡逻仍只由巡逻键控制。
