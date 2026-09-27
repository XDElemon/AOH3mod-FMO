# -*- coding: utf-8 -*-
# r5c029_docs.py —— 把 r5c029（极性三修）事实落盘：计划书 §17 + 交接文档 + 铁律 ㉒㉓㉔㉕
import io, os, time

WS = '/sdcard/GLG/历史23'
PLAN = WS + '/r6s5/AI打击接入_调研与计划书v1.md'
HAND = WS + '/r6s5/交接文档_电脑端接手_v1.md'
RULES = WS + '/铁律与教训_常驻速查_v1.md'

S17 = u'''

---

## 17. r5c029 —— P1a 极性三修（子代理审查报告落地）【2026-09-24】

### 17.1 起因
r5c028 的只读审查（子代理，输入 `build_inputs/review_p1a/QUESTIONS.md`）产出了报告，逐条指出 P1a 判据链上**仍有 3 处极性反写**（我 r5c026 写、r5c027 只修了其中一处）：

| # | 位置（r5c028 行号） | 反写形态 | 实际后果 | 修正 |
|---|---|---|---|---|
| FIX-1 | `executeAIAssignment(I)V`:2887 | `if-gez v4`（=v4>=0 才跳） | 有玩家 ⇒ 跳去"跳过块" ⇒ **AI 机场永不派发**；反而观战模式全派发 | → `if-ltz v4` |
| FIX-2 | `executeAIAssignmentForAirport`:1037 | `if-ltz v0`（=v0<0 才跳） | 概率门 10%/90% **反置**（实为 ~90% 派发） | → `if-gez v0` |
| FIX-3 | 同方法:1060 | `if-gez v3`（=v3>=0 才跳） | 有合法目标 ⇒ 放弃；无目标(-1) ⇒ **把 -1 传给 `createStrategicBombing`**（高危畸形任务） | → `if-ltz v3` |

**逐条核实方式（不靠"报告说"）**：读实树 + 读 `:p0_blk1`/`:p0_blk3`/`:cond_20` 三个跳转目标块的实际内容（放弃块含 `p0K(1|3)+return-void`；继续块含 `add-int/lit8 v1,v1,#1`）。三条报告**均成立**。

### 17.2 本批改动
- 文件 `aoc/kingdoms/lukasz/map/battles/AirForceManager.smali`，**只换 3 行操作码**（指令条数不变、无新增/删除指令、`.registers` 未动）。
- 备份 `AirForceManager.smali.pre_r5c029`；补丁 `r5c029_fix.py`（含唯一性断言 + 三处"不许动"保护断言）。
- 探针**全部保留**（`nA2s/nA2t/nA2u/nA2m/nA4d/p0V/p0K/nA5b`），因为下一步抓样要用 `nA2t` 定案"空列表"假设。

### 17.3 新增门禁：`r5c029_sitecheck.py`（dex 级定点极性门禁，语义级）
- 唯一真值＝产物 dex 经 baksmali 反汇编后的**指令序列**；断言"上下文指令 ⇒ 必须的 if 极性 ⇒ 该 if 的跳转目标块必须含预期指令"。
- **不依赖标签名**（baksmali 会把 `:p0_disp` 重命名成 `:cond_45`）。
- 铁律⑲执行记录：先在**已知有 bug 的 r5c028 dex** 上跑 ⇒ 精确报出 3 个 FAIL（②a/③/④）+②b/⑤ PASS；再在 r5c029 dex 上跑 ⇒ **失败点 = 0**。

### 17.4 门禁与产物
| 项 | 结果 |
|---|---|
| `r5c029_fix.py` | 3 处落位 ✅（唯一性断言 + 保护断言全过） |
| `r5c029_sitecheck.py` | r5c028 dex：3 FAIL（预期）；r5c029 dex：**0 FAIL** ✅ |
| `check_arity.py` | BAD=0（WARN=3 历史白噪） |
| 八件套 | Invoke/Regs/Init/Range BAD=0；MISSING=14/Cast=50/Undef=4 = 白噪基线；`Sig 152638→152638（Δ=0，因只换操作码）` |
| `check_dangling.sh`（dex） | 真悬空 = 0 |
| `incr_audit.py` | 对 FIX-2/FIX-3 报"应为 if-eqz"⇒ **已知假阳性**（Q4 只认判空形态；这两处是数值比较） |
| dex | `df112f5aab6f73fbd43aa2bb65803d84` |
| apk | `0e80f3df…`（`build_apk/dbg_signed77_v119_r5c029.apk`，738,374,836 B，Earth3=18510） |
| 装机 | ✅ `DEX_MATCH=1`（设备 dex md5 与本地一致） |

### 17.5 子代理报告里另一条**待验证**结论（nA2t 就是它的判据）
报告给出静态推理：`nA2s`（入口）能打出来、循环体不执行，唯一自洽解释是该 civ 在 `allAirports` 里**只有空壳 key**（`getAirportsForCiv` 取不到就 `new` 一个空 List；`syncAirports`/`unregisterAirport` 只 `List.remove()` 不删 map key）⇒ 第一层原因是 **AI 侧没有可用机场**（不是循环语法问题）。
⇒ **可证伪预测**：抓样里若只见 `nA2s` + `nA2t a=0`、无 `nA2u` ⇒ 支持该假设；若 `nA2t>0` 却无 `nA2u` ⇒ 与代码矛盾（属日志提取问题）。

### 17.6 下一步
1. 用户跑 3~5 回合（**不必开战**）⇒ 抓样读 `nA2s → nA2t → nA2u → nA4d → p0V → nA4e k=`；
2. 若确认"无可用机场"⇒ 提前动 **P1b（AI 造机）** 或先查 AI 是否造机场建筑（`Province.updateBuildingsUnderConstrucion → buildAirport` 不分玩家/AI）；
3. 再进 P1a 完整验收（需"与 AI 开战"存档）：`nA4d war=1` → `p0V cand>0 vis>0` → `nA4e k=0` 且 AI 任务入 `activeMissions`。
'''

