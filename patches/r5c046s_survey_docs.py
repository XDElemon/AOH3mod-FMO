# -*- coding: utf-8 -*-
# r5c046_survey_docs.py —— 调研：r 版三条症状定位（玩家自动打击/按钮/AI逻辑）+ 工程树风险
import os, time
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
DOC=os.path.join(R6S5,'调研_r5c046s_r版三症状定位_v1全量.md')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')
TS=time.strftime('%Y-%m-%d %H:%M')

SURVEY = '''# 调研（第一轮·全量）：r 版"玩家自动打击失效 / 按钮没反应 / 套着 AI 逻辑"
> 时点 ''' + TS + ''' ｜ 设备＝**r**（apk `95b8bc04…`／dex `dfd4e7cd…`）｜ **本回合只调研，不写码**
> 触发：用户误在另一对话推进了 n→r，怀疑"改坏了"；要求核对并定位。

## 0. 先给结论（三句话）
1. **没有改坏别处**：m→r 只改了 **3 个类**（`AirDbgLog` / `AirForceManager` / `InGame_AirForceOptions$BtnMission`），其中 AFM **只改了 `executeAIAssignment(I)V` 一个方法**；我们的 m 批（`a1ShootAir`）、P2b（机场绑定）、航线守卫**全部在位**。
2. **"玩家轰炸机套着 AI 逻辑"是真实存在的**：`BtnMission` 有一个 **`missionType==2`＝"AI 接管"分支**，它把机场设成 `Mode.AI` **并立即以玩家文明执行 `executeAIAssignment(玩家civ)`**；而派发门里 **`mode==AI` 是无视 `autoStrikeOff` 开关、直接派发**的。
3. **"按钮没反应"是 q 代的已修 bug**：q 版 `pickAirport` 在"取列表为空"时**短路**，导致每次按键都返回 null（q 场次实测 `afp:ent`=24、`afp:`=24、`afp:press ap=`=0）；r 已重写为 4 级兜底。**且设备日志大小＝r 装机基线 `1169328671` ⇒ r 装完后尚无任何新日志（还没实测）**。

## 1. 差异取证（m → r，标签归一化后逐文件比对）
| 项 | 结果 |
|---|---|
| 文件总数 | A(m)=5520 ｜ B(r)=5520，**仅 A 有 0／仅 B 有 0** |
| 内容不同 | **3 个**：`AirDbgLog.smali`、`AirForceManager.smali`、`InGame_AirForceOptions$BtnMission.smali` |
| AFM 内变动方法 | **仅 `executeAIAssignment(I)V`**（= n 批的 E1/E2/E3：`if-ltz v4`→`if-gez v4`、`if-ne v3,v4,:跳过`→`:派发`、新增 `iget-boolean autoStrikeOff`+`if-nez`） |
| AirDbgLog | o-A：`p0Air` dump 追加 ` strike=` |
| BtnMission | o/p/q/r：`actionElement`（探针＋pickAirport）、`getTextToDraw`（改用 `pickAirport(2)`）、**新增 `pickAirport(I)`** |
| 我方 m 批 | `AirMission.a1ShootAir` 出现 3 次（定义+2 调用）⇒ **空战修复未被回退** ✅ |
> 复核工具：`/sdcard/GLG/历史23/cmp_dex_trees.py`、`cmp_methods.py`（标签归一化，能穿透"装配后标签重编号"）。

## 2. 症状①："玩家侧自动打击没有用了" —— 三个可能路径（按可能性排序）
派发门（AFM `executeAIAssignment`，r 版实测）：
```
mode == AI                        ⇒ 派发（★ 无视开关）
playerCiv < 0（无玩家/观战）        ⇒ 派发
airport.civID == playerCiv 且 autoStrikeOff == 0 ⇒ 派发（开关"开"）
其余                                ⇒ 跳过
```
| # | 可能原因 | 证据 | 判定方法 |
|---|---|---|---|
| ①**机场处于 `mode==AI`** | 门里 `mode==AI` 直接派发，**绕过开关**；`BtnMission` missionType2 分支正是设 `Mode.AI` + `executeAIAssignment(玩家civ)` | 抓样看 `nA2m` 里的 `mode=` 与 ` strike=`：`mode=2(AI)` ⇒ 开关不会起作用 |
| ②开关实际是关（`autoStrikeOff=1`） | 门②要求玩家机场 `autoStrikeOff==0` 才派发 | ` strike=`（o-A 探针）读该机场开关：1=关 |
| ③按钮没把开关翻过去 | q 代 `pickAirport` 恒 null（已被 r 修） | r 的 `afp:strike new=` 是否出现 0/1 |

## 3. 症状②："玩家轰炸机还套的是 AI 打击的逻辑" —— 已确认成因
两条线要分清：
- **智能线（我方做的 a1\*）**：`strikeTick_A1(p0)` → `a1Scan/a1bScan`（军建优先、tier/score、K=3、FRQ、P 骰、机场绑定）。**该线在 `strikeTick_A1` 里显式跳过玩家文明**（`if-eq p0, playerCiv, :ret`）⇒ **玩家飞机不会走智能线**。
- **共享指派例程（"AI 那套"）**：`executeAIAssignmentForAirport(airport)`：
 `Random.nextFloat()`（10% 骰，日志 `nA2L`）→ `isAtWar` → **`aiPickVisibleTarget(...)`＝随机可见目标** → `pickIdleDivKey` → `createStrategicBombing`；和平分支用 `getRandomBorderProvince`+巡逻。
 ⇒ 玩家机场（开关开、或 `mode==AI`）走的就是这条 —— 这就是你体感里的"AI 打击逻辑"（老随机选靶）。
⇒ **若你希望玩家的自动打击也用"智能选靶"，需要对玩家放开 a1 线或给老路加选靶——属新功能，需你拍板。**

## 4. 症状③："自动打击/自动巡逻按钮按了没反应"
- **q 代实测（r 文档 §84.1）**：`afp:ent`=24（点击 100% 进类）但 `afp:`=24（pickAirport 每次 null）、`afp:press ap=`=0 ⇒ 按键被"静默吞掉"。
- **根因**：q 版 `pickAirport` 先取列表、**列表为空立即 null**，轮不到"省反查"（省反查不依赖列表）。
- **r 的修法**：重写 `pickAirport(I who)`：`size<=0` 不再短路；①`iActiveID`→列表 ②`selectedAirportProvinceID`→反查 ③`Game.iActiveProvince`→反查 ④`list[0]`；失败才 null，并带原因探针 `afp:n=who*10+{1 player空,2 AFM空,9 全失败}`。
- **判读注意（本轮发现）**：成功来源探针 `afp:src` **只在兜底路径②③④打印**；走路径①（列表命中）时 `pickAirport` **直接 return，不打 src** ⇒ 看到"无 `afp:src` 但有 `afp:press ap=`"属**正常**。

## 5. 本轮另发现（建议登记为待修）
1. **`missionType==2`（AI 接管）分支仍用旧钳位取机场**（`iActiveID<0⇒0`、`>=size⇒0`），未走 `pickAirport(1)` ⇒ 未选中机场时会把 **`list[0]`** 设成 AI 模式（与打击/巡逻键"以你打开的那个机场为准"不一致，容易让人以为"按了没反应"）。
2. `actionElement` 顶部仍有"玩家机场列表为空 ⇒ 静默 return"（无探针）——属正常但不可观测。
3. 工程树风险（见 §6）。

## 6. ★工程树风险（这就是"下次再改就会改坏"的机制）
- 现行工程树 `/tmp/w3a/smali` **停在 m 状态**（AFM 里 `autoStrikeOff` 仅 2 处、`BtnMission` 无 `afp:*` 探针）⇒ **缺 n→r 的全部改动**。
- 若继续在此树打补丁再汇编，会把 **n→r 静默回退**（真·改坏）。
- **本轮已建 r 基线工程树**：`/tmp/w3a_r/smali`（由 r 的 dex 反汇编，5520 文件；已校验：AFM `autoStrikeOff`=3、BtnMission 有 `afp:src`、AirMission 有 `a1ShootAir`）⇒ **后续补丁一律指向 `/tmp/w3a_r/smali`**。

## 7. 待用户裁决（4 项）
1. **`mode==AI` 是否继续无视开关**？（a 保持现状"AI 接管=全权交给 AI"；b 开关也管 AI 模式；c 对玩家禁用/改造"AI 接管"键）
2. **玩家自动打击是否改用智能线**（a1Scan 目前显式跳过玩家）？（a 不改，维持老随机选靶；b 对玩家放开智能线）
3. **"AI 接管"键是否也统一走 `pickAirport`**（避免未选中时误改 `list[0]`）？
4. 是否要我**立刻做一次 r 实测抓样**（你按一次「自动打击」＋一次「自动巡逻」即可，六探针一次打全）？

## 8. 附：r 实测判读表（一次按键即可定位）
| 现象 | 结论 |
|---|---|
| `afp:ent` 无 | 点击未进类（另查 `Menu.actionElement` 元素 id 归属） |
| `afp:ent` → `afp:n=11` | 玩家对象为空 |
| `afp:ent` → `afp:n=12` | AFM 实例为空 |
| `afp:ent` → `afp:n=19` | 4 级兜底全失败（无机场/省反查均失败） |
| `afp:ent` → `afp:mt=1` → `afp:press ap=<省>` → `afp:strike new=<0/1>` | 打击键成功：` strike` 已翻转（0=开、1=关） |
| `afp:ent` → `afp:mt=0` → … | 巡逻键（文本随 `mode==PATROL` 变） |
| 只有 `afp:ent` | 中途 return 或异常（异常被 `Menu.actionElement` 的 catch 吞掉 ⇒ 需 logcat） |
'''

