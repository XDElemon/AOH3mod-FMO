# -*- coding: utf-8 -*-
# R4c187 抓样 + R4c188 修复 归档
import io, shutil
D = '/sdcard/GLG/历史23/'
ZH = D + 'r6s5/空战重做_进度与bug排查专档_v1.md'
JJ = D + '空战重做_交接文档_v2.md'
SJ = D + '空战重做专案_设计v2.md'
CS = D + '铁律与教训_常驻速查_v1.md'

ZH_ADD = u"""
> 🛠（2026-09-19 深夜·**r4c187 抓样实锤 + r4c188 修复：机场判据也改登记表**）
> **r4c187 抓样（候选层探针 nSC，240 条）——决定性数据**：
>   · `nSC p=5693 c=226 oc=0 war=1 inf=0 air=1 mil=1 rps=1 pls=1 fog=1` ⇒ **5693 通过了所有守卫**（交战✓、无在飞打击✓、有军事建筑✓、情报✓），**不是被守卫挡掉的**（此前主嫌 `inf` 排除）；
>   · 同一次挑选（147263-147500）里 **只有 5693 一个候选是 `air=1`**，其余 79 个是 `air=0 mil=1`；
>   · 但最终派发是 `tgt=5723`（`air=0`）⇒ 一个 tier1 候选输给了 tier2 候选——**按代码不可能**，除非**打分时机场判据读到了空表**。
> **定案**：`AirForceManager.allAirports` 是**会被重建/清空的瞬时表**（与 `Province.buildings`、`radarProvinces` 同类问题）⇒ `provinceHasAirport()` 在 `dbgCand`（循环前段）读到 1、在 `strikeScore`（同一循环后段）读到 0 ⇒ 5693 落到 tier2（`100000+d×f`），被更近的 5723 压掉。**这才是"机场优先从未生效"的真因。**
> **r4c188 修法 = 把机场判据也做成"事件驱动登记表"**（与军事登记表同一套）：
>   · 新字段 `afAirportProv:HashSet`（provinceID 集合，"该省驻有空军基地"）；
>   · 复用 r4c185 已挂在 `Province` 建筑增删 8 处的钩子 `noteProvinceBuildings`：在**同一趟遍历**里顺带判定机场（building 索引 == `BuildingsManager.AIRPORT_BUILDING_ID`，游戏自己的定义）→ 登记/注销；
>   · `provinceHasAirport(pid)` = **登记表命中 ∨ 实时扫描**（实时命中时回写登记表，自愈）。
> **dump 真值表**：`0002 if-eqz v0 ->0010`（登记表为空/未命中 → 转实时扫描）；`000e const 1 return`（登记表命中）；`0010..` 实时扫描 allAirports；命中处 `add` 后 `return 1`；全空 → `0054` 返回 0。
> **产物**：dex `3acf061bdcfbfd14f049895e0afedf70`／apk `f7aba75a…`；arity BAD=0；八件套通过（Sig 152549 **Δ=0**——本批只换方法体、未新增 invoke 签名）；Earth3=18510；装机 Success；启动自检 crash=0。
> **验收口径**：① 候选里 `air=1` 的省（如 5693）应**稳定**拿到 tier1；② 派发目标应变为 5693 而不是一直最近的 5723；③ 若机场被摧毁 → 建筑事件触发 → 自动注销登记，自然回落 tier2。
> **教训（本轮）**：① `allAirports` 与 `Province.buildings`、`radarProvinces` 并列"瞬时表三兄弟"——**凡游戏侧的容器都要先验证是否会被清空重建**；② 修复顺序应是"先确认候选能走到打分（nSC）→ 再查打分输入是否可靠"，本轮 nSC 一次就锁定了范围。
"""

with io.open(ZH, 'a', encoding='utf-8') as f:
    f.write(ZH_ADD)
print('ZH ok')

