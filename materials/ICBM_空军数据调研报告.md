# ICBM: Escalation —— 空军 / 打击 / 防空 数据源考古报告

> 目标目录：`/sdcard/GLG/历史23/ICBM Escalation Endless October PROPER/`
> 数据主干：`Units/{Units,Missile_defs,Missile_types,Radars,explosion}.txt` · `AI/{GroupsConquest,StrategyConquest,limits,Conditional}.txt` · `lang/Eng/UI.lng` · `Tutorial/MissionN/Tutorial.txt` · `UI/UI.txt`
> 说明：**`Manuals/` 为空**（`Manuals/PlaceHolder` 0 字节），故第 3 项玩法说明全部改由 `lang/Eng/UI.lng` 的教程文案 + `Tutorial/Mission6/Tutorial.txt` 脚本提取。

---

## A. 飞机单位定义

**结论**
1. 飞机是 `[UNIT]` 条目，`Type Airborne` + `Slave`（必须被机库托管）+ `AutoReturn Yes`（自动返航）三件套；核心数值为 `Speed / TurnSpeed / Range(km) / MaxAutoEngageRange / Power / Size / MaxElevation / ProductionCost`。
2. 挂载不是单一"攻击力"，而是 `Config "<挂载名>"` 下的 `Weapon "<弹药>" <备弹> Launch <齐射数> Time <再装填秒> [AutoEngage] [Principal]`；对空对地靠弹药自身的 `Type`（见 D 节）区分。
3. 代际升级用 `ImprovedBy "Generation_N_Aircraft" { Set Speed/Range/Power/Size ... Config ... }` 覆盖，同一 UNIT 承载 6 代。
4. **巡逻配额不在飞机身上，在载机平台身上**：`CanHostAircrafts "<机型>" <容量> Patrol <可巡逻数> [AIAutoPatrol]`，另有 `Airway Launch n Time s` 表示跑道/弹射器吞吐。

**证据**

`Units/Units.txt:190-222`（完整战斗机条目，节选主字段）
```
190: [UNIT] "Fighter"
191:   Tech "U_Fighter"
194:   MaxElevation 20
202:   Size 0.05
204:   Type Airborne
205:   NoAutoDeploy
206:   Slave
207:   AutoReturn Yes
208:   Speed 700 // in km per h
209:   TurnSpeed 9 // in angles per second
211:   Range 2400 // in km. Higher than multirole to simulate lighter takeoff weight, also emphasises defence
212:   MaxAutoEngageRange 1200
213:   Power 0.65
214:   Config "Air-To-Air" Default
215:     Weapon "AAM" 2 Launch 1 Time 120 AutoEngage
216:     Weapon "Plane Gun" 20000 Launch 1 Time 6 AutoEngage
217:   Radar "STD Vision Air"
218:   Radar "Air Vision"
220:   ProductionCost 1.0
222:   Crash "std_bomb"
```
代际升级：`Units/Units.txt:277-292`
```
277:   ImprovedBy "Generation_4_Aircraft"
281:     Set Size 0.03
282:     Set Speed 1000
284:     Set Range 3750
285:     Set Power 1.2
289:     Config "Air-To-Air"
290:       Weapon "AAM" 8 Launch 2 Time 60 AutoEngage Principal
```
对地机（多用途）：`Units/Units.txt:363-392`
```
363: [UNIT] "Attack"
381:   Speed 650    382:   TurnSpeed 7.5    384:   Range 2200 // in km
387:   Config "Bombs"
388:     Weapon "Free fall bomb" 4 Launch 1 Time 3 AutoEngage Principal
390:   Config "Rockets" Default
391:     Weapon "Rocket Pod" 8 Launch 8 Time 4 AutoEngage Principal
```
轰炸机（航程/和平期约束）：`Units/Units.txt:836-859`
```
855:   Speed 400   856:   TurnSpeed 3   857:   Range 6000   858:   Power 2
859:   CanCrossBorderDuringPeaceTime No
```
截击机（`CanPatrolPoint`）：`Units/Units.txt:714,736-739,831`
```
736:  Speed 1200   738:  Range 3000   739:  MaxAutoEngageRange 3000
831:  CanPatrolPoint
```
**机库/巡逻配额**（这是"巡逻"真正的数据落点）：
`Units/Units.txt:3145-3151`（Airport）
```
3145:  Airway Launch 2 Time 180 // in seconds in 1x time
3146:  Airway Launch 1 Time 300 // in seconds in 1x time
3147:  CanHostAircrafts "Fighter" 10 Patrol 4
3149:  CanHostAircrafts airway 1 "Bomber" 5 Patrol 2
3150:  CanHostAircrafts airway 1 "Interceptor" 4 Patrol 2
3151:  CanHostAircrafts airway 1 "AWACS" 2 Patrol 1 AIAutoPatrol
```
`Units/Units.txt:1868-1876`（Carrier）`Airway Launch 1 Time 60/180/210` + `CanHostAircrafts "Attack" 30 Patrol 6`、`"EW_Aircraft" 6 Patrol 2 AIAutoPatrol`。
占位/托管：`Units/Units.txt:3231-3232` `HangarSpaceRequired 1` / `ReportAsHosted Yes`。

