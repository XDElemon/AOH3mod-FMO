# -*- coding: utf-8 -*-
# r5c046z2_docs.py —— 批 r5c046z2 全套落盘（含子代理诊断清单 E1–E7 的处置）
import os, time
D = '/sdcard/GLG/历史23/r6s5/'; ROOT = '/sdcard/GLG/历史23/'
TS = time.strftime('%Y-%m-%d %H:%M')

HEAD = ('> 批次 **r5c046z2** ｜ 生成 ' + TS +
        ' ｜ dex `794f07f20d06675cf2a769b4067431bd` ／ apk `5d73697062d9738c428735ce5e45fab5`'
        '（738,377,701 B）｜ Earth3=18510 ｜ 基线 `1238345269` ｜ 状态：已装机 · 三对齐全绿 · 待实测\n\n')

SURVEY = HEAD + '''# 调研 · r5c046z2（E1–E7 处置）：逐条自证 + 定位 + 锚点

## 0. 输入
子代理只读审查（`code_reviewer_tools`）产出的**诊断清单**：E1–E9（其中 E8/E9 判定为"不改/纯格式"）。
本批**不采信结论，只采信证据**：每条均由主代理在 `/tmp/revx` 上复读逐字、并比对历史档案（`pre_r5c046z`、`巡逻v80`）后定案。

## 1. 极性基准（本批自证用的定义）
| 助记 | 跳转条件 | 本批用例 |
|---|---|---|
| `if-eqz` | 寄存器 **==0** 跳 | 去重门写反处 |
| `if-nez` | 寄存器 **≠0** 跳 | 正确形态（防重复） |
| `if-ltz` | 寄存器 **<0** 跳 | 距离门写反处（更近反而跳走） |
| `if-gez` | 寄存器 **≥0** 跳 | 正确形态（≥best 才跳过） |

## 2. 逐条处置表（自证依据 + 锚点 + 命中）
| # | 位置 | 错 → 对 | 自证依据 | 命中 |
|---|---|---|---|---|
| E1 | `pickStrikeTargetP` 最近距离门 | `if-ltz v8, :pst_loop` → `if-gez` | `cmpg-float v8, v9(dist), v3(best)`；`if-ltz=<0跳` ⇒ **候选更近反而 continue**，`move v3,v9 / move v0,v7` 永不执行；`v3` 初值 `Float.POSITIVE_INFINITY`（由 `floatValue()` 取得）⇒ 全部候选被跳过 ⇒ 返回 −1 | 1 |
| E2 | 同上：去重门使用处 | `if-eqz v8, :pst_loop` → `if-nez` | `if-eqz=0跳` ⇒ "**没有**在飞"被 continue ⇒ 只有"已在飞"才继续 | 1 |
| E3 | `hasStrikeInFlightP` 返回极性 | `if-eq v6, v5, :hsf_next` → `if-ne` | `if-eq=相同跳` ⇒ 只有**类型不同**才 return 1 ⇒ 方法名与语义相反 | 1 |
| E4 | `pickStrikeTargetP` 距离原点 | `iget v2, p1, Airport->civID` 用于 `provinceDistance` → 新增 `iget v1, p1, Airport->provinceID` 并改用它 | 复读 `provinceDistance(a,b)`：内部 `Game.lProvinces.get(a).getCenterX_Real()` ⇒ **a 必须是省索引**；`Airport` 第 41 行确有 `provinceID:I` | 1+1 |
| E5 | `tryStrikeForAirportP` 概率门 | `if-gez v4, :cond_51` → `if-ltz` | `cmpg-float v4, nextFloat, 0.2f`；`if-gez=≥0跳` ⇒ 只有 `rnd<0.2` 才派发＝**20%**，与设计/验收卡"80% 尝试"矛盾 ⇒ 以 80% 为准（且㊽ 门禁旧口径同步更新） | 1 |
| E6 | 同上：机型分派 | `if-ne p3, ATTACKER, :cond_35`（其余全走轰炸） → 增设 **ATTACKER/BOMBER 白名单** | 判据是"不是攻击机"而非"是轰炸机" ⇒ FIGHTER/INTERCEPTOR 会被当轰炸机（当前调用点只传两种，属未爆雷） | 1 |
| E7 | `pickAirport` pin 命中 | `if-ne v0, v5, :pin_hit` → `if-eq`；`.registers 8` → `9` | `if-ne=不相同跳` ⇒ 写回的是"**第一个不等于目标**的下标"（多机场时通常恒为 1）；且 `v7` 在 `.registers 8` 下**就是入参 p0** ⇒ 借 v7 会覆写入参 ⇒ 升到 9 后 p0=v8、v7 变纯本地量 | 1+1 |
| E8 | `dbgStrikeP` 死方法 | **不改**（无调用点，签名/转调正确） | 全 dex 仅命中定义行；真正打点是 `tryStrikeForAirportP` 内直连 `o5ii("nAS",…)` | — |
| E9 | `executeAIAssignment(I)` 同址双标签 | **不改**（纯格式，无行为影响） | 与主代理前判一致 | — |

## 3. 因果链（三个 P0 如何共同封死 P 线）
```
E2/E3：把所有"无在飞"的候选省 continue 掉     → 正常战场候选全被剔除
E1   ：即便放行，"更近"的候选也 continue      → best/v0 永不更新
      ⇒ v0 = −1 → return −1 → 上层 if-ltz v0,:cond_51 成立 → 跳过派发 → nAS ≡ 0
E4   ：潜伏（修好上面三条后立即暴露：civID 当省索引 ⇒ 距离域错 + 可能 IndexOutOfBounds）
E7   ：独立造成面板"串机场"（写回的是错下标）
```

## 4. 门禁（新增 ㊿，8 项 + 5 负样本）
㊿-1 距离门必须 `if-gez`｜㊿-2 去重门必须 `if-nez`｜㊿-3 HSF 必须 `if-ne`｜
㊿-4 距离原点寄存器 == provinceID 寄存器（≠ civID 寄存器）｜㊿-5 概率门必须 `if-ltz`（80%）｜
㊿-6 白名单覆盖 ATTACKER+BOMBER｜㊿-7 `pickAirport .registers ≥ 9`｜㊿-8 pin 命中必须 `if-eq`。
**负样本 5/5** 全部被抓；回归 ㉙ REGTYPE OK、㊽ 0 处（口径已同步 80%）、㊾ 0 fail、arity 134581·BAD 0、invoke-target OK。

## 5. 验收标准（可证伪）
通过 = `nAS ≥ 1`（机型 ordinal 区分攻/轰）且 `nA4e k=0` 不再出现；按钮只影响当前机场。
不通过 = `nAS` 仍 0（链上还有门）／`nA4e k=0` 仍在（E2 短路失效）／仍串机场（pin 未命中）。
'''

