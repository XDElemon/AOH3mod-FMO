> Phase B（**路线 A**：挂到现有 P 线）｜生成 2026-09-27 06:10 ｜现装 r5c046z4 ｜ B1＝评分+情报门

# Phase B · 第一轮（全量调研）：能复原多少 / 依赖面

## 1. 复原可行性（实验定案，见 `调研_phaseB_复原可行性_v2全量.md`）
- **可逐字复原**：54~55 个方法体已导出（`r6s5/phaseB_verbatim2/`，干净版；`_b1bodies.txt` 拼装）。
- **不可逐字**：三个骨架方法（`updateOffensives`/`pickStrikeTarget`/`tryStrikeForAirport`）源码已丢（重放 27 个补丁 27/27 失败）。
  ⇒ 路线 A 不重建它们，改为把 Phase B 件挂到我们的 P 线（`updateOffensivesP`/`pickStrikeTargetP`/`tryStrikeForAirportP`）。

## 2. 逐字件与寄存器预算（B1 相关）
| 件 | `.registers` | 依赖 API | 备注 |
|---|---|---|---|
| `milRaw(I)Z` | 8 | `Game.getProvince` / `Province.buildings` / `isMilIdx` | 原始扫描 |
| `isMilIdx(I)Z` | ? | — | 军事组判定（`noteProvinceBuildings` 调用） |
| `hasMilitaryBuilding(I)Z` | 6（r4c185 事件版） | 登记表 ∨ `milRaw` ∨ 机场表 | **取 r4c185 版** |
| `provinceHasAirport(I)Z` | 8（r4c188 版） | `allAirports` + 登记表自愈 | **取 r4c188/189 版** |
| `noteProvinceBuildings(Province)V` | 8 | `Province.getProvinceID/buildings` + `isMilIdx` | 由 Province 4 方法钩子调用 |
| `strikeScore(I Airport I)F` | 12 | `provinceDistance` / `provinceHasAirport` / `hasMilitaryBuilding` / `Province.getEconomy` / `Game.oR` | 三档 + 距离钳位 1000（r4c186+r4c190） |
| `bomberIntelOk(...)` | 8~9 | `hasMilitaryBuilding` / `provinceHasAirport` / 迷雾 | 取 r4c193 版 |
| `dbgCand(II)V` / `dbgSel(IF)V` | 12 / 6 | 只读探针 | 诊断 |

## 3. 现有树依赖核对（全部通过）
`Province.getEconomy/getCivID/getArmySize/getFogDrawArmy/getBuildings/getProvinceID` ✅；
`Province` 的 4 个钩子方法（`addNewBuilding` / `addNewBuilding_LoadScenario` / `destroyBuilding` / `destroyBuilding_ScenarioEditor`）✅；
`BuildingsManager.AIRPORT_BUILDING_ID` ✅（`aoc/kingdoms/lukasz/map/BuildingsManager`，默认 -0x1）；
`Game.oR:Random` ✅；`FileManager.loadFile(String)FileHandle` ✅（cfg 用）；
`AFM.provinceDistance` ✅；`AFM.registerAirport` 撞名 ⇒ Phase B 若用同名需改 `a1RegisterAirport`。
**AFM 无 `<clinit>`** ⇒ 登记表用**惰性初始化**（`if-nez … new-instance`），不新增 clinit。

## 4. 与 P 线的接口（路线 A 的落点）
| Phase B | 挂到 | 具体动作 |
|---|---|---|
| 双登记表 + `Province` 4 钩子 | 新增（AFM 静态字段 + 4 处 `invoke-static {p0}` 钩子） | 事件驱动维护 |
| `strikeScore` | `pickStrikeTargetP` | 把"纯距离 v9"换成"评分"（**保留最小分**方向不变，钳位 1000 在 `strikeScore` 内） |
| `bomberIntelOk` | `pickStrikeTargetP` 的候选门（仅 BOMBER） | 加一道门 |
| `rove*`（B2） | `updateOffensivesP` | 内部巡炸分支 |
| `cfg*`（B3） | `loadStrikeConfig` 首次调用 | 读 `files/strike_config.json`（设备上已有） |
