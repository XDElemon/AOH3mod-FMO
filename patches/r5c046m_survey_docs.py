# -*- coding: utf-8 -*-
# r5c046m_survey_docs.py —— 第二/三轮调研落盘（轰炸机打飞机·F1 定稿）
import os, time
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
V2=os.path.join(R6S5,'调研_r5c046_轰炸机打飞机_v2拓展.md')
V3=os.path.join(R6S5,'调研_r5c046_轰炸机打飞机_v3定稿.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')
TS=time.strftime('%Y-%m-%d %H:%M')

V2_TXT = '''# 调研（第二轮·拓展）：轰炸机打飞机 —— 上下游与副作用
> 时点 ''' + TS + ''' ｜ 第一轮＝《调研_r5c046_轰炸机打飞机_v1.md》

## 1. 调用链与节拍（上下游）
- `AirMission.update()`（4605）在 `state` 处理前依次调用：`trackTarget()` → **`airCombatTick()`** → `missileTick()`（@4757）。旁边还有 `throttlePass()` 前置守卫。
- `airCombatTick()` **只对 `type == INTERCEPT` 的任务运行**（首句 `if-ne type, INTERCEPT → ret`）；`state ∈ {EN_ROUTE, EXECUTING}`；`airDivisionAtProvinceID > 0`；`gunLastHours` 节流 ⇒ **每 `HOURS_PER_TURN` 至多一次**。
- 谁生成 INTERCEPT：`createIntercept(Airport, List, String)`（战报/玩家 UI 与 `AirForceManager.dispatchAutoIntercept` 自动拦截）⇒ **交战双方都是战斗机/截击机**。
- 可被拦截的目标：拦截机（首机为 INTERCEPTOR）接受任意类型；否则只接受 `STRATEGIC_BOMBING`/`ATTACK_ARMY`（"大打小"两轮扫描）。

## 2. 下游：伤害怎么落地（`applyAirDamage(AirMission target, F dmg)`）
- 遍历 `target.aliveAircraft`：`hp -= min(dmg, hp)`；`hp<=0` ⇒ `target.recordLoss(unit)` + `self.recordKill()` + 打点 `nAC kill k=<self.enemyAircraftShotDown>`。
- 收尾：`self.recordDamage(dmg)` + `target.recalcPool()`。
- **dmg<=0 ⇒ 直接 `:aad_end`（空操作）** ⇒ 允许 v11=0 安全。
- 参与交换的飞机集合是 `aliveAircraft`（含**护航**）。

## 3. 护航构成（决定"修完还剩多少还击"）
- `createStrategicBombing`：轰炸机（divKey 决定 BOMBER/ATTACKER）+ 同机场 `FIGHTER`+`INTERCEPTOR`，经 `escortLimit()` **最多保留 5 架**。
- `createAttackArmy`：`ATTACKER` + `FIGHTER`/`INTERCEPTOR` 护航。
⇒ 修完后，"还击"只会来自**护航战斗机/截击机（≤5 架）**与**攻击机自身**（用户要求保留其部分对空能力）。

## 4. ★关键陷阱（第一轮发现，本轮证实）
交换前有两道门：
```
cmpl-float v1, v10, 0    →  if-lez v1, :act_ret      # v10<=0 ⇒ 整场取消
cmpl-float v1, v11, 0    →  if-lez v1, :act_ret      # v11<=0 ⇒ 整场取消 ★
```
**若只删掉"轰炸机还击"而不动第二道门**：纯轰炸任务的 v11 会变成 0 ⇒ **整场交换被取消** ⇒ 我方拦截机连"打轰炸机"都打不成了（与目标相反）。
⇒ 定稿必须同时**放宽第二道门**（保留 v10>0 的要求，去掉 v11>0 的要求）。

## 5. 历史与改动面
- `airCombatTick` 属于**高频改动方法**（比对历史备份：`pre_r4c162…`=`174dfdaa` → `r4c168`=`18cb7c9d` → `r4c169`=`a7c265dc` → `r4c172c`=`f9ad4fc3` → `r4c176`=`d94a4713` → 现行=`0156f1b8`）⇒ **本批必须最小改动、逐条锚点唯一、并加门禁**。
- 死代码路径（勿动）：`AirForceManager.airCombatOne`（`return-void` 短路）、`AFM 290/322` 的 `hp -= airAttack*0.25/0.5`。
'''

