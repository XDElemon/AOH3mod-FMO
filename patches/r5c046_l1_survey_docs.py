# -*- coding: utf-8 -*-
# r5c046_l1_survey_docs.py —— 第一轮全量调研落盘：轰炸机打飞机 + AI 不造战斗机（线索）
import os, time
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
DOC=os.path.join(R6S5,'调研_r5c046_轰炸机打飞机_v1.md')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')
TS=time.strftime('%Y-%m-%d %H:%M')

SURVEY = '''# 调研（第一轮·全量）：轰炸机为何能打伤战斗机/截击机
> 时点 ''' + TS + ''' ｜ 基线 r5c046j（已验收）｜ **本回合只调研，不写代码**
> 样本：`r6s5/r5c046j_s6.txt`（44.5 MB）

## 1. 用户报告与范围
报告："**现在的轰炸机好像能对战斗机和截击机造成伤害**，这不合理"。
本轮目标：把"伤害是谁产生的、走哪条路"钉死，并给出修法选项（不施工）。

## 2. 伤害路径全图（全树排查，共 4 条）
| 路径 | 位置 | 是否活着 | 是否伤飞机 | 说明 |
|---|---|---|---|---|
| **P1 空战交换** | `AirMission.airCombatTick()`（5373–5643） | **活**（由 `update()` @4757 调用，仅 **INTERCEPT** 任务触发） | **是** | 拦截机与目标任务**双向交换**伤害（见 §3） |
| P2 旧一对一空战 | `AirForceManager.airCombatOne()`（193） | **死**（方法首句 `return-void`，注释 "AA disabled: airCombatOne short-circuit（防空后续做）"） | 其内两处 `hp -= airAttack*0.25/0.5`（AFM 290/322）**永不执行** | 防空功能被作者临时禁用 |
| P3 地面轰炸 | `AirMission.executeAttack()` → `applyArmyDamage()`（357–657） | 活 | **否**（已守卫） | 内有 `# R5b004: 跳过我们自己造的"空军师"`：`key.startsWith("airhq")` ⇒ 直接 `:axa_skipc` 跳过；`applyPopDamage` 只伤人口 |
| P4 导弹 | `AirMission.missileTick()`（5695+） | 活 | **否** | 该方法内**不引用 `AirUnit`**（只有导弹/省/城信息） |

**⇒ 唯一能"轰炸机打飞机"的路径是 P1。**

## 3. P1 的战斗公式（逐字推导）
`airCombatTick()`：
1. 只对 `type == INTERCEPT` 的任务运行；`state ∈ {EN_ROUTE, EXECUTING}`；`airDivisionAtProvinceID > 0`；且受 `gunLastHours` 节流（每 `HOURS_PER_TURN` 最多一次）。
2. 在 `AirForceManager.activeMissions` 里找目标：跳过自己（`if-eq v0,p0` 与"同文明"）、跳过已死空任务、**要求目标的 `airDivisionAtProvinceID` 与己方相同**；拦截机（首机为 INTERCEPTOR）可接受任何目标，否则**只接受 STRATEGIC_BOMBING / ATTACK_ARMY**（"大打小"偏好，两轮扫描）。
3. 火力计算：
   - `v10 = Σ(我方 aliveAircraft[i].airAttack) × 0.5`（我方打出去的）
   - `v11 = Σ(目标 aliveAircraft[j].airAttack) × 0.5`（**目标"还击"的**）
   - 再各乘 `agilityMul(己方/对方)` 与 `defenseMul(对方/己方)`
4. 落地：`applyAirDamage(p0, v10)`（我打它）＋ `applyAirDamage(v2, v11)`（**它打我**）。
5. 日志：`nAC hit my=<v10> e=<v11> ep=<敌poolHP> mp=<我poolHP> t= h=`。

**关键缺陷**：`v11` 把目标任务里**所有存活飞机**的 `airAttack` 求和，**完全不看机型的对空能力**。
而数据层已经写好了这个能力：`AirUnit.canAttackAir:Z`（资产 `CanAttackAir`）——**该 getter 在全树从未被调用**（只有 `canAttackGround()` 被用）。

## 4. 机型数据（从已装机 apk 的 `assets/game/AirUnit/AircraftTypes.json` 导出）
| 机型 | CanAttackAir | CanAttackGround | AirAttack | GroundAttack | Defense | Agility |
|---|---|---|---|---|---|---|
| INTERCEPTOR | **true** | false | 30 | 0 | 12 | 0.8 |
| FIGHTER | **true** | true | 25 | 5 | 15 | 0.7 |
| **BOMBER** | **false** | true | **2** | 60 | 22 | 0.2 |
| **ATTACKER** | **false** | true | **10** | 30 | 20 | 0.35 |

⇒ 轰炸机(AirAttack2)/攻击机(10) 本应**没有对空能力**（`CanAttackAir=false`），但因为 `v11` 不筛能力，它们照样"还击"。
⇒ 用户看到的"轰炸机打战斗机"＝轰炸机群把各自的 `airAttack=2` 汇总后齐射（8 架 ⇒ `8×2×0.5=8`，再乘机动/防御系数，每回合一次，长期磨损拦截机）。

## 5. 日志实证（样本 `r5c046j_s6.txt`）
```
nAC kill k=3
nKO id=580967618828846 st=1 at=5714 civ=226
nAC kill k=4
nAC hit my=36.000004 e=20.509092 ep=0.0 mp=0.0 t=70 h=16
nRHE m=2
nRH at=5714 src=5722 ap=5696 fp=52
```
- `e=20.5` 就是"目标方还击"的总量：按 BOMBER(2) 解释需要很多架，按 ATTACKER(10) 解释更贴近（4 架×10×0.5=20）⇒ 当前战场上主要是**攻击机任务**在被拦截时打的"还击"。
- 同一组 `my/e` 值在不同小时重复出现 ⇒ 说明同一对任务反复交换、**每次都有还击**。
- 伴随 `nAC kill k=3/k=4` 与 `nKO`（击落）⇒ 交换会真的打死飞机。

## 6. 修法选项（供裁决，均未施工）
| 方案 | 做法 | 效果 | 代价/风险 |
|---|---|---|---|
| **F1（推荐）** | 在 `airCombatTick` 的**两处求和**里加"只累加 `canAttackAir == true` 的飞机" | 轰炸机/攻击机**不再还击**；护航的战斗机/截击机照旧还击；与我方拦截机的对射不变 | 小改动（2 处循环）；纯代码；不动资产 |
| F2 | 数据层把 BOMBER/ATTACKER 的 `AirAttack` 改为 0 | 同样效果 | 要改 **assets JSON** ⇒ 本工具链只换 `classes.dex`，需全量重打包；且 `airAttack` 还有其它读者（AFM290/322 死代码、日志） |
| F3 | 只过滤"目标侧"（v11），我方（v10）不动 | 与 F1 差异仅在"我方任务里若混入轰炸机/攻击机"时它们是否还能开火 | 略保守，语义不完整 |
> 建议 **F1**：用数据层本来就有的 `canAttackAir` 表达"没有空战能力"，并把该字段第一次真正接进战斗结算。

## 7. 验收（可证伪，下一批用）
1. 抓样中 `nAC hit my=… e=…` 的 `e` 值应**只由护航战斗机/截击机贡献**：若目标任务是**纯轰炸**（无护航）⇒ `e` 应为 0 或不再出现在同一对任务上。
2. 可选探针（施工时再加）：在交换前打印"双方参战飞机数/有效对空飞机数"，例如 `nACx me=<我参战> mt=<我对空> ee=<敌参战> et=<敌对空>` ⇒ 验收"`et=0` 时 `e=0`"。
3. 反向不变量：战斗机/截击机互相打、以及战斗机打轰炸机**必须照旧**（不能被误关）。健康检查：`my` 侧数值不应变化。

## 8. 风险与边界
- F1 会让"纯轰炸任务"在遭遇拦截时**零还击** ⇒ 拦截方战损大降、AI 轰炸机更脆。这符合用户预期，但可能需要在后续批次里用"护航比例"或"轰炸机防御值"来平衡（属可选平衡项，不在本批）。
- 不改动：`defenseMul`/`agilityMul` 公式、INTERCEPT 的目标筛选与"大打小"偏好、`gunLastHours` 节流、轰炸对地伤害（P3）与导弹（P4）。

## 9. 附：**AI 不造战斗机/截击机**（用户列的另一项，本回合只做线索级侦察）
- 线索 1：`AirUnit` 的创建点集中在 `AirForceManager` / `Airport`（+ 存档载入）⇒ 建造/采购逻辑应在 `Airport`（每回合生产）与 AFM 的 AI 辅助方法里；AFM 存在 `updateAIBuildUp(Airport)`（早前门禁输出里出现过）。
- 线索 2：资产里**四种机型都写了** `CostGold/ConstructionTime/RequiredTechID:5` ⇒ 数据层并非"没设计"，而是 **AI 的建造决策没选战斗机/截击机**。
- 线索 3：`AI_Build` 系列（`buildProvince_AIBuildScore_*`）是"省份建设"评分，**不含空军机型选择** ⇒ 需要另找"机场生产队列/机型选择"的入口。
- 下一批（该项开工时）第一轮调研应从：`Airport` 的生产队列字段与 `create*` 调用者、`updateAIBuildUp` 全文、以及 AI 是否只对某几型下单 三处入手。
'''

