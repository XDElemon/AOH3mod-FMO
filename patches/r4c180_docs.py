# -*- coding: utf-8 -*-
# R4c180 归档：专档 / 交接v2 / 设计v2 / 常驻速查 / 源码留痕 / 基线重置
import io, os, shutil

D = '/sdcard/GLG/历史23/'
ZH = D + 'r6s5/空战重做_进度与bug排查专档_v1.md'
JJ = D + '空战重做_交接文档_v2.md'
SJ = D + '空战重做专案_设计v2.md'
CS = D + '铁律与教训_常驻速查_v1.md'

ZH_ADD = u"""
> 🧭（2026-09-19 深夜·**r4c180：轰炸机情报门——迷雾里没侦察过的省，一律不派**）
> **用户诉求**：r4c179 后轰炸机真会优先军事省了，但“迷雾外的省照样能轰炸”；对方省都在迷雾里，AI 凭什么知道那儿有什么 ⇒ 应当先靠雷达扫。
> **调研结论（闭环）**：
> ① 自动打击**每个文明各跑一遍**（`AirForceManager.updateOffensives(I civID)`），AI 走同一条链 ⇒ 选靶路径上原本**没有任何迷雾门**，这就是“他怎么知道”的原因。
> ② 游戏原生“某省可见”只有一处权威：`Province.getFogDrawArmy()Z`（由 `PlayerFogOfWar.setFogOfWar` → `setFogDrawArmy` 写入），被 Touch / MapTouchManager / SiegeManager / ProvinceDrawArmy 共用。
> ③ 我们自己的侦察链已把迷雾写进去了：`fogFromRadar()`（数据源＝`AirForceManager.radarProvinces:Set`）、`fogFromPlanes()`（`planeFogSeen:HashSet`，每次扫描重建＝当前覆盖，**非累计记忆**）、`fogFromAirports(I)`（**已实装**：遍历 `allAirports` 圈省，由 `fogFullReeval`/`fogRefresh` 调用；用户以为没实装，实测有）。
> ④ 已存在“单位能否看见某省”的判定 `AirForceManager.aiRadarVision(AirMission,I)Z`（R4c166 起用于 `AirMission:3591` L2 判定）。
> ⑤ ⚠️ `aiVisSeen` 是**探针缓存**（`nAVS blk`），不是知识表，不能当情报门。
> ⑥ `getHostileProvincesInRange` **只被 `pickStrikeTarget` 调用** ⇒ 全游戏只有这一条选靶路，改这里即全覆盖（含 AI 派发与换靶）。
> ⑦ 攻机（ATTACKER）路径**早就有** `getFogDrawArmy()` 门（且要求 `getArmySize()>0`），只有轰炸机缺 ⇒ 本批只补轰炸机。
> **实现（方案 B）**：新增 `AirForceManager.afMilKnown:HashSet`（“已知有军事建筑”记忆）+ `bomberIntelOk(I)Z` 助手 + `pickStrikeTarget` 内一行门（`if-ne BOMBER → 跳过门`）。真值表：
>   · `hasMilitaryBuilding(pid)==false` → **无条件遗忘 + 返回 false**（＝炸光了就不用派）；
>   · `hasMilitaryBuilding(pid)==true` → 若被「雷达网 ∨ 飞机航线 ∨ 玩家可见」覆盖 → 写入记忆；
>   · 门槛 = 命中记忆 ⇒ **侦察过就记住，覆盖撤走后仍可继续打**；该省后来重建军事建筑 → 下次被覆盖到即恢复（“会刷新”）。
> **口径（按用户拍板）**：方案 B；约束**玩家+AI 一起**（门在全文明共用路径）；记忆直到该省不再有军事建筑为止。
> **门禁**：arity BAD=0；指令级 dump 复核 `bomberIntelOk` 全 78 条 + `pickStrikeTarget` 门三点（`0071 if-ne v12,v7→0079` 非轰炸机旁路 / `0073 call` / `0077 if-eqz→008a cond_51` 跳过）✓；八件套 Invoke/Regs/Init/Range BAD=0、Sig 152514（Δ=8，＝新增 invoke，符合设计）；Earth3=18510；装机 Success；设备 dex 一致；**启动自检 crash=0**。
> **产物**：dex `96da980bfc636be90421e20a20511caa`／apk `e6a63fc2c3cb2963327c3a5b4264f202`／738370669 B。
> **验收口径**：进游戏跑几回合（让轰炸机有派发/换靶机会），喊「抓」→ `nIK add p=<省>` 出现在**被雷达/飞机扫过的省份**；迷雾深处省份**不应**出现 `nIK add`；`nAS pk … mil=1` 仍应出现（r4c179 不回退）。
> **遗留（待拍板）**：本批使轰炸机**只在“有军事建筑且有情报”时才派**——原本“无军事目标时按经济档兜底轰炸”的路径对轰炸机实际被关掉（`hasMilitaryBuilding==false` 直接返回 false）。若你要保留兜底（没军事目标时仍打最近敌省），下一批加一个开关即可。
"""

