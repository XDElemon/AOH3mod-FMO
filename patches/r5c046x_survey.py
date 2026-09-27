# -*- coding: utf-8 -*-
# r5c046x_survey.py —— 玩家攻击机线：历史考证 + 接线方案 落盘（调研档 + 计划书 §97 + INCR §41）
import os, time
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
DOC=os.path.join(R6S5,'调研_r5c046x_玩家攻击机线历史与接线_v1全量.md')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')
TS=time.strftime('%Y-%m-%d %H:%M')

DOC_TXT = '''# 调研（全量）：玩家「攻击机」自动出击——历史考证与接线方案
> 时点 ''' + TS + ''' ｜ 目的：按用户要求"把计划书读遍，明确玩家攻击机逻辑是在哪个版本接入的"
> 结论先行：**不是新功能**。这条线历史上做过两代，且**当前树里"给玩家的接线"已经写好（r5c025 加的玩家门），只差入口那一步没接**。

## 一、第一代：B3-A1「自动打击接活」（批次 R4c177，2026-09-20 前）
出处：`r6s5/B3-A1自动打击接活_具体方案书v1.md`（160 KB，Sep-24 归档）
- 该文档 §0–§8 描述了完整的玩家侧自动打击：`tryStrikeForAirport(airport, rnd, type)`、`pickStrikeTarget(airport, type)`、`strikeScore`、`roveTick`、`trackGroundTarget`、配置面板（自动打击开/关、目标口径、每目标在飞上限、可见性…）、建筑永久记忆。
- **攻击机档（第③步 B）**：`type == ATTACKER ⇒ createAttackArmy(airport, -1, targetProvinceID, divKey)`；目标＝**有驻军的交战/被占省**（`getArmySize() > 0`）；**视野门 O2＝`Province.getFogDrawArmy()`（仅攻击机，O4：轰炸机不加）**；吃 **6 回合情报新鲜度**；限流＝"同目标在飞 ≤ 2"；伤害路径 `executeAttack()` 的 `ATTACK_ARMY` 档（经济 −2%、人口 −100、`applyArmyDamage(省, 我方civ, 0.35f, targetArmyID)`＝35% 对部队伤害，r5b014 修好）。
- **结局（文档顶注原文）**：「本文件 §0–§8 描述的「B3-A1 自动打击」路线，**已被用户决策整层取消并删除**，正文原样保留仅供追溯」；执行：**整树回滚到 `build_inputs/w3a_smali_20260918.tar.gz`（R4c176b 状态）→ 汇编 Sig=152403 → 装机 r5a001**。
- 计划书 §1692/§1727 亦登记：「B. MOD 自建『自动打击』…2026-09-20 被**整层取消并回滚**…当前树内 0 命中」；「这套（`isMilIdx`/`strikeScore`/`pickStrikeTarget`/`isBomberSlotFull`）在 R4 流做过，但已随 2026-09-20 的整层取消与回滚不在当前树 ⇒ **按本作特色重建在 AI 侧**」。

⇒ 所以你说的「**做 AI 的上一步就是玩家自动打击**」**完全正确**：玩家侧自动打击（含攻击机追部队）先做（R4c177），随后被整层取消/回滚。

## 二、第二代：AI 侧重建（r5c019），玩家被跳过
- `r5c019` 起，攻击机线以 `a1b*` 重建：`strikeTick_A1(civ)` → `a1bClock`/`a1Snap`/`a1bScan(civ)` → `a1bPick` → `a1bDispatch` → `AirMission.createAttackArmy`；任务侧 `a1bReHunt`/`a1bRetarget`/`executeAttack`；闸门 `a1CivInflight(civ, ATTACK_ARMY) < K`；目标判据 `Province.isEnemyArmyInProvince(civ)`（＝**打敌方部队**）。
- **入口跳过玩家**：`strikeTick_A1` 开头 `if-eq civ, player.iCivID ⇒ return`。36 份历史备份扫描：自 r5c019 第一版起该跳过**一直存在**。

## 三、关键发现：**玩家的接线（门）早在 r5c025 就写好了**
对 5 个历史备份做逐方法扫描（`a1Scan`/`a1bScan` 内是否含 `autoStrikeOff` 玩家门；`strikeTick_A1` 是否跳过玩家）：
| 备份 | a1Scan 玩家门 | a1bScan 玩家门 | strikeTick_A1 跳过玩家 |
|---|---|---|---|
| pre_r5c019 | 0 | 0 | 1 |
| **pre_r5c025** | **1** | **1** | 1 |
| pre_r5c030 / c044 / c046 | 1 | 1 | 1 |
现树逐字（AFM 858-868 / 2418-2428）：
```
非玩家机场 ⇒ 直接继续；玩家机场 ⇒ lg airport.autoStrikeOff; if (autoStrikeOff != 0) ⇒ 跳过该机场
```
⇒ **智能线的两条线（轰炸 a1Scan / 攻击 a1bScan）里都写着"玩家的机场按『自动打击』开关放行"的门**，但因为**入口 `strikeTick_A1` 一直跳过玩家**，这两道门是**死代码** ⇒ 玩家的攻击机线从未被激活。
（计划书 §83.1（r5c046q 批）曾据此写「攻击机有自动打击线、玩家门在 a1bScan」，并下结论「原登记的 D（在老路补攻击机派发）不需要做」——**结论方向对（确有接线），但漏了入口跳过这一环**，所以实际从未生效。本档更正之。）

## 四、第三代：r5c046n–w 的"玩家自动打击"（老线）**只含轰炸机**
- 老线战时只找 `BOMBER`（`createStrategicBombing`），和平只找 `FIGHTER`（巡逻）；**没有攻击机分支**。
- `createAttackArmy` 的自动入口只有 `a1bDispatch`（AI 线）；另一入口是**手动** `handleProvinceClick`（AFM 8657）→ `createMissionForClick`。

## 五、结论与接线方案（待用户点头）
**版本答案**：玩家攻击机逻辑**第一代＝R4c177（B3-A1）**，2026-09-20 整层取消回滚（→R4c176b／装机 r5a001）；**第二代＝r5c025 写入"玩家门"接线**（a1Scan/a1bScan 内），但**入口未开**，至今为死代码。
**最小接线（推荐）**：让 `strikeTick_A1` 对玩家文明**只跑攻击机段**（`a1bClock`/`a1Snap`/`a1bScan`），不跑轰炸段（`a1Scan`）——
- 你的**攻击机**：战时 + 「自动打击」开关开 + 航程内 + **有敌军部队** + **你看得见**（F4 视野门，civ＝你）⇒ 自动出击 `createAttackArmy`；
- 你的**轰炸机**：继续走老线（w 批刚解耦：只由「自动打击」开关管）；
- 线级上限 `a1CivInflight(ATTACK_ARMY) < K` 沿用；不新增字段、不动 AI 侧。
**待确认**：①只接攻击机段（轰炸仍走老线）②受「自动打击」开关管（现有玩家门已是这个语义）③目标沿用"有敌军的省 + 你可见"。
'''