PLAN_SEC = '''

---

## 76. 【第一轮全量调研】"轰炸机打伤战斗机/截击机" —— 只调研不施工
### 76.1 结论
全树只有 **一条活着的空战伤害路径**：`AirMission.airCombatTick()`（仅 INTERCEPT 任务触发，`update()`@4757 调用）。
其"还击"项 `v11 = Σ(目标任务**所有**存活飞机.airAttack)×0.5×系数` **完全不筛对空能力** ⇒ 轰炸机(AirAttack2)/攻击机(10) 照样还击。
另三条路径均不成立：`AirForceManager.airCombatOne` 被作者 `return-void` 短路（防空"后续做"）；地面轰炸 `applyArmyDamage` 已有 `airhq` 守卫（R5b004）**跳过空军师**；`missileTick` 不引用 `AirUnit`。
### 76.2 数据层本来就有答案
`AirUnit.canAttackAir:Z`（资产 `CanAttackAir`）：INTERCEPTOR/FIGHTER=true，**BOMBER/ATTACKER=false**。
而 `canAttackAir()` **全树从未被调用**（只有 `canAttackGround()` 被用）⇒ 这是"设计存在、结算漏接"。
### 76.3 修法
F1（推荐）：两处求和只累加 `canAttackAir==true` 的飞机｜F2：改 assets（需全量重打包，不推荐）｜F3：只过滤目标侧（语义不完整）。
### 76.4 验收
`nAC hit … e=` 应只剩护航战斗机/截击机贡献（纯轰炸 ⇒ e=0）；`my` 侧不变；战斗机/截击机互打与战斗机打轰炸机照旧。
### 76.5 另：AI 不造战斗机/截击机（线索）
四机型数据齐全（Cost/Time/Tech 都有）⇒ 问题在 AI 建造决策；线索集中 `Airport` 生产队列、`AirForceManager.updateAIBuildUp`、`AI_Build` 评分体系。该项留下批单开。
'''

