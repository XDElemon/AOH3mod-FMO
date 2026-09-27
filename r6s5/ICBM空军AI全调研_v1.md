# ICBM《Escalation》空军 AI 全调研（v1）

> 调研时间：2026-09-25 13:44 ｜ 对象：`/sdcard/GLG/历史23/ICBM Escalation Endless October PROPER`（完整安装，2.8G）
> 目的：把 ICBM 的"派发闸门"整套设计看清，用它的成熟做法**校正我们 P2/P3/P4 的方案**。
> 本文件为**只读调研**：未改一行游戏代码、未动我们的 smali。

## 一、一句话结论
ICBM 的空军 AI **不是"概率门"**，而是一套**四层数据驱动**的指挥系统：
**战略层（何时打、造多少）→ 编组层（派什么、从哪起、航程按谁算）→ 目标层（打谁、多重要、打几个、什么时候换靶、什么绝对不打）→ 单位层（飞得多快多远、能不能自动交战、会不会自动返航）**。
我们的 P2 目前只有"10% 概率门"，**应改为 ICBM 式的"优先级 + 衰减 + 上限 + 换靶阈值 + 回避表"**（详见 §八）。

## 二、文件地图（空军相关）
| 文件 | 作用 | 关键度 |
|---|---|---|
| `AI/StrategyConquest.txt`（82KB） | **战略层**：13 个战略（Airland Battle / Gravity Bomber / Standoff Airpower / Nuclear Invader …），含核/常规投入比、科技门、入侵编组的最小集与补充分配 | ★★★ |
| `AI/GroupsConquest.txt`（30KB） | **编组层 + 目标层**：每类编组的构成、部署点类型、距离口径、目标优先级表、回避表、上限。**文件头 40 行就是整套语义说明书** | ★★★ |
| `AI/limits.txt`（1KB） | **难度层**：每难度档的"开战 / 打所有人 / 打大分盟友"阈值 | ★★ |
| `AI/Conditional.txt`（1KB） | **反应层**：被打到什么弹种 ⇒ 去研究什么（CBRN 防御链） | ★ |
| `Units/Units.txt`（6232 行） | **单位层**：飞机速度/航程/自动交战半径/雷达/是否"Slave 屬机场"、AutoReturn | ★★★ |
| `Units/Missile_defs.txt`·`Missiles.txt`·`Radars.txt` | 弹药与雷达参数 | ★★ |
| `GameMode/Blitz/AI/*.txt` | 模式变体（闪电战）下的一套同名文件 | ★ |
| `Units/Units.txt` 的 `[UNIT] "Bomber"/"Fighter"/"Attack"/"Interceptor"/"High_Speed_Bomber"` | 五种飞机 | ★★★ |

## 三、战略层（何时打、打多大）
示例（`Strategy "Airland Battle"`，第 56 行起）：
```
Strategy "Airland Battle"
  PreferNuclear 50              // 0 = 全入侵，100 = 全核战
  Probability 100               // 该计划被选中的权重
  InvasionTechList
    "Generation_2_Bomber" MinRequired    // 没研究完这些 ⇒ AI 根本不考虑入侵
    "Air_to_Air_Missile" MinRequired
    ...
  InvasionGroups
    Minimal                    // "能开始入侵"的最小兵力
      "ArmyGroup" x 4
      "Airport" x 1            // ★ 至少 1 个机场组，否则不打
    ComplementPer 10 Effort Over 100   // 每 10% 难度再加 1 个陆军组
      "ArmyGroup" x 1
    ComplementPer 80 Effort Over 100
      "AirportTactical" x 1    // ★ 难度够高才补第二个（战术）机场组
  DefenseGroups
    Minimal
      "Airport" x 1            // ★ 连"守家"都要求有 1 个机场组
      "SAMSite" x 5
      ...
```
**可迁移的设计要点**
1. **科技门（MinRequired）**：AI 不是"有钱就造"，而是**先决科技到位才考虑**。我们 P1b 的"每回合幂等补建造队列"已等价，但没有科技门。
2. **机场组是"参与战争"的门票**：两组（入侵 + 防御）都要求 `"Airport" x 1`。
3. **兵力按"难度（Effort）"阶梯补**：`ComplementPer 10 Effort Over 100`。我们 P4 要做难度缩放时，应照这个"阶梯"而不是线性乘法。
4. **失败会加码**：文件头注明"Failed invasion attempt should automatically increase the effort"。
5. **核/常规投入比（PreferNuclear）是策略属性**，不是全局硬度。

