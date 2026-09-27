# 终序千禧 × ICBM 系统移植 —— 产品规划书

- 文档版本：v1.0（调研基线版）
- 项目代号：Operation FALCON（空军）+ Operation DOOMSDAY（核战争）
- 目标APK：终序千禧V33.1-fix4-aligned-debugSigned.apk（包名 age.of.history3.qiamxi.zhiri，AoH3 改版，libGDX + Java，应用体积 721MB）
- 参考蓝本：ICBM Escalation Endless October PROPER（Unity引擎，文本数据驱动）

---

## 1. 项目目标

将 ICBM（Escalation）的**空军系统**与**核战争系统**的核心机制移植进终序千禧，要求**大部分机制与 ICBM 保持一致的体验**，同时修复终序千禧现有空军半成品的严重缺陷。

```
最终形态：终序千禧 = AoH3 国策/回合文明底盘 + ICBM 级空军体系 + ICBM 级核战争体系
```

## 2. 现状盘点（调研结论）

### 2.1 终序千禧现状

**技术栈**
- 引擎：libGDX（libgdx.so / libgdx-freetype.so），Java 主逻辑（classes.dex 7.2MB + classes2.dex 3.5MB）
- 游戏数据：`assets/game/**`（JSON/TXT 文本驱动，含 civilizations / buildings / cities / AirUnit / advantages / advisors 等）
- 保护：存在 libpairipcore.so / libstub.so（疑似加固壳，**重打包风险需验证**）
- 修改痕迹：包内嵌 MT 管理器组件（bin.mt.file.content），说明此前经 MT 修改、debug 签名

**空军系统现状（半成品 + 严重 bug）**
| 项 | 现状 |
|---|---|
| 行为定义 | `assets/game/AirUnit/Aircraft.json` —— **语法错误**：`ID:1` 后缺失逗号；字段被改为 `n` 前缀（nCanAttackAir/nAirAttack…），与原版 `AircraftTypes.json`（无 n 前缀、含 RadarRange）**不一致**，且缺少 RadarRange 字段 |
| 数据结构 | 仅 4 种机型：INTERCEPTOR / FIGHTER / BOMBER / ATTACKER（各含速度/燃油/作战半径/载荷等 21 个字段） |
| 图片资源 | `AirUnitlmages/` 已有四机型基础图 + **Gen3/Gen4/Gen5/Gen6 代差阵营图（CN/EU/RU/US）** + Models/Radar/ring 素材 —— 素材明显按 ICBM"代差升级"思路准备，但数据层未使用 |
| 代码类 | AirForceManager、AirMission、AirUnit(含 AirType/Mission 内部类)、AircraftDataManager(含 AircraftTypeData/ConfigAircraftData)、Airport、RealTimeSim、InGame_AirForce(Options) 等 ≥13 个类 |
| 建筑 | 空军基地(ImageID 96)、雷达(97) 已存在，但**与空军单位的联动逻辑（起降/雷达探测/补给）未见完整实现证据** |
| 运营 | 空军 UI（InGame_AirForce）存在，任务/建造/选择三按钮类均已创建，但需验证是否可用 |

**核战争系统现状（AoH3 原版残留 + 局部扩展）**
- 建筑：核电站(ImageID 94)、BombShelter（CasualtiesNuclearAttacks -0.75）
- 代码：GameValues$GameValue_Atomic、AI_Nuke / AI_BuildNukes、EventOutcome_NuclearReactor、EventTrigger_CivNuclearReactorOver/Below、RendererAnimationNuke、PlayerCurrentSituation（核武运况）、MapModeManager（核弹地图模式）、Keyboard 快捷键、SaveGame/SaveLoad 持久化 —— 说明**原版具备基础核弹（按钮式）能力**，但缺乏 ICBM 级的：
  - 导弹分级体系（ICBM/SLBM/MRBM/IRBM/AL-ICBM/巡航）
  - 多弹头（MIRV）、分当量（100kt~100Mt）
  - 拦截链（ABM/终端拦截/激光）、预警雷达
  - DEFCON 紧张度、环境污染、EMP、生化/化学弹头

