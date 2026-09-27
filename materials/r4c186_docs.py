# -*- coding: utf-8 -*-
# R4c186 归档
import io, shutil
D = '/sdcard/GLG/历史23/'
ZH = D + 'r6s5/空战重做_进度与bug排查专档_v1.md'
JJ = D + '空战重做_交接文档_v2.md'
SJ = D + '空战重做专案_设计v2.md'
CS = D + '铁律与教训_常驻速查_v1.md'

ZH_ADD = u"""
> 🎯（2026-09-19 深夜·**r4c186：轰炸机评分改"分档"——机场 > 其他军事 > 经济**）
> **用户报告**："敌方（缅甸）机场建在了缅甸首都，我特地手动给了个打击任务让他去打这个机场，但下几次任务还是选择了最近的敌方省份。"
> **r4c185 抓样**：派发 7 次 = `tgt=5723` ×6 + `5996` ×1，全部 `mil=1`；`nIKS` 87 条里**唯一 `air=1` 的是 `p=5693`**（＝缅甸首都机场省，已登记为军事、且情报已覆盖）——**但 5693 从未被派过**。
> **定案**：这不是"读不到"，而是**评分档位问题**——军事档的分数是 `距离×随机`，所以在"都算军事"的省里**永远挑最近的**（5723），远处的机场省永远排不上。用户的"按距离排"感受 = 军事档变成"最近军事省优先"。
> **r4c186 修法**：`strikeScore` 改三档（越小越优先），攻机路径不变：
>   · **tier1 空军基地**：`provinceHasAirport(pid)` → `d × f`
>   · **tier2 其他军事建筑**：`hasMilitaryBuilding(pid)` → `100000 + d × f`
>   · **tier3 都不是**：`200000 + 1000/(1+eco) × f`（`f = 0.5 + rnd*0.6`）
> **dump 真值表**：`0017 provinceHasAirport` → `001b if-nez ->001f`（非机场转 tier2）；`001f hasMilitaryBuilding` → `0023 if-nez ->002b`（非军事转 tier3）；`002b` 起为经济档；`0045` 为攻机（纯距离）返回点。
> **产物**：dex `cb7921e60581be7bf21dc321d27b0862`／apk `dd3c3d48…`；arity BAD=0；八件套通过（Sig 152537，Δ=1）；Earth3=18510；装机 Success；启动自检 crash=0。
> **踩坑留痕（本批）**：手写 smali 时把 dump 的**显示格式**当源码格式用 ⇒ 汇编报错三次：`mul-float/2addr {v2,v3}`（/2addr 不能带括号，要 `v2, v3`）、`return {v0}`（要 `return v0`）、`add-float {v0,v3,v2}`（三寄存器格式同样不带括号）。**只有 invoke-* 用花括号**。
> **验收口径**：派发目标应转向 `air=1` 的省（本例 5693），而不是一直最近的 5723；若某机场省被炸光/机场被毁，`allAirports` 更新后应自然回落到 tier2。
"""

with io.open(ZH, 'a', encoding='utf-8') as f:
    f.write(ZH_ADD)
print('ZH ok')

s = io.open(JJ, encoding='utf-8').read()
NEW_ROW = u'| **r4c186** | 【新功能】`strikeScore` 改三档：机场(d×f) > 其他军事(100000+d×f) > 经济(200000+…)；修"军事档内永远挑最近" | `cb7921e6…` / `dd3c3d48…` | ⏳ **现役·待实测** |'
lines = s.split('\n'); out = []
for L in lines:
    if L.startswith(u'| **现役装机**'):
        L = u'| **现役装机** | **r4c186**（dex `cb7921e60581be7bf21dc321d27b0862`）｜军事登记表 + 纯情报门 + **三档评分（机场优先）**｜装机后启动自检 crash=0 ✓ |'
    out.append(L)
    if L.startswith(u'| **r4c185**'):
        out.append(NEW_ROW)
s = '\n'.join(out) + u"""

## 35. r4c186（2026-09-19 深夜）：strikeScore 三档评分（机场 > 其他军事 > 经济）

- r4c185 抓样：7 次派发全打 5723（最近）；唯一 `air=1` 的 5693（缅甸首都机场）从未被派。
- 定案：军事档分数＝距离×随机 ⇒ 档内永远挑最近。
- 修法：tier1 机场 `d×f`；tier2 其他军事 `100000+d×f`；tier3 `200000+1000/(1+eco)×f`；攻机仍纯距离。
- 产物：dex `cb7921e6…`／apk `dd3c3d48…`；arity BAD=0；八件套 Sig 152537（Δ=1）；装机 Success；启动自检 crash=0。
- 手写 smali 语法坑：只有 invoke-* 用花括号；`/2addr`、`return`、三寄存器算术都不带括号。
"""
io.open(JJ, 'w', encoding='utf-8').write(s)
print('JJ ok')

SJ_ADD = u"""

---

## 一百一十三、R4c186：轰炸机三档评分（机场优先，2026-09-19）

| 档 | 条件 | 分数 |
|---|---|---|
| tier1 | `provinceHasAirport(pid)`（空军基地，`allAirports` 可靠表） | `d × f` |
| tier2 | `hasMilitaryBuilding(pid)`（登记表 ∨ milRaw ∨ 机场） | `100000 + d × f` |
| tier3 | 其余 | `200000 + 1000/(1+eco) × f` |
| 攻机 | `mode != 1` | 纯距离（不变） |

`f = 0.5 + rnd*0.6`。取值最小者被选中 ⇒ 任何机场省都压过任何非机场军事省，任何军事省都压过经济省。

- 产物：dex `cb7921e60581be7bf21dc321d27b0862`／apk `dd3c3d48…`
- 配套：军事登记表 `afMilReal`（事件驱动，R4c185）+ 纯情报门（R4c183b）
"""
with io.open(SJ, 'a', encoding='utf-8') as f:
    f.write(SJ_ADD)
print('SJ ok')

CS_ADD = u"""
25. **"档内用距离"会让优先级塌陷（R4c184→r4c186）**：只要所有同类目标用同一个"距离×随机"打分，档内就退化成"最近优先"，远处的关键目标（如首都机场）永不被选。⇒ 铁律：**做优先级要分档 + 档间留确定间隔**（100000/200000 这种量级隔断），不要让"距离"落到最高档。
26. **手写 smali 的语法铁律（R4c186 三次报错）**：**只有 `invoke-*` 用花括号**。`mul-float/2addr vA, vB`、`return vA`、`add-float vA, vB, vC` 都**不带**括号（dump 工具的输出带括号只是显示格式）。
27. **抓样要看"该被选却没被选"的目标（R4c186）**：本批决定性证据是"`5693` 是唯一 `air=1` 且已登记军事，却 7 次都没被派" ⇒ 直接指向评分档位问题。⇒ 铁律：抓样时除了看结果，还要**核对"预期目标"是否出现在候选/覆盖/登记里**，用它去定位是"看不见"还是"看见了不选"。
"""
with io.open(CS, 'a', encoding='utf-8') as f:
    f.write(CS_ADD)
print('CS ok')

shutil.copyfile('/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali',
                D + 'r6s5/AirForceManager.r4c186.smali')
print('SRC ok')