PLAN_SEC = '''

---

## 85. 【第一轮全量调研】r 版三症状定位（玩家自动打击 / 按钮 / "套着 AI 逻辑"）
### 85.1 差异取证（m→r 只动 3 个类）
`AirDbgLog`（` strike=` 探针）｜`AirForceManager`（**仅 `executeAIAssignment` 一个方法**，即 n 批门）｜`BtnMission`（探针＋`pickAirport`）。
其余 5517 个类逐字未动；我方 m 批 `a1ShootAir`、P2b 绑定、航线守卫**全部在位** ⇒ **无"改坏别处"**。
（工具：`cmp_dex_trees.py` / `cmp_methods.py`，标签归一化比对，可穿透装配后的标签重编号。）
### 85.2 症状地图
| 用户症状 | 代码事实 | 状态 |
|---|---|---|
| 玩家自动打击没用 | 门：`mode==AI ⇒ 派发（无视开关）`；`玩家机场 且 autoStrikeOff==0 ⇒ 派发` | 需实测看 ` strike=`/`mode=` |
| 玩家轰炸机套 AI 逻辑 | 玩家机场走**共享 AI 指派例程** `executeAIAssignmentForAirport`（10% 骰 + `aiPickVisibleTarget` 随机可见目标）；智能线 `a1Scan/a1bScan` 在 `strikeTick_A1` **显式跳过玩家** | **确认成立**（是否为问题待裁决） |
| 两按钮没反应 | q 代 `pickAirport` 列表空即短路（q 实测 `afp:press`=0）；r 已重写为 4 级兜底 | 待 r 实测 |
### 85.3 新发现待修
① `missionType==2`（AI 接管）分支仍用旧钳位 ⇒ 未选中时误改 `list[0]`；② `actionElement` 顶部"无机场静默 return"无探针。
### 85.4 工程树风险（重要）
现行工程树 `/tmp/w3a/smali` **停在 m**，缺 n→r；继续用它会**静默回退** n→r。
**已建 r 基线树 `/tmp/w3a_r/smali`**（从 r dex 反汇编，5520 文件，关键点校验通过）⇒ 后续补丁改指此树。
### 85.5 待裁决
①`mode==AI` 是否无视开关？②玩家自动打击是否改用智能线？③"AI 接管"键是否统一 `pickAirport`？④是否立刻做 r 实测抓样？
'''

