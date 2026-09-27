# -*- coding: utf-8 -*-
# r5c046t_survey_all.py —— F5(巡逻按钮真正生效) + F4(AI 走自己视野) 三轮调研 + 计划书 §89 + INCR §33
import os, time
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
V1=os.path.join(R6S5,'调研_r5c046t_F5巡逻门_F4视野_v1全量.md')
V2=os.path.join(R6S5,'调研_r5c046t_F5巡逻门_F4视野_v2拓展.md')
V3=os.path.join(R6S5,'调研_r5c046t_F5巡逻门_F4视野_v3定稿.md')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')
TS=time.strftime('%Y-%m-%d %H:%M')

V1_TXT = '''# 调研（第一轮·全量）：F5 巡逻按钮为何管不住 + F4 AI 视野缺失
> 时点 ''' + TS + ''' ｜ 基线＝装机 **s**（apk `6903fe1b…`／dex `77903cea…`）｜ 仅调研
> 用户报告：①两个按钮已能开（s 修好）②**战斗机一造出来就自己去巡逻，自动巡逻按钮控制不了它**③同意"AI 走自己视野"

## 1. 巡逻的全部创建路径（全树 6 处 createPatrol）
| # | 宿主方法 | 触发方式 | 是否有 `mode` 门 |
|---|---|---|---|
| 1-3 | `createMissionForClick`（3436） | **手动**（点机场/点目标） | 不适用（手动） |
| **4** | **`executeAIAssignmentForAirport`（5338，行5482）** | **自动**（老线和平分支） | **没有 ★问题所在** |
| 5 | `tryPatrolForAirport`（7015，行7064） | 自动（由 `updatePatrols(I)` 调用） | **有**（`if mode != PATROL ⇒ return`）✔ |
| 6 | `startDivisionPatrol`（9325，行9398） | **手动**（唯一调用者＝quick 栏 `InGame_AirForceQuick$BtnCmd`） | 不适用 |

## 2. 老线全貌（`executeAIAssignmentForAirport(airport)`，逐字推导）
```
rnd = Game.oR.nextFloat()
if rnd >= 0.1f ⇒ return                     # 10% 骰：只有 10% 的回合才继续
atWar = isAtWar(airport.civID)
if atWar:
 if (player != null && player.iCivID != airport.civID) ⇒ log nA2L=1 ; return   # 非玩家机场战时直接退
 log nA4d
 target = aiPickVisibleTarget(airport, BOMBER, rnd)      # ★有视野过滤（aiVisRadarPass ∨ aiVisAirportPass，按打击方 civ）
 if target<0 ⇒ return ; key=pickIdleDivKey(BOMBER); if null ⇒ return
 createStrategicBombing(...) ; if assignedAircraft.isEmpty ⇒ return ; activeMissions.add
else:                                        # 和平分支
 v2 = getRandomBorderProvince(airport)       # ★没有任何 mode / 开关检查
 if v2<0: v3 = getProvincesInRange(airport, FIGHTER) ; 空 ⇒ return ; v2 = 集合首个
 if v2<0 ⇒ return ; key = pickIdleDivKey(FIGHTER) ; if null ⇒ return
 createPatrol(airport, v2, key) ; if assignedAircraft.isEmpty ⇒ return ; activeMissions.add
```
**⇒ 和平分支建巡逻时 `mode` 完全不参与判定**：只要"外层门放行（玩家机场 ∧ 自动打击开关=0）＋ 10% 骰 ＋ 未开战 ＋ 有战斗机"，**每回合都可能自己生成巡逻**。
⇒ 这正是"战斗机一造出来就自己去巡逻，而自动巡逻按钮（改的是 `mode`）管不住它"的根因。
（另注：老线**战时**分支对"非玩家机场"直接退；玩家机场靠 `autoStrikeOff` 门。）

## 3. F4：智能线（AI）的视野缺失（硬证）
`a1Scan`（AFM 940–985 区）：`getFogDrawArmy()` 的返回值**下一行被 `a1HasMil` 覆盖丢弃**；`a1Known` 无条件写；门 `and-int/lit8 v13,v13,0x4` **恒真** ⇒ 候选**不含任何可见性要求**。
`a1bPick`：雾读结果只用于计数/盖戳，且两支都盖（G2）⇒ 同样无门。
对比：老线 `aiPickVisibleTarget` **有**视野过滤（`aiVisRadarPass(IIIF)Z` ∨ `aiVisAirportPass(IIIF)Z`，参数＝(省中心x, 省中心y, 打击方civID, 1.0f)）。
⇒ AI 现在"越迷雾乱打"＝智能线缺的这道门；老线其实一直有。
'''

