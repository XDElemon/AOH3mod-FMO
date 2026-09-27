# -*- coding: utf-8 -*-
# r5c038_docs.py —— 落盘：P1c 施工记录（r5c038 → r5c038a）+ 新铁律 + 交接登记
import io, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
LAWS = '/sdcard/GLG/历史23/铁律与教训_常驻速查_v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
TS = time.strftime('%Y-%m-%d %H:%M')

PLAN_TXT = u'''
## 29. P1c 施工记录：敌方空情可见性（批次 r5c038 → r5c038a）（{TS}）
### 29.1 落地内容
| # | 内容 | 位置 |
|---|---|---|
| **C1** | 新增 `AFM.curAirRealX/curAirRealY(AirMission)I`：以 `sourceProvinceID→targetProvinceID` 的 **`getCenterX_Real/getCenterY_Real`（Real 域）** 按 `flightProgress` 插值，`RETURNING` 时取 `1-p`；无效返回 `-1`。替换 `PlayerFogOfWar.detectEnemyMissions()` 里"`iget airDivisionAtProvinceID` + `if-ltz`"死门（原 723–738 行），改为 `curAirRealX/Y` + `if-gez v13, :cond_176` | AFM（EOF 追加）、FOW（正则定点替换） |
| **C2** | 新增 `ProvinceDrawArmy.myOrDetectedMission(AirMission)Z` ＝ `isMyMission(m) \\|\\| (airDetSeen != null && airDetSeen.contains(Long.valueOf(m.missionID)))`；把 `drawAirForceMissions`(1949) 与 `drawAircraftRadar`(2994) 的**调用目标**改为它（签名相同 ⇒ 调用点零改动） | PDA |
| **门禁** | ⑭（侦测门必须走 `curAirRealX/Y`，且方法内不得再有 `iget 该字段 + if-ltz`）；⑮（两个渲染门必须调 `myOrDetectedMission`，且两层不得回退 `isMyMission`）；**⑯ 新增常驻门禁 `check_moveresult.py`**（全树 invoke 返回类型 ⇔ `move-result*` 形态） | r5c029_sitecheck.py、check_moveresult.py |
### 29.2 事故与修正（重要教训）
- **r5c038 装机后闪退**：`java.lang.VerifyError: ProvinceDrawArmy.myOrDetectedMission failed to verify: [0x13] copyRes1 v2<- result0 type=Precise Reference: java.lang.Long`
  ⇒ 根因：`Long.valueOf(J)Ljava/lang/Long;` 之后写成了 **`move-result v2`**（应为 **`move-result-object v2`**）。
- **本地八件套全绿也没抓住**（提醒原文即写明"不覆盖 ART 级 VerifyError"）⇒ 因此新增**门禁⑯**：
  在**当前含错树**上跑 ⇒ **恰好报出 1 FAIL / 5520 文件**（该点）；修正后 **0 FAIL**（负样本→正样本双向验证通过）。
- 修正批 **r5c038a**：只改这一条指令；门禁⑯=0、sitecheck⑭⑮=0、八件套 **Δ=0**（未动 invoke，符合预期）。
### 29.3 批次产物
| 批次 | dex md5 | apk md5 | 状态 |
|---|---|---|---|
| r5c038 | `7efcb1c11bfb1cfc853512f80298d631` | `0dafe2df90fa0528dae9bcb7beff8e69` | ❌ 闪退（VerifyError），已作废 |
| **r5c038a** | **`7be646c64e2ef3827a9a2961299b17c5`** | **`548b71d6e63af3907497a3aab48f2e4c`** | ✅ 已装机（`Success` + DEX MATCH） |
### 29.4 待验收（抓样）
1. `airdbg_tick.txt` 里 **`nDE_ENTER` > 0 且 `nDR_DET` > 0**（侦测首次成功）；
2. `airdbg_key.txt` 里出现 `nDR_DET civ=<AI> prov=… type=radar|airport`（`dKey` 走的那个文件）；
3. **肉眼**：AI 飞机从 AI 机场起飞 → 在途**看得见航线** → 被炸 → 返航；未被侦测的敌方任务不该出现。
### 29.5 已知限制（记入待办）
- `airDetSeen` **全树无清理点**（一旦侦测过就一直保留）⇒ "看见过就持续可见"；P2/P5 再评估是否加"任务结束即清除"。
- 雷达层 `drawAircraftRadar` 内部仍以 `airDivisionAtProvinceID` 取坐标（3010–3012）⇒ 该层对敌方任务仍画不出位置（主层已可见）；如需补，走 C2b（用 `curAirRealX/Y`）。
- AI 侧对称（`aiRadarVision`4150 / `updateAIAutoIntercept`3058,3246）仍读死字段 ⇒ **AI 仍"看不见"玩家**，属 P3/C4 范围。
'''.replace('{TS}', TS)

