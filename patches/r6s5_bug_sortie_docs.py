# -*- coding: utf-8 -*-
# r6s5_bug_sortie_docs.py —— 落盘：新 bug「AI 出动不可见」调研 + 阶段定位（P1c）
import io, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
LAWS = '/sdcard/GLG/历史23/铁律与教训_常驻速查_v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
TS = time.strftime('%Y-%m-%d %H:%M')

PLAN_TXT = u'''
## 27. 【新 bug】AI 出动不可见（"看不见 AI 飞机师飞出来，只见自己被炸"）（{TS}，仅调研）

### 27.1 现象（用户报告）
AI 派发打击后，玩家**看不到 AI 的飞机从 AI 机场起飞/在途飞行**；自己领土却直接挨炸。

### 27.2 调研结论：**两处独立断点**（都实测到）

**断点①（逻辑层，阻断在最前）：侦测链被一个"死字段"掐死**
- 机制：`PlayerFogOfWar.detectEnemyMissions()`（599 行）负责"侦测敌方在途任务"，
  命中后会 `airDetSeen.add(missionID)` 并 `AFM.dispatchAutoIntercept(mission)`（**自动派己方拦截**）。
- 它的第一道判定是：
  ```
  iget v5, mission, AirMission;->airDivisionAtProvinceID:I
  if-ltz v5, :cond_176        ← 该值 <0 直接跳过
  ```
- 而 `AirMission.airDivisionAtProvinceID` **只在构造函数里被写成 -1，全树没有第二处写入**
  （同族 `airDivPrevProvinceID / airDivPrevPrevID / airDivSegAnimMs / airDivSegDurMs` 同样只在构造器写入）。
- 抓样实证（**注意：`logOnce` 写的是 `airdbg_tick.txt`，不是 key 文件**）：
  `nDE_ENTER` = **1047**（侦测在跑）／ `nDR_DET` = **0**（一次都没侦测成功）；
  同期 `um_mv0:…:at=-1` 显示该字段恒为 -1。
⇒ 结论：**侦察永远不成立 ⇒ 不会显示、也不会自动拦截**（这也是 P3 的一半失效）。

**断点②（渲染层）：只画"自己的任务"**
- `ProvinceDrawArmy.drawAirForceMissions()` 对 `activeMissions` 逐个判定：
  ```
  invoke-static {v1}, ProvinceDrawArmy;->isMyMission(AirMission)Z
  if-eqz v2, :goto_c          ← 不是"我的任务"⇒ 跳过绘制
  ```
- `isMyMission(m)` = `Game.player != null && m.civID == player.iCivID`（7521 行）。
- 同样过滤还存在于 `drawAircraftRadar()`（2956 行，雷达层的空情）。
⇒ 结论：**敌方任务在任何图层都不会被绘制**（连"已侦测"的也不例外）。

**（附）AI 机场图标是画了的**：`drawAirportIcons()` 遍历 `allAirports`（所有文明）画通用 `airUnit` 图标
⇒ 玩家能看到"机场存在"，但看不到"驻机/起飞/在途"。

### 27.3 修法设计（P1c 内容，尚未实现）
| # | 内容 | 关键点 |
|---|---|---|
| C1 | **让"任务当前所在省"可用**（解断点①） | 用 `sourceProvinceID → targetProvinceID` + `flightProgress` 插值推算（渲染层已用同一套插值），或恢复 `airDivisionAtProvinceID` 的运行时维护；推荐前者（不改每帧写状态） |
| C2 | **渲染放行"已侦测的敌方任务"**（解断点②） | `drawAirForceMissions` / `drawAircraftRadar` 的判据由 `isMyMission(m)` 改为 `isMyMission(m) \\|\\| enemyMissionVisible(m)`；`enemyMissionVisible` 读 `PlayerFogOfWar.airDetSeen.contains(m.missionID)`（**只能看见被侦测到的**，避免全图透视）；敌方用不同贴图/透明度 |
| C3 | **出动表现** | 起飞/在途/返航全段可见（现有 `flightProgress` + `state`：EN_ROUTE/EXECUTING/RETURNING 已在渲染逻辑里）；AI 机场在雷达内可显示驻机数（复用 `drawAirDivisionAsPlane`） |
| C4 | **对称性核查** | `AFM` 里的 R4c109 两段（radar-provinces pass / airport-radar pass）是 AI 侧侦测镜像；需确认它们是否同样受"死字段"影响 ⇒ 若受影响，AI 也看不见玩家（P3 需要） |
| C5 | **联动** | C1 修好后 `dispatchAutoIntercept` 才会真正开始工作 ⇒ 这本身就是 P3（空战对称/拦截）的一半 |

### 27.4 在制作流程中的位置（本次要"安排"的结论）
**新增阶段 `P1c：敌方空情可见性（看得见的 AI 出动）`，位置＝紧跟 P1b（AI 造机）之后、P2（派发闸门细化）之前。**

理由：
1. 它是 P1（AI 打击接入）的**玩家可感知闭环**：P1a/P1b 已让 AI"能造、能派、能炸"，玩家却**看不见过程**；
2. P2 的闸门调参（`Fade`/`MaxTargets`/`PriorityDivider`）需要"看得见"才能被人工验证；
3. P3（自动拦截/空战对称）直接依赖 C1 修好的"侦测成功"⇒ 必须排在 P3 之前。

更新后的顺序：`P1a ✅ → P1b ✅ →` **`P1c ⏳（本 bug）`** `→ P2 → P3 → P4（难度）→ P5（清探针）`。

### 27.5 验收方式（P1c 完成后）
1. 抓样：`nDE_ENTER`（在 `airdbg_tick.txt`）与 `nDR_DET` **>0**；
2. 新增/复用探针：`drawAirForceMissions` 放行计数（己方 vs 敌方已侦测）；
3. 肉眼：AI 飞机从 AI 机场起飞 → 在途 → 轰炸 → 返航，全程可见（玩家雷达范围内的省份）；
4. 反向：未被侦测的敌方任务**不应**显示（防全图透视）。
'''.replace('{TS}', TS)

