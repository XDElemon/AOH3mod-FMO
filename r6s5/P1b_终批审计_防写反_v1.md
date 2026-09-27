# P1b 终批审计（防写反/防谬误）—— 施工前唯一依据 v1

> 本轮**只调研**。全部结论均来自实树/实 dex 读取，附行号与唯一性计数。
> 日期：2026-09-24。对象：`aoc/kingdoms/lukasz/map/battles/{Airport,AirForceManager,AircraftDataManager}.smali`

## 0. 结论摘要（三条最重要的）
1. **★ 谬误纠正**：`Airport.level` 运行时**恒为 1**（只有构造函数写一次；save/load 原样搬运；全树无其它写点）⇒ **level=1 ⇒ maxCapacity=20、radarRange=220 永远不变**。因此**"按机场等级选机型"的方案作废**，机型选择改为"轰炸机占比 + 可负担阶梯"（见 §5）。
2. **扣钱位置定为 `Airport.startBuild` 内部**（唯一调用者仅玩家 UI `BtnBuild`，全树 1 处）⇒ **插一处即可同时覆盖玩家与 AI**（正是你要的"玩家也扣钱"）。**必须插在两道 guard 之后**，否则"容量满/队列满"也会白扣钱。
3. **两条 GV（`AIR_BUILD_QUEUE_LIMIT`/`AIR_BASE_CAPACITY_PER_LEVEL`）是死配置**：代码里对应的是硬编码 `3` 与 `level×20`，**全树 0 处读取** ⇒ 改 `GV_Air.json` 对它们**无效**。

## 1. 判据方向总表（每条都写明"写反会长什么样"）
| # | 语义 | 必须写的操作码 | 写反的症状 |
|---|---|---|---|
| D1 | 观战保护：无玩家则不做事 | `sget-object vX, Game->player` + `if-eqz vX, :skip`（==null 就跳走） | 写成 `if-nez` ⇒ 有玩家反而跳过，AI 永不造机 |
| D2 | 只处理 **AI**（跳过玩家） | `iget v, ap->civID` + `iget v2, player->iCivID` + `if-eq v, v2, :skip`（**相等**才跳走） | 写成 `if-ne` ⇒ 只给玩家造、AI 全跳过 |
| D3 | 正在建造 ⇒ 本回合不排新 | `iget-object v, ap->buildingType` + `if-nez v, :skip`（**非空**才跳走） | 写成 `if-eqz` ⇒ 只有"没在建"时才跳过（完全反过来） |
| D4 | 队列已有待造 ⇒ 不排新 | `buildQueue.size()` ⇒ `if-lez v, :skip`（≤0 不跳，即 >0 才跳）或 `if-gtz v, :skip` | 写成 `if-ltz`/`if-gez` ⇒ 条件反掉，队列无上限地堆 |
| D5 | 轰炸机占比 <50% ⇒ 选轰炸机 | `bm*2 < total` ⇒ `if-lt vA, vB, :want_bomber`（**小于**才跳去轰炸机） | 写成 `if-ge` ⇒ 占比≥50% 才造轰炸机，越造越偏 |
| D6 | 钱不够 ⇒ 不造 | `cmpg-float v, fGold, costF` + `if-gez v, :skip`（v<0 即"小于" ⇒ 跳） | 用 `if-ltz`/`if-lez` 混用 ⇒ 变成"钱够才不造" |
| D7 | 已成功排入 ⇒ 才扣钱（在 `startBuild` 内） | 插入点必须在 `:cond_20`（两道 guard 之后） | 插在方法开头 ⇒ 失败也扣钱（凭空吞金） |
| D8 | 机型→数据/成本索引 | `types[type.ordinal()]`（对标既有 `getBuildTime` 的写法） | 用 `ID-1`、用 enum 名比较 ⇒ 索引错位 |
| D9 | `types`/数组长度守卫 | 先判 `types==null` ⇒ 跳到"取不到"，再判 `ordinal < length` | 漏判 ⇒ JSON 未加载时 NPE / ArrayIndexOOB |
| D10 | int→float（金额） | `CostGold` 是 `I`，`fGold`/`addGold(F)` 是 `F` ⇒ 必须 `int-to-float` | 漏转 ⇒ 汇编失败或数值错 |

