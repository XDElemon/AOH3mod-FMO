# -*- coding: utf-8 -*-
# r5c038b_docs.py —— 落盘：第三方审查采纳 + 两处判据反写修正 + 门禁⑰⑱ + 铁律54/55/56
import io, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
LAWS = '/sdcard/GLG/历史23/铁律与教训_常驻速查_v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
TS = time.strftime('%Y-%m-%d %H:%M')

PLAN_TXT = u'''
## 30. P1c 修正批 r5c038b：两处判据反写（采纳第三方审查）（{TS}）
### 30.1 审查指出的两个缺陷（**已独立复核确认为真**）
| # | 位置 | 我写的 | 实际语义（🔴错） | 正解 |
|---|---|---|---|---|
| ① | `PlayerFogOfWar.detectEnemyMissions` 的坐标门 | `if-gez v13, :cond_176` | `if-gez`＝**≥0 跳**⇒**有效坐标**被跳去 `:cond_176`→`:goto_176`→`goto/16 :goto_2b`（下一个任务）；`-1` 反而落进侦测体，拿 (-1,-1) 算雷达椭圆 | **`if-ltz v13, :cond_176`**（<0 ＝无效 ⇒ 跳过本任务） |
| ② | `ProvinceDrawArmy.myOrDetectedMission` | `if-nez v0, :modm_chk` | `if-nez`＝**≠0 跳**⇒**己方**任务被跳去查 `airDetSeen`；**非己方**落穿 `return 1` ⇒ 实际语义 = `(!己方) ∨ 已侦测` ⇒ **敌方全画（正是要避免的透视）＋ 己方反而不画** | **`if-eqz v0, :modm_chk`**（非己方 ⇒ 才去查已侦测集合） |
复核方式（三源交叉，不靠记忆）：①旧代码同位置就是 `if-ltz v5, :cond_176`（<0⇒跳过）＋ helper 内 `if-ltz` 挡负值；②引擎旁证（`Airport.updateBuild:760` 等）；③直接看**跳转边**：`:cond_176` 块 = `:goto_176` → `goto/16 :goto_2b`（循环推进＝跳过本任务）。
### 30.2 新增门禁 ⑰/⑱（"对着正解"写，并走负样本→正样本）
- **⑰** `myOrDetectedMission`：`isMyMission` 之后第一条 if 必须是 `if-eqz v0, <LAB>`，`<LAB>` 块须含 `contains`，且 fall-through 必须是 `const/4 v0, 0x1`。
- **⑱** `detectEnemyMissions`：`curAirRealY`+`move-result v14` 之后第一条 if 必须是 `if-ltz v13, <LAB>`，`<LAB>` 块须含 `goto` 且不含 `calcInEllipse`，且 fall-through 须进侦测体（含 `getInstance`）。
- **负样本**（`r5c038a` dex）：⑰ 报 `if-nez v0, :cond_8`、⑱ 报 `if-gez v13, :cond_18b` ⇒ **2 FAIL** ✓；**正样本**（`r5c038b` dex）：**0 FAIL** ✓。
- ⚠️ **门禁自身也曾出错**（见铁律 55/56）：`seq_after` 默认 `span=14` 导致⑱取错位置（假 FAIL）；⑰的报文显示项 span 写窄（显示 False 但判定 PASS）。已修（⑱显式 `span=300`、⑰显示用 `span=14`）。
### 30.3 批次产物（现役＝r5c038b）
| 批次 | dex md5 | apk md5 | 状态 |
|---|---|---|---|
| r5c038 | `7efcb1c1…` | `0dafe2df…` | ❌ VerifyError 闪退（已作废） |
| r5c038a | `7be646c6…` | `548b71d6…` | ❌ 两处判据反写（已作废） |
| **r5c038b** | **`41db18bccd04f97223cdaf2edb043cb9`** | **`d1caaac1070a8c7a9de68c00af900f1e`** | ✅ **现役**（`Success` + DEX MATCH；门禁⑯⑭⑮⑰⑱ 全 0；八件套 Δ=0） |
### 30.4 验收预期（本批修正后）
| 观测 | r5c038a（错） | r5c038b（正解） |
|---|---|---|
| `nDE_ENTER` | >0 | >0 |
| `nDR_DET civ=…` | 恒 0 | **被侦测到时应 >0** |
| 己方飞机/航线 | 看不见 | **看得见** |
| 敌方航线 | 全可见（含从未侦测的） | **只有被侦测的才可见** |
'''.replace('{TS}', TS)

LAWS_TXT = u'''
### {TS}（r5c038b 批）新增
- **【54】有人报"判据反写"时，先做"跳转边复核"，再谈改动**：拿**目标标签块的内容**定性（`跳过本任务=跳到循环推进`、`进入主体=下一条就是主体首指令`），
  并用"旧代码同位置写法 + helper 自身判据 + 引擎旁证"三源交叉，**不要凭记忆**。本次复核证实 C1/C2 两处确实反写。
- **【55】门禁自身的 `seq_after(..., span=)` 默认 14 太窄**：锚点在新方法体第 68 行时直接搜不到 ⇒ 门禁会"取错位置"给出假 FAIL（本次⑱即如此）。
  **凡关键锚点一律显式 `span=300`（或 FULL）**；门禁一旦出现"报文与真值不符"，**优先怀疑门禁自身**（铁律㉓的延伸）。
- **【56】门禁的"判定"与"显示"必须同源**：⑰曾出现"显示 `目标块含contains=False` 但判定 PASS"（判定用 span14、显示用默认 span）。
  这类不一致会让人误以为功能没修好 ⇒ 判定/显示用同一参数。
'''.replace('{TS}', TS)

HAND_TXT = u'''
- **P1c 修正批 `r5c038b` 已装机**（dex `41db18bc…` / apk `d1caaac1…`，`Success` + DEX MATCH）。
  采纳第三方审查，修掉两处判据反写：①`detectEnemyMissions` 坐标门 `if-gez`→**`if-ltz`**；②`myOrDetectedMission` `if-nez`→**`if-eqz`**。
  新增门禁 **⑰/⑱**（负样本 r5c038a 报 2 FAIL → 正样本 r5c038b 报 0 FAIL）；门禁⑯⑭⑮亦全 0；八件套 Δ=0。
  **r5c038 / r5c038a 均已作废**（前者 VerifyError，后者判据反写）。
  **下一步**：用户推回合后抓样，按 §30.4 的表对账（重点：`nDR_DET` 应 >0；己方航线应看得见；未侦测的敌方任务不应出现）。
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


append(PLAN, PLAN_TXT, '## 30. P1c 修正批 r5c038b')
append(LAWS, LAWS_TXT, '【54】有人报"判据反写"时')
append(HAND, HAND_TXT, 'P1c 修正批 `r5c038b` 已装机')
print('DONE', TS)