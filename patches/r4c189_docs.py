# -*- coding: utf-8 -*-
# R4c188 抓样 + R4c189 修复 归档
import io, shutil
D = '/sdcard/GLG/历史23/'
ZH = D + 'r6s5/空战重做_进度与bug排查专档_v1.md'
JJ = D + '空战重做_交接文档_v2.md'
SJ = D + '空战重做专案_设计v2.md'
CS = D + '铁律与教训_常驻速查_v1.md'

ZH_ADD = u"""
> ⚙️（2026-09-19 深夜·**r4c188 抓样：机场登记被污染（84 省全判成"有机场"）→ r4c189 改挂游戏自己的 registerAirport**）
> **r4c188 抓样（用户："还是不会去打机场，但不打最近的了，他乱打"）**：
>   · `nSC` 413 条 —— **全部 `air=1 mil=1`**（84 个不同省）；而日志里真正的机场只有 `ap=20 / ap=5693 / ap=6335` 三个 ⇒ **机场登记表被污染** ⇒ 所有候选都进 tier1（`d×f`）⇒ 谁近谁随机 ⇒ "乱打" ✓ 与用户描述完全吻合。
> **根因（我上批的疏漏）**：`BuildingsManager.AIRPORT_BUILDING_ID` 的字段默认值是 **`-0x1`（-1）**，运行到 `BuildingsManager` 初始化时才赋值（`sput` @363）。游戏自己的 `hasAirportBuilding` 里有 `if-ltz v0` 守卫，**我抄判定时漏了这一步** ⇒ 用 `-1` 去比建筑索引 ⇒ 大量误判。
> **r4c189 修法**：
>   ① `noteProvinceBuildings` **退回"只管军事登记"**（不再按建筑索引猜机场）；
>   ② 新增 `noteAirportProvince(I)V`（带 `p0>=0` 守卫）；
>   ③ 挂在**游戏自己的机场注册口 `registerAirport(II)V`**（`p1` = provinceID）——精确、不可能误判；
>   ④ `provinceHasAirport` 保持"登记表命中 ∨ 实时扫描 allAirports（命中回写，自愈）"。
> **dump 核对**：`registerAirport` 末尾 `0068 invoke-static {v7}, noteAirportProvince(I)V` → `006b return-void` ✓；`noteAirportProvince` 开头 `0000 if-ltz {v3} ->0003` ✓。
> **产物**：dex `300a377d6ce1cabd27663c09bbca4d1c`／apk `8c9d529c…`；arity BAD=0；八件套通过（Sig 152550，Δ=1）；Earth3=18510；装机 Success；启动自检 crash=0。
> **验收口径**：`nSC` 里 `air=1` 的省应**只剩真机场省**（本次应为 5693 等极少数）；派发目标应稳定落在 `air=1` 的省；不应再出现"84 省全是机场"的退化。
> **教训**：**抄游戏自己的判定逻辑时，连它的"边界守卫"一起抄**（`if-ltz` / `>=0` / 空判），否则默认值（-1/0）会静默污染整个判据。
"""

with io.open(ZH, 'a', encoding='utf-8') as f:
    f.write(ZH_ADD)
print('ZH ok')

s = io.open(JJ, encoding='utf-8').read()
NEW_ROW = u'| **r4c189** | 【修复】`AIRPORT_BUILDING_ID` 默认 -1 导致机场登记污染（84 省全判有机场 ⇒ 乱打）⇒ 机场登记改挂游戏 `registerAirport`（带 p0≥0 守卫） | `300a377d…` / `8c9d529c…` | ⏳ **现役·待实测** |'
lines = s.split('\n'); out = []
for L in lines:
    if L.startswith(u'| **现役装机**'):
        L = u'| **现役装机** | **r4c189**（dex `300a377d6ce1cabd27663c09bbca4d1c`）｜军事/机场双登记表 + 三档评分｜装机后启动自检 crash=0 ✓ |'
    out.append(L)
    if L.startswith(u'| **r4c188**'):
        out.append(NEW_ROW)
s = '\n'.join(out) + u"""

## 38. r4c189（2026-09-19 深夜）：修机场登记污染（AIRPORT_BUILDING_ID 默认 -1）

- r4c188 抓样：`nSC` 413 条**全部 `air=1`**（84 省），真机场只有 3 个 ⇒ 登记表污染 ⇒ 全员 tier1 ⇒ 乱打。
- 根因：`AIRPORT_BUILDING_ID` 默认 -1，漏抄游戏 `hasAirportBuilding` 里的 `if-ltz` 守卫。
- 修法：`noteProvinceBuildings` 只管军事；新增 `noteAirportProvince(I)V`（p0≥0 守卫）挂在 `registerAirport` 末尾；`provinceHasAirport` = 登记表 ∨ 实时扫描（回写自愈）。
- 产物：dex `300a377d…`／apk `8c9d529c…`；arity BAD=0；八件套 Sig 152550（Δ=1）；装机 Success；启动自检 crash=0。
"""
io.open(JJ, 'w', encoding='utf-8').write(s)
print('JJ ok')

SJ_ADD = u"""

---

## 一百一十五、R4c189：机场登记＝挂游戏 registerAirport（修污染，2026-09-19）

| 项 | 内容 |
|---|---|
| 现象 | r4c188 后"不打最近的了，但乱打" |
| 实据 | `nSC` 413 条全 `air=1`（84 省），而真机场仅 `ap=20/5693/6335` |
| 根因 | `AIRPORT_BUILDING_ID` 默认 **-1**（运行时才赋值），漏抄游戏 `hasAirportBuilding` 的 `if-ltz` 守卫 ⇒ 索引比对误判 |
| 修法 | ① 军事登记表只管军事；② 新 `noteAirportProvince(I)V`（p0≥0 守卫）；③ 挂在游戏 `registerAirport(II)V` 末尾；④ `provinceHasAirport`＝登记表 ∨ 实时扫描（命中回写） |
| 产物 | dex `300a377d6ce1cabd27663c09bbca4d1c`／apk `8c9d529c…` |
| 教训 | 抄判定要连边界守卫一起抄；判定输入先查默认值 |
"""
with io.open(SJ, 'a', encoding='utf-8') as f:
    f.write(SJ_ADD)
print('SJ ok')

CS_ADD = u"""
34. **抄游戏判定必须连"边界守卫"一起抄（R4c189）**：`AIRPORT_BUILDING_ID` 默认 `-1`（运行时赋值），游戏自己在 `hasAirportBuilding` 里先 `if-ltz` 才比较；我漏了 ⇒ `-1` 与大量建筑索引"相等" ⇒ 84 省全被判为机场 ⇒ 机场优先退化成"随机"。⇒ 铁律：**复刻第三方判定时，把它的默认值、越界、空判三件守卫全部照抄**。
35. **判据"全员为真"时先怀疑误判而不是逻辑（R4c188）**：`nSC` 全 `air=1` ⇒ 不是打分逻辑错，而是**判定输入被污染**。⇒ 铁律：统计"被判为真的比例"，>90% 时先查判定输入的边界与默认值。
"""
with io.open(CS, 'a', encoding='utf-8') as f:
    f.write(CS_ADD)
print('CS ok')

shutil.copyfile('/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali',
                D + 'r6s5/AirForceManager.r4c189.smali')
print('SRC ok')