### 2.2 ICBM（蓝本）机制概览

**空军系统（Units.txt + Missile_defs.txt）**
- 机型体系：Fighter（空优）/ Attack（多用途对地）/ Interceptor（高空截击）/ Bomber（战略轰炸）/ AWACS / 加油机 / 直升机
- 核心属性：Speed、TurnSpeed、Range（作战半径）、MaxAutoEngageRange、MaxElevation、Power、Size、Radar（多部雷达叠加：STD Vision Air / Air Vision / Interceptor Short Wave）
- **代差升级**：ImprovedBy "Generation_2~6_Aircraft" 块内整体替换贴图/模型/属性/挂载（F-86→F-22→NGAD 式演进）
- **挂载系统**：Config "Air-To-Air"/"Bombs"/"Rockets"/"AGM"/"ALCM"/"Nuclear ALCM"/"100kt~100Mt 核弹"/"Chemical"/"Bioweapon"/"Cobalt"/"Salted"；Weapon "名字" 数量 Launch 数 Time 冷却 AutoEngage Principal
- 作战行为：AutoReturn（自动返航）、NoAutoDeploy、Slave（从跑道起飞）、CanCrossBorderDuringPeaceTime、DoesNotTriggerWarWhenAttacked（防止误宣战）、CanPatrolPoint（巡逻点）、CheckTargeting（锁敌提示 2841/2842）、EMP_Killable + EMP_Defence（EMP 击落应对）、ECM/隐形 Modifier 修正
- 相关武器：AAM（代差 5 级升级）/ LAAM / 核 AAM / SAM 族 / Plane Gun / Chaingun / 火箭弹

**核战争系统（Missile_defs.txt + explosion.txt + Radars.txt + Tech.txt）**
- 发射平台：陆基井射 ICBM、公路机动、潜艇 SLBM、轰炸机 AL-ICBM、战机 ALCM / 核巡航、战术核炮、核鱼雷/核深弹
- 弹头体系：当量分级（100kt / 250kt / 500kt / 1M / 5M / 10M / 25M / 50M / 100M）、类型（裂变 / 聚变 / 增强辐射 / 钴弹 / 盐弹 / EMP专用）、MIRV（3x / 8x 分导）、战术核（Nuclear SAM/AAM/ASAT）
- 爆炸效果：当量换算、污染半径、EMP 效果（Complex Production/Science/Espionage 系数、EMP_Long_Stun、EMP_Killable 秒杀飞机）、Guaranteed_Casualties、核冬天级大型爆炸
- 防御体系：ABM（Mk2-4）、Terminal BM Defence（Mk2-3）、激光反导、CBRN 防护等级（0-4 减伤）、卫星防御、诱饵、反导指挥链
- 预警体系：超视距 Over_Horizon、相控阵、天波、空间雷达、光电跟踪；导弹飞行轨迹（Trajectory 颜色/点数）
- 全球状态：DEFCON 1-5（生产/科研/情报衰减系数）、警戒升级链
- 打击分类：CounterForce（军事目标）/ CounterValue（城市目标）、AIHint 权重、GenevaCategory 日内瓦分类
- 特殊战争：化学（4 级升级）、生物（4 级）、反卫星 ASAT（5 种）、电磁脉冲

## 3. 需求范围与优先级

| 编号 | 模块 | 内容 | 优先级 |
|---|---|---|---|
| M1 | 空军基础修复 | 修复 Aircraft.json 语法与字段；对齐 AircraftDataManager 真实解析；建立 4 机型可运行基线 | P0 |
| M2 | 空军机制扩展 | 代差树（Gen1-6）、挂载/任务系统、机场-雷达联动、燃料与航程、AI 空战、空军 UI 完整化 | P1 |
| M3 | 核战争基础 | 弹头数量/类型、发射平台（陆/海/空）、核按钮化发射、核弹地图图层、爆炸与污染、AI 核战略 | P1 |
| M4 | 核战争深度 | MIRV、分当量、拦截链（预警-ABM-终端）、CBRN 防护、DEFCON 紧张度、EMP 效果、核电站事故 | P2 |
| M5 | 扩展武器 | 化学/生物/盐弹/钴弹/反卫星 ASAT、战术核防空（核 SAM/核 AAM） | P3 |
| M6 | 平衡与测试 | 数值适配（AoH3 地图尺度 vs ICBM 公里制）、性能、存档兼容、稳定性 | P1（贯穿） |

