# -*- coding: utf-8 -*-
# r5c046s_survey2_docs.py —— F1（按钮极性）第二/三轮调研 + 计划书 §88 + INCR §32
import os, time
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
V2=os.path.join(R6S5,'调研_r5c046s_F1按钮极性_v2拓展.md')
V3=os.path.join(R6S5,'调研_r5c046s_F1按钮极性_v3定稿.md')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')
TS=time.strftime('%Y-%m-%d %H:%M')

V2_TXT = '''# 调研（第二轮·拓展）：F1 按钮极性修正 —— 上下游与副作用
> 时点 ''' + TS + ''' ｜ 第一轮＝《调研_r5c046t_r版按钮哑真因_v1全量.md》

## 1. 上游（谁调用 actionElement）
`Menu.actionElement`（UI 框架）在**按钮被按下**时调用；异常被框架 `try/catch` 吞掉（所以"哑"时无任何外显）。
`afp:ent` 探针位于 `:try_start_0` **之前** ⇒ 只要点击进类就会打印（r 场次实测有）✔

## 2. 下游（修好后会触发什么）
`actionElement` 在拿到机场后按 `missionType` 分支：
| missionType | 行为 | 影响的字段 |
|---|---|---|
| 0（自动巡逻键） | `mode` 在 PATROL ⇄ OFFENSIVE 间切换（+`stopAirportPatrols`） | `Airport.mode` |
| 1（自动打击键） | `autoStrikeOff ^= 1`（+探针）→ `mode=OFFENSIVE` → `stopAirportPatrols` | `Airport.autoStrikeOff`、`mode` |
| 2（AI 接管，**无按钮入口**） | `mode=AI` + 立即 `executeAIAssignment(玩家civ)` | `mode` |
| 3 / 4 | 其它（非本批） | — |
⇒ 修好 F1 后：` strike=` 会真翻转 → `executeAIAssignment` 的门 `玩家机场 ∧ autoStrikeOff==0` 放行 → 玩家机场按**老线**派发（战时 BOMBER、和平巡逻）。

## 3. 与其它系统的关系（不变量）
- **不改**：`Airport` 字段语义、`Mode` 枚举、派发门（`executeAIAssignment`）、a1 智能线、存档结构、`getTextToDraw` 的显示逻辑。
- **显示同源**：`getTextToDraw` 用 `pickAirport(2)` 读**同一个**开关 ⇒ 修好后文本会随开关变（"自动打击：开/关"）。
- **风险**：唯一风险是"修反"，即把非空判成空。判别式＝`pickAirport` 返回值寄存器 v0 与分支助记（见 v3 §2 真值表）。

## 4. 失败模式
| 现象 | 原因 |
|---|---|
| 修后仍无 `afp:press ap=` | 分支仍未修对（或 `if-nez` 目标标号错） |
| 修后 ` strike=` 翻转但文本不变 | 显示侧 `pickAirport(2)` 取到**不同机场**（本轮未改显示侧，属既有风险，记入 F2/F3 待办） |
| 点击后 NPE（无外显） | 极性与标签再次反置（null 跳进"干活"分支） |
'''

