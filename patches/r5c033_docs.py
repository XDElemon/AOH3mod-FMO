# -*- coding: utf-8 -*-
# r5c033_docs.py —— 落盘：r5c033（P1b AI造机+扣钱；同批人物不死 GV）
import io, os, time

PLAN = '/sdcard/GLG/历史23/r6s5/AI打击接入_调研与计划书v1.md'
HAND = '/sdcard/GLG/历史23/r6s5/交接文档_电脑端接手_v1.md'
RULES = '/sdcard/GLG/历史23/铁律与教训_常驻速查_v1.md'

S22 = u'''

---

## 22. r5c033 —— P1b：AI 造机（+玩家也扣钱）；同批交付"人物不死"【2026-09-24】

### 22.1 本批改动（依据 `r6s5/P1b_终批审计_防写反_v1.md`）
**smali（3 文件 7 项）**
| # | 位置 | 内容 |
|---|---|---|
| S1 | `Airport.startBuild`（两道 guard 之后） | 插入 `p1bChargeForBuild(p0,p1)`：**只有真正入队才扣钱**；玩家 UI 与 AI 共用此路径 ⇒ "玩家也扣钱"只需一处 |
| S2 | `Airport.p1bCost(AirType)I` | 照 `getBuildTime` 守卫写法取 `AircraftTypeData.CostGold`；取不到返回 -1 |
| S3 | `Airport.p1bPickAffordable(Airport,AirType)AirType` | 可负担阶梯 `[首选, ATTACKER, FIGHTER, INTERCEPTOR]`；全买不起返回 null |
| S4 | `Airport.p1bChargeForBuild(Airport,AirType)V` | 成本≤0 不扣；否则 `int-to-float`→`neg-float`→`Civilization.addGold(负)` |
| S5 | `AFM.update(I)` 第一圈（`updateBuild()` 之后） | `invoke-direct {p0,v2} updateAIBuildUp(v2)` |
| S6 | `AFM.updateAIBuildUp(Airport)V`（private） | 仅 AI、非建造中、空队列 ⇒ 补 **1 架**；机型=轰炸机占比<50%→BOMBER 否则 ATTACKER，再经 S3 取"买得起"的 |
| S7 | `AirDbgLog.p0Gold(int,String)V` | 探针：打印该 civ 的 `fGold` |

**资源（人物不死，GV 方案）**
- `GV_Advisors.json`：`CHANCE_OF_DEATH` 15 项 → **全 0**（覆盖 7 个 `RulersManager.characterDies` 调用点）
- `GV_GameUpdate.json`：`GAME_UPDATE_DEATH_RULER_MIN_TURN_ID` 3985 → **999999999**
- 刻意**不动** `..._EVERY_X_DAYS`（参与 `%` 取模，设 0 会除零）；注入由 `rebuild_v119fix.py` 完成（已核实设备侧 apk 内生效）

### 22.2 判据方向（D1–D9，全部经 dex 级门禁逐条 PASS）
无玩家⇒跳过(`if-eqz`)、非玩家机场才处理(`if-eq`)、正在建造⇒跳过(`if-nez`)、队列非空⇒跳过(`if-gtz`)、轰炸机占比<50%⇒BOMBER(`if-lt`)、买不起⇒跳过(`if-nez`)、入队失败⇒不记探针(`if-eqz`)、阶梯内钱不够⇒下一档(`cmpg-float`+`if-ltz`)、成本≤0⇒不扣(`if-lez`)。

### 22.3 门禁与产物
- **新增门禁** `r5c033_sitecheck.py`（语义级、不依赖标签名）：上版 r5c031 dex ⇒ **7 FAIL**；本批 ⇒ **0 FAIL**（D1–D9 全 PASS）。
- `check_arity` BAD=0；八件套 Invoke/Regs/Init/Range BAD=0，白噪不变，`Sig 152646→152661`。
- **Δ 对账**：逐条 diff 三文件 invoke ⇒ 新增 **18 条**，全部设计内（hook1、updateAIBuildUp7、p1bCost1、p1bPickAffordable2、p1bChargeForBuild3、p0Gold2、startBuild内1、ordinal+1）。（八件套的 "Sig Δ=+15" 是另一口径，两者都无"意外 invoke"。）
- 产物：dex `3c4b58519e5bd8c3728faa02fcc1680d`／apk `1c67e117…`（`build_apk/dbg_signed77_v119_r5c033.apk`）。
- **装机：✅ DEX MATCH=1；设备 apk 内 `CHANCE_OF_DEATH=[0×15]`、`MIN_TURN_ID=999999999` 已核。**

### 22.4 待实测（用户跑档后抓样）
1. `p1bT`（选中的机型 ordinal）与 `p1b`（扣钱后的金）应周期性出现；`p1b` 的数值应**阶梯下降**；
2. `nA2m` 的 `q/rem` 应出现 >0（AI 真在造）；数回合后 `bm`（轰炸机）应上升；
3. 与 AI 开战时：`nA4d war=1` → `nA4v cand/vis` → **`nA4e k=0`**（首次成功派发）→ `nA5b`；
4. 人物不死：元首/顾问/将领不再死亡（老档是否重读 GV 待确认；若不重读则只对新档生效）。
'''

