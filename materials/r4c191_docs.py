# -*- coding: utf-8 -*-
# R4c190 抓样 + R4c191 修复 归档
import io, shutil
D = '/sdcard/GLG/历史23/'
ZH = D + 'r6s5/空战重做_进度与bug排查专档_v1.md'
JJ = D + '空战重做_交接文档_v2.md'
SJ = D + '空战重做专案_设计v2.md'
CS = D + '铁律与教训_常驻速查_v1.md'

ZH_ADD = u"""
> 🎯🎯（2026-09-19 深夜·**r4c191：抓到"选择方向"错了——保留的是最大分，不是最小分**）
> **r4c190 抓样（用户："还是不行，我让机场身份的迷雾消失过了，他也不去炸"）**：
>   · 本会话只派发 **1 次**：`tgt=5996`（`air=0`）；
>   · 而同一次挑选里 `5693` 仍是：`nSC p=5693 c=226 oc=0 war=1 inf=0 air=1 mil=1 rps=1 pls=1 fog=1`（**守卫全过**）、`nIKS p=5693 mil=1 air=1 bsz=1 b0=34`（**建筑数据也在**）、`nIKM p=5693 cov=1 ok=1`（**情报门通过**）；
>   · 行号：`nSC p=5693` = 764326，段 764257-764567，**派发在 764572 ——同一次挑选**。
> ⇒ 判据、守卫、门、档位全对，仍然不选机场省。
> **真凶（把 `pickStrikeTarget` 完整 dump 后逐条映射才看到）**：
>   ```
>   0085 strikeScore(...) → v7 = 分数
>   0089 cmpg-float v9, v7(score), v8(best)
>   008b if-gez v9, :cond_51    ← score ≤ best 就跳过更新
>   008d move v8, v7            ← 只有 score > best 才更新
>   ```
>   ⇒ **它保存的是"最大分"**！也就是说：**分数越小越优先**的设计（机场 tier1 < 军事 tier2 < 经济 tier3）在这个"取最大"的比较下**完全反了**：
>   · 机场省（tier1，分最小）**永远是最后一名** ⇒ 你点名的机场从来不会被选；
>   · r4c188 全员 tier1（分数都在几百）⇒ 变成"随机挑一个远的" ⇒ 你说的"乱打"；
>   · 只有"最近"这种感受，是距离项又把分数拉开后的表象。
> **r4c191 修法（一条比较指令的方向）**：把比较操作数对调 ⇒ `cmpg-float v9, v8(best), v7(score)` ⇒ `if-gez`（best ≤ score）跳过、`best > score` 更新 ⇒ **保留最小分** ✓
> **dump 核对**：`0089 cmpg-float {v9, v8, v7}` / `008b if-gez ->0092` / `008d move {v8,v7}` / `008e move {v1,v4}` ✓
> **新增探针**：`nSV p=<省> s=<分>`（每次刷新"最优"时一行）——抓样即可看到"被选中的是不是最小分"，直接验证选择方向。
> **产物**：dex `d9364f7fd2f1fbed0f46f10ccae2a550`／apk `5c…`（归档 `dbg_signed77_v119_r4c191.apk`）；arity BAD=0；八件套通过；装机 Success（设备 dex 与本地一致）；启动自检 crash待复测。
> **验收口径**：① `nSV` 序列应是**递减**的，最后一行就是被选中的省；② 派发目标应为 **5693**（`air=1`）；③ 攻机同理变为"真正最近"（这本来就是原设计要求）。
> **教训**：**"选择/比较"的方向必须独立写一条真值表**（本例：`cmpg` 谁在前、`if-gez` 跳不跳、谁是"更优"），否则前面所有判据都白修——这个坑从 r4c178 就在，一直被我当成"判据问题"。
"""

with io.open(ZH, 'a', encoding='utf-8') as f:
    f.write(ZH_ADD)
print('ZH ok')

