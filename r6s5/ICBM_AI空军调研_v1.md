# ICBM 的 AI 是怎么用空军的 —— 调研 v1（只读）

> 来源：`/sdcard/GLG/icbm_src.tar`（POSIX tar，裸 tar 非 gz，205,569,024 B，366 条目）
> 解出副本：`/tmp/icbm/`（AI/ + Units/ + Tech.txt + Limits.txt + ProductionEfficiency.txt 等）
> 日期：2026-09-24。**本轮只读，未改任何文件。**

## 0. 一句话结论
ICBM 的 AI 空军**没有一行"AI 专用代码"，全是数据驱动**：用 4 个配置表把"**造什么 → 编成什么组 → 部署在哪 → 打谁（按优先级）→ 不打谁 → 什么时候撤**"全部声明出来。
这正好是我们 P1b/P2/P3/P4 最缺的那套"参数化设计"，可直接借形。

## 1. 四个配置文件的分工
| 文件 | 行数 | 作用 |
|---|---|---|
| `AI/GroupsConquest.txt` | 928 | **任务编组**（含空军 5 个组）：编成、部署类型、距离基准、目标优先级表、规避表、目标数上限、回撤条件 |
| `AI/StrategyConquest.txt` | 3073 | **国家级战略**：研究顺序（分 TTL 层）、入侵/防御/核战力的"最小集＋按 GDP 扩编" |
| `AI/limits.txt` | 45 | **难度档位阈值**（6 档：VeryEasy…Insane） |
| `AI/Conditional.txt` | 38 | **条件反应**（如"被化学武器攻击 ⇒ 研究 CBRN 防御"） |
| `Limits.txt` / `ProductionEfficiency.txt` | 24 / 23 | 全局旋钮：效率时间、和平计时、无核计时、产能上限与增长 |

## 2. 空军的 5 个编组（`GroupsConquest.txt`，逐字实录要点）
所有空军组都长这样：`PlacementType` + `DistanceFrom <机型>` + `DistanceType {radar|flight|weapon}` + Leader（机场类）＋ optional（防空/电子战）＋ `extra missile N` + 目标表 + Avoid + MaxTargets。

| 组 | 平台/Leader | 距离基准 | 首要目标（Priority） | 规避 |
|---|---|---|---|---|
| `Airport` | `Airport` | `Bomber` / flight | 导弹井、ICBM 发射台 8000（核）；SRBM/机动 ICBM/MRBM 8000（常+核）；SSBN 5000；登陆舰 8000（Defence, MaxDist 5000）；陆军师 5000/1000（Defence）；城市 100 | Carrier / SAM_site / MOBILE_SAM / Destroyer |
| `AirportTactical` | `Tactical_Airbase`（边境部署） | `Attack` / flight | **敌方 Airport / Tactical_Airbase / Specialized_Airport 10000（核）** ← 反机场 | Carrier / Destroyer |
| `AirportMakeshift` | `Improvised_Airbase` | `Attack` / flight | 敌方机场 10000；导弹类 8000；城市 100 | Carrier / SAM_site / MOBILE_SAM / Destroyer |
| `AirportMakeshiftSEAD` | `Improvised_Airbase` + `EW_MOBILE` | `Attack` / flight | **ABM_Site 10000；SAM_site / MOBILE_SAM 5000** ← 反辐射（SEAD） | Carrier / Destroyer（**不躲 SAM，因为是它的活**）|
| `AirportSpecial` | `Specialized_Airport` + `EW_MOBILE` | `High_Speed_Bomber` / flight | 敌方各类机场 10000；城市 9000 | 一长串：Security_Checkpoint / 各类雷达 / AA / SAM / EW / FOB / 特战 / 海岸炮 |

## 3. 字段语义（＝我们要抄的"AI 空军决策参数表"）
- `PlacementType Airbase|BorderDefence|CityDefence|Radar|Orbit|NavalBase…`：**部署位置策略**（边境/城市防御/雷达站/轨道…）
- `DistanceFrom <unit>` + `DistanceType radar|flight|weapon`：**用某机型的航程/雷达/武器射程作距离基准**（机场以 Bomber 航程为准）
- `Target <type> [Immediate|Defence] Priority N [Fade f] [MaxDist d] [Nuclear|Conventional|Special]`
  - `Immediate`＝**见即打**；`Defence`＝**只在己方领土上才打**（比我们的"雷达可见"更直观的替代/补充）
  - `Priority`＝权重；`MaxDist`＝**打击半径上限**（≈我们的"航程内候选"）；`Nuclear/Conventional`＝武器选择