s = io.open(JJ, encoding='utf-8').read()
NEW_ROW = u'| **r4c188** | 【修复】`allAirports` 是瞬时表 ⇒ 机场判据改事件驱动登记表 `afAirportProv`（复用 Province 建筑钩子 + `AIRPORT_BUILDING_ID` 判定），`provinceHasAirport`＝登记表 ∨ 实时扫描；修"机场优先从未生效" | `3acf061b…` / `f7aba75a…` | ⏳ **现役·待实测** |'
lines = s.split('\n'); out = []
for L in lines:
    if L.startswith(u'| **现役装机**'):
        L = u'| **现役装机** | **r4c188**（dex `3acf061bdcfbfd14f049895e0afedf70`）｜军事登记表 + 机场登记表 + 三档评分｜装机后启动自检 crash=0 ✓ |'
    out.append(L)
    if L.startswith(u'| **r4c187**'):
        out.append(NEW_ROW)
s = '\n'.join(out) + u"""

## 37. r4c188（2026-09-19 深夜）：机场判据改事件驱动登记表（修"机场优先从未生效"）

- r4c187 抓样（nSC×240）：5693 通过全部守卫（`war=1 inf=0 air=1 mil=1 rps=1 pls=1`）；同次挑选里它是**唯一** `air=1`，却输给 `air=0` 的 5723。
- 定案：`allAirports` 会被重建（瞬时）⇒ `provinceHasAirport` 在循环前段读1、打分时读0 ⇒ 机场省落到 tier2。
- 修法：`afAirportProv:HashSet` + 复用 Province 建筑钩子（`AIRPORT_BUILDING_ID` 判定）；`provinceHasAirport`＝登记表 ∨ 实时扫描（命中回写，自愈）。
- 产物：dex `3acf061b…`／apk `f7aba75a…`；arity BAD=0；八件套 Sig 152549（Δ=0，仅换方法体）；装机 Success；启动自检 crash=0。
"""
io.open(JJ, 'w', encoding='utf-8').write(s)
print('JJ ok')

SJ_ADD = u"""

---

## 一百一十四、R4c188：机场判据＝事件驱动登记表（2026-09-19）

| 项 | 内容 |
|---|---|
| 关键发现 | `AirForceManager.allAirports` 会被重建/清空 ⇒ `provinceHasAirport` 前后两次读结果不同 ⇒ 机场优先（tier1）从未真正生效 |
| 新登记表 | `afAirportProv:HashSet`（provinceID，"该省驻有空军基地"） |
| 写入/否证 | 复用 R4c185 的 `Province` 建筑钩子 `noteProvinceBuildings`（同一趟遍历，按 `BuildingsManager.AIRPORT_BUILDING_ID` 判定） |
| 判据 | `provinceHasAirport = afAirportProv.contains ∨ 实时扫描 allAirports`（实时命中回写，保证自愈） |
| 瞬时表清单 | `Province.buildings`（R4c182 发现）、`radarProvinces`（每 tick 清空重建）、`allAirports`（R4c187/188 发现）⇒ **游戏侧容器先验证再依赖** |
| 产物 | dex `3acf061bdcfbfd14f049895e0afedf70`／apk `f7aba75a…` |
"""
with io.open(SJ, 'a', encoding='utf-8') as f:
    f.write(SJ_ADD)
print('SJ ok')

CS_ADD = u"""
31. **"瞬时表三兄弟"（R4c182/187/188）**：`Province.buildings`、`radarProvinces`、`allAirports` 都会被游戏**清空/重建**，任何"每帧现读"的判据都会闪烁。⇒ 铁律：**依赖游戏侧容器前，先证明它不是瞬时表**（连续两次读 + 跨阶段读）；做不到就用"事件驱动登记表"自建副本。
32. **候选层探针一次定位范围（R4c187）**：`nSC`（一行/候选）把"是否进打分"与"守卫结果"分开 ⇒ 一轮就排除了主嫌 `inf`，锁定到"打分输入不可靠"。⇒ 铁律：怀疑行为异常时，**先分层定位（候选→打分→执行），不要直接改公式**。
33. **只换方法体时 Sig Δ=0 属正常（R4c188）**：八件套的 Sig 统计的是 **invoke 签名集合**，重写方法体但未引入新签名时 Δ=0；此时要靠 dump 与 arity 兜底确认改动真的进了 dex。
"""
with io.open(CS, 'a', encoding='utf-8') as f:
    f.write(CS_ADD)
print('CS ok')

shutil.copyfile('/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali',
                D + 'r6s5/AirForceManager.r4c188.smali')
print('SRC ok')