**明确不移植**（控制范围）：ICBM 的实时战略地图操作（点选单位拖曳）、导弹发射动画的 1:1 复刻（受引擎限制，用 AoH3 原生核弹动画替代）、ICBM 原始美术资源（版权风险，仅参考机制）。

## 4. 机制映射表（ICBM → 终序千禧）

| ICBM 机制 | 终序千禧实现方案 | 备注 |
|---|---|---|
| [UNIT] Type Airborne | AirUnit 类 + Aircraft.json 机型定义 | 已存在，修复为准 |
| Speed/TurnSpeed/Range | 机型字段 Speed/CombatRadius/Agility | 已有字段，需换算（km/h → 格/回合） |
| MaxElevation/雷达 | 新增字段 + 雷达建筑 Radius 探测 | 需扩展 JSON schema |
| ImprovedBy Generation_2..6 | 机型树字段 Generation:1..6 + 对应贴图目录 | 素材已备（Gen3-6） |
| Config 挂载 + Weapon 冷却 | PayloadSlots 数组 + 每槽武器定义 + 攻击冷却 | 新增字段 |
| AutoReturn/巡逻点 | 任务类型 CAP/STRIKE/INTERCEPT/PATROL | 核心新逻辑 |
| 空军基地/雷达建筑 | 复用现有建筑 + 关联省份 | 补联动逻辑 |
| 核分级弹头 | 弹头类型枚举 + 当量数值 | 沿用 ICBM 数值表 |
| MIRV | 弹头数组（每枚独立目标） | 分导逻辑 |
| ABM 拦截链 | 反导建筑 + 拦截概率判定 | 简化 2 层（中段/末段） |
| DEFCON | 全局紧张度变量（影响产研情 + 核按钮解锁） | 数值直接引用 ICBM 系数 |
| CBRN 防护 | 省份防御设施数值 | BombShelter 扩展 |
| EMP | 地图层效应（禁用生产/N 回合） | 简化实现 |
| AI 核战略 | AI_Nuke 扩展：CounterValue/CounterForce 权重 | 引入 ICBM AIHint 权重 |

## 5. 技术方案总览

1. **数据层**：重写 `AirUnit/` 下 JSON 为统一 schema（以反编译后的 AircraftDataManager 字段为准，而非按原版或半成品猜测）；新增 `Nuclear/` 数据目录（弹头/发射平台/防御设施/紧张度）
2. **逻辑层**：JADX 反编译 classes.dex → 定位 AirForceManager/AircraftDataManager/AI_Nuke 等 → 修改 smali → dex 重编译（或直接改 smali 后 smali 工具重打包）→ 保持类名与方法签名，降低回归风险
3. **资源层**：复用现有 AirUnitlmages（Gen3-6），补齐 Gen1/2 与 EU/CN/RU/US 之外阵营；核弹效果沿用 AoH3 RendererAnimationNuke + 新增污染贴图
4. **兼容层**：存档兼容（SaveGame 增加空军/核武字段，旧档给予默认值）；OBB/资源不破坏原 721MB 包体结构
5. **构建管线**：apktool build → zipalign → debug 签名 → 真机验证（预检 pairip 壳影响）

## 6. 模块详细规格（M2–M6）

> 每项格式：任务 / 内容 / 验收。凡标注【ICBM】者为直接对照蓝本机制的条目。

### M2 空军机制扩展（P1）

