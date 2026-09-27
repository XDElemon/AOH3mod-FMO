# -*- coding: utf-8 -*-
# R4c184/R4c185 归档
import io, shutil
D = '/sdcard/GLG/历史23/'
ZH = D + 'r6s5/空战重做_进度与bug排查专档_v1.md'
JJ = D + '空战重做_交接文档_v2.md'
SJ = D + '空战重做专案_设计v2.md'
CS = D + '铁律与教训_常驻速查_v1.md'

ZH_ADD = u"""
> 🧩（2026-09-19 深夜·**r4c184 抓样 + r4c185 事件驱动登记表**）
> **r4c184 抓样（用户实测"我建了空军基地，他还是不会去打"）**：派发 6 次目标 `5964×4 / 5723 / 5714`，全部 `mil=1`；但 `nIKS` 抽样里 `5964` 是 `mil=1 air=0 bsz=0` —— **`milRaw`（读省建筑表）同样在毫秒级闪烁**：门/评分读到"有"、几十毫秒后探针读到空表。
> **定案**：问题不在极性也不在门，而在**判据的稳定性**：
>   · r4c184（无记忆、每次现读）⇒ 同一省在不同调用里忽"是"忽"不是" ⇒ **评分抖动** ⇒ 军事优先退化成"按距离/随机"（用户原话"又回到按距离远近排"）；
>   · r4c183b（粘滞记忆）⇒ 稳定但**否证路径不可达**（要求 `bsz>0`，实测恒 0）⇒ 饱和（所有侦察过的省都成"军事"）。
> **r4c185 正解 = "稳定记忆 + 可达否证" = 事件驱动登记表**：
>   ☆ 新登记表 `afMilReal:HashSet`（provinceID 集合，"该省当前有军事建筑"）；
>   ☆ 写入/否证都放在**游戏自己改建筑的那一刻**：在 `Province` 的 4 个建筑增删方法（`addNewBuilding` / `addNewBuilding_LoadScenario` / `destroyBuilding` / `destroyBuilding_ScenarioEditor`）的每个 `return-void` 前插入 `noteProvinceBuildings(p0)`（共 8 处）——**此时列表一定是装载好的**，所以登记/注销都可靠；
>   ☆ 判据 `hasMilitaryBuilding(pid)` = 登记表命中 ∨ `milRaw` 命中（命中即登记，把瞬时命中稳定化）∨ 机场表（空军基地＝军事组 idx34）。
> **dump 真值表**：`0002 if-eqz v0 ->0010`（登记表为空 → 跳过）；`000c if-nez v2 ->0010`（未命中 → 查 milRaw）；`0014 if-eqz v2 ->0024`（milRaw 未命中 → 查机场）；命中则 `001e add` → `0022 const 1 return`。
> **产物**：dex `d6b9911fdbac2d71b3985f09e6e1adfb`／apk `727fbfe1…`；arity BAD=0；八件套通过（Sig 152536，Δ=11＝8 个钩子 + 判据新增 invoke）；Earth3=18510；装机 Success；启动自检 crash=0。
> **验收口径**：① `nAS pk … mil=1` 应稳定指向"确实有军事建筑"的省（不再是随机命中）；② 同一省的 `mil` 不再忽高忽低；③ 若某省军事建筑被拆/被炸掉，应在其建筑增删事件后不再被判为军事。
> **需要用户确认的一点**：轰炸机**永远不会**炸"省主＝我方"的省（既有铁律 ④）。如果新建的空军基地在**你自己**的省里，那它本来就不是打击目标——请确认你说的"不去打"指的是**敌方**哪个省（省 ID 或大致位置），我再针对它做一次定点分析（候选池 / 情报覆盖 / 门 / 评分四层逐项对账）。
"""

with io.open(ZH, 'a', encoding='utf-8') as f:
    f.write(ZH_ADD)
print('ZH ok')

