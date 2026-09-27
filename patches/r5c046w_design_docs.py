# -*- coding: utf-8 -*-
# r5c046w_design_docs.py —— 设计逻辑 r5c046w + 计划书 §96 + INCR §40
import os, time
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
DESIGN=os.path.join(R6S5,'设计逻辑_r5c046w.md')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')
TS=time.strftime('%Y-%m-%d %H:%M')

DESIGN_TXT = '''# 设计逻辑 · r5c046w（两个按钮解耦：玩家的轰炸机恢复）
> 交付 ''' + TS + ''' ｜ dex `ecda2eda…` ／ apk `e76ac94b…` ｜ 装机独立核验通过 ｜ 基线 1224112857
> 三轮调研：《调研_r5c046w_按钮解耦_v1全量.md》→ `_v2拓展.md` → `_v3定稿.md`

## 1) 版本 + 一句话定位
撤掉 r5c046t 引入的**互斥**：**「自动巡逻」只管和平期巡逻，「自动打击」只管战时轰炸，两者互不干扰**。

## 2) 设计目标
- 可见问题：**你的机场轰炸机完全不飞**（即使把「自动打击」开着）。
- 上层意图：两个开关是**两个独立功能**，可以同时开；玩家轰炸机在战时应该照常出击。

## 3) 规则与判定顺序（修后，玩家老线逐机场每回合）
1. **外层门（r5c046u 修好的）**：`mode==AI` ⇒ 派发；无玩家 ⇒ 派发；`机场文明≠玩家` ⇒ 跳过；`autoStrikeOff!=0`（打击键"关"）⇒ 跳过；否则派发。
2. 10% 骰（`rnd ≥ 0.1` ⇒ 返回）。
3. `atWar = isAtWar(机场文明)`。
4. **本批的门**：
 - **战时 ⇒ 一律继续**（不论 `mode`）⇒ 轰炸分支（目标须在**己方视野**内：`aiPickVisibleTarget`，然后 `pickIdleDivKey(BOMBER)` → `createStrategicBombing`）。
 - **和平 ⇒ 仅当 `mode==PATROL`** 继续 ⇒ 巡逻分支（`getRandomBorderProvince` + `pickIdleDivKey(FIGHTER)` → `createPatrol`）。
⇒ **打击键（autoStrikeOff）＝战时轰炸的总闸；巡逻键（mode）＝和平期巡逻的总闸**。

## 4) 参数与阈值表
| 名称 | 值 | 管什么 | 备注 |
|---|---|---|---|
| `autoStrikeOff` | 0＝开／1＝关 | **战时轰炸**（外层门） | 按钮文本：`==0 ⇒"自动打击：开"` |
| `mode` | PATROL／OFFENSIVE／AI | **和平期巡逻**（本批）＋ AI 接管派发（外层门） | 巡逻键切 PATROL/OFFENSIVE；打击键会把 mode 设为 OFFENSIVE |
| 10% 骰 | 0.1 | 每机场每回合是否"出手" | 若要更高频率可另调（本批不动） |

## 5) 状态与生命周期
- 巡逻键：`mode ⇄ PATROL/OFFENSIVE`，切到 OFFENSIVE 时调 `stopAirportPatrols(provinceID)` 召回在飞巡逻。
- 打击键：`autoStrikeOff ^= 1`，并把 `mode` 设为 OFFENSIVE（+ 同样召回巡逻）。
- 两者现在**不再互相压制**：巡逻开着也可以战时轰炸。

## 6) 边界与不变量
- **不改**：外层门（u 批）、AI 视野门（F4）、AI 智能线（K/FRQ/军建优先/绑定）、老线视野过滤、`tryPatrolForAirport`（本就要求 `mode==PATROL`）。
- 不新增静态字段；不提高 `.registers`（复用 v2/v3）。

## 7) 玩家可感知的表现
| 你的设置 | 结果 |
|---|---|
| 巡逻"开" + 打击"开" + 战时 | 机场照常**自动轰炸**（目标只在你看得见的省里随机） |
| 巡逻"开" + 打击"关" + 战时 | **不轰炸**（总闸关着）；和平期仍会巡逻 |
| 巡逻"关" + 打击"开" + 战时 | 自动轰炸；和平期不巡逻 |
| 两者都关 | 什么都不做（全手动） |

## 8) 失败与回退
| 现象 | 原因/处置 |
|---|---|
| 巡逻开着仍不轰炸 | 门没改成功 ⇒ 门禁 ㊼ 拦（负样本：旧的互斥写法） |
| 和平期乱巡逻 | 门写反 ⇒ ㊼ 会报"缺 PATROL 比较" |
| 打击键"关"却仍轰炸 | 外层门被绕过 ⇒ ㊹ 拦 |
| 回滚 | `AirForceManager.smali.pre_r5c046w` ＋ 归档 apk（上一版 v） |

## 9) 验收标准（可证伪）
| 观测 | 通过 | 不通过 |
|---|---|---|
| 巡逻"开"+打击"开"+战时 | `nA4d` 出现、`nA4e k=0` 增加（轰炸机出击） | 仍 0 ⇒ 门没生效 |
| 打击"关"+战时 | `nA4d` 为 0 | 有 ⇒ 总闸失效 |
| 和平 + 巡逻"开" | 巡逻任务照旧出现 | 没了 ⇒ 回归 |
| 门禁 | ㊼0／㊹㊺0／㊷㊸0／arity BAD0／invoke-target OK | 任一不过 |

## 10) 变更清单摘要
| # | 位置 | 变更 |
|---|---|---|
| **F6** | `executeAIAssignmentForAirport` 的 mode 门 | 由"互斥"（`mode==PATROL` ⇒ 战时 return）改为"**战时一律继续**；和平仅 `mode==PATROL` 继续"，删除 `:t_pat` 分支（净 -2 条指令） |

## 11) 修 bug 三问
- **错误规则**：战时且 `mode==PATROL` ⇒ **直接 return（不轰炸）**——即"两个按钮互斥"。
- **正确规则**：战时**不看巡逻键**（轰炸只由「自动打击」决定）；和平**只看巡逻键**。
- **为什么之前会错**：r5c046t（F5）是我按"干净语义＝互斥"设计的；但对玩家而言两个按键是**两个独立功能**，且玩家习惯把巡逻常开 ⇒ 轰炸被静默挡死。
- **症状↔修复（证据）**：样本 `r5c046u_s1` 中 `nA4e k=0`（轰炸成功）10 次全部发生在行 56896–279882，而你按「自动巡逻」在 **615010**，此后 **0 次 `nA4d`** ⇒ "轰炸机完全不飞"正是这条互斥门造成；本批撤掉后，巡逻开着也能轰炸。
'''