**M2-A 代差树（Generation 1–6）**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M2-A1 数据结构 | 机型 JSON 增加 `generation: 1..6` 子表，每代覆盖：Speed/CombatRadius/AirAttack/GroundAttack/Defense/Agility/Stealth/Ecm/Fuel/RadarRange；阵营覆盖字段（CN/EU/RU/US）指向贴图【ICBM ImprovedBy Generation_x_Aircraft】 | 1 个机型可完整定义 6 代 |
| M2-A2 科技挂钩 | 新增科技节点 空军Gen2–Gen6（总5节点），与 AoH3 科技树（RequiredTechID）整合；跨代解锁条件联动 | 科技解锁后机型自动升级 |
| M2-A3 视觉替换 | 按 代次+阵营 自动切换贴图（已有 Gen3–6 资源，补 Gen1/2 或回退默认图） | 4 阵营×6 代无缺图 |
| M2-A4 数值演进 | 照 ICBM 倍率表（Speed×、Power×、Size×）设计代差成长曲线 | 数值表评审通过 |

**M2-B 挂载系统（Payload/Weapon Loadout）**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M2-B1 武器枚举 | 定义 AAM / LAAM / 机炮 / 火箭弹 / 自由落体炸弹 / AGM / ALCM / 核巡航(ALCM-N) / 重力核弹(分当量) / 化学·生物弹(预留) 共≥10类【ICBM Missile_defs】 | 枚举齐全可被引用 |
| M2-B2 挂载槽 | 机型 JSON 增 `payloadSlots:[{weapon,count,cooldown,autoEngage,principal}]`；支持多套预设配置（ICBM Config 概念），出击时选择 | 轰炸机 8 弹、战斗机 2~8 空空弹可配 |
| M2-B3 目标选择 | AutoEngage 优先级：Principal 武器优先；对空/对地/核打击目标自动判定 | 交战日志符合预期 |
| M2-B4 弹药补给 | 出击消耗武器库存，返航回基地后按回合+金币补充 | 连续出击耗竭后无法重复发射 |

**M2-C 作战任务系统（Missions）**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M2-C1 任务类型 | CAP(巡逻拦截) / STRIKE(对地) / NUCLEAR_STRIKE(核打击) / PATROL(侦察巡逻) / INTERCEPT(截击) 五类【ICBM CanPatrolPoint/AutoReturn】 | 五类任务皆可下达 |
| M2-C2 任务流程 | 待命→起飞→转场(按燃料扣减)→交战→AutoReturn；无降落机场时判定损失【ICBM AutoReturn/Slave】 | 回合内完整闭环 |
| M2-C3 空战结算 | AirAttack/Defense/Agility 三维判定；地面防空火力反击（AA建筑、防空部队） | 空战有损失且有击落 |
| M2-C4 雷达探测 | 雷达建筑提供圆形探测圈；探测圈外敌方机队不可见，圈内己方机暴露 | 探测逻辑与UI一致 |

**M2-D 机场与雷达联动**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M2-D1 空军基地 | 基地=国家机队驻点，容量上限；基地被毁→该省机队无法回收（损失或迫降判定） | 基地毁→机队处理符合规则 |
| M2-D2 雷达站 | 雷达建筑提供探测圈；雷达被毁→该省防空盲区(敌方机不显示) | 盲区生效 |
| M2-D3 跑道受损 | 基地被炸→N回合无法起飞（修复期） | 修复期生效 |

**M2-E AI 空战**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M2-E1 AI 建造 | AI 按 经济+威胁 建设空军（复用 AI_BuildNukes 评估模式） | AI 国家会造飞机 |
| M2-E2 AI 任务 | 拦截来犯机群（CAP）、对地面单位/建筑选点打击；预算驱动 | AI 空战频率合理 |
| M2-E3 编队压制 | 数量优势修正（简化：同格数量比较加成） | 集群vs单机结果合理 |

