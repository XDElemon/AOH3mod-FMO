# 调研 · AI（玩家敌国）为什么"不造飞机"（第一轮）v1

> 用户观察：AI 作为我方敌国时，好像不造飞机。
> 基准树：`/tmp/w3a/smali`（r6d078 装机同源）。**仅调研，未改代码**。

---

## 一、结论（可证伪）

**"AI 造机"这套机制是存在且默认开启的，不是被开关关掉的。**
真正的原因只可能是下面四条之一（按可能性排序），且**都需要探针证据才能定论**：

| 序 | 嫌疑 | 依据 |
|---|---|---|
| **a** | **没钱**：只造"买得起"的机型，AI 省金不足 ⇒ 静默跳过 | `Airport.p1bPickAffordable(Airport,AirType)`（Airport:249）在选型处被调用；返回 null 则不建 |
| **b** | **已达上限**：该机场"已有 + 队列 + 在建" ≥ `ai_cap`(默认 4) ⇒ 停止补机 | `updateAIBuildUp` 内 `totalAircraft + buildQueue.size() + (buildingType!=null?1:0)` 与 `dgAiCap` 比较 |
| **c** | **`ai_wartime` 语义**：此门要求"**与玩家**处于战争"（`isAtWar(player.iCivID, airport.civID)`）；若已停战/未开战 ⇒ 不造 | `updateAIBuildUp` 门 2 |
| **d** | 该 AI 国**没有机场建筑**（未建/未登记） | 见下"登记链" |

**排除项**：`ai_build=1`（默认 1）、`ai_wartime=1`（默认 1）、`ai_type`/权重正常；设备实际配置为
`ai_build:1, ai_wartime:1, ai_cap:4, ai_type:0, ai_w_fighter:5/ai_w_inter:1/ai_w_attacker:2/ai_w_bomber:2`，即**门是开的**。

---

## 二、机制实证（关键链）

1. **入口**：`AirForceManager.update(civID)`（AFM:11906，`updateAll()` 每帧对**所有文明**逐个调用）
 → 内部 `getAirportsForCiv(civID)` → 对每个机场调 `Airport.updateBuild()` 与 **`updateAIBuildUp(airport)`**。
2. **AI 造机方法**：`AirForceManager.updateAIBuildUp(Airport)`（AFM:9223–9501）
 判断链（原文顺序）：
 ```
 if (dgAiBuild == 0) return; # 默认 1
 if (dgAiWar != 0) { # 默认 1 ⇒ 进入"战时"模式
 if (Game.player == null) return;
 if (!isAtWar(Game.player.iCivID, airport.civID)) return; # ← 只对"与玩家交战"的国家造机
 }
 total = airport.totalAircraft + airport.buildQueue.size() + (airport.buildingType!=null ? 1 : 0);
 if (total >= dgAiCap) return; # ← 上限（默认 4）
 if (airport.buildingType == null && airport.buildQueue.isEmpty()) {
 type = 按 dgAiType(0/1/2) + 权重选型;
 type = Airport.p1bPickAffordable(airport, type); # ← 买得起才建
 if (type != null) airport.startBuild(type);
 }
 ```
3. **登记链（谁把机场放进 `allAirports`）**：`AirForceManager.registerAirport(civID)`（AFM:10891–10923）是唯一写入点，调用者：
 - `Province.addNewBuilding(...)`（Province:3804，**无条件**，与文明无关）
 - `Province.addNewBuilding_LoadScenario(...)`（Province:3993）
 - `AirForceManager.buildAirport(II)`（AFM:9501）
 - **`AirForceManager.syncAllFromProvinces()`（AFM:11512）** —— 新开局 `InitGame` 调 2 次、读档 `Menu_LoadSavedGame` 调 1 次
 ⇒ **理论上 AI 机场也会被登记**，`apts=1` 那个老观察项更可能是"某一时刻的局部统计"而非全局缺失。
4. **读机方式**：`getAirportsForCiv(civID)`（AFM:9983）从 `allAirports` 取 `List<Airport>`，取不到就返回空表。

---

## 三、为什么现在**证不出**是哪一条（本轮的诚实说明）

- 现有探针 `Airport.p1bStat(...)`、`AirDbgLog.e5i(...)` **存在**，但设备日志里检索 `p1b|apts|nA1|e5i` **0 命中** ⇒
 **我们目前没有把"AI 造机决策"写到日志**（这些探针要么只在玩家链、要么被 500ms 节流吞掉）。
- 因此必须**新增一个免节流（`dWrite`）探针**才能定论。

---

## 四、建议的下一步（可证伪，一次就能定位）

在 `updateAIBuildUp` 入口（AFM:9223 之后）加**一处 `dWrite` 探针**，输出：
```
aib civ=<机场civID> n=<total> cap=<dgAiCap> war=<0/1> gold=<省金/国库> pick=<选型id或-1> res=<0未建/1已建>
```
判定表（看到什么 ⇒ 是哪条原因）：
| 探针表现 | 结论 |
|---|---|
| 没有 `aib` 行 | 该文明/机场根本没进 `updateAIBuildUp`（⇒ 登记或 update 遍历问题，转查 `apts`） |
| `war=0` | 与玩家未交战（原因 c） |
| `n>=cap` | 已达上限（原因 b） |
| `pick=-1` 且 `gold` 偏低 | 没钱（原因 a） |
| `pick=<机型> res=1` 却看不到新飞机 | 建造被别处取消/机场容量问题 |

配套：等这个探针跑一局后，再决定是"提高 AI 预算/上限"还是"修正登记/遍历"。

---

## 附：与"巡逻范围扩到敌国领土"（用户同一轮的另一项需求）的关系
- 该需求属**功能改动**，不在本文件范围；其调研要点已明确：
 `createPatrol(Airport,int provinceID,String)`（AirMission:2030）的目标省由**调用方**决定，
 候选调用点为 AFM:3816/3866/3928（玩家点击路由）、6504/8525/11250（AI 派发）。
 ⇒ 下一批先做**第二轮调研**：确认这些调用点选的省是否被限制在"本国省"，再定改动面。