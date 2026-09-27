# -*- coding: utf-8 -*-
# r5c037_verdict2.py —— 追加：AI 空袭的伤害模型解码 + 验收结论（用户确认被炸省全是玩家属地）
import io, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
TS = time.strftime('%Y-%m-%d %H:%M')

PLAN_TXT = u'''
### 26.5 用户确认 + 伤害模型解码（{TS}）

**用户确认：被炸省（5712/5713/5961/5968/5969/5990/1679…）全部是玩家（civ226）属地** ⇒ 「AI 真的炸到玩家」**成立**。

`AirMission.executeAttack()` 到达目标省后的伤害模型（dex 实装 1997–2069）：

| 分支 | 条件 | 经济 | 人口 | 陆军 | 战报 |
|---|---|---|---|---|---|
| **轰炸机/战略**（log 中 `pct=0.15` 即此路） | `missionType != ATTACK_ARMY` | `economy -= payload×0.10` | `applyPopDamage(省, payload×1000)` | `applyArmyDamage(省, civ, cap 0.15)` | `emitStrikeReport` |
| ATTACK_ARMY（师级） | `missionType == ATTACK_ARMY` | `economy -= payload×0.02` | `applyPopDamage(省, payload×100)` | `applyArmyDamage(省, civ, 0.35)` | `emitStrikeReport` |

- `nGA`（executeAttack 探针）**只挂在攻击机分支**（注释写明 "attacker tier only; bomber path jumps to :cond_51"）⇒ AI 走轰炸机分支时 `nGA=0` **属预期**；
- `nAHs` 的 `civ=` 是**部队所属文明**（不是省份归属）⇒ 5712/5713 出现 `civ=73` 表示"AI 军队正驻在玩家省里"，因此那次被 `same=1` 判为友军跳过（**防止自己炸自己，行为正确**）。

### 26.6 验收结论
| 验收项 | 状态 |
|---|---|
| AI 造机（含扣钱、机型小表、容量上限） | ✅ 通过 |
| AI 派发打击任务（`nA4e k=0`） | ✅ 通过 |
| AI 任务在飞、到达并结算 | ✅ 通过（`nATK`/`nAH`/`nFP`/`nRH`） |
| **真的炸到玩家（人口/经济/陆军）** | ✅ **通过**（用户确认目标省为玩家属地 + 伤害模型解码） |
| AI 空战对称与分工（拦截/巡逻/SEAD 等） | ⏳ P3 |
| 难度接入（造机折扣/出击频率/视野容差） | ⏳ P4 |
| 派发去重与频率上限（ICBM `Fade/MaxTargets/PriorityDivider`） | ⏳ P2 |
| 探针清理（P5） | ⏳ P5 |
'''.replace('{TS}', TS)

HAND_TXT = u'''

**§4 追加（{TS}）**：用户确认被炸省均为玩家属地 ⇒ **P1b/P1a 验收全项通过**（含"真的炸到玩家"）。
伤害模型：轰炸机分支 = 经济−10% / 人口−payload×1000 / 陆军−15%(cap)；`nGA=0` 属预期（探针只在攻击机分支）。
'''.replace('{TS}', TS)


def append(path, txt, tag):
    s = io.open(path, encoding='utf-8').read()
    if tag in s:
        print('SKIP', path.split('/')[-1])
        return
    if not s.endswith('\n'):
        s += '\n'
    io.open(path, 'w', encoding='utf-8').write(s + txt)
    print('OK', path.split('/')[-1])


append(PLAN, PLAN_TXT, '### 26.5 用户确认')
append(HAND, HAND_TXT, '验收全项通过')
print('DONE', TS)