DES = HEAD + '''# 设计逻辑 · r5c046z2（按诊断清单修 E1–E7）

## 1. 版本号 + 一句话定位
**r5c046z2**：把子代理诊断清单里 7 个"方向写反/参数用错"的点全部归位，让玩家侧 P 线**真的能派机**、按钮**真的锁定当前机场**；不动 AI 空军。

## 2. 设计目标（玩家可见问题 → 上层意图）
- 问题：开着「自动打击」、战时、有目标、有空闲师，**依然零出击**。
  意图：这些条件齐备时，每回合按 80% 概率尝试派机（攻机打部队、轰机炸本土）。
- 问题：在一个机场按键，**别的机场跟着变**。
  意图：按键必须作用到"我正在看的那个机场"，并且**看得见**改的是谁。

## 3. 设计规则与判定顺序（人话；本批只改"方向与参数"，不改结构）
**P 线单次尝试（`tryStrikeForAirportP`）**，逐门、先判先否决：
1. 玩家存在且 `player.iCivID == airport.civID`，否则放弃。
2. `autoStrikeOff != 0`（关）⇒ 放弃。
3. 概率门：`rnd < 0.2` ⇒ 本回合放弃（**即 80% 尝试**）。
4. 无空闲师 ⇒ 放弃；该师**已有在飞任务** ⇒ 放弃（防重复）。
5. 选靶 `pickStrikeTargetP` < 0 ⇒ 放弃。
6. **机型白名单**：只允许 ATTACKER / BOMBER，其余机型直接放弃。
7. 建任务；任务里**必须有飞机**才入列。
**选靶（`pickStrikeTargetP`）**：遍历 `getEnemyProvincesInRange` → 省存在 → 与本文明**交战** → （仅攻机：敌省有部队 且 该省敌军**对我可见**）→ **该省同机型无在飞任务** → 取**距离最小**者；距离＝`provinceDistance(机场所属省, 候选省)`。
**老线**：玩家机场一律 return（交 P 线）；非玩家照旧。
**按钮**：`iActiveID` 有效则用它；否则 `iActiveProvince` → `list[0]` 兜底，**并把该机场下标写回 `iActiveID`**（面板随即锁定它）。

## 4. 参数与阈值表
| 名称 | 本批值 | 单位 | 含义 | 调整影响 |
|---|---|---|---|---|
| 概率门 | `0.2f`（`rnd<0.2` 放弃） | 概率 | **80% 尝试**（本批定稿口径） | 改阈值即改动"每回合尝试率"；0＝必试 |
| 距离原点 | `airport.provinceID` | 省索引 | `provinceDistance(a,b)` 要求省索引 | 用 civID 会让距离域错且可能越界闪退 |
| 机型白名单 | ATTACKER / BOMBER | 枚举 | 允许建任务的机型 | 放开会把 FIGHTER/INTERCEPTOR 派成轰炸 |
| `pickAirport .registers` | 9 | 个 | pin 循环需要独立本地量 | 8 会让 v7＝入参 p0（覆写参数） |

## 5. 状态与生命周期
机场（开关）→ 每回合 `update(civ)` → `updateOffensivesP` → `tryStrikeForAirportP` →（白名单 + 各门）→ `pickStrikeTargetP`（含去重）→ `createAttackArmy` / `createStrategicBombing` → 非空校验 → `activeMissions.add` → 引擎推进/结算/回收（不改）。

## 6. 边界与不变量
- 对齐：沿用 AI 链同款语义（`hasActivePatrol` 防重复、`assignedAircraft` 非空才有意义）。
- 不修改：AI 智能线/老链对非玩家机场、任务推进与结算、UI 布局。
- 不变量：同一寄存器不得跨类型汇合；`.registers` 不上调（本批仅 `pickAirport` 8→9，用于腾出本地量，仍远低于工具链上限 16）。

## 7. 玩家可感知
- 正常：开着的机场出现航线/任务图标；攻击机打敌方**可见**部队，轰炸机炸敌省；关掉的机场零出击。
- 按钮：按下后**面板切到该机场视图**，别的机场不变。
- 异常：仍零出击（还有门）／仍串机场（pin 未命中）。

## 8. 失败与回退（正常不出兵）
开关关；概率门 20% 放弃；无空闲师或该师已在飞；视野内无合法目标或超航程；机型不在白名单。
以上皆正常节流。**bug 定义**：条件齐备却永远不出兵。

## 9. 验收标准（可证伪）
| 看什么 | 通过 | 不通过 |
|---|---|---|
| `nAS` | ≥1（区分机型） | 恒 0 |
| `nA4e k=0` | 不再出现 | 仍在（老线替玩家炸） |
| 面板 | 只有被操作机场变化 | 多机场一起变 |
| AI | 与本场"AI 未交战"一致 | 智能线行为变化 |

## 10. 变更清单摘要
E1 距离门 `if-ltz→if-gez`｜E2 去重门 `if-eqz→if-nez`｜E3 HSF 返回 `if-eq→if-ne`｜E4 距离原点改 `provinceID`（新增 v1 载入）｜E5 概率门 `if-gez→if-ltz`（定稿 80%）｜E6 机型白名单（ATTACKER/BOMBER）｜E7 pin 命中 `if-ne→if-eq` + `.registers 8→9`｜门禁 ㊽ 口径同步 + 新增 ㊿（8 项 + 5 负样本）。E8（死方法 `dbgStrikeP`）与 E9（同址双标签）**不改**，仅登记。

## 11. 风险与待办
- `pickAirport` 升到 `.registers 9`：仍在工具链上限内，未触碰任何 15/16 寄存器方法。
- 概率 80% 为**本批定稿口径**；若实测觉得太频繁，改 `0x3e4ccccd` 或改回 `if-gez`（须同时改㊽/㊿ 两处门禁，避免门禁与代码脱钩）。
- `uiautomator dump` 在装机脚本里每 2 s 一次，会互相抢 `UiAutomationService`（logcat 里的 `already registered!` 崩溃是 uiautomator 自己的，与游戏无关）；后续可改成"仅在没有 Success/Failure 时 dump"或加互斥。

## 附：修 bug 三问（本批 7 处，逐条）
| 症状 | 错误的规则 | 正确的规则 | 之前为什么会错 |
|---|---|---|---|
| P 线零派发 | "候选更近就跳过" | "候选更近才更新最优，更远才跳过" | `if-ltz`（<0 跳）被当成"≥best 跳"用；z 批整方法重写时引入（`pre_r5c046z` 处本为 `if-gez`）|
| P 线零派发（叠加） | "该省没有在飞任务就跳过" | "该省已有同机型在飞才跳过" | 去重门 `if-eqz`；且其依赖的 `hasStrikeInFlightP` 返回极性也反（见下条）|
| 去重语义相反 | "类型相同 → 继续找" | "类型相同 → 命中返回 true" | `if-eq`（相同跳）；电脑端 Phase A 原始遗留，z 批重写照抄 |
| 潜在闪退/距离错 | "距离原点用飞机所属文明 id" | "用飞机所属**省**索引" | `provinceDistance` 内部 `Game.lProvinces.get(a)` 无越界保护；civID 恰好也是整数，写时不报错 |
| 出击率与文档不符 | "20% 尝试" | "80% 尝试"（与设计/验收卡一致） | z 批把 `if-ltz` 改成 `if-gez` 但文档未同步 ⇒ 口径分叉 |
| 非攻机被派轰炸 | "不是攻击机 → 建轰炸任务" | "只允许 ATTACKER/BOMBER" | 判据用了否定式而非白名单 |
| 按钮串机场（修 pin 后仍错） | "元素不等于目标 → 写回下标" | "元素等于目标 → 写回下标" | pin 模板 `if-ne`；㊾-4 只查了"块齐备"未查方向 ⇒ 绿灯放过（**门禁教训**）|
'''