## 2. 精确插入锚点（唯一性已核）
| 用途 | 文件 | 锚点原文 | 唯一性 |
|---|---|---|---|
| AI 造机 hook | `AirForceManager.smali` | 7063 `move-result-object v2` / 7065 `check-cast v2, Airport` / **7067 `invoke-virtual {v2}, Airport;->updateBuild()V`** / 7069 `goto :goto_8` | `Airport;->updateBuild()V` 全文件 **1 处** ✅ |
| 扣钱挂点 | `Airport.smali` | 445 `:cond_20` / **446 `invoke-static {v0, v1}, AirDbgLog;->sbOK(II)V`** / 448 `iget-object v0, …->buildQueue` | `sbOK(II)V` 全文件 **1 处** ✅（`:cond_20` 有 5 处，**不可单独作锚**） |
| 新增方法 | 两文件均以 `.end method` 结尾（无 `.end class`）⇒ **按 EOF 追加** | — | ✅ |
| 方法名碰撞 | `updateAIBuildUp` / `p1bChargeForBuild` / `p0Gold` | AFM=0、Airport=0 | ✅ 无碰撞 |

## 3. 寄存器预算（不得上调 `.registers`）
- `AFM.update(I)`：`.registers 12`；插入点处 **v2 = 当前机场（活）**，p0/p1 可用 ⇒ 只插一条 `invoke-direct {p0, v2}, ->updateAIBuildUp(Airport;)V` 最安全。
- `Airport.startBuild`：`.registers 6`，签名 `(AirType)Z` 非静态 ⇒ locals v0–v3、**p0=v4、p1=v5**。插入的调用用 `{p0, p1}` 作参数即可，**完全不碰 locals**。
- 新方法自带 `.registers`（参照 `getBuildTime`/`getAirportByProvinceID` 的规模：`.registers 4~14`）。

## 4. 取值 API（签名已核实，可直接照写）
| 需要什么 | 写法 | 证据 |
|---|---|---|
| 玩家文明 | `sget-object vX, Laoc/kingdoms/lukasz/jakowski/Game;->player:…/Player/Player;` | P1a 已用 |
| 玩家 civID | `iget vX, vY, …/Player/Player;->iCivID:I` | P1a 已用 |
| 取文明对象 | `invoke-static {v}, Laoc/…/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;` | 全树多处 |
| 文明的金（float） | `iget vX, vY, Laoc/…/Civilization;->fGold:F`（`public`，字段行 115） | ✅ |
| 加减金 | `invoke-virtual {civ, goldF}, Laoc/…/Civilization;->addGold(F)V`（负数为扣；内部夹上限） | `Civilization:2645` |
| 金上限 | `invoke-static {civID}, Laoc/…/Game;->getMaxAmountOfGold(I)I` | 多处 |
| 机型数据数组 | `sget-object vX, Laoc/…/battles/AircraftDataManager;->types:[Laoc/…/AircraftDataManager$AircraftTypeData;` | ✅ public static |
| 机型成本 | `aget-object vX, types, ordinal` + `iget vY, vX, …$AircraftTypeData;->CostGold:I` | 字段行 18 |
| 建造时间（范例写法） | `Airport.getBuildTime(AirType)I`（`.registers5`，含 null/长度守卫，缺省 3） | `Airport:213` 附近 ⇒ **成本取值照抄它** |
| 入队 | `invoke-virtual {ap, type}, Laoc/…/Airport;->startBuild(AirUnit$AirType;)Z`（false=容量或队列满） | 唯一调用者 `BtnBuild:78` |