RULES_ADD = u'''

## ㉛ 补丁脚本的"防重复"断言要检查**方法定义头**，不要检查裸方法名（2026-09-24 新增）
- 真踩：先插入"调用 `p1bChargeForBuild`"，再断言 `'p1bChargeForBuild' not in 文件` ⇒ **自己撞自己**，补丁在第 2 步中止。
- 正确写法：断言 `'.method public static p1bCost(' not in 文件`（检查定义头）。

## ㉜ smali 锚点必须连"空行样式"一起比对（2026-09-24 新增）
- 真踩：以为 `:cond_20` 与紧随的指令之间有空行，实际是 **标签后无空行**（`':cond_20\\n    invoke-static ...'`）。
- 办法：**用 repr 打印目标行附近的原始字节**再定锚点（本轮即用此法修好），不要凭 dump 的视觉印象写锚点。

## ㉝ 八件套 `Sig Δ` 与"invoke 指令数 Δ"是两个口径（2026-09-24 新增）
- 本批：`Sig Δ=+15`，而逐条 diff 得新增 invoke 指令 **18** 条。
- 结论：**以逐条 diff 为准**做设计内对账（列出每一条新增 invoke 的来源），`Sig` 只用于"是否有意外改动"的粗判。
'''

HAND_ADD = u'''

---

### 追加登记：r5c033（P1b AI造机 + 玩家也扣钱；同批人物不死）【2026-09-24】
- 改动：`Airport`（startBuild 内扣钱 + 3 个新方法）、`AirForceManager`（update(I) hook + private updateAIBuildUp）、`AirDbgLog`（p0Gold 探针）；资源：`GV_Advisors.json`（CHANCE_OF_DEATH 全 0）、`GV_GameUpdate.json`（MIN_TURN_ID 999999999），由 rebuild 注入。
- 门禁：新增 `r5c033_sitecheck.py`（上版 dex 7 FAIL / 本批 0 FAIL）；arity BAD=0；八件套 BAD=0（Δ 已逐条对账）。
- 产物：dex `3c4b5851…` / apk `1c67e117…`；**装机 ✅ DEX MATCH=1**，日志与基线已重置。
- 新探针：`p1bT`（选中机型）、`p1b`（扣钱后的金）；既有 `nA2m` 继续看机队。
- 下一步：用户跑 5~10 回合（最好含与 AI 开战）→ 抓样判读（见计划书 §22.4）。
'''


def ap(path, marker, text):
    t = io.open(path, encoding='utf-8').read()
    if marker in t:
        print('SKIP %s' % os.path.basename(path)); return
    io.open(path, 'a', encoding='utf-8').write(text)
    print('OK   %s' % os.path.basename(path))


ap(PLAN, '## 22. r5c033', S22)
ap(RULES, '## ㉛ 补丁脚本的', RULES_ADD)
ap(HAND, 'r5c033（P1b AI造机', HAND_ADD)
print('DONE', time.strftime('%m-%d %H:%M'))