s = io.open(JJ, encoding='utf-8').read()
NEW_ROW = u'| **r4c185** | 【修复】军事判据改**事件驱动登记表** `afMilReal`：Province 4 个建筑增删方法挂 8 处钩子（`noteProvinceBuildings`），判据＝登记表 ∨ milRaw命中(即登记) ∨ 机场表；解决 r4c184 的"评分抖动"与 r4c183b 的"粘滞饱和" | `d6b9911f…` / `727fbfe1…` | ⏳ **现役·待实测** |'
lines = s.split('\n'); out = []
for L in lines:
    if L.startswith(u'| **现役装机**'):
        L = u'| **现役装机** | **r4c185**（dex `d6b9911fdbac2d71b3985f09e6e1adfb`）｜军事判据＝事件驱动登记表；情报门＝纯情报｜装机后启动自检 crash=0 ✓ |'
    out.append(L)
    if L.startswith(u'| **r4c184**'):
        out.append(NEW_ROW)
s = '\n'.join(out) + u"""

## 34. r4c185（2026-09-19 深夜）：军事判据＝事件驱动登记表（稳定 + 否证可达）

- r4c184 抓样：派发 6 次全 `mil=1`，但同省 `nIKS` 常显示 `mil=1 air=0 bsz=0` ⇒ 瞬时读数闪烁 ⇒ 评分抖动（用户："又按距离排"）。
- 三版对比：r4c184 无记忆→抖动；r4c183b 粘滞→饱和；r4c185 事件驱动登记→**稳定且否证可达**。
- 实现：`afMilReal:HashSet` + `noteProvinceBuildings(Province)`；Province 4 方法 ×2 个 `return-void` 共 8 处钩子；判据＝登记 ∨ milRaw(即登记) ∨ 机场表。
- 产物：dex `d6b9911f…`／apk `727fbfe1…`；arity BAD=0；八件套 Sig 152536（Δ=11）；装机 Success；启动自检 crash=0。
- 待确认：用户所指"不去打"的**敌方省**（省 ID 或位置），以便四层对账（候选池/情报/门/评分）。
"""
io.open(JJ, 'w', encoding='utf-8').write(s)
print('JJ ok')

SJ_ADD = u"""

---

## 一百一十二、R4c185：军事判据＝事件驱动登记表（2026-09-19）

| 项 | 内容 |
|---|---|
| 三版对比 | r4c184（现读，无记忆）→ 读数闪烁 ⇒ 评分抖动；r4c183b（粘滞）→ 否证不可达 ⇒ 饱和；**r4c185（事件驱动）→ 稳定 + 否证可达** |
| 登记表 | `afMilReal:HashSet`（provinceID，"当前有军事建筑"） |
| 写入/否证时机 | `Province.addNewBuilding` / `addNewBuilding_LoadScenario` / `destroyBuilding` / `destroyBuilding_ScenarioEditor` 的每个 `return-void` 前调用 `AirForceManager.noteProvinceBuildings(p0)`（共 8 处；此时列表必已装载） |
| 判据 | `登记表 ∨ milRaw(命中即登记) ∨ 机场表(allAirports)` |
| 产物 | dex `d6b9911fdbac2d71b3985f09e6e1adfb`／apk `727fbfe1…` |
| 待办 | 针对用户指定的敌方省做四层对账（候选池/情报覆盖/门/评分） |
"""
with io.open(SJ, 'a', encoding='utf-8') as f:
    f.write(SJ_ADD)
print('SJ ok')

CS_ADD = u"""
22. **"稳定 + 否证可达"是缓存的两条腿（R4c183b→184→185）**：无记忆⇒读数闪烁导致行为抖动；只有记忆⇒否证若不达则饱和。**正解＝把写入与否证都挂在"事件点"上**（本例：游戏改建筑的那一刻），此时数据一定有效。
23. **钩子的插入位置要选"状态已更新"的时机（R4c185）**：增删建筑的效果在方法**末尾**才成立 ⇒ 钩子插在每个 `return-void` 之前（而不是方法开头），否则读到的是旧状态。
24. **别在"数据可能未装载"的时机做全量重扫（R4c185）**：`Province.buildings` 会闪烁，全量重扫可能把有效登记"扫掉" ⇒ 登记表只允许**事件驱动**注销，避免误清。
"""
with io.open(CS, 'a', encoding='utf-8') as f:
    f.write(CS_ADD)
print('CS ok')

shutil.copyfile('/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali',
                D + 'r6s5/AirForceManager.r4c185.smali')
shutil.copyfile('/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/Province.smali',
                D + 'r6s5/Province.r4c185.smali')
print('SRC ok')