**M2-F 空军 UI**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M2-F1 空军面板 | 机型/数量/状态(驻场·空战·返航·损失)列表 | 实时刷新 |
| M2-F2 建造界面 | 选机型+数量+目标机场；费用/时间显示 | 可建造、扣费正确 |
| M2-F3 任务指派 | 地图选点→任务类型→出击；核准射程/燃料 | 任务下达不崩溃 |
| M2-F4 战报 | 每回合结算 击落/损失/返航/弹药消耗 统计 | 战报可读 |

### M3 核战争基础（P1）

**M3-A 核武库与弹头**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M3-A1 弹头类型 | 裂变/聚变两类；当量分级 100kt/250kt/500kt/1M/5M/10M/25M/50M/100M【ICBM nuke_light/nuke_heavy】 | 分级齐全 |
| M3-A2 产业链 | 核电站(已有)→铀/钚产能→弹头生产(回合+资金+科研) | 生产闭环 |
| M3-A3 库存界面 | 国家弹头总览+各平台分配 | 数据一致 |

**M3-B 发射平台**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M3-B1 陆基 | 发射井建筑(省份级，井射ICBM)、机动发射车(MRBM) | 可建设可发射 |
| M3-B2 海基 | 潜艇单位搭载 SLBM（需接入海军单位体系） | 海射可用 |
| M3-B3 空基 | 轰炸机 AL-ICBM、战机 ALCM/核巡航（衔接 M2 挂载） | 空射可用 |
| M3-B4 平台门槛 | 各平台独立 科技/成本/建造时间/弹头容量 | 平衡表过审 |

**M3-C 发射与打击**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M3-C1 发射UI | 选目标(省/城市/军队)→射程检查→确认；发射清单 | 流程无卡死 |
| M3-C2 飞行结算 | 距离+速度→飞行时间；回合内结算（简化，附动画） | 结算正确 |
| M3-C3 爆炸表现 | 复用 RendererAnimationNuke；当量→动画规模差异 | 表现分档 |
| M3-C4 伤害公式 | 城市人口/经济/设施伤害曲线；BombShelter 减免(-75%已存在)【ICBM 爆炸伤害】 | 数值表评审 |
| M3-C5 污染 | 省份污染状态：污染度/持续回合/人口衰减（简化版）【ICBM PollutionSize】 | 污染可观察可衰减 |

**M3-D AI 核战略**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M3-D1 自动反击 | 被核打击→AI 报复（数量=剩余弹头×权重） | 反击触发 |
| M3-D2 目标权重 | AIHint CounterValue/CounterForce：AI 在 军事目标/城市 间分配【ICBM AIHint】 | 权重可调 |
| M3-D3 核威慑 | 核武存量影响 AI 宣战/谈判倾向（平衡向） | 有威慑效果 |
| M3-D4 战争升级 | 核打击必然导致战争状态（无"不宣而战"例外） | 逻辑生效 |

### M4 核战争深度（P2）

**M4-A MIRV 多弹头**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M4-A1 分导 | 弹头组(3x/8x)，每枚可独立目标或区域散布【ICBM 3x/8x MIRV】 | 多落点结算 |
| M4-A2 拦截交互 | MIRV 释放后逐枚参与拦截判定 | 部分拦截场景正确 |

**M4-B 拦截链**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M4-B1 预警雷达 | 国家级预警（天波/相控阵），提供来袭警报+落点预测倒计时 | 预告可见 |
| M4-B2 拦截层 | 中段 ABM(井射) + 末段终端反导 + 激光(高科) 三层【ICBM ABM Mk2-4/Terminal】 | 三层各自生效 |
| M4-B3 拦截概率 | 拦截器代数 vs 导弹速度/数量；饱和攻击有效 | 概率表过审 |
| M4-B4 诱饵 | 高科弹头带诱饵字段→降拦截率【ICBM Decoy】 | 数值生效 |

