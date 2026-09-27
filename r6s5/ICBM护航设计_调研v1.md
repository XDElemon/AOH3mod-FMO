# ICBM「护航」设计调研 v1（2026-09-17）

> 调研对象：`/sdcard/GLG/历史23/ICBM Escalation Endless October PROPER`（完整安装）。
> 方法：全文本检索 `escort/护航/护送/跟随/巡逻/拦截` ＋ 教程原文 ＋ 单位数据（Units.txt）＋ AI 脚本。

## 一、结论先行
1. **ICBM 没有"空军护航"机制**——"escort"在全部语言文件里只出现在**海军**语境；空军教学（4000-4421）讲机型、制空、巡逻、自动起飞，**零护航**。
2. ICBM 的"护航"设计＝**海军编队"跟随领舰"制**：向旗舰下令，护卫舰只跟随并攻击你指派的目标（含"尾随站位"，Changelog 有专门修复记录）。
3. ICBM 对"打击编队如何被保护"的答案＝**制空自动化体系**：先打掉威胁（敌机＋防空），再由"巡逻/自动起飞拦截"维持，而不是把战斗机粘在轰炸机旁。

## 二、证据：海军"跟随式护航"
- 教程原文（Eng/UI.lng 4102）：“you only need to issue orders to the lead ship and the **escorts will follow it around and attack any targets you assign**.”；
（CHN/UI.lng 2530-2531）：“舰队可以作为一个单元进行控制。你只需向旗舰下达命令，同一舰队中的其他战舰将会**跟随旗舰**一同行动”；快捷键 Alt=跟随。
- 实现痕迹：舰船单位数据带 `FollowRadius`（Carrier39 / Sub28 / NSub32 / Destroyer28 / Cruiser38）——**飞机单位数据没有**。
- Changelog 176：“Fixed the problem with ships not keeping the **"follow" position** and remaining in the tail of the escorted ship”——即"尾随站位"是真的在做。
- 文案：驱逐舰“作为护卫以保卫和支援航母等大型战舰”；航母“没有护航时极其脆弱”。

## 三、证据：空军侧＝制空自动化（无护航）
1. **制空先行**（教学4001-4003）：第一目标先打“威胁我空军的东西”——敌机、AWACS、防空；AWACS→SAM（EW+巡航导弹）→之后“自由空中打击”。
2. **自动起飞拦截**（794）：“只要敌人的飞机对我们构成威胁，空军基地就会**自动派出战斗机**进行攻击”。
3. **空中巡逻（Air Patrol）**：机场/航母可由按钮开关；数据层配额直接写在单位文件：
   - Airport：`CanHostAircrafts "Fighter" 15 Patrol 2` / `"Bomber" 5 Patrol 2` / `"AWACS" 1 Patrol 1 AIAutoPatrol`；
   - Carrier：`"Fighter" 10 Patrol 2` / `"Attack" 10 Patrol 2` / `"AWACS_CARRIER" 1 Patrol 1 AIAutoPatrol`。
4. **机型分工**：Interceptor（截击机）＝快＋远程弹，专打大机（轰炸机/AWACS/运输机），不擅打战斗机、无法多目标；Fighter/多用途＝打战斗机＋有限对地；AWACS＝探测；EW＝干扰＋反辐射。
5. **Suicide Mission**（超程出击）：可强行超程攻击（有去无回）——航程约束的行为化设计。
6. 战果观（中文教学）：“空战的胜利很大程度上取决于技术和数量优势，但**预警支持和电子战**等优势也会带来意想不到的结果。”

## 四、AI 侧
- AI 研究/编成脚本（StrategyConquest.txt）中 `Interceptor_aircraft` 为科技项（配合 Generation_3_Aircraft 等）；
- 群组巡逻是海军概念（GroupsConquest.txt 的 PatrolType：NavalBase/CarrierAttack/SubmarineHide 等）；空军自动化未见到"护航"群组。