RULES_ADD = u'''

## ㉒ baksmali 的正确用法 + 标签会被重命名（2026-09-24 新增）
- 调用：`java -cp "<lib>/baksmali-2.5.2.jar:<lib>/dexlib2-2.5.2.jar:<lib>/guava.jar:/usr/share/java/smali-util-2.5.2.git2771eae.jar" org.jf.baksmali.Main d <dex> -o <dir>`
  - **主类是 `org.jf.baksmali.Main`**（不是 `com.android.tools.smali.baksmali.Main`）；`java -jar baksmali-2.5.2.jar` 会报 "no main manifest attribute"。
- **baksmali 会重命名标签**：我们写的 `:p0_disp`/`:p0_blk1`/`:cond_20` 反汇编后变成 `:cond_45`/`:cond_7b`/`:cond_48` 之类。
  ⇒ **任何 dex 级断言必须"语义级/寄存器级"**（上下文指令 + 目标块内容），**绝不能按标签名匹配**，否则门禁会静默全 miss（本轮真踩：v1 门禁按标签名匹配，6 个 FAIL 全是假报）。

## ㉓ 新门禁必须先"报得出来"，且门禁自身的 bug 也要在这一步现形
- 流程：**先在已知有 bug 的产物上跑**（本轮＝r5c028 dex，预期报 3 个 FAIL，实际恰好 3 个）⇒ **再在修好后跑**（r5c029 dex，0 FAIL）。
- 本轮这一步一共抓出**门禁自身 3 个 bug**：①`dump()` 少传参数 ②查找 span 太小（默认 14 行，而目标在 60 行后）③标签匹配写法错（baksmali 标签行不带尾部冒号）。
  ⇒ 若跳过"已知 bug 样本"这一步，这三个 bug 会让门禁变成一个"永远绿"的装饰品（比没有门禁更危险）。

## ㉔ `incr_audit.py` Q4 的假阳性边界
- Q4 只对**判空形态**（`if-eqz X` ⇔ 解引用 X）有效。
- 对**数值比较**会误报"应为 if-eqz"：如 `cmpl-float v0, rnd, 0.1f` 后必须用 `if-gez`（≥0 ⇒ 跳），`aiPickVisibleTarget` 返回省号 `-1` 后必须用 `if-ltz`（<0 ⇒ 跳）。
- ⇒ 数值/等值比较的极性由 **`r5c029_sitecheck.py` 定点断言**兜底，不以 Q4 报错为准。

## ㉕ 子代理跑在 Android 侧沙箱，看不到 proot 的 `/tmp`
- 给子代理"唯一真值"时，**必须把文件放到 `/sdcard` 下**（本轮做法：`build_inputs/review_r5c029/{INCR.md, r5c02{8,9}_classes.dex, disasm_r5c02{8,9}.txt}`）。
- 只给它反汇编文本 + 明确问题清单，比让它自己反编译整包成功率高（它历史上会整包读然后被掐断）。
'''

HAND_ADD = u'''

---

### 追加登记：r5c029（P1a 极性三修）【2026-09-24】
- 内容：`AirForceManager.smali` 3 行操作码极性修正（AFM:2887 `if-gez→if-ltz`、AFM:1037 `if-ltz→if-gez`、AFM:1060 `if-gez→if-ltz`）；探针保留。
- 产物：dex `df112f5a…` / apk `0e80f3df…`（`build_apk/dbg_signed77_v119_r5c029.apk`，738,374,836 B）。
- 新增工具：`r5c029_sitecheck.py`（dex 级定点极性门禁，**已按铁律⑲在已知 bug 样本上验证过**）、`r5c029_fix.py`。
- **装机状态：✅ 已装机（DEX_MATCH=1）**，抓样基线已重置。
- 下一步：用户跑 3~5 回合抓样 → 读 `nA2s/nA2t/nA2u/nA4d/p0V/nA4e`（见计划书 §17.6）。
'''


def append_once(path, marker, text):
    t = io.open(path, encoding='utf-8').read()
    if marker in t:
        print('SKIP（已存在 %s）: %s' % (marker, os.path.basename(path)))
        return
    io.open(path, 'a', encoding='utf-8').write(text)
    print('OK  追加 %s -> %s' % (marker, os.path.basename(path)))


append_once(PLAN, '## 17. r5c029', S17)
append_once(HAND, 'r5c029（P1a 极性三修）', HAND_ADD)
append_once(RULES, '## ㉒ baksmali', RULES_ADD)
print('DONE', time.strftime('%m-%d %H:%M'))
