# -*- coding: utf-8 -*-
# r5c046u_design_docs.py —— 设计逻辑 r5c046u（11 项 + 三问 + 寄存器表）+ 计划书 §92 + INCR §36
import os, time
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
DESIGN=os.path.join(R6S5,'设计逻辑_r5c046u.md')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')
TS=time.strftime('%Y-%m-%d %H:%M')

DESIGN_TXT = '''# 设计逻辑 · r5c046u（自动打击开关真正生效 + AI 恢复出动且只走自己视野）
> 交付 ''' + TS + ''' ｜ dex `afd0a882…` ／ apk `b8bf448d…` ｜ 装机独立核验通过 ｜ 基线 1201935636
> 三轮调研：《调研_r5c046u_开关门失效与AI视野_v1全量.md》→ `_v2拓展.md` → `_v3定稿.md`（基线树 `/tmp/revs`）

## 1) 版本 + 一句话定位
修两处**实现错误**（不是设计变更）：**①「自动打击」开关被短路**（关着也出击）；**②我上一批的 AI 视野 helper 取错寄存器**（导致 AI 全盲）。

## 2) 设计目标
- 可见问题 A：按钮显示"关"（`autoStrikeOff=1`）**战时轰炸机仍出动**。
- 可见问题 B：修完视野后 **AI 彻底不出动**（只会造飞机）。
- 上层意图（不变）：**按钮决定行为**；**AI 走自己的逻辑与自己的视野**；玩家走玩家老线。

## 3) 设计规则与判定顺序（人话）
**派发门的正确判定链（每个文明每回合、逐个机场）**
1. `airport.mode == AI` ⇒ **派发**（AI 接管，保留原版语义）。
2. 否则取 `playerCiv`（无玩家时 ＝ −1）：
 - `playerCiv < 0` ⇒ **派发**（无玩家/观战场景，保留原版语义）。
 - `playerCiv ≥ 0` ⇒ 继续检查：
 3. `airport.civID != playerCiv` ⇒ **跳过**（AI 的机场不走老线）。
 4. `autoStrikeOff != 0`（按钮"关"）⇒ **跳过**；`== 0`（按钮"开"）⇒ **派发**。
（本批修的就是第 2 步：原先 `playerCiv ≥ 0` 会**直接跳到派发**，把第 3、4 步短路。）

**AI 视野（上一批已定，本批修好实现）**：AI 候选省必须满足 `aiVisRadarPass(x,y,AI文明,1.0f) ∨ aiVisAirportPass(x,y,AI文明,1.0f)`（`x,y` 取 **该候选省的省中心**，用 `pid` 查省）。

## 4) 参数与阈值表
| 名称 | 值 | 含义 | 备注 |
|---|---|---|---|
| `autoStrikeOff` | 0＝开／1＝关（默认 1） | 打击键写它；门读它 | 文本：`==0 ⇒"自动打击：开"` |
| `mode` | PATROL／OFFENSIVE／AI | 巡逻键/打击键写它；门与 F5 分流读它 | — |
| AI 视野 | `aiVisRadarPass ∨ aiVisAirportPass`，scale=1.0f | 雷达（300/600/2400 ÷ 地图缩放）与机场 `radarRange` | 与老线 `aiPickVisibleTarget` **完全同款** |

## 5) 状态与生命周期
- `autoStrikeOff`：写＝打击键、存档；读＝**派发门（本批修好）**、（AI 用）`AirForceManager:872/2440` 等处。
- `mode`：写＝巡逻/打击键、存档；读＝派发门、F5 分流、`tryPatrolForAirport`。
- 门的调用频率：每文明每回合一次，内部遍历该文明所有机场。

## 6) 边界与不变量
- **保留**：`mode==AI ⇒ 派发`、`无玩家 ⇒ 派发`（原版语义，不因本批而失效）。
- **不改**：老线战时选靶与视野、AI 的 K/FRQ/军建优先/tier/score/机场绑定、F5 巡逻门、按钮文本极性（已核正确）。
- **不新增静态字段、不提高 `.registers`**（G1 复用 v3/v4；G2 只换寄存器名）。

## 7) 玩家可感知的表现
- 打击键"关"：战时**你的机场不再自动出击**；"开"：恢复（目标仍只在你看得见的省里随机）。
- 巡逻键：仍只由它决定（上一批已验收）。
- AI：**重新开始出动**，且只打它**自己雷达/机场视野**内的省（不再越迷雾乱打）。

## 8) 失败与回退
| 现象 | 原因/处置 |
|---|---|
| 关着仍出击 | 门又被绕过 ⇒ 门禁㊹ 拦（负样本＝r5c046t：命中 `if-gez … :派发`） |
| 开着却不出击 | 门写反 ⇒ ㊹ 会报"跳向派发的分支≠2 条" |
| AI 又全盲 | helper 取错寄存器 ⇒ 门禁㊺ 拦 |
| 回滚 | `/tmp/revs` 内 `AirForceManager.smali.pre_r5c046u` ＋ 归档 apk（上一版 t） |

## 9) 验收标准（可证伪）
| 观测 | 通过 | 不通过 |
|---|---|---|
| 打击键"关"＋战时 | `nA4d` 不增（零出击） | 仍增 ⇒ 门未生效 |
| 打击键"开"＋战时 | `nA4d`/`nA4v` 恢复增长 | — |
| AI 出动 | `nP2pick a≥0` 恢复、出现 `nP2s pid`/`nP2frq` | 仍全 `-1` ⇒ helper 仍有问题 |
| AI 目标正确性 | 目标省 ∈ AI 自己视野（雷达/机场圈） | 越迷雾 ⇒ 视野判据错 |
| 巡逻回归 | 仍只由巡逻键控制 | 变了 ⇒ F5 被破坏 |

## 10) 变更清单摘要
| # | 位置 | 变更 |
|---|---|---|
| **G1** | `executeAIAssignment(I)V` 派发门 | `if-gez v4, :cond_65` → `if-gez v4, :t_gchk` ＋ `goto :cond_65` ＋ `:t_gchk`（派发点前的两条检查不再被短路） |
| **G2** | `a1VisOk` helper | `Game.getProvince(p2)` → **`getProvince(p1)`**（p1＝pid，p2＝civ） |

## 11) 修 bug 三问
- **③「开关关着仍出击」**
 - 错误规则：派发门里 `if-gez v4, :<派发点>` ⇒ `playerCiv ≥ 0` 时**直接跳到派发**，`airport.civID != playerCiv`（非玩家机场）与 `autoStrikeOff != 0`（开关）**两条检查永远走不到** ⇒ 只要世界里有玩家，**所有机场每回合都派发**。
 - 正确规则：`playerCiv ≥ 0` 时必须**落到那两条检查**；仅"无玩家"或"`mode==AI`"或"玩家机场且开关=开"才派发。
 - 为什么之前会错：n 批把原版 `if-ltz v4, :<派发>`（＝**无玩家才派发**）改成 `if-gez v4, :<检查>` 时，分支目标被写成了**派发点**而非检查入口（偏移/标签错位），装配后语义变成"有玩家⇒全派发"。**症状↔修复**：你看到的"开关关着仍出击"正是这条短路；本批把它拆回两级检查。
- **④「AI 彻底不出动」**
 - 错误规则：`a1VisOk` 内用 `Game.getProvince(p2)` 取候选省坐标，而 `p2` 是**文明 ID** ⇒ 取到 null/错误省 ⇒ 每个候选都被判"看不见"。
 - 正确规则：`p1` 是 `pid` ⇒ 用 `getProvince(p1)` 取省中心；`p2` 只用于 `aiVis*` 的 civ 形参。
 - 为什么之前会错：签名 `a1VisOk(Airport, int pid, int civ)` 的 `p1/p2` 相邻，我写 helper 时把两个语义混用；当时只核对了**调用点**(2 处本来就对)，没核对 helper 内部 ⇒ **教训：新增 helper 必须逐寄存器核对每个 invoke 的参数来源**。
 - **症状↔修复**：`nP2pick a=-1` 205/205 ⇒ 本批修好后应出现 `a≥0`。

## 附：寄存器与改动规模
| 位置 | 寄存器 | 变化 |
|---|---|---|
| `executeAIAssignment(I)V` | 复用 v3/v4 | 仅分支目标改变（+2 条指令：`goto`、标签） |
| `a1VisOk` | 无 | 仅 `{p2}`→`{p1}` |
| `.registers` | — | **均未提高** |
'''