V3_TXT = '''# 调研（第三轮·全量拓展·定稿）：轰炸机打飞机 —— 可施工定稿
> 时点 ''' + TS + ''' ｜ 结论：**F1（只排除 BOMBER，保留攻击机对空能力）+ 放宽 v11 门**

## 1. 编辑清单（4 处，锚点实测唯一=1）
| # | 位置 | 锚点 | 动作 |
|---|---|---|---|
| H1 | 新 helper | `.method private static agilityMul(…AirMission;)F`（前插） | 新增 `a1ShootAir(AirUnit)Z`＝`type != BOMBER` |
| L1 | 我方火力循环 | `iget v14, v0, AirUnit->airAttack:F` ＋ `add-float/2addr v10, v14` ＋ `add-int/lit8 v4, v4, 0x1` ＋ `goto :act_m1` | 在 `add-float` 前插守卫：`a1ShootAir(v0)` → `move-result v12` → `if-eqz v12, :act_m1x`；并在 `add-int/lit8 v4, v4, 0x1` 前补标签 `:act_m1x` |
| L2 | 敌方火力循环 | 同构（`add-float/2addr v11, v14` / `goto :act_e1`） | 同上，标签 `:act_e1x` |
| G1 | 交换前受伤门 | `cmpl-float v1, v11, v0` ＋ `if-lez v1, :act_ret` | **删除**（允许 v11<=0 仍进行交换） |

## 2. 真值表与极性（逐条）
| 分支 | Dalvik 语义 | 正确写法 | 写反的后果 |
|---|---|---|---|
| L1/L2 守卫 | `if-eqz`＝等于0才跳 | `if-eqz v12, :act_m1x`（`a1ShootAir` 返回0＝**是轰炸机**⇒跳过求和） | 用 `if-nez` ⇒ **反而只让轰炸机求和**（完全反） |
| H1 helper | `if-eq`＝相等才跳 | `if-eq v0(type), v1(BOMBER), :p3b_no` ⇒ 相等返回0 | 用 `if-ne` ⇒ 把"不是轰炸机"判成0 ⇒ 只剩轰炸机开火 |
| G1 | `if-lez`＝≤0才跳 | **删除**（不再因 v11<=0 取消整场） | 若保留 ⇒ 纯轰炸任务**免疫**我方拦截（反向 bug） |
| 保留项 | `if-lez v1, :act_ret`（v10 门） | **不动**（我方无火力时不开打） | — |

**语义结论**：`a1ShootAir(unit)` ＝ `unit.type != BOMBER` ⇒ 战斗机/截击机/攻击机**照旧**计入（满足"攻击机保留对空能力"），**只有轰炸机不再还击**。

## 3. 寄存器分配表（实测画像）
| 位置 | `.registers` | 本次借用 | 依据 |
|---|---|---|---|
| `airCombatTick` | **16（上限）** | **v12**（引用写0／基本写3 ⇒ 纯基本型；写点仅在 offset28/92，读点 offset252 属另一条**不经过循环**的分支 ⇒ 循环内已死） | 不提高 |
| 新 helper `a1ShootAir` | — | `.registers 3`（v0/v1 + p0＝v2） | 新建 |
> 说明：v14 是 airAttack 的 **float** 值寄存器、v4/v5 为循环下标/长度、v10/v11 为累加器 ⇒ 均不可借用；v1 在本方法内**混用引用与基本型最多**（12/30）⇒ 回避。

## 4. 失败模式与回滚
- 若 helper 写反：日志会出现"只有轰炸机在打"（`my` 侧数值异常增高、`e` 仍高）⇒ 门禁㉞ 拦截。
- 若忘记放宽 G1：纯轰炸任务被拦截时**不再掉血**（可用抓样 `nAC hit … e=0.0` 且无 `nAC kill` 判出）。
- 回滚点：本批开工前留 `AirMission.smali.pre_r5c046m`。

## 5. 验收（可证伪）
| 观测 | 通过 | 不通过 |
|---|---|---|
| 纯轰炸（无护航）被拦截 | `nAC hit my>0 e=0.0` **且**出现 `nAC kill`（轰炸机掉血） | `e=0` 且无 kill ⇒ G1 没放宽 |
| 攻击机任务被拦截 | `e>0`（攻击机保留对空） | `e=0` ⇒ 过滤把攻击机也误杀 |
| 我方火力 `my` | 与改前同量级（不应变化） | 明显变化 ⇒ L1 写反 |
| 护航战斗机参与 | `e` ≈ 护航机贡献 | — |

## 6. 门禁计划
- **新增 ㉞ `check_airshoot.py`**：①`a1ShootAir` 存在且含 `BOMBER` 比较 ②L1/L2 各有 `a1ShootAir` 调用＋`if-eqz v12, :act_…x` ③`cmpl-float v1, v11, v0` **不存在**（G1 已删）④`if-lez v1, :act_ret` 恰好 1 处（v10 门保留）。
  负样本＝改前文件 ⇒ 应报 5 处；修后 0。
- 回归：㉙ regtype（不得新增）／㉚ zeroclamp／㉛ bestgate／㉜ airport-bind／㉝ route-hide／arity／invoke-target。
'''