INCR_ADD = '''
## 29. 调研：r 版三症状定位（不写码）
- 差异取证：m→r 仅 **3 个类**变化（AirDbgLog / AirForceManager〔仅 executeAIAssignment〕/ BtnMission）；其余 5517 类逐字未动；我方 m 批 `a1ShootAir` 等**全部在位** ⇒ 无"改坏别处"。
- 症状①玩家自动打击没用：门里 `mode==AI ⇒ 派发（无视开关）`；玩家机场需 `autoStrikeOff==0` ⇒ 需实测 ` strike=`。
- 症状②"套着 AI 逻辑"：`BtnMission missionType==2`（AI 接管）把机场设 `Mode.AI` 并立即 `executeAIAssignment(玩家civ)`；玩家机场走共享例程（`aiPickVisibleTarget` 随机选靶）；智能线 `strikeTick_A1` 显式跳过玩家 ⇒ 确认成立。
- 症状③按钮没反应：q 代 `pickAirport` 短路（q 实测 `afp:press`=0），r 已修；设备日志＝r 基线 ⇒ **r 尚未实测**。
- 设备＝r（`95b8bc04…`/`dfd4e7cd…`）；**已建 r 基线工程树 `/tmp/w3a_r/smali`**（旧树 `/tmp/w3a/smali` 停在 m，继续用会回退 n→r）。
- 待裁决：mode==AI 是否无视开关／玩家是否用智能线／AI键是否统一 pickAirport／是否立刻实测抓样。
'''

def main():
    open(DOC,'w',encoding='utf-8').write(SURVEY)
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC)
    open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    print('[OK] survey=%d plan=%d incr=%d' % (os.path.getsize(DOC), os.path.getsize(PLAN), os.path.getsize(INCR)))

if __name__ == '__main__':
    main()