PLAN_SEC = '''

---

## 97. 【考证·定稿】玩家「攻击机」自动出击：在哪个版本接入？（回答用户提问）
### 97.1 版本链条（逐条有档可查）
| 代 | 版本 | 内容 | 结局 |
|---|---|---|---|
| 一 | **R4c177**（B3-A1「自动打击接活」，文档 `r6s5/B3-A1自动打击接活_具体方案书v1.md`） | 玩家侧完整自动打击：`pickStrikeTarget`/`tryStrikeForAirport`/`strikeScore`/`roveTick`/配置面板/建筑记忆；**攻击机档＝`createAttackArmy(airport,-1,pid,divKey)`，打"有驻军的省"，视野门仅攻击机，6 回合新鲜度，同目标在飞 ≤2，35% 部队伤害** | **2026-09-20 被整层取消并删除**：整树回滚到 `build_inputs/w3a_smali_20260918.tar.gz`（R4c176b）→ Sig=152403 → 装机 **r5a001** |
| 二 | **r5c019** | AI 侧重建攻击机线 `a1b*`（→`createAttackArmy`），入口 `strikeTick_A1` **跳过玩家** | AI 专用 |
| 二·补 | **r5c025** | 在 `a1Scan`/`a1bScan` 内加入**玩家门**：玩家机场按 `autoStrikeOff`（「自动打击」开关）放行 | **门已写好但入口未开 ⇒ 死代码至今** |
| 三 | r5c046n–w | 玩家侧"自动打击"改用**老线**（开关＋轰炸机派发＋按钮＋巡逻解耦） | **只含轰炸机**，无攻击机 |
### 97.2 结论
- 用户口径「**做 AI 的上一步就是玩家自动打击**」✔正确；玩家攻击机**不是新功能**。
- 准确表述：**第一代（R4c177）被整层回滚**；**第二代（r5c025）把玩家门写进了智能线，但入口 `strikeTick_A1` 始终跳过玩家 ⇒ 从未生效**。我上一轮把它说成"新功能"是**错误**，此处更正（计划书 §96 相应部分以本节为准）。
### 97.3 最小接线（待批）
`strikeTick_A1`：玩家文明 ⇒ 只跑 `a1bClock`/`a1Snap`/`a1bScan`（**攻击机**），不跑 `a1Scan`（轰炸机仍旧走老线，w 批已解耦）；沿用现有玩家门（`autoStrikeOff`）、视野门（F4，civ＝玩家）、线级上限 `a1CivInflight(ATTACK_ARMY)<K`；不新增字段、不动 AI 侧。
验收：战时＋「自动打击」开 ⇒ `nA1b ap=` k=0 出现（你的攻击机起飞）；你的机场"有敌军且可见"的省才被打；轰炸机行为不变；AI 侧样本量不变。
'''

INCR_ADD = '''
## 41. 考证：玩家攻击机线的版本链条（更正 §96"新功能"说法）
- **第一代＝R4c177（B3-A1「自动打击接活」）**：含玩家侧攻击机档（`createAttackArmy(airport,-1,pid,divKey)`、打"有驻军的省"、仅攻击机加视野门、6 回合新鲜度、同目标在飞 ≤2、35% 部队伤害）。**2026-09-20 被整层取消并删除**：整树回滚到 `w3a_smali_20260918.tar.gz`（R4c176b）→装机 **r5a001**。
- **第二代＝r5c019**（AI 侧重建 `a1b*`，入口 `strikeTick_A1` 跳过玩家）；**r5c025 在 `a1Scan`/`a1bScan` 内写入玩家门**（玩家机场按 `autoStrikeOff` 放行）⇒ **门已写好，入口未开，死代码至今**（5 份备份扫描：pre_r5c019=0/0，pre_r5c025 起=1/1，跳过玩家恒为 1）。
- **第三代＝r5c046n–w**：玩家自动打击走老线（开关＋轰炸机），**只含轰炸机**。
- 结论：用户口径正确——**玩家攻击机不是新功能**；最小接线＝让 `strikeTick_A1` 对玩家只跑 `a1bScan`（攻击机），轰炸机仍走老线。待用户批准后按三轮调研施工。
'''

def main():
    open(DOC,'w',encoding='utf-8').write(DOC_TXT)
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC)
    open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    print('[OK] doc=%d plan=%d incr=%d' % (os.path.getsize(DOC), os.path.getsize(PLAN), os.path.getsize(INCR)))

if __name__ == '__main__':
    main()