# 1) 专档
with io.open(ZH, 'a', encoding='utf-8') as f:
    f.write(ZH_ADD)
print('ZH ok')

# 2) 交接 v2
s = io.open(JJ, encoding='utf-8').read()
lines = s.split('\n')
out = []
NEW_ROW = u'| **r4c180** | 【新功能·方案B】轰炸机情报门：`bomberIntelOk` = 记忆(`afMilKnown`)门；覆盖＝雷达网∨飞机航线∨玩家可见；实时无军事建筑→立即遗忘（炸光不派）；玩家+AI 一起约束 | `96da980b…` / `e6a63fc2…` | ⏳ **现役·待实测** |'
NEW_L0 = u'| **现役装机** | **r4c180**（dex `96da980bfc636be90421e20a20511caa`）｜r4c179 极性修复 + **新增轰炸机情报门**（未侦察过的迷雾省不派）｜装机后启动自检 crash=0 ✓ |'
n0 = n1 = 0
for L in lines:
    if L.startswith(u'| **现役装机**'):
        L = NEW_L0; n0 += 1
    out.append(L)
    if L.startswith(u'| **r4c179**'):
        out.append(NEW_ROW); n1 += 1
s = '\n'.join(out)
s += u"""

## 29. r4c180（2026-09-19 深夜）：轰炸机情报门（方案B）——迷雾里没侦察过的省不派

- 事实：自动打击是 per-civ（`updateOffensives(I)`），原先选靶无迷雾门；原生可见口径＝`Province.getFogDrawArmy()`；我方侦察链＝`radarProvinces`（雷达网）/`planeFogSeen`（飞机航线，每次重建）/`fogFromAirports`（**已实装**）。
- 实现：`afMilKnown:HashSet` 记忆 + `bomberIntelOk(I)Z` + `pickStrikeTarget` 内一行门（仅 BOMBER 走门；攻机原有 fog 门不动）。
- 真值表：无军事建筑 → 遗忘+拒；有军事建筑且被覆盖 → 记入；门槛＝命中记忆（覆盖撤走仍可打；重建后下次被扫到即恢复）。
- 约束范围：玩家 + AI 一起（门在全文明共用路径）；`getHostileProvincesInRange` 只被 `pickStrikeTarget` 调用 ⇒ 唯一选靶路。
- 产物：dex `96da980b…`｜apk `e6a63fc2…`｜arity BAD=0｜指令级 dump ✓｜八件套 Sig 152514（Δ=8）｜Earth3=18510｜装机 Success｜设备 dex 一致｜启动自检 crash=0。
- 探针：`nIK add p=<省>` / `nIK del p=<省>`（只在记忆变更时打，低频）。
- 待拍板：是否保留“无军事目标时按经济档兜底轰炸”（本批对轰炸机实际关掉了）。
"""
io.open(JJ, 'w', encoding='utf-8').write(s)
print('JJ ok 现役行=%d 新行=%d' % (n0, n1))

