# 钢四科技系统 · 机制总表（M 编号 · 完整版）

日期：2026-10-02 ｜ 数据源：本机 HOI4 完整版（NSB/MTG/BBA/AAT/LaR 等 DLC）
口径：**只列钢四有什么**（暂不考虑 AoH3 能否实现）。全部数据为本机实测。

| 编号 | 机制 | 钢四里的作用 | 实测数据 / 关键字段 | 组 | 建议 |
|---|---|---|---|---|---|
| **M1** | ledger 顶层账本 | 陆/空/海/民 四个大页签 | 4 个 | A 结构 | ★★ |
| **M2** | folder 分页 | 账本下的分页，可带 DLC 可用性 | 16 个 | A | ★★★ |
| **M3** | folder 位置 | 分页排布顺序 | — | A | ★ |
| **M4** | **category 类别** | 研究加成/AI 权重/MIO 归属的通用标签 | **115 个** | A | ★★★ |
| **M5** | 技术坐标 position | folder 内 `{x,y}` 网格位 | 423 处 | A | ★★★ |
| **M6** | **前置路径 path** | `leads_to_tech` + `research_cost_coeff`，可多条 | 390 处 | A | ★★★ |
| **M7** | dependencies | 技术间额外依赖 | 4 处 | A | ★ |
| **M8** | sub_technologies | 技术内子级 + `sub_tech_index`（最多 3） | 23 处／`MAX_SUBTECHS=3` | A | ★★ |
| **M9** | force_use_small_tech_layout | 强制小尺寸布局 | 11 处 | A | ★ |
| **M10** | 展示控制 | `show_effect_as_desc` / `show_equipment_icon` | 23 / 7 处 | A | ★ |
| **M11** | research_cost | 单技术成本系数 | 542 处 | B 成本 | ★★★ |
| **M12** | **start_year 年份门槛** | 到点才能研究 | **506 处** | B | ★★★ |
| **M13** | 基础成本公式 | `BASE_TECH_COST(110) × 系数 × 惩罚` | defines | B | ★★ |
| **M14** | **提前研究惩罚** | 早于年份研究成本倍率 | `BASE_YEAR_AHEAD_PENALTY_FACTOR=2`、`MAX_AHEAD_RESEARCH_PENALTY=3` | B | ★★★ |
| **M15** | **allow 条件** | 满足条件才可研究（如"需完成特殊项目"） | 129 处 | B | ★★★ |
| **M16** | allow_branch 分支开关 | 整分支的条件门 | 47 处 | B | ★★ |
| **M17** | 特殊项目挂钩 | `is_special_project_tech` / `special_project_parent` | 49 / 18 处 | B | ★ |
| **M18** | **研究槽** | 并行研究条数 | `BASE_RESEARCH_SLOTS=2` | C 能力 | ★★★ |
| **M19** | 每槽可囤研究点 | 未用点数上限 | `BASE_RESEARCH_POINTS_SAVED=30.0` | C | ★ |
| **M20** | 研究速度下限 | 速度不可低于 | `MIN_RESEARCH_SPEED=0.1` | C | ★ |
| **M21** | **research_speed_factor** | 全局研究速度修饰符 | 全库唯一 | C | ★★★ |
| **M22** | **category 定向加成** | 对"某类别"加速 | 与 M4 联动 | C | ★★★ |
| **M23** | 限时加成 + 后悔期 | 用掉的加成可反悔 | `USE_BONUS_REGRET_TIMER=3` 天 | C | ★ |
| **M24** | 共享速度上限 | 阵营共享给的速度上限 | `MAX_TECH_SHARING_BONUS=0.5` | C | ★ |
| **M25** | **XP 加速/解锁研究** | `xp_research_type / xp_boost_cost / xp_research_bonus` | 各 20 处 | D XP | ★★★ |
| **M26** | XP 研究默认成本 | 默认 0（官方默认关闭） | `DEFAULT_XP_*_RESEARCH_COST=0` | D | ★ |
| **M27** | AI 用 XP 研究的门槛 | 至少 2 倍成本经验 | `XP_RATIO_REQUIRED_TO_RESEARCH_WITH_XP=2.0` | D | ★ |
| **M28** | XP 四类来源 | 陆/海/空/政治（训练、战斗、任务、志愿军…） | 数十条 defines | D | ★★ |
| **M29** | 军队精神 spirits | 用 XP 解锁陆/海/空精神 | `DESIRE_USE_XP_TO_UNLOCK_*_SPIRIT=0.35` | D | ★★ |
| **M30** | **ai_will_do** | 每技术的 AI 倾向（含 `modifier/is_major`） | 467 处 | E AI | ★★★ |
| **M31** | ai_research_weights 块 | 技术内 AI 权重细则 | 19 处 | E | ★★ |
| **M32** | 权重刷新周期 | AI 重新评估需求的间隔 | 7 天 | E | ★ |
| **M33** | 随机截断 | 在 top 分数一定比例内随机 | 0.75 | E | ★ |
| **M34** | **六因子评估** | 需求/时长/落后/超前/加成/学说需求 | 陆0.15 海0.05 空0.07 | E | ★★★ |
| **M35** | 多学说惩罚 | 同时研究多学说扣分 | `RESEARCH_MULTI_DOCTRINE_SCORE=0.3` | E | ★ |
| **M36** | 超前/加成偏好强度 | AI 对超前研究与加成的偏好 | `25.0` / `5.0` | E | ★ |
| **M37** | **enable_equipments** | 解锁装备 | 225 处 | F 解锁 | ★★★ |
| **M38** | **enable_equipment_modules** | 解锁装备模块（模块化） | 137 处 | F | ★★★ |
| **M39** | **enable_subunits** | 解锁营/连 | 78 处 | F | ★★★ |
| **M40** | enable_building | 解锁建筑 | 14 处 | F | ★★★ |
| **M41** | **on_research_complete** | 完成后触发效果（+ `limit`） | 110 / 12 处 | F | ★★★ |
| **M42** | 效果块条件分支 | if/else、FROM、has_dlc 区分效果 | 多处 | F | ★★ |
| **M43** | doctrine folder 4 域 | 陆/海/空/特种（末者需 DLC） | 4 | G 学说 | ★★ |
| **M44** | **grand doctrine 12 大学说** | 陆4（机动战/优势火力/大决战/人海）/海3/空3/特种2 | 12 | G | ★★★ |
| **M45** | **track 14 轨** | 陆4/海4/**空4**/特种2 | 14 | G | ★★★ |
| **M46** | **mastery 熟练度** | 按装备经验累积（`multiplier`，空=8.0） | — | G | ★★★ |
| **M47** | subdoctrine 子学说 | `reward_1..5` / `unlock_subunit` / 具体加成 | 13 文件 | G | ★★ |
| **M48** | 学说奖励阈值 | 解锁奖励所需熟练度 | `DEFAULT_REWARD_MASTERY=100` | G | ★★ |
| **M49** | 熟练度增益来源 | 战斗/训练(0.1)/任务；受人力规模影响 | `BASE_MASTERY_GAIN_TARGET_MANPOWER=100000` | G | ★★ |
| **M50** | **阵营学说共享** | 解锁后按月获熟练度 | `FACTION_DOCTRINE_SHARING_UNLOCK_COST=1`、`=10/月` | G | ★★ |
| **M51** | 学说解锁战术 | `enable_tactic` | — | G | ★ |
| **M52** | **projects 特殊项目** | 50 个项目：复杂度/原型时间/突破成本/资源成本/专家化 | 49–50 个 | H 特殊项目 | ★★★ |
| **M53** | **prototype_rewards 原型抽签** | `option/threshold/weight/fire_only_once` | 83 选项 / 82 阈值 | H | ★★★ |
| **M54** | specialization 专家化 | 陆/空/海专家化（含蓝图图） | 47 处 | H | ★★ |
| **M55** | **科学家系统** | 招募成本/特质/技能等级/受伤/解聘 | 14 traits | H | ★★★ |
| **M56** | 支持科学家 | 一设施可挂 3 名（25% 效率） | `AMOUNT_OF_SUPPORTIVE_SCIENTISTS=3` | H | ★ |
| **M57** | **突破点 breakthrough** | 每日自然/科学家/火箭基地/核反应堆 产出 | `BREAKTHROUGH_DAILY_*` | H | ★★ |
| **M58** | 项目受补给与资源制约 | 补给不足/资源短缺减速 | `MINIMUM_PROJECT_SPEED_FACTOR_FROM_SUPPLY=0.2` | H | ★ |
| **M59** | 占领缴获项目进度 | 占领敌方设施获得部分突破 | `PROJECT_CAPTURE_BREAKTHROUGH_PROGRESS=0.1` | H | ★ |
| **M60** | **MIO 军工组织** | 56 家企业：装备/生产加成、互斥、可见性 | 1127 token | I MIO | ★★★ |
| **M61** | MIO 政策 | 政策分支加成 | 22 条 | I | ★★ |
| **M62** | **设计团队挂钩研究槽** | 匹配技术时给研究加成 | `DESIGN_TEAM_RESEARCH_BONUS=0.05` | I | ★★★ |
| **M63** | 设计团队每日 PP 成本 | 挂团队花政治点 | `ASSIGN_DESIGN_TEAM_PP_COST_PER_DAY=0.1` | I | ★ |
| **M64** | 研究完成给 MIO 资金 | 与研究成果挂钩 | `FUNDS_FOR_RESEARCH_COMPLETION_PER_RESEARCH_COST=500` | I | ★ |
| **M65** | 装备模块 XP 成本 | 增/换/转/删模块分别计价 | `5/6/3/1` XP | I | ★★ |
| **M66** | AI 造变体 XP 门槛 | 陆 35 / 海 50 / 空 25 | `DEFAULT_MODULE_VARIANT_CREATION_XP_CUTOFF_*` | I | ★ |
| **M67** | AI 设计方案偏好 | 先进/同级/落后 替代偏好 | `10000:100:1` | I | ★ |
| **M68** | AI 选 MIO 随机性 | top-N 随机 | `INDUSTRIAL_ORG_RESEARCH_ASSIGN_RANDOMNESS=3` | I | ★ |
| **M69** | **技术共享组** | `research_sharing_per_country_bonus`、`categories`、`is_faction_sharing` | 10 文件 / 90 条 | J 共享 | ★★★ |
| **M70** | **许可证生产** | 买别国装备生产权（按技术差衰减） | `LICENSE_ACCEPTANCE_TECH_DIFFERENCE=2`、`-0.05/年` | J | ★★ |
| **M71** | 许可证升级 XP | — | `LICENSE_EQUIPMENT_UPGRADE_XP_FACTOR=2.0` | J | ★ |
| **M72** | **偷科技（间谍）** | 窃取对方科技 | `TECH_STEAL_EQUIPMENT_FACTOR=4`、`_YEAR_FACTOR=4` | J | ★★ |
| **M73** | **情报可见性门槛** | 看对方科技数量/已研究/在研/学说所需情报等级 | `INTEL_TO_SHOW_*` 五组 | J | ★★ |
| **M74** | 旧科技判定 | 研究多久算"旧" | `OLD_TECH_COUNT_NUM_DAYS=180` | J | ★ |
| **M75** | 租借与自主度联动 | 按技术等级影响附庸自主度 | `LL_TO_*` 4 条 | J | ★ |
| **M76** | 战斗战术 | 学说/科技解锁战斗战术 | `enable_tactic` | K 其他 | ★★ |
| **M77** | **装备设计器** | 坦克/舰船/飞机设计变体 | 与 M38/M65 联动 | K | ★★★ |
| **M78** | 占领俘获 | 占领敌方获得项目/科技收益 | 见 M59 | K | ★ |
| **M79** | DLC 门控 | folder/技术/项目/MIO 按 DLC 开关 | 多文件 | K | ★ |
| **M80** | 国家定制 AI 研究策略 | `ai_strategy_plans` 等定制 | 多文件 | K | ★★ |

---

## 统计

| 组 | 数量 | 编号区间 |
|---|---|---|
| A 结构布局 | 10 | M1–M10 |
| B 门槛成本 | 7 | M11–M17 |
| C 研究能力 | 7 | M18–M24 |
| D XP 与研究 | 5 | M25–M29 |
| E AI 决策 | 7 | M30–M36 |
| F 解锁对象 | 6 | M37–M42 |
| G 学说系统 | 9 | M43–M51 |
| H 特殊项目 | 8 | M52–M59 |
| I MIO/设计团队 | 9 | M60–M68 |
| J 共享/外交/情报 | 7 | M69–M75 |
| K 其他联动 | 5 | M76–M80 |
| **合计** | **80** | M1–M80 |

**★ 最核心四条**：`M12+M14`（年份门槛与惩罚）｜`M4+M22`（类别与定向加成）｜`M43–M51`（学说树）｜`M37–M41`（解锁对象与完成后效果）

---

## 用法

直接在表里保留/划掉编号即可（例："M12 M14 M18 M21 M22 ……"）。我按你保留的编号出"移植优先级 + 依赖关系 + 批次计划"。