V3_TXT = '''# 调研（第三轮·全量拓展·定稿）：F1 按钮极性 —— 可施工定稿
> 时点 ''' + TS + ''' ｜ 结论：**1 处极性修正（`if-eqz` → `if-nez`）**

## 1. 锚点（"r 基线树" `/tmp/w3a_r/smali`，实测）
| 项 | 值 |
|---|---|
| 文件 | `aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali` |
| 锚点逐字 | `if-eqz v0, :cond_2c`（**全文命中=1**） |
| 上下文 | 上一行 `move-result-object v0`（`pickAirport(1)` 返回值）；下一行 `const-string v1, "AIRDBG"`（"afp:" 分支）；（`:cond_2c` 是"干活"分支起点） |
| 改法 | `if-eqz v0, :cond_2c` → **`if-nez v0, :cond_2c`** |

## 2. 真值表与极性（Dalvik：`if-eqz`=等于0才跳；`if-nez`=非0才跳）
| 输入（pickAirport 返回） | 现在（if-eqz）| 修后（if-nez）| 期望 |
|---|---|---|---|
| 非空（找到机场） | **落进 "afp:"+return（哑）** ✗ | 跳到 `:cond_2c` ⇒ 执行切换 ✓ | ✓ |
| null（没找到） | 跳到 `:cond_2c` ⇒ `iget` NPE ✗ | 打 `afp:` ⇒ return ✓ | ✓ |
⇒ 修后：成功走"干活"，失败走"记日志返回"，**不再 NPE**。

## 3. 寄存器分配表
| 位置 | `.registers` | 本批借用 | 是否需要提高 |
|---|---|---|---|
| `actionElement` | 11（既有） | **不新增**（只改助记，寄存器集合不变） | **否** |

## 4. 失败模式与回滚
- 回滚点：本批施工前留 `InGame_AirForceOptions$BtnMission.smali.pre_r5c046s`（在 r 树上）。
- 唯一的"写反"后果＝按钮继续哑或 NPE ⇒ 由门禁㊶（断言 `if-nez v0, :cond_2c` 存在、`if-eqz v0, :cond_2c` 不存在）在装机前拦截。

## 5. 验收（可证伪）
按一次「自动打击」应看到（顺序）：
`afp:ent` → `afp:src a=1x`（或列表命中＝无 src）→ **`afp:press ap=<省>`** → **`afp:mt a=1`** → **`afp:strike new= a=0/1`** → `afp:done`；
且随后机场 dump 的 ` strike=` 由 1→0（再按一次 0→1）。
（注：`afp:src` 只在兜底②③④打印；走列表命中①时无 src，属正常。）

## 6. 门禁
**㊶ `check_btn_polarity.py`**：①断言 `pickAirport(I)…Airport;` 后紧跟 `move-result-object v0` 与 **`if-nez v0, :<lbl>`**；②断言不存在 `move-result-object v0` + `if-eqz v0, :<lbl>` 组合。
负样本＝r 基线树 ⇒ 报 1 处；正样本＝补丁后 ⇒ 0。
'''

PLAN_SEC = '''

---

## 88. 【第二/三轮调研·定稿】F1 按钮极性修正（1 字）
- 锚点：`InGame_AirForceOptions$BtnMission.smali` 内 **`if-eqz v0, :cond_2c`（命中=1）** → 改 **`if-nez v0, :cond_2c`**。
- 真值表：非空 ⇒ 跳到"干活"分支（切换）；null ⇒ 打 `afp:` 返回（不再 NPE）。
- 寄存器：`.registers 11` **不变**（只改助记）。
- 下游：切换 `autoStrikeOff` ⇒ 派发门 `玩家机场 ∧ switch==0` 放行 ⇒ 玩家机场按**老线**派发（战时 BOMBER）。
- 门禁㊶（负样本 r=1、正样本=0）；验收：`afp:ent→…→afp:press ap=→afp:mt a=1→afp:strike new=→afp:done` 且 ` strike=` 翻转。
- 基线树＝`/tmp/w3a_r/smali`（r 基线）；`assemble.sh` 的 `SMALI_TREE` 硬编码旧树 ⇒ **直调 `RunSmali`**。
'''

INCR_ADD = '''
## 32. 第二/三轮调研定稿：F1 按钮极性（1 字）
- 锚点 `if-eqz v0, :cond_2c`（命中1）→ `if-nez v0, :cond_2c`；`.registers` 不变。
- 真值表：非空⇒干活分支；null⇒日志+返回（不再 NPE）。
- 下游：开关翻转 ⇒ 派发门放行 ⇒ 玩家机场按老线派发（战时 BOMBER）。
- 门禁㊶（负样本 r=1→正样本 0）；验收＝六探针齐全 + ` strike=` 1↔0。
- 基线树 `/tmp/w3a_r/smali`；需直调 RunSmali（assemble.sh 硬编码旧树）。
'''

def main():
    open(V2,'w',encoding='utf-8').write(V2_TXT)
    open(V3,'w',encoding='utf-8').write(V3_TXT)
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC)
    open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    print('[OK] v2=%d v3=%d plan=%d incr=%d' % (os.path.getsize(V2), os.path.getsize(V3), os.path.getsize(PLAN), os.path.getsize(INCR)))

if __name__ == '__main__':
    main()