## 四、编组层（派什么、从哪起、航程按谁算）
`GroupsConquest.txt` 头部（第 11–40 行）给出的语义（原文翻译）：
| 指令 | 含义 |
|---|---|
| `PlacementType <类型> [self]` | AI 把兵力部署在哪类点上；`self` = 用"我方"的点，而非针对所选敌人的点 |
| `AttackType` | 该组去哪里进攻（也影响部署点与等待点的选择） |
| `WaitType` | 全球总攻下达前在哪等 |
| `PatrolType` | 巡逻哪类点（随机选） |
| `DistanceFrom "<单位>"` | **距离以哪种单位的航程为准**（例：机场组以 `Bomber` 算 → "机场到敌人有多远"是按轰炸机航程量） |
| `DistanceType (radar/flight/weapon)` | 距离口径：雷达探测 / 飞行航程 / 武器射程 |
| `leader` / `optional` | 主单元标签 / 可缺省的附属单元 |
| `extra missile N` | 备弹量 |
| `ObsoleteIfTech "<tech>"` | 该科技到手后本组作废 |
| `CanOccupy true/false` | 能否用于占领 |
| `Return when type "<unit>" N` | **驻留单位数低于 N ⇒ 返航补给** |

**五个空军组（全部）**
| 组 | 部署点 | 距离基准（口径） | 组成 | 备弹 | 目标特征 | 回避表 | MaxTargets |
|---|---|---|---|---|---|---|---|
| `Airport`（战略轰炸） | Airbase | **Bomber** / flight | Airport+（SAM/ABM/EW 可缺省） | 10 | 导弹设施 8000、城市 100、陆军 1000 | **Carrier、SAM_site、MOBILE_SAM、Destroyer** | **3** |
| `AirportTactical`（战术/前线） | **BorderDefence** | Attack / flight | Tactical_Airbase+（SAM/ABM/EW 可缺省） | 10 | **敌机场 10000（首打）**、导弹设施 8000 | 仅 Carrier、Destroyer（**SAM 的回避被注释掉了 ⇒ 敢打 SAM**） | **3** |
| `AirportMakeshift`（简易机场） | Airbase | Attack / flight | Improvised_Airbase+ | 10 | 与战略组类似 | Carrier、SAM_site、MOBILE_SAM、Destroyer | **3** |
| `AirportMakeshiftSEAD`（压制防空） | Airbase | Attack / flight | Improvised_Airbase + **EW_MOBILE（必备）** | 10 | **ABM 10000、SAM 5000、MOBILE_SAM 5000** | Carrier、Destroyer | **3** |
| `AirportSpecial`（重型/隐身专精） | Airbase | **High_Speed_Bomber** / flight | Specialized_Airport + EW_MOBILE | 5 | 敌机场 10000、城市 **9000 Nuclear** | 雷达/AA/SAM/EW/FOB/特战/海岸炮 —— **避一切防空与地面小目标** | 未写 ⇒ **默认 1** |

**一眼看出的三条设计智慧**
1. **同一支空军按"任务专业性"拆成 5 组**，各自的目标表与回避表都不同（战略组怕 SAM、SEAD 组专吃 SAM、战术组无视 SAM 打机场、专精组啥防空都躲）。
2. **距离基准随组而变**：战略组按轰炸机航程量距离，战术组按 `Attack` 量，专精组按高速轰炸机量 ⇒ **航程/半径不是全局常数，而是"按编组主力的腿长"算**。
3. **`DistanceType` 三分**：雷达（我能看见多远）/飞航（我能飞多远）/武器（我打得着多远）——**三种距离是分开的，不能混成一个数**。（对照我们：视野门=radar，航程门=flight，射程门=weapon，我们的表已经分开，但**没有按编组区分**。）

