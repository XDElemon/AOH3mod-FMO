# -*- coding: utf-8 -*-
# r5c041_docs.py —— 落盘：§35 新旧方案对比 + §36 r5c041 施工记录 + 修 §34 标题笔误 + 铁律64/65
import io, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
LAWS = '/sdcard/GLG/历史23/铁律与教训_常驻速查_v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
TS = time.strftime('%Y-%m-%d %H:%M')

PLAN_TXT = u'''
## 35. 与旧方案对比：为什么"不做 airhq"要改成"照原版传 divKey"（{TS}）
### 35.1 旧方案（§28 C1-B）"不做"的理由，以及它为何不适用
- 旧理由：给 AI 任务发 airhq 师＝**我们自己手造的师**，假 uID 会让引擎 `updateArmy` 越界（见 `AirMission` 内 R5b004 注释，至今仍有 `key.startsWith("airhq") → skip` 的守卫）。
- **不适用**：原版路径用的师是**引擎自己建的**——`AFM.syncAirDivisionForType()`（由 `Airport.updateBuild()` 在飞机产出时按机型调用）创建，uID = 机型序号 + 7（合法），编制清单自洽；
  且 `AFM.pickIdleDivKey(airport, type)` 只会返回**该省真实存在且未被其它任务占用**的师键。⇒ 不产生假 uID，风险不适用。
### 35.2 参考实现：`AFM.a1bDispatch`（现成的 ICBM/A1 打击链）
```
key = pickIdleDivKey(ap, AirType.ATTACKER)
if (key == null) → 不出兵（跳过该机场）
if (!射程含目标) → 跳过
m = AirMission.createAttackArmy(ap, -1, target, key)     ← divKey 作为第 4 参传入
m.a1bBlind = !目标可见 ; m.a1bAuto = true
activeMissions.add(m)
```
`pickIdleDivKey` 逻辑：`for n=1..10 { key = airhqKey4(civ, 机场省, 机型ordinal, n); if (该省有此师的军队 && getAirMissionByKey(key)==null) return key } return null`.
### 35.3 我们过去的差距（三处）
| 现象 | 原因 |
|---|---|
| 任务无 airhqKey（`um_mv0 … hq=0`） | `createStrategicBombing(ap,target,**0x0**)` —— 第 3 参就是 `divKey`，我们传了 `null` |
| `tagAirhqKey` 合成键无效 | 没经过 `pickIdleDivKey` 的"存在且未占用"检查；巡逻还用了错格式（`_2` vs 引擎的 `_2_1`） |
| 飞机不真飞/拦不住/雷达侦测不到 | 无师 ⇒ `moveDivisionAlongFlight` 首句 return ⇒ `airDivisionAtProvinceID` 恒 -1 |
### 35.4 新方案（本批 r5c041 已实施）
1. **轰炸**：`key = pickIdleDivKey(ap, BOMBER)`；`key==null` ⇒ `p0K(5)` 并跳过；否则 `createStrategicBombing(ap, target, key)`。
2. **巡逻**：`key = pickIdleDivKey(ap, FIGHTER)`；`key==null` ⇒ `p0K(6)` 并跳过；否则 `createPatrol(ap, prov, key)`。
3. **删除** `tagAirhqKey`（两处调用 + 定义）。
4. **保留**渲染侧兜底（`curAirRealX/Y` 插值 + "打我方者必见"），用户确认"反正我们在测试，保留"。
5. 后续（P3）：护航/空优用 `pickIdleDivKey(ap, INTERCEPTOR/ATTACKER)` 同理补上。

## 36. r5c041 施工记录：AI 出兵按原版规矩传 divKey（{TS}）
- 改动文件：`AirForceManager.smali`（`executeAIAssignmentForAirport` 内两处派发点 + 两个新出口块 `:p0_blk5/6`；删除 `tagAirhqKey`）。
- 门禁 **㉓ 改版**：断言 AI 派发必须 `pickIdleDivKey` 取键（2 处）＋空键跳过＋全树不得残留 `tagAirhqKey`。
  **负样本 r5c040 ⇒ ㉓ FAIL**；**正样本 r5c041 ⇒ 全 0**（⑯⑭⑮⑰⑱⑲⑳㉑㉒㉓）。
- 八件套 **Δ=+1**（＋2 pickIdleDivKey ＋2 p0K −2 tagAirhqKey 调用 −1 helper 内 airhqKey invoke，人工对账一致）。
- 产物：dex **`a367f55628e27834ce6b7909470a1737`** / apk **`de359aee4fa8b508a562ffa277a8ae2c`** ⇒ 已装机（`Success` + DEX MATCH），基线已重置。
- 施工小坑：①补丁脚本 `%` 与 `+` 优先级（`%` 只绑最后一段字符串）；②出口块要插在 `.end method` **之前**（我一度插到之后，自检抓到）。
- **下次抓样（可证伪）**：
| 观测 | 期望 |
|---|---|
| `um_mv0 … hq=` | **1**（拿到师）；`at=` 随飞行变化（不再恒 -1） |
| `nRT seg new=` | **>0** |
| `nE5 nA4e k= a=5/6` | 出现＝该机场"无空闲师"（本该不出兵，属正常节流） |
| `nDR_DET` | 有雷达覆盖时应 **>0** |
| 肉眼 | AI 机师图标**真的离开机场沿航线移动**；我方战斗机/拦截机能起飞迎击 |
'''.replace('{TS}', TS)