- `Avoid <type>`：**禁止交战的单位类**（≈P2"避免硬目标"）
- `Fade f`：**同目标重复打击后优先级衰减**（单位 0.02／城市 0.4）← **这正好是 P2 的"去重/冷却"**，有现成参数形态
- `MaxTargets n` / `PriorityDivider n`：**同时目标数上限**（默认 1，空军组用 3）／**换目标阈值**（新目标优先级 ≥ n× 才换，默认 50）
- `return when type X N`：**战损低于 N 就回撤补员**（≈"损失后重建/节流"）

## 4. 战略层：四段式＋"最小可用兵力"（`StrategyConquest.txt`，"Airland Battle" 为例）
```
Strategy "Airland Battle"
  PreferNuclear 50            // 0=纯入侵，100=纯核战
  Probability 100             // 被选中概率
  InvasionTechList  (9 个 TTL 层)
     TTL1 MinRequired: Generation_2_Bomber, Generation_2_Aircraft, Air_to_Air_Missile,
                       Air_to_Ground_missile, AWACS, Cruise_missiles, Surface_to_Air_Missile …
     TTL2: Generation_3_Aircraft, Interceptor_aircraft …
     TTL4 Target: Generation_4_Bomber
     TTL6: Generation_5_Aircraft … TTL9: Advanced_Stealth
  InvasionGroups
     Minimal: ArmyGroup×4 + Airport×1                 ← 陆军＋制空机场
     ComplementPer 10 Effort Over 100: ArmyGroup×1
     ComplementPer 80 Effort Over 100: AirportTactical×1
  DefenseGroups
     Minimal: Airport×1, ArmyBaseDef×2, ArmyGroupDef×3, Carrier×1, Patrol×2, HiddenPatrol×1, SAMSite×5
     ComplementPer 10 RegionGDP Once: LWRadar×1 + SAMSite×2
     ComplementPer 15 RegionGDP Once: ArmyBaseDef×1 + AirportTactical×1
  NuclearGroups
     Minimal: Airport×1      Target: OverHorizon×2, MissileSilo×4, LaunchpadICBM×2, ABMSite×8 …
```
要点：
1. **"最小集"是硬门槛**：最小空军（`Airport×1`）没到位，AI **不会发动入侵**；
2. **按敌方 GDP/抵抗史算 Effort 自动扩编**（`ComplementPer N Effort|RegionGDP [Once] [Max n] [Optional]`）；
3. **研究顺序分层（TTL）**，空军科技从第 1 层就入场（轰炸机＋空空/空地导弹＋预警机）；
4. 防御组里**防空/雷达按区域 GDP 追加**（穷省不堆防空）——很省算力的做法。

## 5. 难度与全局旋钮
- `AI/limits.txt`：6 档（VeryEasy/Easy/Normal/Hard/VeryHard/Insane）各给一组阈值
  `StartWar`（允许发动全球进攻的"污染"阈值，越难越低→越早开战）、`KillAllButAllies`、`KillAllButAlliesWithLessScore`、`KillAll`。
  ⇒ **难度＝同一套逻辑换一组阈值**，不是写第二套逻辑。
- `ProductionEfficiency.txt`：`MinLevel 0.2 / MaxLevel 1.2` + 每个科技给 `Cap/Add/GrowthMult`；
- `Limits.txt`：`Min/Max/Step*` 控制效率时间、和平计时、无核计时、倒计时。

## 6. 对《终序千禧》AI 空军项目的可借点（建议，供 P1b/P2/P3/P4 用）
| ICBM 的做法 | 我们可以怎么用 |
|---|---|
| **Airport 组的 DistanceFrom "Bomber" + DistanceType flight** | P1a 选靶已是"航程内候选"；可加"用轰炸机航程作距离基准"的显式口径，并把它接成 GV |
| **Defence 标签＝只在己方领土才打** | P2 视野门的**替代/补充**：更直观、更省算 |
| **Fade（同目标衰减）** | P2"去重/冷却"的现成模型：同省被打过后优先级衰减，跨回合恢复 |
| **MaxTargets 3 / PriorityDivider 50** | P2 每国每回合出击上限、换目标阈值 |
| **Avoid 列表** | P2 避免硬目标（如已筑防空省） |
| **return when <N>** | P1b/P2 的"损失后补员/节流"，正好和"AI 造机上限"天然配套 |
| **Minimal 兵力门槛才发起进攻** | P1b 设计可升级为：AI 至少 1 架 BOMBER+若干护航**才开始战略轰炸**（避免空手出击浪费概率门） |
| **难度＝一组阈值（limits.txt）** | P4 照抄结构：`GV_Difficulty` 里按 6 档给"AI 造机折扣/出击频率/视野容差" |
| **按机型分工（轰炸／SEAD／反机场／特种）** | P3 空战对称与分工的设计参考（别只有"轰炸/巡逻"两类） |
