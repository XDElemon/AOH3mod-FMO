# -*- coding: utf-8 -*-
# r5c032_docs.py —— 登记：人物不死（GV方案）随 P1b 一起做
import io, os, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'

S = u'''

---

## 21. 待做（随 P1b 一起交付）：人物"无限生命"＝免疫自然死亡【GV 方案，2026-09-24 调研完成】

> 完整调研见独立文档：`r6s5/人物不死_GV调研_v1.md`

**结论**：元首/顾问/将领**没有 HP 字段**，"无限生命"＝**不再老死**；死亡有**唯一咽喉** `RulersManager.characterDies(iCivID, iBornYear)Z`（7 个调用点全走它）。

**决定采用的改法（纯 JSON，零 smali；与 P1b 同批交付）**：
1. `assets/game/gameValues/GV_Advisors.json`：`CHANCE_OF_DEATH` **全置 0**（覆盖全部 7 个调用点，含闸门外的"未指派将领"）；
2. `assets/game/gameValues/GV_GameUpdate.json`：`GAME_UPDATE_DEATH_RULER_MIN_TURN_ID` 设为极大（如 `999999999`），关掉总闸门内的死亡检查；
3. 注入方式：在 `/tmp/rebuild_v119fix.py` 里按**现成机制**（同 `assets/game/RadarConfig.json` 那几段）替换这两个 JSON；
4. 兜底（若实测仍有死亡路径）：1 行 smali —— `characterDies` 首行 `return false`。

**注意**：
- ⚠️ `GAME_UPDATE_DEATH_*_EVERY_X_DAYS` **绝不能设 0**（参与 `TURN_ID % X`，除零会被 catch 吞掉）。
- ❗待实测：GV 只在"开局初始化"里加载（`InitGame:19569` → `GameValues.init()`、`AA_Game:1662` → `initGameValue()`）⇒ **老存档是否重读 GV 未验证**；若不重读，改动只对新档生效。

**验收**：新档（或读档后确认生效）连推若干回合 ⇒ 元首/顾问/将领不再死亡（可用 UI 观察或探针）。
'''

H = u'''

---

### 待做登记：人物无限生命（GV 方案）—— 随 P1b 一起交付
- 改 `assets/game/gameValues/GV_Advisors.json`（`CHANCE_OF_DEATH` 全 0）＋ `GV_GameUpdate.json`（`GAME_UPDATE_DEATH_RULER_MIN_TURN_ID` 极大），由 `rebuild_v119fix.py` 注入。
- 详见计划书 §21 与 `r6s5/人物不死_GV调研_v1.md`；⚠️ `EVERY_X_DAYS` 不可设 0；老档是否重读 GV 待实测。
'''


def ap(path, marker, text):
    t = io.open(path, encoding='utf-8').read()
    if marker in t:
        print('SKIP %s' % os.path.basename(path)); return
    io.open(path, 'a', encoding='utf-8').write(text)
    print('OK   %s' % os.path.basename(path))


ap(PLAN, '## 21. 待做（随 P1b 一起交付）', S)
ap(HAND, '待做登记：人物无限生命（GV 方案）', H)
print('DONE', time.strftime('%m-%d %H:%M'))