CARD = HEAD + '''# 验收卡 · r5c046z2（玩家侧自动出击 · 第三修：按诊断清单 E1–E7）

## 一、交付件（已独立核验）
| 项 | 值 |
|---|---|
| 设备 apk | `5d73697062d9738c428735ce5e45fab5`（738,377,701 B）✅ |
| 设备 dex | `794f07f20d06675cf2a769b4067431bd` ✅ |
| Earth3 | `18510` ✅ ｜ 基线 `1238345269` |
| 归档 | `build_apk/dbg_signed77_v119_r5c046z2.apk` |
| 回滚 | 上一版 **z1**：apk `d80ebae2…` / dex `a0127f3d…` |

## 二、本批修了什么（一句话一条）
1. 选靶**最近距离门**方向修正 ⇒ 不再"恒 −1"。
2. 去重门方向修正 ⇒ 不再剔除"没有在飞"的正常候选。
3. `hasStrikeInFlightP` 返回极性修正 ⇒ 名字与语义一致。
4. 距离原点由 **civID 改为 provinceID** ⇒ 距离域正确、消除越界闪退隐患。
5. 概率门定稿 **80% 尝试**（并把 ㊽ 门禁旧口径同步）。
6. 机型**白名单**（仅 ATTACKER/BOMBER）⇒ 非攻机不会再被派成轰炸。
7. 按钮 pin 命中方向修正 + `.registers 8→9` ⇒ 锁定**当前**机场、不再覆写入参。

## 三、请这样测（6 步）
1. **重启游戏**（必须）。
2. 开着「自动打击」的机场、战时等 2~4 回合 ⇒ 应出现**攻击机打敌方部队 / 轰炸机炸敌方本土**（航程内）。
3. 关掉某机场 ⇒ 该机场应零出击（老线也不该替你炸）。
4. 在一个机场切换开关 ⇒ **面板切到该机场**，别的机场不跟着变。
5. 反复切两三个机场，确认各自状态独立。
6. 玩完喊「抓」，我读 `nAS` / `nA4e` / `afp:src` 判读。

## 四、判据表
| 现象 | 通过 | 不通过 |
|---|---|---|
| `nAS` | ≥1 | 恒 0 |
| `nA4e k=0` | 消失 | 仍出现 |
| 面板 | 只影响当前机场 | 多机场同变 |
| 稳定性 | 无 GLThread 闪退 | 出现 VerifyError/IndexOutOfBounds |

## 五、正常"没动"的原因（非 bug）
开关关；概率门 20% 放弃（下回合再试）；无空闲师或该师已在飞；视野内无目标或超航程；机型不在白名单。

## 六、回滚
重装 `build_apk/dbg_signed77_v119_r5c046z1.apk`（apk `d80ebae2…`）。

## 七、文档索引
`调研_r5c046z2_E1-E7处置_v1全量/v2拓展/v3定稿.md`｜`设计逻辑_r5c046z2.md`｜
脚本 `r5c046z2_all.py`（survey/patch/gate，门禁 ㊿）｜计划书 §103/§104｜`INCR.md` §47/§48
'''