---

## B. 打击任务的指派与结算

**结论**
1. 玩家侧"打击"= 给载机平台下 `ATTACK` 目标（或 Strike Plan 批量下），平台按 `Config` 挂载出动 → 飞到目标 → 释放 `[MISSILE]` → `[MISSILE]` 触发 `[EXPLOSION]` → 引擎按爆炸参数结算。**三层链路全部数据驱动**。
2. 伤害参数集中在 `Units/explosion.txt`：`Damage / Range / FullEffectRange / Kilotons / PollutionSize / ScorchSize / MinCasualties`，外加文件首行全局 `PollutionMultiplier`。
3. **未找到**"对目标省经济/工业/人口的独立百分比伤害系数表"。搜过 `MinCasualties|CasualtiesMult|GDP|Industry|Population|Economy|Complex` 全目录 `*.txt`。唯一直接作用于城市**产出复合体**的配置是 EMP 对 `Complex Production/Science/Espionage` 的乘数。人口损失由 `Kilotons/Damage/Range` + `MinCasualties` 在引擎内算，数据只给输入。
4. 伤害修正是"乘数链"：ECM / CBRN_Defence / Survival_Boost / DEFCON / Collateral_Damage_Modifier 各自 `AffectedBy Unit "<tech>" Damage <mult>`。

**证据**

弹药层 `Units/Missile_defs.txt:76-94`
```
76: [MISSILE] "Free fall bomb"
78:   Type "Default"
84:   Explosion "std_bomb"
85:   Range 50 // Bomb Range
86:   Ballistic
87:   FreeFalling
88:   Precision 1.75 // this is the potential deviation from the target
91:   AffectedBy Unit "Collateral_Damage_Modifier" Damage 1500000 ///Small Munition Damage
93:   AIHint CounterValue 0 //Default Conventional
94:   AIHint CounterForce 1 //Default Conventional
```
爆炸层 `Units/explosion.txt:1` `PollutionMultiplier 0.35`；`:12-22`
```
12: [EXPLOSION] "std_bomb"
16:   Damage 1
17:   Range 0.05
18:   FullEffectRange 0.01
```
`Units/explosion.txt:519-534`（核当量档）
```
519: [EXPLOSION] "nuke_100"
520:   Emulated "Units/Emulated/100K.txt"
525:   Kilotons 100
526:   Damage 225
527:   Range 60
528:   FullEffectRange 10
533:   PollutionSize 80
534:   ScorchSize 40
```
保底杀伤 `Units/explosion.txt:1157-1167`
```
1157: [EXPLOSION] "Guaranteed_Casualties_4750"
1159:   Kilotons 0     1160:   Damage 0
1161:   Range 5        1162:   FullEffectRange 5
1166:   MinCasualties 4750
1167:   Type Other
```
**唯一的"对省/城产出"效果配置** `Units/Units.txt:8-30`
```
8: [UNIT] "VirtualCity" MODIFY
12: Modifier "Collateral_Damage_Modifier"
20:  AffectedBy Explosion "EMP_Blast" Complex Production
21:  case "EMP_Defence_Mk4" Multiply 0.75
22:  default Multiply 0.25
24:  AffectedBy Explosion "EMP_Blast" Complex Science   (同上 0.75/0.25)
28:  AffectedBy Explosion "EMP_Blast" Complex Espionage (同上 0.75/0.25)
```
伤害乘数链 `Units/Missile_defs.txt`（"10M nuke_heavy" 条目内，起始行 1635）
```
AffectedBy Unit "CBRN_Defence_0" Damage 0.5 / "CBRN_Defence_1..2" 0.80 / "3..4" 0.85
AffectedBy Unit "Survival_Boost_1..2" Damage 0.850 / "_3" 0.875 / "_4..6" 0.900
AffectedBy Unit "DEFCON_4" Damage 0.90 / "DEFCON_3" 0.75 / "DEFCON_2" 0.65 / "DEFCON_1" 0.50
```
`Units/Missile_defs.txt:483-490`（AAM 受 ECM 影响）`AffectedBy Unit "ECM_Bonus_1" Damage 0.90 / Precision 1.075`（Mk1–Mk4 逐级）。