V2_TXT = '''# 调研（第二轮·拓展）：F5/F4 的上下游与不变量
> 时点 ''' + TS + '''

## 1. F5 的上下游
- 上游：`executeAIAssignment(civ)`（每文明每回合）→ 门 `{mode==AI ∨ playerCiv<0 ∨ (玩家机场 ∧ autoStrikeOff==0)}` → `executeAIAssignmentForAirport`。
- 下游：`createPatrol(airport, targetPid, key)`（建任务）→ `AirMission` 生命周期（`update`/`shouldReturn`/`returnToBase`）。
- **按钮侧**：`BtnMission.actionElement` 的 missionType0 分支：`mode==PATROL ⇒ mode=OFFENSIVE + AFM.stopAirportPatrols(provinceID)`（**已会召回在飞巡逻** ✔）；否则 `mode=PATROL`。
 ⇒ 视觉/功能闭环只需补"**和平分支尊重 `mode==PATROL`**"这一环。
- **AI 文明不受影响**：AI 机场只有在 `mode==AI` 时才会进老线（门①），此时 `mode≠PATROL` ⇒ 加门后行为不变 ✔。

## 2. F4 的上下游
- 上游：`strikeTick_A1(civ)`（仅非玩家文明、且 `isAtWar(civ)`）→ `a1Scan`/`a1bScan`。
- 下游：`a1Dispatch`/`a1bDispatch` → `createStrategicBombing` / `createAttackArmy`。
- 视野 API：`aiVisRadarPass(x,y,civ,scale)Z`（雷达）｜`aiVisAirportPass(x,y,civ,scale)Z`（机场）——**老线同款**，参数含打击方 civ ⇒ 天然满足"AI 走自己视野"。
- 不变量：①玩家线（老线）**不动**；②AI 的"军建优先/tier/score/K=3/FRQ/机场绑定"**不动**；③不新增静态字段（用新 helper 封装）。

## 3. 历史与血案
- 迷雾门曾是我们的"血案区"：`r5c046e`（F11 撤回雾门）、`r5c046g`（G1/G2 解绑，为修"候选恒空"）。**本次不用 `getFogDrawArmy`（玩家迷雾），改用 `aiVis*`（打击方视野）**，从根上避开那次语义混乱。
- 老线的 `mode` 门从未有过 ⇒ 属"原版遗漏"，加门属增强而非修复原逻辑。

## 4. 失败模式
| 现象 | 原因 |
|---|---|
| 加门后"巡逻再也不出" | `mode` 一直是 OFFENSIVE（默认）⇒ **必须按一次「自动巡逻」**才会巡逻（这正是用户要的控制） |
| 加门后"战时也不轰炸" | 门写反（把 `!= PATROL` 判成 `== PATROL`）⇒ 由门禁㊷ 拦截 |
| AI 完全不出动 | 视野门过严（AI 雷达/机场覆盖不到敌省）⇒ 属"AI 走自己视野"的预期行为；如太静，可后续调 `scale`（本批不用） |
'''

