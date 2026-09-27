# -*- coding: utf-8 -*-
# R4c184 归档
import io, shutil
D = '/sdcard/GLG/历史23/'
ZH = D + 'r6s5/空战重做_进度与bug排查专档_v1.md'
JJ = D + '空战重做_交接文档_v2.md'
SJ = D + '空战重做专案_设计v2.md'
CS = D + '铁律与教训_常驻速查_v1.md'

ZH_ADD = u"""
> ✈️（2026-09-19 深夜·**r4c184：军事判据改用"可靠信号"（空军基地表），粘滞方案退役**）
> **r4c183b 抓样**：`nIKS` 83/83 `mil=1 bsz=0`（粘滞标志**全部命中**）、`nIKM` 316 `cov=1 ok=1` + 4 `cov=0 ok=0`（纯情报门正常）、派发 4 次目标 `5723/5966` **`mil=1`**（军事判据不再是恒0）。
> **新问题（用户实测）**："又回到按距离远近来排。" ⇒ 根因：粘滞标志的**否证路径不可达**（要求 `fog=1 ∧ bsz>0`，实测 `bsz` 恒为 0）⇒ 一旦置位永不清除 ⇒ **几乎所有侦察过的省都被判为"军事"** ⇒ 军事档内只剩距离在比 ⇒ 退化成"按距离排"。
> **定案**：粘滞方案在"否证路径不可达"时会饱和，**退役**。
> **r4c184 新判据**：`hasMilitaryBuilding(pid) = milRaw(pid) ∨ provinceHasAirport(pid)`：
>   · `milRaw`：省建筑数据被装载时的原始命中（不可靠，命中才算，纯加分信号）；
>   · `provinceHasAirport`：扫 `AirForceManager.allAirports`（游戏自己维护，**永远在线**）看是否有 `Airport.provinceID == pid`。**空军基地本身就是军事组 idx34**，所以这是一个与军事判据同义的**可靠信号**。
>   · 移除 `afMilSeen`（字段改名 `afMilSeenDropped_Unused` 以留痕，不再读写）。
> **真值表（dump 逐条映射）**：`0004 if-nez v0 ->0008`（milRaw==0 → 转查机场表）；`0006 const 1 return`（milRaw≠0 → 判为军事）；`0008..000c` 返回机场表结果。
> **探针**：`nIKS` 增加 `air=<0/1>` 字段，可直接看"该省是否有空军基地"。
> **产物**：dex `edd2b511a8379babea605519bde079d8`／apk `abbd97f7…`；arity BAD=0；八件套通过（Sig 152525，Δ=1）；Earth3=18510；装机 Success；启动自检 crash=0。
> **验收口径**：派发目标 `nAS pk … mil=1`，且目标应是 `nIKS … air=1` 的省（有空军基地）；**不应再出现"所有省都是军事"**（即 `nIKS` 中 `mil=1` 与 `air=0` 不再同时大面积出现）。
> **遗留**：军事判据目前覆盖"空军基地（可靠）＋建筑数据可读时的其他军事建筑（idx15-19/34-37）"。若要把"防空/反导/兵营"等也变成可靠信号，需要为它们各找一个游戏自己维护的表（下一步可议）。
"""

with io.open(ZH, 'a', encoding='utf-8') as f:
    f.write(ZH_ADD)
print('ZH ok')

s = io.open(JJ, encoding='utf-8').read()
NEW_ROW = u'| **r4c184** | 【修复】粘滞判据饱和 ⇒ 退役；军事判据改 `milRaw ∨ provinceHasAirport`（空军基地＝军事组 idx34，`allAirports` 表永远在线）；`nIKS` 增 `air=` 字段 | `edd2b511…` / `abbd97f7…` | ⏳ **现役·待实测** |'
lines = s.split('\n'); out = []
for L in lines:
    if L.startswith(u'| **现役装机**'):
        L = u'| **现役装机** | **r4c184**（dex `edd2b511a8379babea605519bde079d8`）｜军事判据＝机场表 ∨ 建筑可读命中；情报门＝纯情报｜装机后启动自检 crash=0 ✓ |'
    out.append(L)
    if L.startswith(u'| **r4c183b**'):
        out.append(NEW_ROW)
s = '\n'.join(out) + u"""

## 33. r4c184（2026-09-19 深夜）：军事判据改"可靠信号"（空军基地表）

- r4c183b 抓样：`nIKS` 83/83 `mil=1 bsz=0`（粘滞全命中）、派发 4 次 `mil=1`；但用户实测"又按距离排"。
- 根因：粘滞标志否证路径不可达（`bsz` 恒 0）⇒ 置位后永不清除 ⇒ 几乎所有侦察过的省都成"军事" ⇒ 军事档内只剩距离。
- 修法：`hasMilitaryBuilding = milRaw ∨ provinceHasAirport`；`provinceHasAirport` 扫 `allAirports`（游戏维护、永远在线；空军基地＝军事组 idx34）；`afMilSeen` 退役。
- 探针：`nIKS ... air=` 新增。
- 产物：dex `edd2b511…`／apk `abbd97f7…`；arity BAD=0；八件套 Sig 152525（Δ=1）；装机 Success；启动自检 crash=0。
"""
io.open(JJ, 'w', encoding='utf-8').write(s)
print('JJ ok')

SJ_ADD = u"""

---

## 一百一十一、R4c184：军事判据＝可靠信号（空军基地表）∨ 可读信号（2026-09-19）

| 项 | 内容 |
|---|---|
| 教训 | 粘滞观测在"否证路径不可达"时必然饱和 ⇒ 判据失去分辨力（r4c183b 退役） |
| 新判据 | `milRaw(pid) ∨ provinceHasAirport(pid)`；后者扫 `AirForceManager.allAirports`（游戏维护、永远在线；空军基地＝军事组 idx34） |
| 语义 | 军事档＝"有空军基地（可靠）或建筑数据可读时命中军事组"；其余走经济档（100000+，实际不会被选） |
| 探针 | `nIKS ... air=<0/1>` |
| 产物 | dex `edd2b511a8379babea605519bde079d8`／apk `abbd97f7…` |
| 遗留 | 其他军事建筑（防空/反导/兵营）暂无可靠表，需逐个找游戏维护的数据源 |
"""
with io.open(SJ, 'a', encoding='utf-8') as f:
    f.write(SJ_ADD)
print('SJ ok')

CS_ADD = u"""
19. **粘滞观测会"饱和"（R4c183b→r4c184）**：粘滞后若"否证条件"在实践中不可达（例：要求 `bsz>0` 但实测恒 0），标志只增不减 ⇒ 判据对全体为真 ⇒ 分辨力归零（现象＝"军事优先"退化成"按距离排"）。⇒ 铁律：**加粘滞必须同时证明"否证路径可达"**，否则宁可用"可靠信号 ∨ 可读信号"，不要用记忆。
20. **优先找"游戏自己维护的表"当判据（R4c184）**：`Province.buildings` 会懒装载/被清空，而 `AirForceManager.allAirports` 这类由游戏持续维护的结构永远在线 ⇒ **判据优先建在后者上**（机场＝军事组 idx34，天然同义）。
21. **判据要有"分辨力自检"（R4c184）**：每次换判据，抓样时必须统计"被判为真的比例"；若接近 100%（例如 83/83 `mil=1`），说明判据已失去区分度，必须换。
"""
with io.open(CS, 'a', encoding='utf-8') as f:
    f.write(CS_ADD)
print('CS ok')

shutil.copyfile('/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali',
                D + 'r6s5/AirForceManager.r4c184.smali')
print('SRC ok')