指派语义（AI 侧，同时也是引擎的目标选择语义）`AI/GroupsConquest.txt:21-38`
```
21: // Target _unit type_ - potential target for the group
22: // tag Immediate - means the target should be attacked on sight
25: // Fade _number_ - means the multiplier applied to the priority each time the unit is targeted,
26: //  default Fade is 0.02 for units, 0.4 for the cities
32: // MaxTargets _number_ - max number of targets to concentrate on. Default is 1
33: // PriorityDivider _number_ - ... target is to be changed if the candidate target has the priority at least PriorityDivider times bigger
37: // Return when type "unit type" _number_ - if the number of hosted units falls below the _number_, need to retreat to replenish
```
结算事件词汇（教程脚本的等待条件，等于引擎事件名）`Tutorial/Mission6/Tutorial.txt:76,84,100,121`
```
76: Message 4004 NoOk Wait "LAUNCHED [5] [AWACS]"
84: Message 4005 NoOK Wait "ATTACK ORDERED [192728] [75992]" Wait "ATTACK ORDERED [235736] [24792]"
100: Message 4006 NoOk Wait "DESTROYED [75992]" ...
121: Message 4013 NoOk Wait "KILLED POPULATION [Calcutta]" Wait "KILLED POPULATION [Delhi]" Wait "KILLED POPULATION [Lahore]"
```

---

## C. 巡逻 / 拦截 / 打击计划簿（文案与流程）

**结论**
1. "巡逻"有两套：机库开关式自动巡逻（`Allow air patrol` / `Air patrol:` 对应数据侧 `Patrol N` 配额）与手动航路巡逻（Shift 连点建节点，点回中间节点成环）。
2. 拦截分两层：机库**自卫自动升空**（无需玩家下令）+ 专职 `Interceptor` 机型点杀 AWACS/轰炸机。
3. "打击计划簿"= Strike Planner（基础/高级），三大开关 `Auto Continue / Synchronize Attack / Timed Destruction`；单位可用 `Exclude from Strike Plans` 摘出。