## 五、目标层（ICBM 的"派发闸门"本体）
`GroupsConquest.txt` 第 25–40 行原文语义：
| 指令 | 语义（含默认值） |
|---|---|
| `Target "<单位类型>"` / `Target City` | 该组可打的目标类型 |
| `Immediate` | **见即打** |
| `Defence` | **只在"我方领土上"时才见即打**（＝反入侵；配合 `MaxDist` 使用） |
| `Priority N` | 目标重要度；**默认 1** |
| **`Fade N`** | **每次该目标被瞄准后，其优先级要乘的系数。默认：单位 0.02，城市 0.4** |
| `Nuclear` / `Conventional` | 用核弹/常规弹头打 |
| `MaxDist N` | 目标搜索半径（配合 `Defence`＝"在我方领土内多远算威胁"） |
| **`Avoid "<单位类型>"`** | **绝对不打这类单位** |
| **`MaxTargets N`** | **同时集中打击的目标数上限；默认 1** |
| **`PriorityDivider N`** | **当候选目标的优先级 ≥ 当前目标的 N 倍时，换靶。默认 50** |
| `Return when type "<unit>" N` | 存量低于 N ⇒ 返航补给 |

**这套机制在干什么（人话）**
- AI 端着一张**优先级表**选目标（比如"导弹井 8000 > 陆军 1000 > 城市 100"）。
- 一旦某目标被打过，它的优先级被 **Fade** 削掉（单位乘 0.02 ⇒ 几乎瞬间失去吸引力；城市乘 0.4 ⇒ 会掉但还能再挨几发）。
  ⇒ **"去重"不是硬拦截，而是"打过的目标自然变不香"** —— 这就是为什么重靶很少发生，却不会把 AI 卡死。
- `MaxTargets 3` ⇒ 同一时间最多盯着 3 个目标，不会全队扑一个点，也不会摊大饼。
- `PriorityDivider 50` ⇒ 除非出现"比现在的目标重要 50 倍"的候选，否则**不中途换靶**（稳定、不抖动）。
- `Avoid` ⇒ 用**单位类型白名单/黑名单**表达"我打不过/打不划算"，例如战略轰炸机明确不碰航母、SAM、驱逐舰。

## 六、单位层（飞机参数，决定"能做什么"）
| 单位 | Speed | Range | MaxAutoEngageRange | Power | 特殊 |
|---|---|---|---|---|---|
| `Bomber`（战略） | 400 | **6000** | — | 2 | `Slave`（屬机场）、`AutoReturn Yes`、和平期不可越境 |
| `High_Speed_Bomber` | 1000 | **9000** | — | 0.8 | 自带雷达（STD Vision Air / Short Wave） |
| `Fighter`（多用途） | 700 | 2400 | **1200** | 0.65 | `Slave`、`AutoReturn Yes` |
| `Attack` | 650 | 2200 | **1200** | 0.65 | `Slave`、`AutoReturn Yes` |
| `Interceptor`（截击） | 1200 | 3000 | **3000（＝全航程自动交战）** | 0.5 | `Slave`、`AutoReturn Yes` |
| `Attack_Helicopter` | — | — | — | — | 独立类型 |
**要点**
1. **`MaxAutoEngageRange` 才是"自动拦截半径"**：截击机 3000 = 全航程（纯防御），战斗机/攻击机 1200 ≈ 半航程。
   ⇒ 对照我们：截击机 500 / 战斗机 400 / 轰炸机 1000 的**表应该按"机型定位"重排**：截击机的自动交战半径应≈其航程（我们曾经"F 分支恒不成立"的根因就是没按机型定位分开设计）。
2. **`Slave` + `AutoReturn Yes`**：飞机是机场的"从属"，且**自动返航补给**。我们目前只有 `Return`/乱数返航逻辑，没有"存量低于 N 就返航补给"的阈值。
3. 有**反例"笨重但不脆"**：战略轰炸机 Power 2（硬），高速轰炸机 0.8（难伺候）——**速度换生存**。

## 七、难度层（`limits.txt`）
```
[VeryEasy] StartWar 0.15  KillAllButAllies 0.40  KillAllButAlliesWithLessScore 1.5(禁用)  KillAll 1.5(禁用)
[Easy]     StartWar 0.125 KillAllButAllies 0.35  ...  KillAll 0.75
[Normal]   StartWar 0.10  KillAllButAllies 0.30  ...  KillAll 0.85
[Hard/VeryHard/Insane] StartWar 0.075 ... KillAll 0.75
```
**要点**：难度不是"给 AI 加钱"，而是**改"开战阈值"**（越高难度越早开战）＋**改"打谁"策略**（越难越不在意盟友）。⇒ 我们 P4 照抄这个思路：**难度改的是"阈值/频率/容差"，不是数值作弊**。

