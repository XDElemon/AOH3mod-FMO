# -*- coding: utf-8 -*-
# §G.10：E5 三次调研（含对 §G.9 两处订正）+ 少而准探针方案
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
ADD = u"""
### G.10 E5 三次调研（2026-09-24，含对 §G.9 的**两处订正**）＋"少而准"探针方案

#### G.10.1 对 §G.9 的订正（防写反/防误判，重要）
1. **订正①：读档的循环方向写反了**。真身是 **外层＝存档 DTO**（`Save_Airforce.airports` 的 iterator，LSM:4057-4066），**内层遍历 `allAirports.values()` → List → Airport**（4070-4092），比较 `Airport.provinceID == Save_Airport.provinceID`（`if-ne … :cond_dc` ⇒ **不等就继续，相等才回填**）。
 ⇒ 语义＝"**以存档为准去找内存机场**"；**内存里没有对应机场的 DTO 会被静默跳过**（§G.9 同结论，但机制方向要按本条改）。
2. **订正②：`AF_LOAD:newgame_skip` 不是"apts==0 才跳"**。真身 LSM:3962-3964：
 `sget-boolean v11, LoadSavedGameManager->afNewGame:Z` → `if-nez v11, :cond_3c8`（`:cond_3c8` 即 `AF_LOAD:newgame_skip`）
 ⇒ **`afNewGame == true`（新游戏）⇒ 整个读档过程跳过**。
 ⇒ 因此 r5c020e 那局**是新开档**：`AF_LD:apts=0` 只是"新游戏时内存还没有机场"；`nA1e apts=1` 是**新游戏应有的1个机场**。
 ⇒ **`apts` 11/12→1 不是 bug 证据**（那是"旧档局 vs 新开档局"的差别）。★ 这条若不订正，会把方向判反。

#### G.10.2 三次调研的新事实（本轮真正的大鱼）
| # | 事实 | 出处 |
|---|---|---|
| F1 | 空军数据存在**独立文件**（不在主存档里）：`.../files/airforce_save/Airforce_Data.json`（写/读主路径）＋ `.../files/airforce_dbg/Airforce_Data.json`（**写入副本／读档回退**） | SaveGameManager:838/862；LoadSavedGameManager:3966/3985 |
| F2 | **设备实测**：`airforce_save/Airforce_Data.json` **不存在**（目录亦不存在）；`airforce_dbg/Airforce_Data.json` 存在但 **仅1921B、mtime=2026-09-17 11:16**（一周前） | adb 实测 |
| F3 | **`AF_SAVE:exported` 在 r5c018c／r5c019b／r5c020e 三个样本里都是 0** ⇒ **写流程从未走到"两份都写成功"那一步** | 抓样统计 |
| F4 | **写侧路径映射与读侧不对称**：写侧用 `FileManager.getSaveType(path)`；`initLoadInterface()` 在 **Android 走 `FileManager$3`＝`Gdx.files.local(sFile)`**（只有桌面才用 `external`/`local`）；而**读侧用的是 `Gdx.files.absolute(path)`** ⇒ **写到的位置 ≠ 读的位置** | FileManager:55-100；FileManager$3:32-40；LSM:3968/3989 |
| F5 | 写侧唯一调用点：`Menu_LoadSavingGame.loadAction()` 的 `:sswitch_1ed` 步＝`Save_Provinces_Data()` ＋ `Save_Airforce_Data()`（**多步存档状态机中的一步**） | Menu_LoadSavingGame:1126-1132 |
| F6 | 写侧两处写都包在 `try` 里，**异常被吞**（`:catch_22a`）；只有两份都写成功才会打印 `AF_SAVE:exported` | SaveGameManager:878-896 |
| F7 | 读档的**文件回退顺序**：先 `airforce_save/...`（`exists()` 否 ⇒ 跳 `:cond_67`）→ 再 `airforce_dbg/...`（不存在 ⇒ `:cond_3d0` 直接返回） | LSM:3966-3999 |
| F8 | 登记链判据已钉死：`syncAllFromProvinces()` 扫**全部省**，按 `ProvinceConstructedBuilding.getBuilding()==AIRPORT_BUILDING_ID` 登记（`getBuilding()`=b0=类型；等级另存，**升级不影响类型** ⇒ "升级后漏扫"**排除**）；在建机场在 `Province.buildingsConstruction`，**不在** `buildings` ⇒ 存在"在建期间 sync 漏登记"的通路 | AFM:5304-5450；ProvinceConstructedBuilding:33-41 |
| F9 | 登记是**裸 add、无去重**（同一省重复 register ⇒ 重复项）；`registerAirport` 对 **AI 文明**会预填4架 INTERCEPTOR | AFM:4908-4975 |
| F10 | 三条加载链已核实（§G.9 表格不变）：`InitGame.initGame()`(21226-21260)＝sync→读档→**又sync**；`Menu_LoadSavedGame`(512-536)＝sync→读档；`AFM.updateAll`(7157-7200)＝门控 sync+读档 | 三处源码 |
| F11 | 现成探针已被大量预埋：`AF_LOAD:*`(12个)、`AF_CALL:initgame/resync/loadfinal/resync_load`、`nA1e p0= apts= tgtciv= pl=`（**apts＝`getAirportsForCiv(p0).size()`**，`pl`＝`allAirports.size()`） | 全树 grep |

#### G.10.3 根因假设（重排后，按可能性）
- **R1（最可能，写侧不落地）**：写侧经 `Gdx.files.local(绝对路径)` ⇒ 落到 **app 私有目录下的伪路径**（或抛异常被吞）⇒ `airforce_save/` 主文件**永不生成**；dbg 副本（用 `absolute`）也因**整段 try 在更早处抛异常**而**停在 09-17**（F3+F6）。⇒ 读档必然拿到**旧快照或缺文件** ⇒ **丢飞机**。
- **R2（次可能，读档时机）**：`InitGame` 的"读档后再 sync"会 clear+重建 `allAirports`，把刚恢复的机场对象连同飞机换成白板。
- **R3（备选）**：在建机场（`buildingsConstruction`）期间 sync 漏登记。

#### G.10.4 "少而准"探针方案（r5c021，8 处，零行为改动）
> 原则：**不再撒13处**；只补"写侧路径/结果"与"读侧用了哪个文件/挂了哪些飞机"这两组缺口，其余复用现成探针。

| # | 位置（锚点） | 打印 | 为什么 |
|---|---|---|---|
| W0 | `Save_Airforce_Data` 入口（SGM:311 后） | `nE5 W0 enter civs=<allAirports.size()> apts=<Σ每文明机场数>` | 写侧到底有没有被调用、内存有几个机场 |
| W1 | SGM:846 之后（拿到 `getSaveType` 句柄处） | `nE5 W1 h=<v3.toString()>`（FileHandle 的路径字符串） | **直接看写偏到哪儿**（F4 的实锤） |
| W2 | SGM:850 的 `if-eqz v3, :cond_229` 之后（即"句柄非 null"分支内） | `nE5 W2 hasHandle=1` | 区分"句柄为 null 跳走" |
| W3 | SGM:858（主路径 `writeString` 之后） | `nE5 W3 wroteMain=1` | 主文件写是否执行到 |
| W4 | SGM:870（dbg `writeString` 之后） | `nE5 W4 wroteDbg=1` | 副本写是否执行到 |
| W5 | SGM 的 `:catch_22a`（异常吞噬处） | `nE5 W5 ex=<exception 简名>` | **异常被吞 ⇒ 现在只能靠这条看见** |
| R1 | LSM:3966-3982 区（主文件 `exists()` 判定后） | `nE5 R1 main=<0/1>` | 主文件在不在 |
| R2 | LSM:3985-3999 区（dbg `exists()` 判定后）＋ `:goto_77` | `nE5 R2 dbg=<0/1>` ／ `nE5 R3 use=<1=main 2=dbg>` | 到底回退用了哪份（**F7 的关键判据**） |
| R4 | LSM:4049 之后（`airports` 列表非空分支内） | `nE5 R4 dtoApts=<DTO.size()> memApts=<ΣallAirports>` | **DTO 与内存各有多少机场**（R2/R3 的分流判据） |
| R5 | LSM 内层"A机场匹配成功"落点（4092 之后，即 `if-ne … :cond_dc` 的**落穿处**） | `nE5 L1 hit p=<provinceID>` | 逐机场匹配成功；**无分支**（落穿点直接打印） |
| R6 | 逐 AirUnit 挂回成功的落点（AirUnit 循环内匹配成功处） | `nE5 L3 unit a=<airportID> ok=1` | 飞机挂回规模 |

**极性/无分支纪律（纪律⑮，必须写进补丁头注释并在文档留 4 情形表）**
| 判定 | 正确写法 | 反例（会写反） |
|---|---|---|
| 变量为 0/空才跳 | `if-nez vX, :lab` | `if-eqz`（语义正好相反） |
| 变量非 0 才跳 | `if-eqz vX, :lab` | `if-nez` |
| 相等才落穿（不跳） | `if-ne vA, vB, :next` | `if-eq vA, vB, :next`（相等反而跳走） |
| 小于才跳 | `if-lt vA, vB, :lab` | `if-ge vA, vB, :lab` |
| 探针本身 | **一律"落穿点直打印"**，不引入任何新分支 | 用分支去"选择打哪条日志" |

**寄存器纪律**：`.registers` 不得上调（工具链硬顶 v15）。已核实用量：`syncAllFromProvinces` **v10 全方法空闲**；`loadSave_Airforce` `.registers16`（v0–v15）⇒ 只在**已被释放的块**借 v0–v4／v14–v15，且逐个情形模拟；`registerAirport` 入口处 v0–v6 可借（v7/v8 是参数）。

#### G.10.5 修复路线（探针定案后照此落地）
- **修 R1（第一优先，最小改动）**：
 - (a) 写侧把 `getSaveType(...)` 换成**与读侧一致的 `Gdx.files.absolute(...)`**（两侧对称，最直接）；并- (b) 写前 `parent().mkdirs()`（保证 `airforce_save/` 目录存在，真机实测该目录**不存在**）；
 - (c) 读侧若"主文件缺失" ⇒ **明确打日志**（现在静默回退），并（可选）在回退时警告。
 - ⇒ 预期验收：**手动存档一次 ⇒ 主文件出现且 mtime 更新 ⇒ 读档后飞机/机场与存档一致**。
- **修 R2**：删/条件化 `InitGame.initGame()` 的第二次 sync（或"仅当 `allAirports` 为空才 sync"）。
- **修 R3**：sync 的机场判据同时覆盖 `buildingsConstruction`（或在建造完成钩子补登记）。

#### G.10.6 本轮新增的两个行动项（需要你配合）
1. **抓样前先"手动存一次档"**（存档界面正常走一遍）⇒ 才能看到 W0–W5，判"写侧是否被调用/写到哪/是否抛异常"。
2. **抓样前"读一次旧档"**（不要新开档）⇒ 才能看到 R1–R6（尤其 `R3 use=1/2` 与 `R4 dtoApts/memApts`）⇒ 一次性定案 R1 vs R2 vs R3。

#### G.10.7 审核流程（子代理已接入）
本批（r5c021）走：**打补丁 → `assemble/verify` 九件套 → `build.sh`（出 dex）→ **`code_reviewer_tools:code_review(batch=r5c021, intent=…)` 外部审核 → 通过后才 `install.sh` → 真机实测（存档+读旧档）→ 抓样判读**。
"""
t = io.open(P, encoding='utf-8').read()
if u'### G.10 E5 三次调研' in t:
    print('已存在，跳过')
else:
    B = P + '.pre_g10'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'\n---\n\n## H. 自动打击「开关态」', ADD.strip() + u'\n\n---\n\n## H. 自动打击「开关态」')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK §G.10 已写入')