**证据（`lang/Eng/UI.lng`，行号:ID）**
```
2134: 2066 LANG "Allow air patrol"
2133: 2067 LANG "Replenish aircraft"
2132: 2068 LANG "No aircraft available in stock!\nYou need to build them first."
 972: 3301 LANG "Air patrol:"
1553: 2734 LANG "Set patrol route"
1517: 2770 LANG "Patrolling..."
2166: 2028 LANG "Point of no return to base!"
1463: 2822 LANG "Participates in Strike Plan"
1464: 2821 LANG "Exclude from Strike Plans"
1667: 2619 LANG "Auto Continue"   1666: 2620 "Synchronize Attack"   1665: 2621 "Timed Destruction"
 970: 3303 "Create new group"  971: 3302 "Group"  966-969: 3310 "ATTACK" 3311 "INVADE" 3312 "DEFEND" 3313 "Edit Attackers"
```
教程原文（关键三条）
```
853: 3510 LANG "Good! You can also toggle the 'Air Patrol' buttons to have the airbase automatically have planes patrol around the base. Regardless if you tell them to patrol or not, airbases will automatically send out fighters to attack enemy planes if they pose a threat to us. Many other units will also attack in self-defence, but most won't move unless you order them to, with the exception of planes."
849: 3512 LANG "Changing the weapon loadout will make all the bombers at that particular airbase use those weapons when you scramble them. ... shift-click the 10MT Heavy Bomb. That will change the loadout type for every airbase we have."
677: 4102 LANG "Good. It's worth noting that you only need to issue orders to the lead ship and the escorts will follow it around and attack any targets you assign. Later, we'll use this carrier group to attack an enemy faction with airstrikes, but for now, let's build a destroyer patrol."
```
Strike Planner 步骤链 `UI.lng:1704,1705,1701,1700,1698,1697,1696`
```
2555 "To avoid micro-managing dozens of units, you have the Strike Planner. Click on the \"New Strike Plan\" button in the bottom left corner of the screen."
2556 "This screen allows you to automate a massive strike. The left column lists the unit types you can guide - the Attackers. Click on the Carrier icon to plan the actions for your carrier groups."
2559 "The Faction column allows you to limit your attack to specific regional targets only. ... Auto Continue means your units will continue selecting and attacking new targets after the initial strike plan is executed. Synchronize Attack means all attacking units are to coordinate their actions. Timed Destruction means your units will time their attack to land the warheads on all selected targets almost simultaneously."
2560 "Now let's create another strike plan, this time for your Strategic Nuclear Forces! Click on the \"New Strike Plan\" button."
2562 "And finally, assign this plan a new icon - click the Radiation icon in the top left corner of the Strike Planner window."
2563 "Plan Armageddon is planned, now it's time to execute! Click OK button to close the Strike Planner."
2564 "There are two icons representing your strike plans in the bottom left of the screen. Each icon has the execution time printed on it - this is the time required for the last warheads to reach selected targets."
```
空军教程链 `UI.lng:702,700,698,697,696,691,689,687`：4001（先打机场/SAM）→ 4002/4003（截击机点杀 AWACS）→ 4004（自己 AWACS 出动去巡逻点）→ 4005（机场对机场"two-pronged strike"）→ 4006（EW 机 SEAD 反辐射）→ 4009-4011（三种轰炸机分工）→ 4012-4014（挂 ALBM/核弹打军事基地与城市）。
单机操作 `UI.lng:855` `3509 "...Click the 'fighter' icon or press and hold 'Z' to select it, and then left click on the map to send it out. Make sure not to send it out so far that it runs out of fuel!"`；下令方式 `UI.lng:850` `3513 "...select a friendly unit and either press 'attack' or hold control, and then click what you want to attack..."`。

**玩家视角一次打击的完整流程**：选机场/航母 → 选 `Config` 挂载（Shift 点可全局改同类平台）→ 点机型图标出动（受 `Airway Launch/Time` 吞吐与 `Patrol` 配额限制）→ 按 attack / Ctrl+左键指派目标（或进 Strike Planner 选 Attackers+Targets+Factions+三开关，命名/图标，Execute）→ 飞行受 `Range`/`Point of no return to base!` 约束 → 进入敌方 SAM/战斗机拦截层 → 投弹触发 `[EXPLOSION]` → `AutoReturn` 回场 → `Replenish aircraft` 补员。

---

## D. 防空 / SAM / 反导

**结论**
1. 防空单位 = 普通 `[UNIT]` + `Weapon ... AutoEngage`，能力全靠弹药的 `Type`。拦截判定核心是 `Range / Speed / Precision / Launch(齐射) / Time(再装填)` 与目标 `Size`（隐身即减 `Size`）。
2. `Missile_types.txt` 定义了完整的交战矩阵：AntiAir / AntiAirNuke / AntiMissile / AntiMissileMidcourse / AntiMissileTerminal / AntiMissileAA / AntiAirAll / AntiRadiation / Laser_Weapon。
3. 反辐射（SEAD）是白名单式硬编码目标表。

