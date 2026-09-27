# -*- coding: utf-8 -*-
# r5c039a_docs.py —— 落盘：r5c039 两处反写修正（采纳审查）+ 门禁㉑㉒ + 铁律60/61
import io, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
LAWS = '/sdcard/GLG/历史23/铁律与教训_常驻速查_v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
TS = time.strftime('%Y-%m-%d %H:%M')

PLAN_TXT = u'''
## 32. P1c-3：修 r5c039 引入的两处反写（+NPE 路径）+ 门禁㉑㉒（{TS}）
### 32.1 审查指出、我复核确认为真的两处（同一方法内成对出错）
| # | 位置 | 我写的 | 实际语义 | 正解 |
|---|---|---|---|---|
| ① | `myOrDetectedMission` 中 `airDetSeen` 判空 | `if-nez v1, :modm_tgt` | `if-nez`＝**≠0 跳** ⇒ airDetSeen **非空**时跳去"查目标省"，**"已侦测"整路被跳过**；而 airDetSeen **为 null**（首次侦测前）时落穿到 `contains` ⇒ **NPE** | **`if-eqz v1, :modm_tgt`** |
| ② | 同方法 `contains` 结果判定 | `if-nez v0, :modm_tgt` | `contains`为真（已侦测）时跳走 ⇒ **反而不返回 true** | **`if-eqz v0, :modm_tgt`** |
**必须成对改**：只改①会变成"未侦测 ⇒ return true"＝全图透视。
### 32.2 为什么这解释了"还是不可见"（NPE 会中止整段空军绘制）
`ProvinceDrawArmy.drawAirForce` 把**整个方法**包在 `:try_start_0 .. :try_end_167` + **`.catch Ljava/lang/Throwable`**，
catch 里把 `e.toString()` 写 `AirDbgLog.dKey("AIRDBG", …)`（堆栈另存 `AIRDBG_STK`，只存一次）。
⇒ r5c039 的 NPE 会**中止 drawAirForce 的整帧绘制**（`drawAirportIcons / drawAirForceRadarIcons / drawAirForceBuildingIcons / drawAirForceMissions / drawAircraftRadar` 全在同一 try 内），
⇒ **连己方航线也看不见**——与用户「还是不可见」一致。
（核查：`r5c038b` 抓样里 `NullPointerException`/`AIRDBG_STK` 均为 **0**，因那一版 helper 是 NPE-safe 的；NPE 是 r5c039 重写引入的，故从未在抓样里出现。）
**后续排查利器**：以后凡空军不显示，先在 key 文件里 `grep -a 'NullPointerException\\|AIRDBG_STK'`。
### 32.3 门禁升级（⑳ → 定点极性 ㉑/㉒）
- **㉑**：`sget airDetSeen` 之后首条 if 必须是 `if-eqz v1, …`，跳转目标块含 `targetProvinceID`，fall-through 含 `contains`；
- **㉒**：`Set;->contains` 的 `move-result` 之后首条 if 必须是 `if-eqz v0, …`，且 fall-through 含 `const/4 v0, 0x1`。
- **负样本 `r5c039`**：㉑ 报 `if-nez v1`、㉒ 报 `if-nez v0` ⇒ **恰好 2 FAIL**（与审查预测一致）；**正样本 `r5c039a`** ⇒ **0 FAIL**。
### 32.4 产物
| 批次 | dex md5 | apk md5 | 状态 |
|---|---|---|---|
| r5c039 | `755dd71c…` | `292932f3…` | ❌ 两处反写（已作废） |
| **r5c039a** | **`4dae256ce5fd08ba988c34996f046de8`** | **`b523da5112630eb21cdab01177deb9b8`** | ✅ **现役**（`Success` + DEX MATCH；⑯⑭⑮⑰⑱⑲⑳㉑㉒ 全 0；八件套 Δ=0） |
### 32.5 待确认（记入待办，暂不改）
- 审查 §8 读出的原版逻辑："**已被我方拦截机咬住（`hasActiveChaser`）且尚未入 `airDetSeen` 的任务不再走雷达点亮**"。
  需确认设计口径：若希望"有拦截机飞过去也算看见"，则这是**漏标记**，应在 chaser 分支也 `airDetSeen.add`。
'''.replace('{TS}', TS)

LAWS_TXT = u'''
### {TS}（r5c039a 批）新增
- **【60】同一段新代码里的多条 guard 极性能"互相遮蔽"**：r5c039 的 `myOrDetectedMission` 两条 `if-nez` 恰好让"已侦测"整条路失效，同时又制造了 **NPE 路径**；
  **只修一条会翻成另一个极端**（未侦测 ⇒ 恒真＝全图透视）⇒ 判空/判定类 guard **必须成对复核、成对修改、成对写门禁**。
- **【61】本作 `ProvinceDrawArmy.drawAirForce` 全方法包 `.catch Throwable`**，异常⇒`AirDbgLog.dKey("AIRDBG", e.toString())`＋一次性 `AIRDBG_STK` 堆栈。
  ⇒ **空军不显示时，先在 key 文件 grep `NullPointerException` / `AIRDBG_STK`**：有异常＝绘制被整段中止（连己方也看不见）；无异常＝可见性判据/来源问题。
'''.replace('{TS}', TS)

HAND_TXT = u'''
- **批次 `r5c039a` 已装机**（dex `4dae256c…` / apk `b523da51…`，`Success` + DEX MATCH）：修 r5c039 的 `myOrDetectedMission` 两处反写
  （`if-nez v1`→`if-eqz v1`、`if-nez v0`→`if-eqz v0`；同时消除 `airDetSeen==null` 时的 NPE）。门禁新增 **㉑/㉒**（定点极性），负样本 r5c039 报 2 FAIL、正样本 0 FAIL；八件套 Δ=0。
  备忘：**空军不显示先 grep `NullPointerException`/`AIRDBG_STK`**（drawAirForce 全方法 catch Throwable，异常会整段中止绘制，连己方也看不见）。
  **下一步抓样**：①`inDE_A..F` 到哪一档；②`nDR_DET` 是否 >0；③肉眼能否看到 AI 轰炸机（打我方省者必见）；④key 文件里应无 NullPointerException。
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


append(PLAN, PLAN_TXT, '## 32. P1c-3：修 r5c039 引入的两处反写')
append(LAWS, LAWS_TXT, '【60】同一段新代码里的多条 guard 极性能')
append(HAND, HAND_TXT, '批次 `r5c039a` 已装机')
print('DONE', TS)