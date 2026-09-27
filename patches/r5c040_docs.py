# -*- coding: utf-8 -*-
# r5c040_docs.py —— 落盘：airhqKey 根因（飞机不真飞/拦不住）+ 探针换通道 + 门禁㉓ + 铁律62/63
import io, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
LAWS = '/sdcard/GLG/历史23/铁律与教训_常驻速查_v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
TS = time.strftime('%Y-%m-%d %H:%M')

PLAN_TXT = u'''
## 33. r5c039a 抓样判读 + "飞机不真飞/拦不住"根因 + 批次 r5c040（{TS}）
### 33.1 r5c039a 抓样判读
| 观测 | 值 | 结论 |
|---|---|---|
| `NullPointerException` / `AIRDBG_STK` | **0 / 0** | 上批 NPE 已消失 ✓ |
| `nDE_ENTER` | 279 | 方法在跑 |
| **`inDE_A..F`** | **全 0** | ⚠️ **不是功能没走到，而是探针通道被节流吞掉**（见 33.2） |
| `nDR_DET` | 0 | 侦测仍未成功 |
| 肉眼 | **敌方航线可见** ✓ | "目标是我方省 ⇒ 可见"生效 |
| 中立国 | 不再被炸 ✓ | `isAtWar` 过滤生效 |
### 33.2 踩坑：`logOnce` 是**全局 500ms 节流**，探针不能用它
`AirDbgLog.logOnce` 用**单个静态 `tickMs`**：`now - tickMs < 500` 直接 return（先到先占窗口）。
`nDE_ENTER` 在 `detectEnemyMissions` 方法开头每帧调用 ⇒ **恒占窗口** ⇒ 同帧内更靠后的 `inDE_A..F` 永远打印不出来（279 次 ≈ 279×0.5s 正好吻合）。
**正解**：探针走 **`AirDbgLog.e5i(String,I)`**（内部走 `dKey` → 共享 StringBuilder 缓冲、仅按 500ms 落盘、**不丢失键**）。本批已把 6 个探针全部换成 `e5i`。
### 33.3 根因：AI 任务的 `airhqKey` 为 null ⇒ 永远拿不到"空军师"
```
AFM.dedupAirhqDivision(AirMission) 第 12–13 行：
  iget-object v7, m, AirMission->airhqKey
  if-eqz v7, :cond_94        ← airhqKey == null ⇒ 直接 return（什么都不做）
```
- 没有 airhq 师 ⇒ `AirMission.moveDivisionAlongFlight()` 首句 `if (airhqDivision == null) return` ⇒ **空转**
  ⇒ `airDivisionAtProvinceID` 永不更新（`um_mv0 … at=-1 hq=0`）⇒ 雷达侦测不可能成功、飞机也不"真飞"、自然**不会被拦截**。
- 引擎原意：`syncAirDivisionAirport(机场)`（由 `Airport.updateBuild()` 在**飞机产出时**调用）会为每个机型建"airhq 师"
  （键 = `airhqKey4(civ, 机场省, 机型序号, 1)`；机型序号=1(BOMBER) 时即 3 段键 `airhq_civ_prov`）。
  而 `AirMission.getAirDivKey()` 的回退值也正好是这个 3 段键 ⇒ **只要把 `airhqKey` 填上，整条链就活了**。
### 33.4 批次 r5c040 内容（已装机）
| # | 内容 | 说明 |
|---|---|---|
| **A** | AFM 新增 `public static tagAirhqKey(AirMission, Airport, int typeOrdinal)`：`airhqKey==null && sourceProvinceID>=0` 时写入 `airhqKey(civ, sourceProv, type)`；在 **AI 派发两条分支**（轰炸 type=1 / 巡逻 type=2）各调一次 | 让 `dedupAirhqDivision` 能命中 ⇒ 有师可动 ⇒ 真飞＋可拦截＋雷达可侦测 |
| **B** | 6 个探针 `logOnce` → **`e5i`**（无节流通道） | 下次抓样才能真正看出卡在哪道门 |
| **门禁** | 新增 **㉓**（AI 派发必须给任务打 airhqKey：定义存在 + 两条调用）；负样本 `r5c039a` ⇒ FAIL，正样本 `r5c040` ⇒ 0 FAIL | 防回归 |
### 33.5 产物
| 批次 | dex md5 | apk md5 | 状态 |
|---|---|---|---|
| r5c039a | `4dae256c…` | `b523da51…` | 上一版 |
| **r5c040** | **`930f8e6c0f210c77d8cdfa13a07b7111`** | **`9d3d1c214ae1ca867cc3f680eb10d021`** | ✅ 现役（`Success` + DEX MATCH；门禁⑯⑭⑮⑰⑱⑲⑳㉑㉒㉓ 全 0；八件套 Δ=+3 ＝ 新 helper 1 + 两处调用 2） |
### 33.6 下次抓样的预期（可证伪）
| 观测 | 预期 |
|---|---|
| `inDE_A..F`（key 文件，`nE5` 形式） | 若全出现 ⇒ 前置门都过；缺哪档 ⇒ 卡哪道门 |
| `um_mv0 … hq=` | **应变为 1**（拿到 airhq 师了）；`at=` 会随飞行变化而非恒 -1 |
| `nRT seg new=` | 应 >0（`moveDivisionAlongFlight` 开始真正按省推进） |
| `nDR_DET` | 应 >0（雷达覆盖内被侦测） |
| 肉眼 | AI 飞机**真的从机场飞出来**（机师图标/航线移动）；你的战斗机**能起飞拦截** |
'''.replace('{TS}', TS)