**证据**
`Units/Units.txt:4289-4331`
```
4289: [UNIT] "SAM_site"
4303:   AttackDelay 0.5    4304:   ModelLaunchTime 0.5
4306:   Weapon "SAM" 20000 Launch 1 Time 70 AutoEngage
4307:   Weapon "SAM MD" 20000 Launch 1 Time 70 AutoEngage
4310:   Config "Nuclear SAM"  4311:   Weapon "Nuclear SAM" 1 Launch 1 Time 100 AutoEngage
4318:   ImprovedBy "SAM_Mk2" Modify Weapon "SAM" Set Launch 2
4330:   ImprovedBy "SAM_Mk3" Modify Weapon "SAM" Set Time 20
```
`Units/Missile_defs.txt:8589-8636`
```
8589: [MISSILE] "SAM"   8591:   Type "AntiAir"
8597:   Range 300   8598:   Speed 3000   8599:   Precision 0.16   8602:   MaxElevation 75
8605:   ImprovedBy "SAM_Mk2" Set Range 400   8606: ... Set Speed 3500
8633:   GlobalShowType SAM_RANGES
8634:   DisablingTech "M_Surface_to_air_missile_MD"
```
`Units/Units.txt:4273-4278`（老式 AA，炮+轻 SAM 混装）
```
4273:  Weapon "AA Gun Old" 20000 Launch 2 Time 1 AutoEngage
4274:  Weapon "Light SAM" 20000 Launch 2 Time 35 AutoEngage LaunchPoint -1
4275:  Weapon "Light SAM MD" 20000 Launch 2 Time 35 AutoEngage LaunchPoint -1
4278:  ImprovedBy "AA_Laser" Weapon "AA Laser" 20000 Launch 1 Time 1 AutoEngage
```
类型矩阵 `Units/Missile_types.txt:113-146,232-241`
```
113: [TYPE] "AntiAir"            RequiresPreciseTargeting Yes / CanBeUsedAgainst Airborne
121: [TYPE] "AntiMissile"        CanBeUsedAgainst Missile
126: [TYPE] "AntiMissileMidcourse" CanBeUsedAgainst HighMissile / Affects City
131: [TYPE] "AntiMissileTerminal"  CanBeUsedAgainst Missile + HighMissile
136: [TYPE] "AntiRadiation"      CanBeUsedAgainst "Fixed_LW_radar" / "AA_Site_Old" / "SAM_site" / "ABM_Site" / "MOBILE_SAM" / "Terminal_ABM" ...
232: [TYPE] "AntiMissileAA"      Airborne + Missile
237: [TYPE] "AntiAirAll"         Airborne + Missile + HighMissile
```
其余防空/反导单位：`Units/Units.txt:4246 AA_Site_Old`、`4342 ABM_Site`、`4417 MOBILE_SAM`、`4474 Terminal_ABM`、`4530 Mobile_ABM_Laser`、`4571 Laser_Defence_Complex`、`6080 Laser_Defence_Satellite`；舰载近防 `Units/Units.txt:1864-1867` `Weapon "CIWS" 25000 Launch 2 Time 5` / `"Laser CIWS" ... Time 20`。

---

## E. 核挂载 / 战斗部（概览）

**结论**：核弹是 `[MISSILE]`，通过平台的 `Config "<挡位名>" → Weapon "<核弹>" 1` 挂上；当量档由 `Explosion "nuke_xxxxx"` 决定；条约/管控由 `GenevaCategory` 打标签；`CanBeIntercepted` 给可拦截概率。