## 八、映射表：ICBM → 《终序千禧》
| ICBM 概念 | 我们现状 | 差额 / 建议 |
|---|---|---|
| 战略层 Tech 门 | P1b 无科技门（只看钱与容量） | 可选：P4 加"机型科技门"；目前不强求 |
| `InvasionGroups Minimal "Airport" x1` | 已等价（P1b 造机） | ✅ 已对齐 |
| 编组（5 个机场组，各有目标表/回避表） | 我们只有 2 个分支（BOMBER 战略轰炸 / FIGHTER 巡逻） | **P3** 按机型分工（战略/战术/SEAD/专精） |
| `DistanceFrom` 按编组主力算航程 | 我们按机型查航程表（等价，但战略/战术未分开配置） | 小改：P3 时"巡逻半径"与"打击半径"分表 |
| `DistanceType` radar/flight/weapon | 我们有视野门/航程门/射程门三套（已分开） | ✅ 概念已对齐 |
| **`Priority` 优先级表** | **没有**（均匀随机选靶） | **P2a 首做** |
| **`Fade`（打过的目标优先级衰减）** | **没有**（⇒ 会重靶） | **P2b**（需持久记忆，见 §九） |
| **`MaxTargets`（同时目标数上限）** | **没有**（⇒ 会齐射同一省） | **P2a 首做**（我们叫"在飞上限 K"） |
| **`PriorityDivider`（换靶阈值）** | **没有** | **P2b** |
| **`Avoid`（绝对不打）** | **没有** | **P2a 先做"避防空"版**（需防空建筑 id） |
| `Defence` + `MaxDist`（只打进入我方范围内的） | r5c044「活猎手」已等价 | ✅ 已对齐 |
| `Immediate`（见即打） | 无 | 可选（P3） |
| `Return when type N`（存量不足返航） | 只有乱数返航/`Return` 状态 | 可选（P3 空战续航） |
| `MaxAutoEngageRange` 按机型定位 | 截击 500 / 战斗 400 / 轰炸 1000 | **P3 重排**：截击≈全航程、战斗≈半航程 |
| `limits.txt` 难度阈值表 | 全表缺失（P4 才接 `difficultyID`） | **P4** 照抄"每难度一行参数" |
| `Conditional.txt` 被打⇒反制研究 | 无 | 不适用（我们不接科技树） |

## 九、由 ICBM 反推出的三条重要结论
1. **"去重"应有更优雅的等价物**：ICBM 用 **Fade 衰减**（打过的目标变不香）而不是硬拦。
   我们若上"硬去重"，会出现"AI 想打但被拦"的空转；**Fade 式方案则让 AI 自然移开**。
   **代价**：需要"该目标被打过几次"的持久记忆 ⇒ 必须查存档面（我们的 `SaveGameManager` 是否序列化 `AirForceManager`/`Province` 的新字段）。
   ⇒ **P2 拆两步**：**P2a（无记忆）** 先做"优先级表 + 在飞上限 + 避防空"；**P2b（有记忆）** 做"Fade 衰减 + 换靶阈值"。
2. **目标优先级必须"按机型/编组"分表**，不能全局一张表：ICBM 里"战略组怕 SAM、SEAD 组专打 SAM"。
   ⇒ 我们的优先级表应按 `MissionType`（STRATEGIC_BOMBING / ATTACK_ARMY / PATROL / INTERCEPT）分别配置。
3. **三种距离口径不能混**（radar/flight/weapon）——我们已在 `getAirSpriteX` 等处置分开了，但**门槛表应显式标注口径**，避免以后又混。

## 十、附：本次调研的原文定位（可复查）
- `AI/GroupsConquest.txt` 第 1–40 行＝语义说明书；第 25–40 行＝目标层全部指令与默认值。
- 空军组行号：`Airport` 389；`AirportTactical` 421；`AirportMakeshift` 451；`AirportMakeshiftSEAD` 479；`AirportSpecial` 498。
- `Avoid` 全表：第 413–416（战略组）、445–448（战术组，SAM 两行被注释）、473–476、494–495、510–520（专精组）。
- `MaxTargets` 全表：74/110（海军2）、132（4）、292/318/346/366（导弹1）、417/449/477/496（空军3）、675/698。
- `AI/limits.txt` 全文＝难度阈值；`AI/Conditional.txt` 全文＝被打⇒反制研究。
- `Units/Units.txt`：Fighter 190、Attack 363、Interceptor 714、Bomber 836、High_Speed_Bomber 1071。