LAWS_TXT = u'''
### {TS}（r5c040 批）新增
- **【62】探针绝不能用 `AirDbgLog.logOnce`**：它是**全局 500ms 节流**（单个静态 `tickMs`，先到先占窗口）。方法开头若已有别的 `logOnce`，同帧内更靠后的探针**永远打不出来**。
  计数型探针一律用 **`AirDbgLog.e5i(String,I)`**（走 `dKey` 缓冲，不丢键，key 文件里表现为 `nE5 <键> a=值`）。
- **【63】本作空军"实体"模型（务必牢记）**：
  1) `AFM.syncAirDivisionAirport(机场)`（由 `Airport.updateBuild()` 在飞机产出时调用）会按机型建 **airhq 师**，键 = `airhqKey4(civ, 机场省, 机型序号, 1)`，机型序号 1(BOMBER) 时为 3 段键 `airhq_<civ>_<prov>`；
  2) `AFM.dedupAirhqDivision(任务)` 每秒一次，**首道门就是 `if (m.airhqKey == null) return`** ⇒ **任务的 `airhqKey` 必须非空**，否则永远拿不到师；
  3) 拿到师之后 `moveDivisionAlongFlight()` 才会真正推进（维护 `airDivisionAtProvinceID`、`airDivSeg*`），雷达侦测/拦截/迷雾/机师图标全都依赖它。
  ⇒ **任何"让 AI 出兵"的新路径，都必须同时保证 `airhqKey` 有值**（本批在 AI 派发两条分支各补一次）。
'''.replace('{TS}', TS)

HAND_TXT = u'''
- **根因（飞机不真飞 / 玩家战斗机不拦截）**：`AFM.dedupAirhqDivision` 首道门 `if (m.airhqKey == null) return` ⇒ AI 任务此前 `airhqKey` 恒为 null ⇒ 永远拿不到 airhq 师 ⇒ `moveDivisionAlongFlight` 空转（`at=-1 hq=0`）⇒ 不真飞、不可拦截、雷达也侦测不到。**已修**（批次 `r5c040`）。
- **探针通道**：`logOnce` 有全局 500ms 节流（`nDE_ENTER` 恒占窗口，导致 `inDE_A..F` 全 0）；已全部改用 `e5i`。
- **批次 `r5c040` 已装机**（dex `930f8e6c…` / apk `9d3d1c21…`，`Success`+DEX MATCH）：`AFM.tagAirhqKey` ＋ AI 派发两处调用；门禁 **㉓** 新增；八件套 Δ=+3。
- **下次抓样看**：`nE5 inDE_*`（探针档位）、`um_mv0 … hq=`（应为 1）、`nRT seg new=`（应 >0）、`nDR_DET`（应 >0）、肉眼（AI 飞机真飞 + 我方拦截）。
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


append(PLAN, PLAN_TXT, '## 33. r5c039a 抓样判读')
append(LAWS, LAWS_TXT, '【62】探针绝不能用')
append(HAND, HAND_TXT, '根因（飞机不真飞 / 玩家战斗机不拦截）')
print('DONE', TS)