s = io.open(JJ, encoding='utf-8').read()
NEW_ROW = u'| **r4c191** | 【关键修复】**选择方向反了**：`pickStrikeTarget` 用 `cmpg(score,best)+if-gez` 实际保留**最大分** ⇒ 机场(tier1,分最小)永远最后一名；修法＝对调操作数（`cmpg(best,score)`）保留最小分；新增 `nSV` 选择探针 | `d9364f7f…` / `5c…` | ⏳ **现役·待实测** |'
lines = s.split('\n'); out = []
for L in lines:
    if L.startswith(u'| **现役装机**'):
        L = u'| **现役装机** | **r4c191**（dex `d9364f7fd2f1fbed0f46f10ccae2a550`）｜双登记表 + 三档评分（距离钳位） + **最小分选择**｜装机 Success/设备 dex 一致 |'
    out.append(L)
    if L.startswith(u'| **r4c190**'):
        out.append(NEW_ROW)
s = '\n'.join(out) + u"""

## 40. r4c191（2026-09-19 深夜）：选择方向修复（保留最小分）

- r4c190 抓样：5693 守卫/门/档位/同段全对，仍不选；唯一派发 5996（air=0）。
- 真凶：`pickStrikeTarget` 的 `cmpg-float v9, v7, v8` + `if-gez` ⇒ 实际保留**最大分** ⇒ tier1（机场，分最小）永远最后一名。
- 修法：对调操作数 `cmpg-float v9, v8, v7` ⇒ 保留最小分；新增 `nSV p= s=` 探针验证方向（序列应递减）。
- 产物：dex `d9364f7f…`／apk /归档 `dbg_signed77_v119_r4c191.apk`；arity BAD=0；八件套通过；装机 Success。
"""
io.open(JJ, 'w', encoding='utf-8').write(s)
print('JJ ok')

SJ_ADD = u"""

---

## 一百一十七、R4c191：选择方向＝保留最小分（2026-09-19）

| 项 | 内容 |
|---|---|
| 实据 | 5693 全绿（守卫/门/档位/同段）仍不被选；唯一派发为 `air=0` 的 5996 |
| 真凶 | `cmpg-float v9, v7(score), v8(best)` + `if-gez` ⇒ **保留最大分**（与"分小者优先"的设计完全相反） |
| 修法 | 对调操作数 ⇒ `cmpg-float v9, v8(best), v7(score)` ⇒ 保留最小分 |
| 探针 | `nSV p=<省> s=<分>`（每次刷新最优一行）⇒ 序列应**递减** |
| 影响 | 轰炸机：机场(tier1)开始真正优先；攻机：变成"真正最近"（原设计） |
| 产物 | dex `d9364f7fd2f1fbed0f46f10ccae2a550`／归档 `dbg_signed77_v119_r4c191.apk` |
| 教训 | 比较/选择方向必须单独写真值表（谁在前、跳不跳、谁更优），否则判据白修 |
"""
with io.open(SJ, 'a', encoding='utf-8') as f:
    f.write(SJ_ADD)
print('SJ ok')

CS_ADD = u"""
38. **"选择方向"是最隐蔽的一类极性错（R4c191）**：`cmpg-float a, b, c` 后接 `if-gez`：到底是"保留更小的"还是"保留更大的"，取决于**操作数顺序 + 跳转方向**两者。本例从 r4c178 起就保留着**最大分**，导致"分小者优先"的全部设计失效（机场永远不被选）。⇒ 铁律：**凡"比较+跳转"实现的选择逻辑，必须写出"谁更优→是否更新"的真值表，并用探针把序列打出来（应单调）**。
39. **全绿却不选 ⇒ 立刻怀疑"选择器"（R4c190→191）**：当候选层的守卫/门/档位全部验证通过，而结果仍不符预期时，问题在这一步**之后**：比较/更新方向、初值（Float.MAX）、或越界。⇒ 铁律：分层定位到"参与打分仍输"，下一步就查**选择器与初值**，不要再回头怀疑判据。
"""
with io.open(CS, 'a', encoding='utf-8') as f:
    f.write(CS_ADD)
print('CS ok')

shutil.copyfile('/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali',
                D + 'r6s5/AirForceManager.r4c191.smali')
print('SRC ok')