V3_TXT = '''# 调研（第三轮·全量拓展·定稿）：F5 + F4 可施工定稿
> 时点 ''' + TS + ''' ｜ 基线树＝`/tmp/revs`（＝装机 s 的反汇编，5520 文件）

## 1. 编辑清单（4 处，锚点均唯一）
| # | 文件/位置 | 锚点（逐字） | 动作 | 寄存器 |
|---|---|---|---|---|
| **H1** | `AirForceManager`：新 helper（插在 `aiVisAirportPass` 之前） | `.method private static aiVisAirportPass(IIIF)Z` | 新增 `a1VisOk(LAirport;II)Z`：取省中心 → `aiVisRadarPass ∨ aiVisAirportPass`（civ＝打击方） | `.registers 8` |
| **F5** | `executeAIAssignmentForAirport` 分支分叉点 | `    if-eqz v0, :cond_56`（在 `sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR…` 之后） | 插入 `mode` 门（见 §2） | v2、v3（该点后原代码会重新赋值 ✔） |
| **F4a** | `a1Scan` 候选门 | `    and-int/lit8 v13, v13, 0x4` ＋ `    if-eqz v13, :cond_150` | 替换为 `invoke-static {v2, v11, p0}, a1VisOk` ＋ `move-result v13` ＋ `if-eqz v13, :cond_150` | v13（既有 int 暂存） |
| **F4b** | `a1bPick` 候选验收点 | `    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z` 之前 | 插入 `invoke-static {p0, v4, p1}, a1VisOk` ＋ `move-result v10` ＋ `if-eqz v10, :cond_4c`（不可见⇒跳过） | v10（既有 int 暂存） |

## 2. F5 的门（真值表；Dalvik：`if-eqz`=等于0跳、`if-nez`=非0跳、`if-ne`=不等跳）
语义目标：**和平 ⇒ 只有 `mode==PATROL` 才巡逻；战时 ⇒ 只有 `mode!=PATROL` 才轰炸**（`mode==AI` 因外层门只对 AI 接管开放，落在这里时 `mode!=PATROL` ⇒ 战时轰炸/和平不巡逻，与现状一致）。
```
 iget-object v2, p1, Airport;->mode:L…Airport$Mode;
 sget-object v3, Airport$Mode;->PATROL:L…Airport$Mode;
 if-ne v2, v3, :t_pat          # mode != PATROL
 if-eqz v0, :t_go              #   战时⇒继续（轰炸）
 return-void                   #   和平⇒不巡逻
 :t_pat                        # mode == PATROL
 if-nez v0, :t_go              #   和平⇒继续（巡逻）
 return-void                   #   战时⇒不轰炸
 :t_go  <原有代码…>
```
| 输入 | 现在 | 修后 |
|---|---|---|
| 和平 + PATROL | 可能巡逻(10%) | 可能巡逻(10%) ✔ |
| 和平 + OFFENSIVE | **可能巡逻** ✗（用户的 bug） | **绝不巡逻** ✔ |
| 战时 + OFFENSIVE + 开关开 | 可能轰炸 | 可能轰炸 ✔ |
| 战时 + PATROL | 可能轰炸（与"巡逻"矛盾） | **不轰炸** ✔ |

## 3. F4 的真值表
`a1VisOk(airport, pid, civ) == 1 ⇔ aiVisRadarPass(x,y,civ,1.0f) ∨ aiVisAirportPass(x,y,civ,1.0f)`
循环里：`if-eqz v13, :<continue-label>` ⇒ **不可见 ⇒ 跳过该候选**（老线同款判据；civ＝**AI 自己**）。

## 4. 寄存器分配表
| 位置 | `.registers` | 借用 | 是否提高 |
|---|---|---|---|
| 新 `a1VisOk` | — | `.registers 8`（p0/p1/p2＝v5/v6/v7；局部 v0–v4） | 新建 |
| `a1Scan` | 16（上限） | **v13**（既有 int 暂存） | **否** |
| `a1bPick` | 16（上限） | **v10**（既有 int 暂存） | **否** |
| `executeAIAssignmentForAirport` | 9 | **v2/v3**（该点之后原代码会重新赋值） | **否** |

## 5. 门禁
- **㊷ `check_patrol_mode.py`**：断言 `executeAIAssignmentForAirport` 内存在 `mode` 门：`iget-object v*`(mode) + `sget-object v*, Airport$Mode;->PATROL` + 其后 4 条（`if-ne`/`if-eqz`/`return-void`/`if-nez`）。负样本＝装机 s ⇒ 报 1 处。
- **㊸ `check_ai_vision.py`**：断言 ①新 helper `a1VisOk` 存在且含 `aiVisRadarPass` 与 `aiVisAirportPass`；②`a1Scan` 的 `&0x4` 门已被 `a1VisOk` 调用替换；③`a1bPick` 内 `a1VisOk` 调用存在。负样本＝装机 s ⇒ 报 3 处。

## 6. 验收（可证伪）
1. **F5**：默认（mode=OFFENSIVE）**不该再有自动巡逻**；按一次「自动巡逻」⇒ 后续回合出现巡逻任务；再按一次 ⇒ `stopAirportPatrols` 召回 + 不再新建。
2. **F4**：AI 的打击目标 `nP2s pid=` / `nA1 ap=… tgt=` 应**只落在 AI 当时可见的省**（新增 helper 走 `aiVis*`）；若 AI 视野内无目标 ⇒ 不出动（属预期）。
3. 回归：玩家老线战时轰炸（开关开+战时）不受影响；AI 的 K/FRQ/军建优先不变。
'''