## 五、对 LZ 项目的启示（对照我们的三层制提案）
- 我们的 **L-S 扫荡层**与 ICBM 哲学一致（甚至他们连打击顺序都写好了）。
- 我们的 **L-E 伴随层**在 ICBM 里**不存在**——他们用"制空成果"替代"伴随"。严格对标的话，"护航"= 加强扫荡/巡逻/自动拦截即可。
- 但 ICBM 海军给出了"跟随"的参考实现（FollowRadius＋尾随站位＋自动攻击指派目标）。若做伴随层，形态可借鉴"领舰-跟随"，但注意：**他们空军没用**，说明伴飞护航不在其设计观内。

## 六、选项（待拍板）
- **A. 纯 ICBM 路线**：不做伴随护航；投入"制空先行"——扫荡层＋巡逻/自动拦截强化（拦截机角色分工也照抄：专打大机）。
- **B. 我们三层制（超出 ICBM）**：扫荡＋伴随（独立可开火小队）＋TARCAP。比 ICBM 更细，工程量最大。
- **C. 混合（折中）**：扫荡层（ICBM 式）＋"最简伴随"——护航沿打击航线同路、窗口驻留参战（不搞复杂站位/虚拟跟随）。


## 补篇 v1.1：扫荡层深挖（2026-09-17 二轮）
> 数据源：根目录 `Units/Units.txt`（完整 72 单位版）；教程/Changelog；AI 脚本。

### 1. 机型数据（全员表）
| 机型 | Speed | Range | MaxAutoEngageRange | 武器（自动交战） | 备注 |
|---|---|---|---|---|---|
| Fighter | 800→1000 | 5000 | **1200** | AAM4→8（90s→60s） | 打战斗机 |
| Attack(多用途) | 600→900 | 5500 | **1200** | 炸弹4→8/AAM2/ASM2→4 | 近基地/航母 |
| **Interceptor** | 1200→3000 | 3000→12000 | **3000** | **LAAM 2→4→6**（150s→120s→90s） | **专打大机**（轰炸机/AWACS/侦察机）；对战斗机差、不能打直升机 |
| Bomber | 400→700 | 14000 | — | 炸弹/ASM/核 | 慢、远 |
| High_Speed_Bomber | （另档） | — | — | — | 快、不能带制导 |
| EW_Aircraft | 600→1250 | 2200→5000 | — | EW Jammer + 反辐射弹6→8（60s） | 打SAM/干扰雷达 |
| Spy_Plane | 700→4000 | 15000→21000 | — | 相机 | 侦察 |
| AWACS | 400 | 16000 | — | 雷达短波+长波 | **CanPatrolPoint**（可设巡逻点） |

### 2. 机场/载机平台（配额与节流）
| 平台 | 载机（容量 Patrol 配额） | Airway 起飞节流 |
|---|---|---|
| Airport | Fighter 15 / Patrol2；Bomber 5 / Patrol2；AWACS 1 / Patrol1（AIAutoPatrol） | 180s / 220s |
| Tactical_Airbase | Fighter 10 / Patrol4；Attack 10 / Patrol4；EW 4 / Patrol2（AIAP）；AWACS 1 / Patrol1（AIAP） | 180s / 300s |
| Improvised_Airbase | Attack 6 / Patrol2；Attack_Heli 2 / Patrol1（AIAP） | 180s / 220s |
| Carrier | Fighter 10 / Patrol2；Attack 10 / Patrol2；AWACS_CARRIER 1 / Patrol1（AIAP） | 120s / 180s |

（共同属性：NoAutoDeploy + Slave + **AutoReturn Yes**；武器全部 **AutoEngage** 自动开火。）

