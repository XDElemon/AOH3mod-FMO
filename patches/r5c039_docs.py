# -*- coding: utf-8 -*-
# r5c039_docs.py —— 落盘：r5c038b 抓样判读 + 中立国根因 + r5c039（探针/可见性放宽/isAtWar） + 门禁⑲⑳
import io, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
LAWS = '/sdcard/GLG/历史23/铁律与教训_常驻速查_v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
TS = time.strftime('%Y-%m-%d %H:%M')

PLAN_TXT = u'''
## 31. r5c038b 抓样判读 + 中立国 bug 根因 + 批次 r5c039（{TS}）
### 31.1 抓样判读（`r6s5/cur_r5c038b.txt` 18.8MB / `cur_r5c038b_tick.txt`）
| 观测 | 值 | 结论 |
|---|---|---|
| `nDE_ENTER`（logOnce，**tick 文件**） | **266** | 侦测每帧在跑 |
| **`nDR_DET`（dKey，key+tick 文件）** | **0 / 0** | **侦测仍未成功**（"打我方者必见"这条在本批之前不存在） |
| `um_mv0:…:at=-1:…:hq=0` | 多条（st=1/3、fp 0.05~1.0） | AI 任务**确实在飞**，但仍无 airhq 师（`moveDivisionAlongFlight` 空转） |
| 玩家侧 | 无飞机/航线可见 | 与 `airDetSeen` 为空一致 |

⇒ 结论：渲染侧（C2）已就位，但**没有"可见性来源"**。侦测只认"玩家自己的**雷达省**/机场覆盖圈"（半径 300/600/2400，`calcInEllipse`），
玩家没有雷达/机场覆盖 AI 航线 ⇒ 永远侦测不到 ⇒ 永远不可见。

### 31.2 中立国 bug 根因（用户报告：开战后 AI 会给中立国派轰炸）
`AFM.getEnemyProvincesInRange(Airport, AirType)`（AFM:1386）对范围内省份只做两条过滤：
```
if (province.civID == airport.civID) skip # 自己的省
if (province.civID < 0) skip # 无主
# ⇒ 其余全部当作"敌方"（含中立国！）
```
**完全没有 `isAtWar` 判定** ⇒ 中立国被列为打击目标。**正解**：补 `DiplomacyManager.isAtWar(机场文明, 省文明)`。

### 31.3 批次 r5c039 内容（已装机）
| # | 内容 | 说明 |
|---|---|---|
| **定位探针** | `detectEnemyMissions` 内 6 个 `logOnce`：`inDE_A`(任务非空)/`B`(有存活机)/`C`(是敌方)/`D`(交战中)/`E`(状态=在途或执行)/`F`(坐标有效) —— 插在各前置门**之后**，用 `v12/v13`（该区间死寄存器）、F 用 `v12/v5` | 一次性定位"卡在哪道门"（铁律㊱） |
| **可见性放宽** | `myOrDetectedMission` 重写：`己方 ∨ 已侦测 ∨ **目标省属于玩家**`（`targetProvinceID → Province.getCivID() == Game.player.iCivID`） | 用户语义：**AI 来炸我的省 ⇒ 我必然看得见**；仍不看未被侦测且不打我的敌机（防全图透视） |
| **禁打中立国** | `getEnemyProvincesInRange` 增 `isAtWar(机场文明, 省文明)`（temp 用 **v1**，注意 v3 是省 ID 不能占） | 修用户报告的 bug |
| **门禁** | 新增 **⑲**（选靶必须含 `isAtWar`）、**⑳**（可见性必须含 `targetProvinceID→getCivID→iCivID`）；⑱的 fall-through 窗口放宽到 13 行（探针占行） | 负样本 `r5c038b` ⇒ ⑲⑳ **2 FAIL**；正样本 `r5c039` ⇒ **0 FAIL** |
### 31.4 产物与校验
| 批次 | dex md5 | apk md5 | 状态 |
|---|---|---|---|
| **r5c039** | **`755dd71c95c689676ced011c10ecfd1f`** | **`292932f34e9a1b4ae0d57760c71a95e0`** | ✅ 已装机（`Success` + DEX MATCH）；门禁⑯⑭⑮⑰⑱⑲⑳ 全 0；八件套 **Δ=9**（6 探针 + 2 helper + 1 isAtWar，人工对账一致） |
### 31.5 待验收（下次抓样）
1. `airdbg_tick.txt`：`inDE_A..F` 出现到哪一档 ⇒ 若只到 `E` ⇒ 坐标/数据问题；若到 `F` 仍无 `nDR_DET` ⇒ **确认为"雷达覆盖"问题**（则本批的"打我方者必见"就是正确解）；
2. **肉眼**：AI 轰炸机从 AI 机场起飞、飞行、轰炸、返航**应可见**（因为目标=玩家省 ⇒ 命中新判据）；
3. 中立国：开战后应**不再**出现打中立国的任务（`nA4e`/`nATK` 目标省应全部属于交战国）。
'''.replace('{TS}', TS)

LAWS_TXT = u'''
### {TS}（r5c039 批）新增
- **【57】"看得见"必须有**可见性来源**：`PlayerFogOfWar.detectEnemyMissions` 只认"玩家自己的雷达省（长波2400/雷达600/其余300）× `calcInEllipse`"与"玩家机场 `radarRange`"两段覆盖圈。
  玩家若无雷达/机场覆盖敌机航线 ⇒ 永不侦测 ⇒ 敌方任务永不显示。**修可见性时不能只解渲染门**，必须补一条"玩家必然知道"的来源（本批取"目标省属于玩家"）。
- **【58】原版 AI 选靶 `getEnemyProvincesInRange` 不含 `isAtWar`**（只排除自国/无主）⇒ 会打中立国；任何"敌方目标"列表都要显式校验 `DiplomacyManager.isAtWar`。
- **【59】给方法插探针前先算"该区间哪些寄存器是死的"**（本批 `v12/v13` 在 772 行前死、`v5` 在 675→749 之间死），
  拿死寄存器做 `const-string` 不破坏原逻辑；`v3` 这类"循环里承载省 ID"的寄存器绝不能占。
'''.replace('{TS}', TS)

HAND_TXT = u'''
- **r5c038b 抓样判读**：`nDE_ENTER`=266 但 **`nDR_DET`=0**（key+tick 均 0）；AI 任务在飞（`um_mv0 ... hq=0`）⇒ 卡在"雷达覆盖"，非渲染门。
- **中立国 bug 根因**：`AFM.getEnemyProvincesInRange` 无 `isAtWar` 判定（只排自国/无主）⇒ 已修。
- **批次 `r5c039` 已装机**（dex `755dd71c…` / apk `292932f3…`）：6 个定位探针 `inDE_A..F` ＋ 可见性"目标是我方省⇒可见" ＋ 禁打中立国；门禁 ⑲⑳ 新增；八件套 Δ=9。
  **下一步抓样**：看 `inDE_A..F` 出现在哪一档、`nDR_DET` 是否 >0、以及肉眼能否看到 AI 轰炸机（打我方省者必见）。
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


append(PLAN, PLAN_TXT, '## 31. r5c038b 抓样判读')
append(LAWS, LAWS_TXT, '【57】"看得见"必须有')
append(HAND, HAND_TXT, 'r5c038b 抓样判读')
print('DONE', TS)