LAWS_TXT = u'''
### {TS}（r5c038 批，P1c）新增
- **㊽【引用/宽返回值必配对应 move-result 形态】** `invoke*` 返回 `L…;`/`[…]` ⇒ 必须 `move-result-object`；`J/D` ⇒ `move-result-wide`；`I/Z/B/S/C` ⇒ `move-result`；`V` ⇒ 不得有 move-result。
  **ART 只在真机加载类时校验，本地八件套不覆盖** ⇒ 每批必跑常驻门禁 **`check_moveresult.py`**（全树，5520 文件，~秒级）。
  事故：r5c038 把 `Long.valueOf(J)` 后的 `move-result-object` 写成 `move-result` ⇒ 进游戏即 `VerifyError` 闪退。
- **㊾【侦查/几何计算必须认清"坐标域"】** 同一地图有两套坐标：`Province.getCenterX_Real()/getCenterY_Real()`（**Real 域**，用于雷达椭圆 `calcInEllipse`、距离²比较）
  与 `ProvinceDrawArmy.getAirDrawPosX/Y(ID, scale)`（**屏幕域**，已 `(iCenterShift + mapCoords.pos) × scale`）。**两域混用＝半径/距离全错**。
- **㊿【`Game.getProvince(I)` = `lProvinces.get(ID)`，传 -1 会越界】** 任何"省份 ID 可能为负"的调用点，**必须自己先挡**（本批 `curAirRealX/Y` 就是先 `if-ltz` 再取）。
- **【51】本作部分类没有 `.end class`**（`AirForceManager`、`ProvinceDrawArmy`、`AirDbgLog`…）⇒ 新增方法**按 EOF 追加**，不要指望 `</class>` 锚点。
- **【52】`PlayerFogOfWar.airDetSeen` 全树无清理点**（只 `add`）⇒ 侦测结果会累积；做"可见性"功能时按"看见过就可见"来实现/评估，别假设它是每帧重建。
- **【53】渲染门放宽的正确姿势**：把 `isMyMission` 换成**"己方 ∨ 已侦测"**（新 helper，签名相同 ⇒ 调用点零改动、寄存器中性），不要直接删门（会变成全图透视）。
'''.replace('{TS}', TS)

HAND_TXT = u'''
- **P1c（敌方空情可见性）已施工并装机**：批次 **`r5c038a`**（dex `7be646c6…` / apk `548b71d6…`，`Success` + DEX MATCH）。
  内容：C1 `AFM.curAirRealX/curAirRealY`（Real 域插值，替换侦测死门）；C2 `ProvinceDrawArmy.myOrDetectedMission`（己方 ∨ 已侦测，替换 2 处渲染门）。
  门禁：sitecheck 新增 **⑭/⑮**；新增常驻 **`check_moveresult.py`（⑯，全树 move-result 形态对账）**。
  事故：r5c038 因 `move-result` 少写 `-object` 闪退（VerifyError），已在 r5c038a 修正 ⇒ 见铁律 ㊽。
  **下一步**：用户推回合后抓样 —— 看 `airdbg_tick.txt` 的 `nDE_ENTER`/`nDR_DET` 是否 > 0、`airdbg_key.txt` 是否有 `nDR_DET civ=… type=radar|airport`、以及肉眼是否看到 AI 航线。
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


append(PLAN, PLAN_TXT, '## 29. P1c 施工记录')
append(LAWS, LAWS_TXT, '㊽【引用/宽返回值必配对应 move-result 形态】')
append(HAND, HAND_TXT, 'P1c（敌方空情可见性）已施工并装机')
print('DONE', TS)