INCR_ADD = '''
## 26. 第一轮全量调研：轰炸机打飞机（不写码）
- 唯一活路径＝`AirMission.airCombatTick()`（INTERCEPT 触发）：`v11 = Σ(目标任务所有存活飞机.airAttack)×0.5×agility/defense 系数` ⇒ 轰炸机(2)/攻击机(10) 也在还击。
- 死路径：`AirForceManager.airCombatOne` 被 `return-void` 短路（防空后续做）；地面轰炸 `applyArmyDamage` 有 `airhq` 守卫跳过空军师；`missileTick` 不含 `AirUnit`。
- 数据层本有 `canAttackAir`（BOMBER/ATTACKER=false），但 `canAttackAir()` **全树从未被调用** ⇒ 结算漏接。
- 日志实证：`nAC hit my=36.0 e=20.5`（每回合一次、反复交换）+ `nAC kill k=3/k=4` + `nKO`。
- 修法建议 F1（两处求和只累加 `canAttackAir==true`）；验收＝纯轰炸任务 `e=0`、`my` 侧不变。
- 另："AI 不造战斗机/截击机"线索已收集（Airport 生产队列 / `updateAIBuildUp` / AI_Build 评分），留下批单开。
'''

def main():
    open(DOC,'w',encoding='utf-8').write(SURVEY)
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC)
    open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    print('[OK] survey=%d plan=%d incr=%d' % (os.path.getsize(DOC), os.path.getsize(PLAN), os.path.getsize(INCR)))

if __name__ == '__main__':
    main()