**证据**
`Units/Units.txt:880-935`（轰炸机挂载档全表）
```
880:  Config "Bombs" Default  Weapon "Free fall bomb" 20 Launch 4 Time 1
882/884/886/888/890/892:  Config "100 Kiloton"/"500 Kiloton"/"10 Megaton"/"25 Megaton"/"50 Megaton"/"100 Megaton"
894:  Config "Chemical Bomb"  Weapon "Chemical_bomb" 6 Launch 2 Time 1   (+Improved/Advanced/Experimental)
903-910:  Config "Bioweapon" / "Improved" / "Advanced" / "Engineered Bioweapon"
912/914:  Config "Cobalt Bomb" / "Enhanced Salted Bomb"
917: ////AL-ICBM capability is locked into "CanFireAL-ICBM" which has LR Bombers as a prereq!
920-922:  Config "250kt ICBM"  ImprovedBy "CanFireAL-ICBM"  Weapon "ICBM (250kt Light)" 1 Time 900
```
`Units/Missile_defs.txt:1635+`（"10M nuke_heavy"）
```
Type "Nuke" / Explosion "nuke_10000" / Explosion "Guaranteed_Casualties_4750"
Range 50 / Speed 100 / Ballistic / FreeFalling / SingleAttack / Precision 3.0 / ProductionCost 6.4
Class "UC_Nuke_Weapon" / GenevaCategory "Heavy Gravity Bombs" / GenevaCategory "High-Yield Nukes"
ProductionCostDegrades / MaxNumberToOrder 0 / ImprovedBy "M_25M_nuke_heavy" CanBeBuilt 0
```
`Units/Missile_defs.txt:8453+`（"ALCM-N"）`Explosion "nuke_10"` + `Guaranteed_Casualties_300`、`Range 600 / Speed 900 / CanBeIntercepted 0.50 / Class "UC_Nuke_Tac_Weapon" / GenevaCategory "Offensive Tactical Nukes"`。
条约分类总表 `Units/Missile_types.txt:32-57`（`[GENEVA_CATEGORY] "Chemical" Name 3260` … `"Unitary Nuclear SLBM" Name 3278`），文案在 `lang/Eng/UI.lng:3260-3280`。

---

## F. AI 目录里的空军调度

**结论**：**没有独立的"空军调度脚本"**（搜过 `AI/` 全部 4 个文件与 `GameMode/Blitz/AI/`）。AI 侧空军是"编组模板 + 目标优先级表 + 部署点类型"三件套，纯声明式。

**证据**
`AI/GroupsConquest.txt:389-417`（战略机场组，含目标优先级与规避表）
```
389: Group Airport
390:   PlacementType Airbase
391:   DistanceFrom "Bomber"
392:   DistanceType flight
393:   "Airport" Leader
394:   "SAM_site" optional   395: "ABM_Site" optional   396: "EW_MOBILE" optional
398:   extra missile 10
399:   Target "Missile_Silo" Priority 8000 Nuclear
404:   Target "SSBN" Priority 5000 Fade 0 Conventional Nuclear
409:   Target City Priority 100 Nuclear
413:   Avoid "Carrier"   414: Avoid "SAM_site"   415: Avoid "MOBILE_SAM"   416: Avoid "Destroyer"
417:   MaxTargets 3
```
`AI/GroupsConquest.txt:479-496`（**专职 SEAD 组**）
```
479: Group AirportMakeshiftSEAD
483:   "Improvised_Airbase" Leader
484:   "EW_MOBILE"
488:   Target "ABM_Site" Priority 10000 Nuclear
489:   Target "SAM_site" Priority 5000 Nuclear
490:   Target "MOBILE_SAM" Priority 5000 Nuclear
```
另有 `421 Group AirportTactical`（`DistanceFrom "Attack"`）、`451 AirportMakeshift`、`498 AirportSpecial`（`DistanceFrom "High_Speed_Bomber"`）、`41/78 Carrier/CarrierBig`（`PatrolType NavalBase self`，目标含 `"Airport" Priority 100 Nuclear`）。
巡逻点语义 `AI/GroupsConquest.txt:9` `// PatrolType means what type of points to patrol, randomly selecting from the available ones.`；航程语义 `:11-13`。
战略层 `AI/StrategyConquest.txt:54-56` `Strategy "Airland Battle" / PreferNuclear 50 / Probability 100`，其防御/进攻编成里直接引用上述组名（如 `"Airport" x 1`、`"AirportTactical" x 1`、`"SAMSite" x 5`，见 `:237-265`、`:537-556`），科技清单里逐代解锁 `"Generation_N_Aircraft"`、`"Interceptor_aircraft"`、`"SAM_Mk2/3/4"`（`:64-159`）。
开战门槛 `AI/limits.txt:21-25`（`[Normal] StartWar 0.10 / KillAllButAllies 0.3 / KillAll 0.85`，单位是污染度）。反应式研发 `AI/Conditional.txt:8-13`。