def w(name, text, also_root=False):
    p = D + name; open(p, 'w', encoding='utf-8').write(text)
    print('[OK] %s (%d B)' % (p, os.path.getsize(p)))
    if also_root:
        p2 = ROOT + name; open(p2, 'w', encoding='utf-8').write(text)
        print('[OK] %s (%d B)' % (p2, os.path.getsize(p2)))

# 三轮：v1 = 全量（含 0/1/2/5 节），v2 = 因果链与门禁，v3 = 验收
i_cause = SURVEY.find('## 3. 因果链')
i_acc = SURVEY.find('## 5. 验收标准')
w('调研_r5c046z2_E1-E7处置_v1全量.md', SURVEY[:i_cause].rstrip() + '\n')
w('调研_r5c046z2_E1-E7处置_v2拓展.md', HEAD + SURVEY[i_cause:i_acc].rstrip() + '\n')
w('调研_r5c046z2_E1-E7处置_v3定稿.md', HEAD + SURVEY[i_acc:].rstrip() + '\n')
w('设计逻辑_r5c046z2.md', DES, also_root=True)
w('验收卡_r5c046z2.md', CARD)

PLAN = D + 'AI打击接入_调研与计划书v1.md'
open(PLAN, 'a', encoding='utf-8').write('''

## 103. r5c046z2：按只读审查诊断清单修 E1–E7（2026-09-27）

**输入**：`code_reviewer_tools` 子代理只读审查产出的诊断清单（E1–E9）。本批**逐条自证后**处置，未采信结论。
**处置**：E1 距离门 `if-ltz→if-gez`（z 批回归）；E2 去重门 `if-eqz→if-nez`；E3 `hasStrikeInFlightP` 返回 `if-eq→if-ne`；
E4 距离原点 `civID→provinceID`（`provinceDistance` 内部 `Game.lProvinces.get(a)` ⇒ 必须省索引，且无越界保护）；
E5 概率门 `if-gez→if-ltz` 定稿 **80% 尝试**；E6 机型白名单（ATTACKER/BOMBER）；E7 pin 命中 `if-ne→if-eq` ＋ `.registers 8→9`。
E8（`dbgStrikeP` 死方法）、E9（同址双标签）**登记不改**。
**产物**：dex `794f07f20d06675cf2a769b4067431bd` / apk `5d73697062d9738c428735ce5e45fab5`；装机 Success；三对齐 ✔；基线 `1238345269`。
**门禁**：新增 **㊿**（8 项 + 5 负样本全捕获）；㊽ 口径同步为 80%（原记事 20% 会与代码脱钩）；回归 ㉙/㊾/arity/invoke 全绿。
**教训**：①㊾-4 只查"pin 块齐备"未查**方向** ⇒ 绿灯放过 E7 ⇒ 新门禁一律"结构性 + 方向性"双查；
②概率/阈值这类**口径**改动必须同时改门禁，否则门禁与代码脱钩；
③`uiautomator dump` 高频轮询会自撞 `UiAutomationService`（logcat 崩溃为 uiautomator 自身，非游戏）。

## 104. 装机脚本与空间（同批附带）

- `/data/local/tmp` 只保留当前批次 apk；`build_apk` 只保留最近 3 个归档（w/z1/z2），避免再次触发"空间满⇒装机会话失败"。
- 三对齐判据固定为：apk md5 ＋ **apk 内 classes.dex md5** ＋ Earth3=18510 ＋ apk 字节数。
''')
print('[OK] 计划书 §103/§104 (%d B)' % os.path.getsize(PLAN))