# 3) 设计 v2
SJ_ADD = u"""

---

## 一百零八、R4c180：轰炸机情报门（方案B，2026-09-19）

| 项 | 内容 |
|---|---|
| 诉求 | 迷雾（未侦察）内的省不该被炸；“先靠雷达扫”才合理 |
| 事实基础 | 自动打击 per-civ 且选靶无迷雾门；原生可见＝`Province.getFogDrawArmy()`；我方侦察链＝`radarProvinces` ∨ `planeFogSeen`；机场覆盖**已实装**（`fogFromAirports` 由 `fogFullReeval`/`fogRefresh` 调）；`getHostileProvincesInRange` 仅 `pickStrikeTarget` 调用＝唯一选靶路 |
| 设计 | 新字段 `afMilKnown:HashSet`（已知有军事建筑）＋ `bomberIntelOk(I)Z` ＋ `pickStrikeTarget` 内 BOMBER 专用门 |
| 真值表 | 无军事建筑→遗忘+拒（炸光不派）；有且被覆盖→记入；门槛＝命中记忆；重建→下次被扫到恢复 |
| 白名单 | 雷达网 ∨ 飞机航线 ∨ 玩家可见（机场覆盖已实装，可选加入） |
| 约束范围 | 玩家 + AI 一起 |
| 回归防线 | arity BAD=0｜指令级 dump（78 条）｜八件套 Invoke/Regs/Init/Range BAD=0、Sig Δ=8＝新增 invoke｜Earth3=18510｜装机后启动自检 crash=0 |
| 产物 | dex `96da980bfc636be90421e20a20511caa`／apk `e6a63fc2c3cb2963327c3a5b4264f202` |
| 遗留 | “无军事目标 → 经济档兜底轰炸”对轰炸机被实际关掉，待拍板是否加开关恢复 |
"""
with io.open(SJ, 'a', encoding='utf-8') as f:
    f.write(SJ_ADD)
print('SJ ok')

# 4) 常驻速查 §C
CS_ADD = u"""
10. **“AI 全知”类隐性问题要靠“同一条链被谁共用”来定位（R4c180）**：自动打击是 per-civ 共用链（`updateOffensives(I)` + `pickStrikeTarget`），原本没有迷雾门 ⇒ AI 与玩家同等全知。⇒ 铁律：**改“信息类”玩法前先分清“共用链 vs 玩家专属链”**，`getHostileProvincesInRange` 只有 `pickStrikeTarget` 一个调用者＝改一处即全覆盖。
11. **“实装没实装”必须以调用点为准（R4c180）**：`fogFromAirports` 被 `fogFullReeval`/`fogRefresh` 调用、主体真实（遍历 `allAirports`）⇒ 机场覆盖其实是**实装了的**（此前口头判断为“没实装”，错）。⇒ 铁律：功能“在不在”，只认「定义 + 调用点 + 主体非空」三件套，不认印象。
12. **记忆类状态要有“自清”路径（R4c180）**：`afMilKnown`（已知有军事建筑）在实时判定 `hasMilitaryBuilding==false` 时**无条件 remove** ⇒ 建筑被炸光后记忆立即失效，且不依赖“是否仍在覆盖内”。⇒ 铁律：**凡是缓存/记忆，必须写清“何时失效”**，否则会退化成“永久全知”。
"""
with io.open(CS, 'a', encoding='utf-8') as f:
    f.write(CS_ADD)
print('CS ok')

# 5) 源码留痕
shutil.copyfile('/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali',
                D + 'r6s5/AirForceManager.r4c180.smali')
print('SRC ok', os.path.getsize(D + 'r6s5/AirForceManager.r4c180.smali'))

# 6) 基线重置（以设备探针文件当前 size 为准）
try:
    sz = os.path.getsize('/sdcard/Android/data/age.of.history3.qiamxi.zhiri/files/airdbg_key.txt')
    io.open(D + 'r6s5/live_baseline.txt', 'w', encoding='utf-8').write(str(sz))
    print('BASE ok', sz)
except Exception as e:
    print('BASE fail', e)