### 3. 对"包1 扫荡层"的三条可直接对标的逻辑
1. **情报驱动、威胁触发**：ICBM 无"预先扫荡自动化"；其自动出动一律由"敌机构成威胁+被探测"触发（雷达/AWACS）。→ 包1 定义为"**发现走廊/目标区有敌情才派扫荡**"，无情报不盲扫。
2. **批次节流**：Airway 180-300s 每批 + Patrol 配额 1-4 → 包1 每打击任务限 1 个扫荡小队，沿用现有派发冷却/去重。
3. **机型匹配威胁**：MAE＝截击机3000 vs 战斗机1200；截击机专打大机。→ 包1 扫荡优先派 **INTERCEPTOR**（对轰炸/攻击机），并加"我方选靶优先打敌方大机"的微调。

### 4. AI 侧（本轮新增）
- StrategyConquest：多套战略以 Bomber（Gen2-7）/AWACS/Spy_Plane/Interceptor 为研究/组成项；GroupsConquest 有 `DistanceFrom "Bomber"`（按轰炸机航程规划群组）。
- 结论：AI 用机同样是"研究门槛+反应式防空+玩家式打击指派"，没有"护航群组"。


## 补篇 v1.2：B-2/B-21 隐身轰炸机（2026-09-17 三轮）
> 用户论点验证："以后有了 B-2 这类隐身轰炸机，总不用护航了吧" —— **ICBM 官方设计正面验证了这条**。

### 1. 轰炸机分代（Units.txt 原文注释）
- Base Bomber（`///B-52 Equivalent, Long Range Bomber`）→ Gen2 升级（Speed500/Range16000）；
- `///B-1 Equivalent` → Gen4 升级（Speed900）；
- **Gen5＝"Stealth Bombers"（隐身轰炸机，B-2 Spirit）**：挂 `Bomber_Stealth_Bonus_Modifier_1 ///B-2 Spirit`；描述（CHN）："这些轰炸机比早期的同类更难被发现和攻击，使其能够通过**被动隐身**轻松绕过敌人的防御，而不必依赖速度/机动/低空"；
- **Gen6＝"Advanced Stealth Bombers"（先进隐身轰炸机，B-21 Raider）**：`Bomber_Stealth_Bonus_Modifier_2 ///B-21 Raider`；"降低被发现和击落的风险"；
- Gen7＝"Sub-Orbital Bombers"（亚轨道轰炸机）。

### 2. 全隐身谱系（Modifier 命名实证）
| 单位 | 隐身 Modifier | 对应真机 |
|---|---|---|
| Fighter | Aircraft_Stealth_Bonus_Modifier_1/2 | F-22A / NGAD |
| Attack | Aircraft_Stealth_Bonus_Modifier_1/2 | F-35 / F/A-XX |
| Interceptor | Aircraft_Stealth_Bonus_Modifier_1 | MiG-41 |
| **Bomber** | **Bomber_Stealth_Bonus_Modifier_1/2** | **B-2 Spirit / B-21 Raider** |
| EW_Aircraft | Aircraft_Stealth_Bonus_Modifier_1/2 | F-35 / F/A-XX |
| Warship/Satellite | Warship_/Satellite_Stealth_Bonus_* | —— |

（Modifier 具体数值为引擎内建；文案语义＝更难被探测/锁定。ICBM **不存在任何空军护航机制**——隐身轰炸机的生存手段就是"被动隐身"，与用户判断一致。）

### 3. 结论（用于我方路线）
- "B-2 时代不需要护航"在 ICBM 是**写在设计里的**：Gen5/6 轰炸机用被动隐身自保；
- 我方已有同等管线：`stealthMul`（R4c139，已被发现半径 ×(1-stealth)）；只需在**代际数据**里给 5/6 代轰炸机更高的 Stealth 值 → 自动拦截更难派发 → "不需要护航"自然成立；
- 当前我方数据（AircraftTypes.json）：INTERCEPTOR 0.0 / FIGHTER 0.05 / BOMBER **0.15** / ATTACKER 0.1（5/6 代目标值待 C2 定，量级建议 0.5 / 0.7）。