INCR = ROOT + 'build_inputs/r5c046/INCR.md'
open(INCR, 'a', encoding='utf-8').write('''

## 47. r5c046z2 —— 诊断清单 E1–E7 全修

- E1 距离门 `if-ltz→if-gez`（z 批回归：`pre_z` 本为 `if-gez`）
- E2 去重门 `if-eqz→if-nez`；E3 `hasStrikeInFlightP` 返回 `if-eq→if-ne`
- E4 距离原点 `civID→provinceID`（`provinceDistance` 内部 `Game.lProvinces.get(a)`）
- E5 概率门 `if-gez→if-ltz`（定稿 80% 尝试）
- E6 机型白名单（ATTACKER/BOMBER）
- E7 pin 命中 `if-ne→if-eq` + `pickAirport .registers 8→9`
- E8/E9 登记不改（死方法 / 同址双标签）
- 产物：dex `794f07f2…` / apk `5d736970…`；装机 Success；三对齐 ✔；基线 `1238345269`

## 48. 门禁增补 ㊿ + ㊽ 口径同步

- 新增 ㊿（8 项方向性断言 + 5 负样本）：距离门/去重门/HSF 极性/距离原点寄存器/概率门/白名单/`.registers≥9`/pin 方向。
- ㊽ 关3 断言由 `if-gez`（20% 旧口径）改为 `if-ltz`（80% 定稿口径），避免门禁与代码脱钩。
- 教训：门禁必须同时检查**结构齐备**与**方向正确**（㊾-4 漏查方向导致 E7 通过）。
''')
print('[OK] INCR §47/§48 (%d B)' % os.path.getsize(INCR))