---

## 对移植项目的启示：复刻"一次打击"最少需要什么

复刻 ICBM 的空中打击闭环，数据与规则可压缩为 **6 张表 + 5 条规则**：

**数据（表）**
1. **平台表**：`{Airway: [(launch, cooldown)], CanHost: [(机型, 容量, Patrol配额, AIAutoPatrol)], HangarSpaceRequired, 自卫武器}` —— 出动吞吐与巡逻上限的唯一来源。
2. **机体表**：`{Speed, TurnSpeed, Range, MaxAutoEngageRange, Power, Size, MaxElevation, Slave, AutoReturn, Crash爆炸ID}` + `ImprovedBy` 代际覆盖层。
3. **挂载表（Config）**：`Config → [(弹药ID, 备弹, Launch齐射, Time再装填, AutoEngage, Principal)]`。挂载必须是"平台级可切换档位"而非机体固有属性——这是 ICBM 全部战术弹性的来源。
4. **弹药表**：`{Type(交战矩阵), Range, Speed, Precision(偏差), AttackAngle, MaxElevation, CanBeIntercepted, Explosion[]}`。
5. **交战矩阵表**：`Type → CanBeUsedAgainst[] / Affects[] / RequiresPreciseTargeting`。拦截、防空、SEAD 全靠它，不要写 if-else。
6. **爆炸表**：`{Damage, Range, FullEffectRange, Kilotons, MinCasualties, PollutionSize, ScorchSize}` + 全局 `PollutionMultiplier`。

**规则**
1. **两段判定**：命中点 = 目标点 + `Precision` 随机偏差；伤害 = `Damage` 在 `FullEffectRange`（满伤）→ `Range`（衰减到 0）间插值。
2. **乘数链**：最终伤害 = 基础 × Π(防御方 tech 乘数 CBRN/Survival/DEFCON/ECM)。所有修正统一写成 `AffectedBy Unit "<tech>" Damage/Precision/Range <mult>`，一个求值器通吃。
3. **省级结算只需两个通道**：人口（爆炸半径内 + `MinCasualties` 保底）与污染（`PollutionSize × PollutionMultiplier` 累加到全局条）。ICBM **没有**独立的"工业/经济伤害系数表"——经济衰减来自城市被毁与领土占领，只有 EMP 走 `Complex Production/Science/Espionage` 乘数这一条特例。移植时若要"打击伤经济"，这是必须自行补的一块，且照 EMP 那条写成 `AffectedBy Explosion → Complex <产出通道> Multiply` 即可无缝接入。
4. **往返约束**：`Range` 是往返总油量，需要一个 "point of no return" 事件（UI.lng:2028）；`AutoReturn` + `Replenish` 闭环。
5. **批量指派层（Strike Plan）**：`{Attackers[], Targets[], Factions[], AutoContinue, SynchronizeAttack, TimedDestruction}` + 单位级 `ExcludeFromStrikePlans` 开关。`TimedDestruction` 需要一次"最晚弹着时间"反解，是全套里唯一非平凡的调度算法。AI 复用同一套：`Target <类型> Priority <n> [Fade] [MaxDist] [Immediate|Defence] [Conventional|Nuclear]` + `Avoid` + `MaxTargets` + `PriorityDivider`。

**未找到 / 已排除**：`Manuals/`（空）；全目录未搜到 province 级经济/工业损伤系数表（关键词 `GDP / Industry / Economy / CasualtiesMult / Damage.*Province`）；`AI/` 无程序化空军调度脚本；`Launcher/`、`Maps/`、`DLC/DLC_1` 仅为启动器本地化、地形位图与场景/语言包，无空军规则数据。
