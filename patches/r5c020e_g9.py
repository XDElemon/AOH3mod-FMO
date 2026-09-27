# -*- coding: utf-8 -*-
# §G.9：E5 二次调研（机制 + 两个根因假设 + 打满探针方案）
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
ADD = u"""
### G.9 E5「存档丢飞机」二次调研：机制、两个根因假设、**打满探针**方案（2026-09-24）

#### G.9.1 机制（源码实证，这是全案的钥匙）
1. **登记表 `allAirports` 是"内存真值"**：`syncAllFromProvinces()`（AFM:5304）＝ **先 `clear()` 掉 `allAirports`＋`radarProvinces`**，再扫**全部省的 `buildings`**，凡 `getBuilding()==AIRPORT_BUILDING_ID` 就 `registerAirport(省, 省.civID)`（`new Airport(prov,civ,1)`，构造器默认值）。
2. **读档是"以内存登记为准"**：`loadSave_Airforce()`（LoadSavedGameManager:3878-4908）**先遍历 `allAirports.values()`**，再在该机场的 DTO 里按 `provinceID` 找对应 `Save_Airport` 并回填（含 `aircraft.clear()`＋补 4 类空表）；随后**逐条 AirUnit**（DTO `airunits`）在 `allAirports` 里找 `provinceID==unit.airportID` 的机场挂回。
 ⇒ **内存里没登记的机场 ⇒ 其 DTO 字段与飞机被静默丢弃**（飞机找不到机场 ⇒ 丢）。
3. **"加载/开局"有三条链，行为不同**：
 | 链 | 顺序 | 标记 |
 |---|---|---|
 | `InitGame.initGame()`（21226-21260） | `afSuspended=true` → **sync(1)** → `loadSave_Airforce` → `afSuspended=false` → **★sync(2)** → `syncAllDivisions` | `AF_CALL:initgame`／`AF_CALL:resync` |
 | `Menu_LoadSavedGame`（512-536） | `afSuspended=true` → **sync** → `loadSave_Airforce` → `afSuspended=false` → `syncAllDivisions` | `AF_CALL:loadfinal` |
 | `AFM.updateAll()`（7157-7200） | 门＝`afRestored==false && key!=null && view==IN_GAME` ⇒ **sync + load**（置 `afRestored=true`） | — |
 ⇒ **只有 `InitGame` 那条在"读档之后又 sync 一次"**，而 sync 会 clear+重建 ⇒ 刚恢复的机场对象（连同 `aircraft` 里的飞机）**被换成重扫得到的白板**。
4. 抓样侧的现实证据：`nA1e apts=`（该文明登记机场数）r5c018c=**11**、r5c019b=**12**、r5c020e=**1**；`nA1b ap=` 去重值 61 → **2**。

#### G.9.2 两个根因假设（互斥可判）
- **R-A（顺序／时机，最可疑）**：某次 sync 发生在"**省建筑尚未恢复完成**"或**读档之后**⇒ 命中机场极少 ⇒ 之后 load 只能恢复极少数 ⇒ 其余机场与其飞机丢。`InitGame` 的 sync(2) 正是"读档后重建"。
- **R-B（判据／数据）**：玩家的其它机场在 `province.buildings` 里 `getBuilding()` **不等于 `AIRPORT_BUILDING_ID`**（等级/类型不同、或在建/队列中）⇒ 扫描命中少。

#### G.9.3 **打满探针**方案（r5c021，纯诊断、零行为改动）
| # | 位置 | 锚点 | 打印（一条一函数，无分支拼接） |
|---|---|---|---|
| P1 | `syncAllFromProvinces` 入口 | AFM:5304 | `nE5 S0 in susp=<afSuspended 0/1> prov=<省总数> bldgAir=<AIRPORT_BUILDING_ID>` |
| P2 | 同上：扫描中"**该省建筑里出现过任意空军类 id**"时 | 循环体内（`getBuilding()` 之后） | `nE5 S1 p=<省> civ=<civ> b=<buildingID> n=<该省 buildings 数>`（含 AIRPORT/RADAR/LONGRADAR/AAA） |
| P3 | 同上：**命中机场建筑**时 | registerAirport 调用前 | `nE5 S2 hit p=<省> civ=<civ>` |
| P4 | 同上：出口 | 方法末尾 | `nE5 S3 out hit=<命中数> allciv=<allAirports.size()> apts=<Σ每文明机场数>` |
| P5 | `registerAirport` 入口 | AFM:4908 | `nE5 R p=<省> civ=<civ> before=<该civ原有数> after=<+1>` |
| P6 | `unregisterAirport` 入口 | AFM:5628 | `nE5 U p=<省> civ=<civ> before=<原有数>` |
| P7 | `loadSave_Airforce` 入口 | LSM:3878 | `nE5 L0 dtoApts=<?> dtoUnits=<?> dtoMis=<?> memApts=<ΣallAirports>` |
| P8 | 同上：**逐机场匹配结果** | 机场外层循环内（DTO 查找之后） | `nE5 L1 mem p=<内存机场省> match=<0/1> dtoLev=<> memLev=<>` |
| P9 | 同上：**DTO 有而内存没有**的机场（关键！） | 内层循环结束处 | `nE5 L2 orphan p=<DTO 机场省> civ=<DTO civ>`（有 ⇒ 直证 R-A/R-B） |
| P10 | 同上：**逐飞机挂载结果** | AirUnit 循环内 | `nE5 L3 unit a=<unit.airportID> t=<type> ok=<0/1>` |
| P11 | 同上：出口 | 方法末尾 | `nE5 L4 out memApts=<Σ> totAc=<Σ各机场 aircraft 条目数> afRestored=<0/1>` |
| P12 | 三条链的调用点 | InitGame:21234/21252、Menu_LoadSavedGame:522、AFM:7192（updateAll） | `AF_CALL:initgame` / `AF_CALL:resync` / `AF_CALL:loadfinal` / `AF_CALL:updateall`（后两条为既有探针，补齐 updateAll 那条） |
| P13 | `Airport.updateBuild()` 出口（建造完成） | Airport:464-560 | `nE5 B p=<省> ac=<该机场飞机数>`（看建造完成会否重建/丢机） |

**判读规则（一次抓样即可定案）**
- `L2 orphan > 0` 且 `S3 out hit` 小 ⇒ **R-A/R-B 成立**（登记表少 ⇒ 机场与飞机被丢）；再看 `S1` 里这些省的 `b=` 是否等于 AIRPORT_BUILDING_ID ⇒ 分流 R-A（b 正确但没被扫到＝时机）还是 R-B（b 不等于）。
- `L0 dtoApts` 若本身就小 ⇒ 问题在**存档写入侧**（但 G.9.1 已证存侧遍历全量，故基本排除）。
- `U`（注销）在 load 之后出现 ⇒ 另有"读档后被注销"的通路。
- `L3 ok=0` 的比例 ⇒ 飞机被丢在"挂回机场"这一步的规模。

#### G.9.4 修复路线（探针定案后二选一，已备好）
- **修 R-A（顺序）**：删掉/条件化 `InitGame.initGame()` 里的 **sync(2)**（或改为"仅当 `allAirports` 为空才 sync"），把"sync→load"统一成一次；同时保留 `syncAllDivisions()` 收尾。
- **修 R-B（判据/结构）**：把读档方向**反过来**——"**以 DTO 为准**"：DTO 里有、内存里没有的机场 ⇒ `registerAirport` 补建（或按 DTO 直接建 Airport）后再回填字段与飞机。这条**最根治**（即使 sync 少扫到也不丢飞机），但改动面比 R-A 大。
"""
t = io.open(P, encoding='utf-8').read()
if u'### G.9 E5' in t:
    print('已存在，跳过')
else:
    B = P + '.pre_g9'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'\n---\n\n## H. 自动打击「开关态」', ADD.strip() + u'\n\n---\n\n## H. 自动打击「开关态」')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK §G.9 已写入')