PLAN_SEC = '''

---

## 89. 【三轮调研·定稿】F5 巡逻门 + F4 AI 自己视野
### 89.1 F5（用户：战斗机一造出来就自己巡逻、按钮管不住）
**根因**：老线和平分支（`executeAIAssignmentForAirport` 行5482）建巡逻**从不检查 `mode`**；只要"外层门（玩家机场 ∧ 自动打击开关=0）+ 10% 骰 + 未开战 + 有战斗机"就自建巡逻。6 个 `createPatrol` 点里只有 `tryPatrolForAirport` 有 `mode==PATROL` 门。
**修法**：在分支分叉点插入 `mode` 门——和平 ⇒ 仅 `mode==PATROL` 才巡逻；战时 ⇒ 仅 `mode!=PATROL` 才轰炸（`mode==AI` 行为不变）。锚点 `if-eqz v0, :cond_56`（唯一），借 v2/v3，`.registers 9` 不变。
### 89.2 F4（用户已同意"AI 走自己视野"）
**根因**：`a1Scan` 的 `getFogDrawArmy()` 读后即被覆盖、`a1Known` 无条件写、`&0x4` 恒真；`a1bPick` 雾读只用于计数/盖戳 ⇒ 智能线**无可见性门**（老线反而有 `aiVisRadarPass ∨ aiVisAirportPass`）。
**修法**：新增 helper `a1VisOk(Airport,pid,civ)Z`（＝老线同款 `aiVis*`，civ＝AI 自己），在 `a1Scan`（替换 `&0x4` 门）与 `a1bPick`（候选验收点前）各插一道门 ⇒ AI 只打它自己看得见的省。
### 89.3 门禁与验收
㊷ 巡逻门（负样本 s⇒1）；㊸ 视野门（负样本 s⇒3）；验收：默认无自动巡逻 → 按巡逻键才巡逻；AI 目标只落在其可见省。
'''

INCR_ADD = '''
## 33. 三轮调研定稿：F5 巡逻门 + F4 AI 视野
- **F5 根因**：老线和平分支建巡逻**从不看 `mode`**（`executeAIAssignmentForAirport` 行5482；6 个 createPatrol 点里只有 `tryPatrolForAirport` 有 mode 门）⇒ 用户"战斗机造出来就自己巡逻、按钮管不住"。
  **修法**：分叉点插 `mode` 门（和平⇒仅 PATROL 巡逻；战时⇒仅非 PATROL 轰炸；AI 模式不变）。锚点 `if-eqz v0, :cond_56`，借 v2/v3，`.registers 9` 不变。
- **F4 根因**：`a1Scan` 的 `getFogDrawArmy()` 读后即被覆盖、`&0x4` 恒真；`a1bPick` 雾读只计数 ⇒ 智能线无可见性门（老线有 `aiVis*`）。
  **修法**：新 helper `a1VisOk(Airport,pid,civ)Z`＝`aiVisRadarPass ∨ aiVisAirportPass`（civ＝AI 自己），在 `a1Scan`/`a1bPick` 各插一道门。
- 门禁：㊷ 巡逻门（负样本 s⇒1）｜㊸ 视野门（负样本 s⇒3）。基线树 `/tmp/revs`（＝装机 s 反汇编）。
'''

def main():
    for p, t in ((V1, V1_TXT), (V2, V2_TXT), (V3, V3_TXT)):
        open(p, 'w', encoding='utf-8').write(t)
    open(PLAN, 'a', encoding='utf-8').write(PLAN_SEC)
    open(INCR, 'a', encoding='utf-8').write(INCR_ADD)
    print('[OK] v1=%d v2=%d v3=%d plan=%d incr=%d' % (os.path.getsize(V1), os.path.getsize(V2), os.path.getsize(V3), os.path.getsize(PLAN), os.path.getsize(INCR)))

if __name__ == '__main__':
    main()