**M4-C DEFCON 紧张度**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M4-C1 紧张度 | DEFCON 1–5 全局变量，随 造核/危机事件/核打击 升降 | 升降源齐全 |
| M4-C2 效果 | 生产/科研/情报衰减（引 ICBM 系数：D3=0.9/0.6/0.6 … D1=0.5/0.1/0.1） | 与表一致 |
| M4-C3 预警窗口 | 从发射到落点 N 回合内可执行 拦截/疏散 操作 | 窗口逻辑生效 |
| M4-C4 事件接入 | Events 系统扩展：DEFCON 事件、核反应堆事件联动 | 事件可触发 |

**M4-D EMP**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M4-D1 EMP弹头 | 伤害：基础设施/经济/军队；飞机被 EMP 击落【ICBM EMP_Killable】 | EMP 秒杀机队生效 |
| M4-D2 范围持续 | 受影响省份 N 回合生产衰减；EMP 防御等级可减【ICBM EMP_Defence_Mk4】 | 效果可恢复 |
| M4-D3 战术核防空 | 核 SAM 附带 EMP 效果（衔接 M5-E） | 联动正确 |

**M4-E CBRN 防护**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M4-E1 防护链 | 防护等级0–4：BombShelter→民防建筑升级链 | 链可建造 |
| M4-E2 减伤系数 | 引 ICBM CBRN_Defence_0~4：0.5/0.8/0.8/0.85/0.85 | 与表一致 |
| M4-E3 状态显示 | 省份防护等级 UI 展示 | 显示正确 |

**M4-F 核电站事故**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M4-F1 受击泄漏 | 核电站被常规武器击毁→污染+健康/经济衰减 | 泄漏生效 |
| M4-F2 随机事故 | 低概率事件（Events 扩展） | 可触发 |

### M5 扩展武器（P3）

**M5-A 化学武器**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M5-A1 化学弹头 | 城市/工业杀伤：人口损伤按 ICBM 化学曲线 | 杀伤公式过审 |
| M5-A2 升级链 | Improved/Advanced/Experimental 3–4 级【ICBM Improved_Chemical】 | 升级生效 |
| M5-A3 投放方式 | 炸弹(轰炸机)+弹头(导弹)+火炮(战术) 三类 | 三通道可用 |

**M5-B 生物武器**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M5-B1 生物弹头 | 人口杀伤+省内传播/持续回合 | 传播逻辑生效 |
| M5-B2 升级链 | 4 级升级 | 生效 |

**M5-C 特殊弹头**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M5-C1 钴弹 | 长期污染+（污染倍增）【ICBM Cobalt】 | 数值生效 |
| M5-C2 盐弹 | 极长期污染【ICBM Salted】 | 数值生效 |
| M5-C3 增强辐射弹 | 低设施损、高人员杀伤 | 数值生效 |

**M5-D 反卫星 ASAT**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M5-D1 卫星体系 | 侦察卫星(视野/情报加成)、预警卫星；若无卫星概念则标"适配待定"，M0 评估 | 结论明确 |
| M5-D2 ASAT武器 | 4 型（陆基/舰载/机载/共轨）【ICBM ASAT族】 | 可击落卫星 |

**M5-E 核防空**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M5-E1 核SAM | 首都防空圈：拦截来弹+核爆清空空域 | 生效 |
| M5-E2 核AAM | 空战终极武器（高成本） | 生效 |

### M6 平衡与测试（P1，贯穿）

**M6-A 数值适配**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M6-A1 单位换算 | ICBM km → AoH3 格 换算协议（暂定 1格≈50km），生成换算系数表 | 表冻结 |
| M6-A2 成本换算 | ICBM ProductionCost → 终序千禧 金币/回合 | 表冻结 |
| M6-A3 科技换算 | AoH3 RequiredTechID → 新空军/核科技节点映射 | 映射表冻结 |
| M6-A4 时间换算 | ICBM 秒/分钟 → 回合(天) | 表冻结 |

**M6-B 性能**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M6-B1 规模上限 | 同屏空中单位上限（默认 ≤200） | 无卡顿 |
| M6-B2 渲染优化 | 任务图标/爆炸特效对象池 | 帧率≥30 |
| M6-B3 回合耗时 | 全图结算 <1s/回合（8国规模） | 达标 |