## 5. 机型选择（**修订版**，去掉 level 依赖）
AI 机场等级恒为 1，故用"**占比 + 可负担阶梯**"：
```
需求 = (轰炸机数*2 < totalAircraft) ? BOMBER : ATTACKER        // 轰炸机占比 <50%
阶梯 = 首选需求；若 cost(首选) > fGold，则依次降级：
       BOMBER(500) → ATTACKER(320) → FIGHTER(260) → INTERCEPTOR(200)
若连 INTERCEPTOR(200) 都买不起 ⇒ 本回合不造（下回合再试）
```
理由：①保证"AI 会炸"（优先补轰炸机）；②穷国也能补得起（阶梯）；③不依赖恒为 1 的 level。
> 难度旋钮（P4）可在此函数里乘一个"成本折扣/数量上限"系数；本期先写常量。

## 6. 已知陷阱与边界（本轮全部实证）
1. **`level` 恒为 1**（见 §0.1）⇒ 容量永远 20、雷达 220。
2. **队列上限 3、容量 `level×20` 均为硬编码**；`GV_Air.json` 里对应的两项是死配置。
3. `aircraft` map 在**构造函数里为全部 4 种机型预建空 list**（`Airport:98-121`）⇒ `get(type).size()` **永不 NPE**（我们的 `p0Air` 探针正因此安全）。
4. `AirType` 枚举顺序 = `INTERCEPTOR(0) FIGHTER(1) BOMBER(2) ATTACKER(3)`；`AircraftTypes.json` 数组顺序一致且 `load()` **保序** ⇒ `types[ordinal]` 正确（`getBuildTime` 同款）。
5. 免费飞机只有 3 个来源：`registerAirport` 白送（`AFM:5086/5114`）、`updateBuild` 交付（`Airport:489`）、读档（`LoadSavedGameManager:4281`）⇒ 无遗漏。
6. `startBuild` 的两条早退路径（队列≥3、容量不足）返回 `false`；**扣钱必须在其后**。
7. `BtnBuild.actionElement` 对失败会给玩家弹"机场容量已满或建造队列已满"——我们在 startBuild 内扣钱后，**该提示语义仍然正确**。
8. **P1a 判据未回退**：`if-nez v1,:cond_23`(1，存在另一处同名标签在 registerAirport，属巧合)/`if-ltz v4,:cond_20`(1)/`if-ne v3,v4,:p0_disp`(1)/`if-gez v0,:p0_blk1`(1)/`if-ltz v3,:p0_blk3`(1)/`if-nez v5,:p0_blk4`(1) ✅
9. 玩家与 AI 共用 `startBuild` ⇒ 扣钱逻辑**只写一次**；不必改 UI，也不必在 AI hook 里重复扣。

## 7. 验收探针（P1b 同批内置）
- `p0Gold(int civID, String tag)`：打印 `Game.getCiv(civID).fGold`（int）⇒ 证明"钱真的少了"；
- `p0Build(Airport, String tag)`：打印 `q=`（队列）、`rem=`、`bt=`（buildingType.ordinal）、`want=`（本回合选中的机型 ordinal）⇒ 证明"AI 真的在造"；
- 既有 `nA2m`（`bm/at/ft/it/tot/q/rem`）继续留作机队对账；
- 预期（P1b 装机后）：AI 机场 `q/rem>0` ⇒ 数回合后 `bm` 上升；`fGold` 阶梯式下降；开战存档中 `nA4e k=0` 出现、`activeMissions` 含 AI 任务。

## 8. 与"人物不死"（GV 方案）同批交付
- 同批注入 `GV_Advisors.json`（`CHANCE_OF_DEATH` 全 0）+ `GV_GameUpdate.json`（`GAME_UPDATE_DEATH_RULER_MIN_TURN_ID` 极大）；
- 两件事互不干扰（一个改 JSON 资源、一个改 smali），但**同一次构建**出包，一次装机验收。