PLAN_SEC = '''

---

## 96. 【待设计】新功能：玩家侧「攻击机线」（打敌方部队）
**现状（代码事实）**：玩家侧**没有任何自动攻击机出击路径**。玩家老线只有两支：①战时**轰炸机**（`createStrategicBombing`）②和平**巡逻机**（需 FIGHTER）。攻击机线（`a1b*`：`a1bScan`/`a1bPick`/`a1bDispatch` → `createAttackArmy`）目前**只服务于非玩家文明**（`strikeTick_A1` 显式跳过玩家）。
**用户期望**：玩家的攻击机也应自动出击，**打击敌方部队**（＝打"敌军所在的省"）。
**需要拍板的 4 件事（定了我再走三轮调研 + 施工）**：
1. **目标口径**：只打"航程内、敌方部队所在的省"（`isEnemyArmyInProvince`），还是也包含"敌方机场/雷达"等军事目标？（建议：先只打有敌军部队的省）
2. **视野**：是否遵守**玩家自己的迷雾/雷达视野**（与轰炸一致，用 `aiVisRadarPass ∨ aiVisAirportPass`，civ＝玩家）？（建议：遵守，避免"越迷雾打"）
3. **总闸**：是否与「自动打击」共用一个开关？（建议：共用——"自动打击"＝轰炸机+攻击机都开；否则要再加一个按钮）
4. **节奏**：是否沿用 10% 骰 / 每机场每回合一次？（建议：先沿用，之后再与难度一起调）
**可选方案（若不想做新功能）**：把玩家的攻击机也交给"轰炸机那条线"统一处理（即战时用 `createStrategicBombing`，不区分机型）——但这就**不是**"攻击机打部队"的语义，不推荐。
'''

INCR_ADD = '''
## 40. 设计逻辑·已装机 r5c046w（两个按钮解耦）
- **症状**：玩家机场的轰炸机完全不飞（即使「自动打击」开着）。
- **根因**：r5c046t（F5）把两个按键做成**互斥**（`mode==PATROL` ⇒ 战时 return-void）；证据：`nA4e k=0` 10 次全在行 56896–279882，按「自动巡逻」在 615010，此后 0 次 `nA4d`。
- **修法**：战时一律继续（轰炸由「自动打击」外层门管）；和平仅 `mode==PATROL` 巡逻。净 -2 条指令，复用 v2/v3，未提寄存器。
- **门禁**：新增 ㊼（战时放行 + 禁互斥写法）；㊼0／㊹㊺0／㊷㊸0／regtype AFM 37（不变）／arity BAD0／invoke-target OK。
- 产物：dex `ecda2eda…`／apk `e76ac94b…`；装机三对齐；基线 `1224112857`。
- **待设计（§96）**：玩家侧**攻击机线**（打敌方部队）——需拍板：目标口径／是否走玩家视野／是否共用「自动打击」开关／节奏。
'''

def main():
    open(DESIGN,'w',encoding='utf-8').write(DESIGN_TXT)
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC)
    open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    print('[OK] design=%d plan=%d incr=%d' % (os.path.getsize(DESIGN), os.path.getsize(PLAN), os.path.getsize(INCR)))

if __name__ == '__main__':
    main()