**M6-C 存档兼容**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M6-C1 格式扩展 | 存档增加 空军/核武库/紧张度 字段；旧档迁移默认值 | 旧档可读 |
| M6-C2 版本管理 | 存档版本号+兼容策略 | 升级不坏档 |
| M6-C3 回归 | 连续 3 版本存档互迁 | 无异常 |

**M6-D 稳定性**
| 子任务 | 内容 | 验收 |
|---|---|---|
| M6-D1 长跑 | 48h 挂机测试（AI 互相空军+核战） | 无崩溃 |
| M6-D2 死锁 | AI 空战/核战循环无卡死 | 无卡死 |
| M6-D3 多国规模 | 8 国 500+ 飞机 100+ 弹头互射 | 无崩溃 |
| M6-D4 兼容设备 | arm64-v8a / armeabi-v7a 双 ABI 真机 | 均通过 |
| M6-D5 壳复测 | pairip/libstub 下重签名 APK 全流程验证 | 可安装可运行 |

## 7. 里程碑计划

| 阶段 | 周期(预估) | 交付物 | 验收标准 |
|---|---|---|---|
| M0 调研冻结 | 0.5 周 | 反编译确认 AircraftDataManager 全部字段、核弹现有调用链、壳限制结论 | 字段清单 + 风险报告 |
| M1 空军修复 | 1-1.5 周 | Aircraft.json 合法化；4 机型可建造、可部署、可自动交战 | 无崩溃；空对战可发生；UI 无报错 |
| M2 空军扩展 | 2-3 周 | 代差树、挂载、机场/雷达联动、AI 空战、任务 UI | 与 ICBM 对照表逐条过审 ≥80% |
| M3 核战基础 | 2 周 | 弹头/平台/发射/爆炸/污染/AI 核打击 | 可完成一轮互相核打击，无崩溃 |
| M4 核战深度 | 2-3 周 | MIRV/拦截链/DEFCON/EMP/CBRN | 对照表过审 ≥80% |
| M5 扩展武器 | 1.5 周 | 生化/盐弹/ASAT/核防空 | 功能可用 |
| M6 平衡测试 | 1-2 周 | 数值包、存档迁移、性能优化、回归 | 48h 稳定性；存档无损 |

## 8. 风险与应对

| 风险 | 等级 | 应对 |
|---|---|---|
| pairip/libstub 加固影响 dex 重打包 | 高 | M0 先行验证；必要时采用"数据层驱动优先"策略（JSON 扩展 + 尽量少改 dex） |
| 无源码、仅 smali 修改，回归成本高 | 高 | 模块化改造；每阶段保留可回滚基线（构建产物存档） |
| 空军实时模拟与 AoH3 回合制冲突 | 中 | 以"回合内结算 + 任务进度条"方式实现，不追求 ICBM 级实时 |
| 数值失衡（单位换算） | 中 | 换算系数表（1 格 ≈ 50km 等），M6 集中调参 |
| 721MB 包体 + 贴图补充.zip 合并风险 | 中 | 增量打包、资源按需加载 |
| ICBM 素材版权 | 中 | 仅移植机制与数值，美术自绘/替换 |

## 9. 下一步行动（M0 第一件事）

1. 用工作区 jadx 反编译 classes.dex，输出 AircraftDataManager / AirForceManager / AirMission / AirUnit / AI_Nuke / GameValue_Atomic 的 Java 源码，**冻结字段清单**（当前 Aircraft.json 的 n 前缀字段是否为作者预期格式，以这里为准）
2. 检查 libpairipcore.so 是否影响 dex 二次构建（构建一次空改动 APK 验证）
3. 盘点 AoH3 原版核弹入口（键盘/按钮/PlayerCurrentSituation），确定扩展锚点
4. 输出《字段与调用链清单》后进入 M1

---
*附：本规划书基于 2026-08-23 对工作区文件的实地调研；所有"待验证"项将在 M0 结束后更新为结论。*