PLAN_SEC = '''

---

## 92. 【施工·已装机】r5c046u 门禁与产物
### 92.1 门禁
| 门禁 | 负样本（r5c046t） | 修后 |
|---|---|---|
| **㊹ 派发门结构**（跳向派发点的分支恰 2 条：`if-eq`＋`goto`；禁 `if-gez … :派发`） | **命中短路模式** | **0** |
| **㊺ helper 取省寄存器**（必须 `getProvince(p1)`；禁 `{p2}`） | **2 处** | **0** |
| ㊷㊸（F5 巡逻门 + 视野门，上一批） | — | 0 |
| arity / invoke-target | — | BAD 0 / OK |
### 92.2 产物与装机
dex `afd0a88270da89cd8597347942af50c2`；apk `b8bf448d3bc0831ba23725ef0bed32a9`（Earth3 18510）。
**外部独立核验**：设备 apk `b8bf448d…` ✔ / dex `afd0a882…` ✔ / Earth3=18510 ✔；抓样基线 `1201935636`。
### 92.3 待验收
①打击键"关"＋战时 ⇒ 零出击；②"开" ⇒ 恢复出击；③AI `nP2pick a≥0`／`nP2s pid`／`nP2frq` 恢复且目标∈AI 自己视野；④巡逻仍只由巡逻键控制（回归）。
'''

INCR_ADD = '''
## 36. 设计逻辑·已装机 r5c046u（开关门短路 + AI 视野 helper）
- **③ 根因（实现错）**：`executeAIAssignment(I)V` 的 `if-gez v4, :<派发点>` ⇒ `playerCiv≥0` 直接跳派发，把"非玩家机场"与"`autoStrikeOff`"两条检查短路（n 批改这条分支时目标写成了派发点）。
- **④ 根因（我的实现错）**：`a1VisOk` 用 `getProvince(p2)`（p2＝civ，应为 p1＝pid）⇒ 全部候选判"看不见"（`nP2pick a=-1` 205/205）。
- 修法：G1 `if-gez v4, :cond_65` → `if-gez v4, :t_gchk` ＋ `goto :cond_65` ＋ `:t_gchk`；G2 `{p2}` → `{p1}`。
- 门禁：新增 ㊹（派发门结构）｜㊺（helper 取省寄存器）；负样本 3 → 修后 0；㊷㊸ 仍 0；arity BAD0；invoke-target OK。
- 产物：dex `afd0a882…`／apk `b8bf448d…`；装机三对齐通过；基线 `1201935636`。
- 教训：**新增 helper 必须逐寄存器核对每个 invoke 的参数来源**（只核调用点不够）。
'''

def main():
    open(DESIGN,'w',encoding='utf-8').write(DESIGN_TXT)
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC)
    open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    print('[OK] design=%d plan=%d incr=%d' % (os.path.getsize(DESIGN), os.path.getsize(PLAN), os.path.getsize(INCR)))

if __name__ == '__main__':
    main()