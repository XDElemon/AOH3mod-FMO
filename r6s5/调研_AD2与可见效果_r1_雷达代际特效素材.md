# 调研 · AD-2 + 可见效果 第一轮：雷达 / 代际 / 导弹特效 素材盘点

批次（拟）r6d175 ｜ 2026-10-03 ｜ 基底 r6d174（开火已成立）

---

## 1. 雷达（B-①：雷达探测决定可否开火）

| 素材 | 事实 |
|---|---|
| `BuildingsManager.RADAR_BUILDING_ID` | 雷达建筑（`-1` = 未定义；运行时由 `BuildingsManager` 从 JSON 绑定，见 `BuildingsManager:380`） |
| `BuildingsManager.LONGRADAR_BUILDING_ID` | 中层反导雷达（同机制，`:414`） |
| 既有使用点 | `AirForceManager:7371/7378/10580/10634/11440/11539/11548`（雷达/中层雷达的既有效果，**未改**）；`InGame_Destroy:635`（拆建筑 UI） |
| **`RadarDataManager`** | 含 `ConfigRadarData` / `RadarTypeData` / `ImprovedData` —— 游戏的雷达配置与"改进"数据 ⇒ **代际/探测能力的天然出处** |
| `Airport.radarRange:F` / `AirUnit.radarRange:F` | 已有的"探测半径"字段；`AircraftDataManager:63/167` 从机型数据写入 `AirUnit.radarRange` |
| 现成读取点 | `PlayerFogOfWar:480/1844`（用机场雷达范围做迷雾）；`AirForceManager:2871`；`AirMission:4662`（用单位雷达范围） |

⇒ **B-①的可行做法**：`airDefenseAt(pid)` 之外再数两个量：`radarAt(pid)`（`RADAR_BUILDING_ID`）、`midRadarAt(pid)`（`LONGRADAR_BUILDING_ID`）；开火前判"本省（或全国）是否有雷达"。

## 2. 代际（B-②：代际决定弹数与射程）

| 素材 | 事实 |
|---|---|
| `AirUnit.type:AirUnit$AirType` | 枚举：`FIGHTER / INTERCEPTOR / ATTACKER / BOMBER`（**不是"代"**，是机种） |
| `AirUnit.typeID:I` | 机型编号（指向机型数据表）⇒ **"代"可以从这里推**，或另建一张"代→参数"表 |
| `AircraftDataManager` | 机型数据加载器（写 `radarRange` 等）⇒ 新字段若要做"代"的载体，放这里最自然 |
| `RadarDataManager.*` | 若"代"指的是**雷达代际**（探测/制导能力），这里已有 Improved/TypeData |
| 现状 | 我方 `AirDefense.adHitChance(II)F` / `adDamagePerHit(II)F` 已**预留 `(defGen, tgtGen)` 空位**（本批正好把参数灌进去） |

## 3. 可见效果（C：复用飞机/导弹特效）

| 素材 | 事实 |
|---|---|
| **`AirMission.msFx*`** | 完整的一套"导弹飞行特效"状态：`msFxX/Y`、`msFxVX/VY`、`msFxTX/TY`（弹道点数组）、`msFxTH/TN`（当前段/点数）、`msFxSpd`、`msFxLastScale`、`msFxInit`、`msFxTgtAt` |
| 绘制者 | **`ProvinceDrawArmy`**：`:3712`（读 `msFxX` 定位）、`:9020`（读 `msFxTX` 画弹道）、`:9180/9242/9327`（写/推进 `msFxX`）、`:9392/9407`（维护 `msFxTX` 数组） |
| ⇒ 结论 | 特效**不在 AirMission 内自己画**，而是"AirMission 存状态 + ProvinceDrawArmy 用状态画" —— **我们的防空开火若走同一条绘制路径，就能天然复用飞机导弹的观感**（用户已定"复用飞机现有的"） |

## 4. 待开工前必须定下的参数（拟默认值，请点头/改）

| # | 项 | 拟默认 | 说明 |
|---|---|---|---|
| D1 | 雷达的作用 | **"本省或本国任一雷达 ⇒ 允许该阵地开火"**（无雷达则不开火） | 最贴近"雷达探测决定可否开火" |
| D2 | 射程怎么给 | 基准 **300px**；**每有 1 座中层反导雷达 +100px**（上限 600px） | 让"雷达"有可见价值 |
| D3 | "代"的定义 | 用 **机型 `typeID` 分档**（战机/截击/攻击/轰炸 4 档，暂不引入新字段） | 避免大改；若你要 3–6 代，我再建表 |
| D4 | 代际弹数/射程 | 每座阵地基础 **1 发/回合**；`typeID` 越高 **+0.5 发**（向下取整），射程 **+50px/档** | 先给一个可玩、可调的起点 |
| D5 | 可见效果 | **复用 `AirMission.msFx*` 那套弹道**：防空开火时生成一段短命弹道（阵地省中心 → 目标省中心），交给同一个绘制路径 | 与飞机导弹同观感 |

> 说明：D1–D4 都是**参数**，落盘为常量/参数文件后随时可调；C 的行为（画弹道）不改战斗结果，只加表现。