LAWS_TXT = u'''
### {TS}（r5c041 批）新增
- **【64】原版"空军师"必须由引擎创建、按引擎键名取用**：
  `syncAirDivisionForType` 建师（键 `airhqKey4(civ,省,机型ordinal,n)`；BOMBER 的 n=1 即 3 段 `airhq_<civ>_<prov>`），
  `pickIdleDivKey(ap,type)` 取"存在且未被占用"的师键，**必须把这个键当 `divKey` 传给任务工厂**（`createStrategicBombing/createPatrol/createAttackArmy` 的第 3/4 参），
  工厂内部才会写 `airhqKey` ⇒ `dedupAirhqDivision` 才能挂上师 ⇒ 飞机才"真飞"。**自己拼键（tagAirhqKey）无用**。
- **【65】"AI 出兵"的完整必要条件（三条，缺一不可）**：①机场有对应机型飞机；②该（机场,机型）的 airhq 师已由引擎同步出来；
  ③任务创建时传入该师键。⇒ 排查顺序：先看 `nA4e k=` 出口码（1 概率/3 无靶/4 无机组/**5 无轰炸师/6 无巡逻师**），再看 `um_mv0 … hq=`。
'''.replace('{TS}', TS)

HAND_TXT = u'''
- **批次 `r5c041` 已装机**（dex `a367f556…` / apk `de359aee…`，`Success`+DEX MATCH）：
  AI 出兵改为**照原版 `a1bDispatch` 规矩**——`pickIdleDivKey(ap, BOMBER/FIGHTER)` 取空闲 airhq 师键 ⇒ 传给 `createStrategicBombing/createPatrol`（此前第 3 参传的是 `null` ⇒ 任务无师 ⇒ 不真飞/拦不住）；删除 `tagAirhqKey`。
  门禁 **㉓ 改版**（负样本 r5c040 FAIL → 正样本 0 FAIL）；八件套 Δ=+1。
- **下次抓样看**：`um_mv0 … hq=`（应 1）、`nRT seg new=`（应 >0）、`nA4e k=5/6`（无空闲师的节流计数）、`nDR_DET`、以及肉眼"机师图标真的飞出去 + 我方拦截"。
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


# 修 §34 标题里的 %s 笔误
p = io.open(PLAN, encoding='utf-8').read()
if '## 34. r5c040 抓样判读（只调研，未改代码）（%s）' in p:
    p = p.replace('## 34. r5c040 抓样判读（只调研，未改代码）（%s）', '## 34. r5c040 抓样判读（只调研，未改代码）')
    io.open(PLAN, 'w', encoding='utf-8').write(p)
    print('OK 修 §34 标题')

append(PLAN, PLAN_TXT, '## 36. r5c041 施工记录')
append(LAWS, LAWS_TXT, '【64】原版"空军师"必须由引擎创建')
append(HAND, HAND_TXT, '批次 `r5c041` 已装机')
print('DONE', TS)