LAWS_TXT = u'''

## 新增铁律（{TS}，AI 出动不可见调研）

- **㊺ 抓样必须同时取两个日志文件**：`dKey/d/e5i` 走 **`airdbg_key.txt`**；而 **`logOnce` 走 `airdbg_tick.txt`**。
  本轮差点误判："`nDE_ENTER`=0 ⇒ 侦测没跑"，实际它在 `airdbg_tick.txt` 里有 **1047** 条。
  ⇒ 判读脚本要么同时拷两个文件，要么先确认某探针属于哪条通道。
- **㊻ 字段"只有构造器写、运行时无人维护"⇒ 一律视为死字段**：
  `AirMission.airDivisionAtProvinceID`（及 `airDivPrev*`/`airDivSeg*`）只在构造器写 -1，
  任何 `if-ltz` 之类的门都会**永远跳过** ⇒ 典型"死门"的第 4 类（新增）。
  排查手法：`grep -rn '->字段:' | grep -E 'iput|sput'`，若写点仅出现在构造器/读档 ⇒ 判死。
- **㊼ 渲染层门要用"可复用判据"**：`isMyMission()` 这类"只画自己"的门，
  修的时候不要简单放宽成"全画"（会变成全图透视）；应挂到已有的侦测结果集合（如 `PlayerFogOfWar.airDetSeen`）。
'''.replace('{TS}', TS)

HAND_TXT = u'''

## §4 追加：新 bug 与阶段定位（{TS}）

**新 bug**：AI 出动不可见（只看到自己被炸）。
**根因**：① `AirMission.airDivisionAtProvinceID` 恒 -1（死字段）⇒ `detectEnemyMissions()` 第一道门永远跳过（`nDE_ENTER`1047 / `nDR_DET`0）；② `drawAirForceMissions`/`drawAircraftRadar` 用 `isMyMission()` 只画己方任务。
**阶段定位**：新增 **P1c「敌方空情可见性」**，排在 **P1b 之后、P2 之前**（顺序变为 P1a ✅→P1b ✅→**P1c ⏳**→P2→P3→P4→P5）；C1 修好同时解锁 P3 的自动拦截。
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


append(PLAN, PLAN_TXT, '## 27. 【新 bug】AI 出动不可见')
append(LAWS, LAWS_TXT, '㊺ 抓样必须同时取两个日志文件')
append(HAND, HAND_TXT, 'P1c「敌方空情可见性」')
print('DONE', TS)