PLAN_SEC = '''

---

## 77. 【第二轮·拓展调研】轰炸机打飞机：上下游与副作用
- 调用链：`AirMission.update()`@4757 → `trackTarget()` → `airCombatTick()` → `missileTick()`；`airCombatTick` **仅 INTERCEPT 任务**运行，受 `gunLastHours` 每回合一次节流；交战双方都是战斗机/截击机。
- 伤害落地 `applyAirDamage`：按 `aliveAircraft` 逐个扣 `hp`、≤0 则 `recordLoss`+`recordKill`（`nAC kill`），收尾 `recordDamage`+`recalcPool`；**damage<=0 是空操作**。
- 护航：`createStrategicBombing`／`createAttackArmy` 均挂 FIGHTER/INTERCEPTOR 护航，`escortLimit` 上限 5 ⇒ 修完后"还击"只来自**护航机 + 攻击机自身**。
- ★陷阱：交换前有两道门（`v10<=0` 与 `v11<=0` 都取消整场）⇒ **必须同时放宽 v11 门**，否则纯轰炸任务变成"打不动的靶子"。
- 历史：`airCombatTick` 是高频改动方法（r4c162→r4c176→r5c025→现行），须最小改动＋门禁。

## 78. 【第三轮·全量拓展定稿】F1 施工定稿
- 编辑 4 处（锚点均唯一）：H1 新增 `a1ShootAir(AirUnit)Z`（`.registers 3`，判据 `type != BOMBER`）｜L1 我方火力循环加守卫（`if-eqz v12, :act_m1x`）｜L2 敌方火力循环同构（`:act_e1x`）｜G1 **删除** `cmpl-float v1, v11, v0`＋`if-lez v1, :act_ret`。
- 极性：`if-eqz`＝等于0才跳（返回0＝是轰炸机⇒跳过）；helper 用 `if-eq` 判 BOMBER。**写反会导致"只有轰炸机开火"**。
- 寄存器：`airCombatTick`(16 上限) 借 **v12**（纯基本型，循环内已死），**不提高 .registers**。
- 验收：纯轰炸 ⇒ `nAC hit my>0 e=0.0` 且有 `nAC kill`；攻击机任务 ⇒ `e>0`；`my` 侧不变。
- 门禁：新增 ㉞ `check_airshoot.py`（负样本应报 5 处）；回归 ㉙㉚㉛㉜㉝/arity/invoke-target。
'''

INCR_ADD = '''
## 27. 第二/三轮调研（轰炸机打飞机·F1 定稿）
- 二轮：`airCombatTick` 仅 INTERCEPT 触发、每回合一次；`applyAirDamage` 逐个扣 hp 且 damage<=0 空操作；护航上限 5；★两道受伤门（v10/v11）都要 >0 ⇒ **必须同时放宽 v11 门**，否则纯轰炸任务免疫拦截。
- 三轮定稿：4 处编辑（helper `a1ShootAir`＝`type != BOMBER`／我方循环守卫／敌方循环守卫／删除 v11 门），锚点全部唯一；`airCombatTick`(16) 借 **v12**（纯基本型、循环内已死）不提高寄存器；helper `.registers 3`。
- 验收：纯轰炸 ⇒ `e=0.0` 且轰炸机照掉血；攻击机任务 ⇒ `e>0`；`my` 不变。门禁新增 ㉞。
'''

def main():
    open(V2,'w',encoding='utf-8').write(V2_TXT)
    open(V3,'w',encoding='utf-8').write(V3_TXT)
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC)
    open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    print('[OK] v2=%d v3=%d plan=%d incr=%d' % (os.path.getsize(V2), os.path.getsize(V3), os.path.getsize(PLAN), os.path.getsize(INCR)))

if __name__ == '__main__':
    main()