# 终序千禧 × ICBM 移植 —— 当前阶段计划书（战斗可用版 v1.3）

- 文档版本：v1.3（2026-08-31；v1.2 见 2026-08-28 修订（③ 新增"〇.5 师级模型升级（甲+X）"——多编队/空军兵种/逐编队控制设计定稿）；v1.3 修订：第五波登记——B2 信息条动态字段完成✅（v52 用户确认→v53 正式版装机 02:56），基线 pkg_new77 v53）
- 定位：大计划书 v2.1 的**当前阶段子计划**——从"飞机=能动的师"迈向"飞机=能战斗的师"
- 触发原因（用户洞察）：**飞机现在只有一个功能：移动**（任务类型仅 PATROL 可达；打击代码存在但无入口）
- 目标包名：age.of.history3.qiamxi.zhiri ｜ 当前基线：**pkg_new77 v53**（B2 信息条动态字段✅；早期轮2 pkg_new46 验收记录见文内）
- 项目代号：Operation FALCON（空军）

---

## 一、现状盘点（全部实锤，源自 M0 调研 + 轮1/轮2 验收 + 代码走查）

### 1.1 已完成（✅）
| 层 | 内容 | 证据 |
|---|---|---|
| 数据层 | AircraftTypes.json 合法化（4 机型 19 字段：拦截/战斗/轰炸/攻击） | M0 B2/B3 修复 |
| 建造层 | 4 机型可建造（面板 select→建造→回合递减→建成入列） | F2 |
| 视觉层 | 机场/雷达/反导/长波地图图标、机型图标（40/56px）、选中黄圈、航程白圈、血环 | F4/F5/F7/F8/F12 |
| 交互层 | 点击选中飞机（60px 命中）、师级模型（airhq_ 师+军队栏+行进按钮） | F6、2.2 链路 |
| 存档层 | 轮1（机场+机队 22 字段）/ 轮2（任务 22 字段持久化：state/进度/计数/unitID 重连/师绑定/时钟锚定/停靠/防重） | 读档链全绿（AF_MIS:restore→pool=1→done） |
| 移动层 | 状态机全程正确：PLANNING(0)→EN_ROUTE(1)→(到达)→EXECUTING(2)→RETURNING(3)→(完成)→COMPLETED(4)/ABORTED(5)；实时平滑飞行动画（去程/回程插值）；师随段切换移动/归位 | um_mvsw 完整序列（2315→…→3715→…→2315）实测 |
| 战斗层(冷备) | **create* 工厂×5 全部存在且完整**：createPatrol / createStrategicBombing / createAttackArmy / createIntercept / createAirSuperiority；**executeAttack 结算完整**（目标省 经济-0.1×Σ攻击力、人口-1000×Σ攻击力、扣 payload、recordDamage）；updateAirCombat（我方血制）；AI 任务（executeAIAssignment：战争 30% 轰炸/和平 50% 巡逻） | AirMission.smali 706/747/798/884/924 行；executeAttack 972-1090 |
| 稳定性 | 双师根除（addArmy_Load dup 守卫+dedup 索引遍历+placeAirDivision 修复）；探针体系（dKey/logOnce 文件通道，vivo 日志吞噬绕过） | um_all=0；airdbg_key/tick 实测 |

### 1.2 缺口（❌）——"只有移动"的准确根因
| # | 缺口 | 具体表现 | 位置 |
|---|---|---|---|
| G1 | **玩家下达打击任务无入口** | 交互链只到 handleProvinceClick→createPatrol；STRATEGIC_BOMBING/ATTACK_ARMY/INTERCEPT/AIR_SUPERIORITY 工厂无玩家触发路径 | ProvinceTouchExtraAction / AirForceManager.handleProvinceClick |
| G2 | **打击结算不可见** | executeAttack 会真扣经济/人口，但无战报面板（击落/损失/伤害）→ 玩家感知不到"打了" | executeAttack / 无 UI |
| G3 | 敌机无战损 | updateAirCombat 只结算我方损失，敌机 hp 不扣不击落（S6） | updateAirCombat |
| G4 | 无防空火力 | AAA/反导建筑对来袭机群无结算（C3） | 无 |
| G5 | 无雷达探测圈 UI | radarProvinces 有数据无圈层（C4） | 无 |
| G6 | 多机种师化缺失 | 仅 FIGHTER 建师（S5）；拦截/攻击/轰炸无师→不可选中弹栏 | updateBuild 判定 |
| G7 | EXECUTING 降级未做 | 打击中目标失效（目标省被夺/军被灭）无安全降级（轮3） | update() 状态机 |
| G8 | **巡逻体验缺陷（20 章审计）** | P1 到达后落地式悬停（无巡航/绕圈动画=观感同"移动"）P2 无空域语义（点=省）P3 巡逻机无交战（只被扣血）P4 无探测/受击反馈 P5 敌机拦截不可见（不对称） | AirMission EXECUTING / updateAirCombat / 无 C4 |
| G9 | **下达移动后师脱离选中**（2026-08-31 用户报告，I-1a 验收前置） | MapTouchManager.actionUp 点省选中处理替换/清空 activeArmy→handleProvinceClick 无恢复→空军面板隐藏；AFKEEP 修复（handleProvinceClick 任务创建后恢复选中，v59） | handleProvinceClick / A1 D.11.6 |
| G9 | **下达移动后师脱离选中**（2026-08-31 用户报告，I-1a 验收前置） | MapTouchManager.actionUp 点省选中处理替换/清空 activeArmy→handleProvinceClick 无恢复→空军面板隐藏；AFKEEP 修复（handleProvinceClick 任务创建后恢复选中，v59） | handleProvinceClick / A1 D.11.6 |

### 1.3 成本结论（重要）
**打击功能的机制层 90% 已存在**（create* 工厂+executeAttack+状态机+AI 调度），**缺的是"入口+可见性+对称性"**——C1 不是重写，而是接线。

---

## 一点五、师级模型升级（〇.5，设计定稿：甲'+X）

> 触发：用户三问——①多编队只显示一个师 ②没有真正空军兵种（借用陆军"早期战斗机"uID=5）③多编队如何逐个精准控制。**设计已拍板=甲'（动态编制批次建师）+ X（空军专属兵种）**。

### A0.1 师粒度：动态编制批次建师（甲'）
| 规则 | 说明 |
|---|---|
| 师创建 | 机场建成**第 1 架**即建师（key=`airhq_<civ>_<机场省>_<序号>`，序号从 1 递增，不再唯一） |
| 动态编制 | 师编制 num = 实际架数（1~10）；军队栏实时显示"战斗机×N" |
| 满 10 分编 | 第 11 架起开新师（`..._2`，num=1），原师保持满编；成批后不拆编 |
| 战损递减 | 师内机被击落→num 递减；**降至 0→师移除**（选中自动清空） |
| 显示 | 同一机场多师：原版同省多师天然堆叠，各自独立选中/独立任务 |
| 控制 | 单师独立任务；**选配**：multiSelectMode 多选编队→批量下达同一任务（A1 选配） |
| 代差 | 批次师=未来"机型×代"编队的天然底座（key 序号无歧义） |

### A0.2 空军专属兵种（X）
| 项 | 说明 |
|---|---|
| 兵种数 | 4 个：拦截机/战斗机/攻击机/轰炸机（对应 AircraftTypes.json 4 机型的 Name） |
| 数值来源 | ArmRegiment 兵种数值与 AircraftTypes.json 对应机型一致（hp/攻击/航程等参考映射） |
| 军队栏 | 显示真正兵种名（不再是"早期战斗机"）；编制=num×机型 |
| 兼容 | 旧档师（uID=5 借用）读档时映射到新兵种（key 保留，兵种替换） |
| 图标 | 复用现有空军贴图（空军贴图.zip/贴图补充）或兵种图标，军队栏缩略图=机型图标 |

### A0.3 改造落点（实现锚点）
| 目标 | 位置 | 改动 |
|---|---|---|
| syncAirDivisionAirport | AirForceManager (422) | key 加序号；不再"存在即返回"；按批次建师；num 动态 |
| 师移除 | 战损回调 / updateMissions 收尾 | num=0 → removeArmy + 清选中 |
| 建师触发 | Airport.updateBuild(sync 调用点) | 每架建成即 sync（当前仅 FIGHTER 判定→改机型全覆盖） |
| 兵种表 | AoH3 Units 数据（airforce 兵种条目） | 新增 4 兵种 + 图标 + 名称 |
| 读档兼容 | T4 段师绑定 / 7c | 旧 key 无序号师→映射到序号 1；兵种 uID 升级 |
| 多选批量 | AirForceManager.multiSelectMode | A1 选配 |

### A0.4 验收（M-A0）
1. 造 1 架→出现师1（num=1）可选中；造到 10 架→num=10；第 11 架→师2 出现
2. 军队栏显示"战斗机×N"（真空军兵种名，非"早期战斗机"）
3. 多师同显、逐个选中、逐师下达任务互不干扰
4. 读档后多师/编制/序号完整还原（存→读→编队数一致）
5. 击落战损→num 递减→0 师移除

---

## 二、阶段目标与原则

### 目标（一句话）
**让飞机"有事干"：玩家能下达真实打击任务（轰炸/攻军/截击/制空），打出去有战果、被打有消耗、存档读档无缝。**

### 原则
1. **机制已有→只做接线**：优先复用原版 create*/executeAttack/AirMission 状态机，不做平行实现。
2. **可感知优先**：每个子任务闭环必须"玩家肉眼可见"（战报/伤害/击落）。
3. **单线串行**（v1.1 修订）：A 线（战斗可用）为当前唯一执行线；B（稳定性）/C（多机种/代差）一律后置，完成 A 线验收后才启动下一条。
4. **代差预留（v1.1 新增）**：A 线所有新代码必须走"类型数据引用"，禁止新增硬编码数值/机型枚举——为 M2-A 代差树（Gen1-6×4阵营×4机型）留接缝。
5. **探针复用**：dKey/logOnce 通道继续作为验收证据链。

---

## 二点五、代差预留（M2-A 接缝，v1.1 新增）

### 什么是代差（M2-A）
AircraftTypes.json 从"4 机型×1 代"扩展为"4 机型 × **Gen1-6 代差** × 4 阵营（CN/EU/RU/US）"数值子表，配科技解锁（Gen2-6 节点）+ 按代次/阵营切换贴图。验收：一个机型可完整定义 6 代，科技解锁后机型自动升级。

### A 线必须遵守的"代差友好"约束
| # | 约束 | 现状问题（实锤） | 处理 |
|---|---|---|---|
| D1 | **航程判定必须读机型 CombatRadius** | `isInRange()` 硬编码 **800.0f**（M0 B4，未修） | A1 接线时顺手修复：`isInRange` → `getAircraftRange(type)`（类型数据查询） |
| D2 | **任务创建机型选择按能力位/任务类型，不按机型枚举** | `createAirSuperiority` 硬编码 `AirType.FIGHTER` | 改为"能制空的机型列表"（canAttackAir）或任务携带机型集合 |
| D3 | **伤害结算引用机型字段，不写死攻击力** | executeAttack 已用 `unit.groundAttack`（✓）；系数 0.1/1000 为全局系数（可留） | A 线不改结算公式，仅确认无"写死机型"路径 |
| D4 | **AircraftTypes.json 结构预留** | 当前单表无 generation/camp 字段 | A 线不动数据 schema（M2-A 时扩展为子表）；但 A 线新增代码**不得假设机型固定 4 个**（遍历 types 而非下标写死） |
| D5 | **战报/编队数据按 typeID 记录**（非机型名硬编码） | 无战报 | A2 战报面板按 typeID 存档 → 代差后自动兼容 |

### 已知"代差不友好"点清单（M2-A 开工时统一清理）
1. `isInRange` 800.0f（B4）——本次 A1 顺手修
2. `createAirSuperiority`/`createPatrol` 等工厂的机型枚举硬编码——A1 改造为能力位匹配
3. `updateAirCombat` 0.5 系数（全局，不涉及机型，保留）
4. `getAvailableAircraft(type)` 按枚举过滤——代差后同机型多代共存时按"最高代/战斗等级"过滤（M2-A 时改）
5. `drawAirForce` 贴图按机型枚举选择——M2-A A3 视觉替换时改按"代次+阵营"

6. **导弹弹数/射程（R6-5，2026-09-11 新增）**：已按函数化空位设计——`missileCountForGen`（1-2 代 0 / 3-4 代 2 / 5-6 代 4）、`unitGenOf`（暂返默认 3，M2-A 接线真值）、`missileHopsForGen`（暂 1 跳）。M2-A 落地后仅需接线函数。详档《R6-5导弹系统_实施计划书v1.md》

---

## 三、主线：A 战斗可用（阶段一 P0+）

### A1. 打击任务下达入口（核心中的核心）
**目标**：选中空军师后，点敌方省/军队/敌机 → 弹出任务选择（或默认按目标类型自动匹配任务）→ 下达 → 从机场出击执行。

| 子项 | 内容 | 复用 | 验收 |
|---|---|---|---|
| A1.1 | 目标省点击→STRATEGIC_BOMBING（轰炸机/攻击机编队） | createStrategicBombing(airport, targetProvinceID) | 下达后机群起飞、飞向目标省、到达后 economy/population 下降 |
| A1.2 | 目标军队点击→ATTACK_ARMY | createAttackArmy(airport, targetArmyID, targetProvinceID) | 敌陆军受伤/减员 |
| A1.3 | 敌机编队点击→INTERCEPT | createIntercept(airport, targetAirUnitIDs) | 敌机被截、互扣 hp |
| A1.4 | 制空巡逻点→AIR_SUPERIORITY | createAirSuperiority(airport, provinceID) | 空域压制（敌机进入→交战） |
| **关键决策点（需用户拍板）** | 任务下达 UI 形态：①原版军队栏"点敌省直接开打"自动匹配任务类型 ②空军面板新增任务按钮（轰炸/截击/制空）③点击敌方单位弹菜单 | — | 交互顺滑 |

### A2. 打击结算可见化（战报）
| 子项 | 内容 | 验收 |
|---|---|---|
| A2.1 | 任务结果战报面板：击落数/损失数/总伤害/剩余弹药/返航状态 | 战后弹窗，数据与 recordDamage/Kill/Loss 一致 |
| A2.2 | 目标省伤害反馈：伤害数字飘字/建筑损坏显示 | 轰炸后省界面可见 |
| A2.3 | 战报接入存档（可选，轮3 后） | 读档回看最近战报 |

### A3. 敌我对称（C2/S6）
| 子项 | 内容 | 验收 |
|---|---|---|
| A3.1 | 敌机 hp 制 + 被击落（对称扣血） | 空战后敌机场 aircraft 数量减少 |
| A3.2 | 编队损失反馈（我方机被击落→师编制减少） | 战后师编制=剩余机数 |

### A4. 防空火力（C3，A 线后置）
- AAA 建筑（已有反导建筑沿用）对敌机群按概率结算（防空值×数量→击落期望）
- 验收：轰炸机群穿越防空区有损耗

---

## 四、后置线：B 稳定性（A 线验收后启动，单线串行）

| # | 任务 | 内容 | 启动条件 |
|---|---|---|---|
| B1 | 轮3 重放/降级 | EXECUTING 中目标失效→安全降级 RETURNING；读档中点贴图落正确省 | A 线 M-A3 验收后 |
| B2 | T7 回归 | 连存连读×3、返航中存档、多任务并存（轰炸+截击同时跑）、旧档兼容 | B1 内 |
| B3 | T8 主循环核验 | 多任务并发下 RealTimeSim/GameThread 稳定（挂机 10min 无泄漏/无卡顿） | B2 后 |
| B4 | 轮4 兜底 | 旧档无任务字段→师重建兼容；unitID 断链容错（已部分完成，补测） | B2 内 |

---

## 五、后置线：C 数据与视觉（B 线后）

| # | 内容 | 说明 |
|---|---|---|
| C1 | S5 多机种师化 | 拦截/攻击/轰炸机建成→对应师（多团或一机一师），四机型均可选中弹栏 |
| C2 | S4 AI 跳过 airhq_ 师 | AI_Manager 遍历军队时跳过（防 AI 误动空军师） |
| C3 | S9 金描边共存 | airhq_ 师跳过原版金描边（当前飞机视觉是特制绘制） |
| C4 | C4 雷达探测圈 | 雷达建筑可视化探测圈（数据已有 radarProvinces） |
| C5 | **M2-A 代差树** | 代差预留已就绪（见二点五）；数值表→科技节点→贴图替换，依赖 C1 后机型体系完整 |

---

## 六、路线图（单线串行版，v1.1）

```
【当前唯一执行线 = A 战斗可用】
第0步 A0 师级模型升级（甲'+X：动态编制多师 + 空军专属兵种 4 个）——见一点五
第1步 A1 打击任务下达入口（含 D1/D2 代差顺手修复 + UI 拍板）
第2步 A3.1 敌机战损对称（S6）——战斗中必须有消耗，与 A1 同批验证
第3步 A2 战报面板 + 伤害反馈
第4步 A4 防空火力
──── A 线验收（M-A0/M-A1/M-A2/M-A3）────
第5步 B1/B2/B3/B4 稳定性（轮3+回归+压测）
第6步 C1 多机种师化 → C2/C3 清理 → C4 雷达圈
第7步 C5 M2-A 代差树（数据→科技→贴图）
```

### 里程碑
| 里程碑 | 定义 | 验收 |
|---|---|---|
| M-A0 | 师级模型升级（甲'+X） | 造 1 架即建师、满 10 分编、兵种名正确、多师逐个控制、读档完整、战损递减归零移除 |
| M-A1 | 玩家能下达轰炸/攻军任务 | 轰炸后目标省经济人口可见下降 |
| M-A2 | 空战对称 | 敌机场机数减少、我方战报可读 |
| M-A3 | 打击全闭环 | 下达→出击→打击→战报→返航→（存档→读档→继续）全部无崩 |
| M-B | 稳定性绿 | 连存连读×3 + 多任务 + 旧档 全绿 |

---

## 七、关键技术锚点（实现参考，已核实）

| 锚点 | 位置 | 说明 |
|---|---|---|
| 任务工厂 | AirMission.createPatrol(884)/createStrategicBombing(924)/createAttackArmy(747)/createIntercept(798)/createAirSuperiority(706) | 全部存在，静态工厂 |
| 打击结算 | executeAttack(972)：Σ groundAttack→省 economy×0.1/人口×1000 扣减→recordDamage→payload-- | 原版完整 |
| 下达入口现状 | AirForceManager.handleProvinceClick（当前→createPatrol） | 扩展点 |
| 敌机战损 | updateAirCombat（当前只扣我方 hp） | S6 修改点 |
| 任务 UI | InGame_AirForce / DebugMissionList | 战报面板挂载点 |
| 机型数据 | assets/game/AirUnit/AircraftTypes.json（4 机型：拦截 GA0/战斗 GA5/攻击 GA30/轰炸 GA60） | 数据锚 |
| 防空 | 反导建筑（现有 ImageID）+ Buildings.json 索引 | C3 挂载点 |
| 师同步 | syncAirDivisionAirport（updateBuild 建造回调）→ S5 扩展机型判定 | C1 修改点 |
| 探针 | AirDbgLog.dKey/logOnce（um_mv0/um_mvsw/um_dd/um_add/um_rm 等） | 验收证据链 |

---

## 八、风险与对策
| 风险 | 对策 |
|---|---|
| 打击接线触动原版 update 链（HandleProvinceClick 大方法） | 每步走 CheckInvoke 验证 + 真机小步；复用现有标签风格 |
| 多任务并发（轰炸+截击+巡逻）暴露状态机竞态 | B3 T8 专门挂机压测；异常探针 um_p0-r2 保留 |
| 战报 UI 工作量大 | A2.1 先做最小版（回合提示条），面板化后置 |
| 敌机战损影响 AI 经济平衡 | 数值先保守（S6 对称扣血 0.5 系数已存在），观察期后调 |
| 用户交互形态未定（A1 决策点） | **首个周末前与用户拍板一次性确认**，避免返工 |

---

*本计划书由 2026-08-28 现状盘点生成；大计划书 v2.1 为总纲，本文件为当前阶段执行依据。验收证据链=airdbg_key.txt / airdbg_tick.txt + 用户真机确认。*

---

## 附：A1 UI 样品补记（2026-08-29，用户指令新增 ICBM 参照款）

大计划书 **第 18 章**（ICBM 游戏本体空军机制调研）已落地。A1 UI 决策点（2.2 悬而未决）现有**两批共 8 个样品**（`/sdcard/GLG/历史23/ui_samples/`）：

| 批次 | 样品 | 属性 |
|---|---|---|
| 早批（自创） | 方案A 点敌省直接开打（★2）/ B 军队栏打击按钮（★3）/ C 敌省右侧情报面板（★3）/ D 机场面板任务标签页（★4）/ E 全屏部署界面（★5） | 交互自设计 |
| 新批（ICBM 参照） | ① 单位Info面板式（★3）② 机场机库挂载出击（★4，**推荐**——Config 底座为核弹留位）③ 目标策划式（★5） | 机制复刻 ICBM |

**✅ 已拍板（2026-08-29）：方案②=拓展空军栏（机库视图）/ 方案①=即时交互 UI（Info 面板+打击指派）/ 方案③=后置 M3 核弹阶段**。
实施方案见《A1打击任务UI_实现计划书v1.md》（/sdcard/GLG/历史23/，219 行，三层架构+B1-B4 分步+锚点表 12 项+验收 8 条）。**教训累计 58 条**（大计划书 18.8）。

**🔄 进展登记（2026-08-30）**：A1 之 B2 即时面板（pkg_new77）已迭代至 **v37**（dbg_signed77_v37.apk，lastUpdate 20:39:10，四防线全过、启动零崩溃）。**U4 师粒度补全✅**（v24 五工厂 divKey 化 + v25 getActiveDivKey 公共化 + ICBM 巡逻逻辑调研实证）；**v23 空军司令部 UI 重置完成**（用户确认）；**B2 面板骨架✅（v26-v37）**：新类 InGame_AirForceQuick（信息条 460×110 + 4×BtnCmd 打击/巡逻/返航/取消 115px 等宽、图标上文字下，布局参照 ui_samples/空军作战界面-3.html）+ 仅空军师显隐（addActiveArmy 尾部 airhq_ 前缀）+ z 序每帧置顶（draw 入口守卫）+ 位置左下贴底（x=152, y=GAME_HEIGHT-230，右侧留空）；**B2 滑动✅根除（v37）**——根因=拖动链 actionMove cond_3→setScrollPosY/X（非点击路径），修复=cond_3 QUICK 实例守卫断源（用户确认）；**B2 遗留🔴**：信息条动态字段（编队·机型×数量｜航程｜挂载｜战力）未做；**B1 行为层=⏸待做**（核弹开关仅 Toast 占位）；教训累计 **76 条**（㉔ Menu 位置三字段体系/㉕ 滑块注册链/㉖ z 序 orderOfMenu 顺序表/㉗ 滑动双路径框架）。详见《A1打击任务UI_实现计划书v1.md》**v1.12**。

**🔄 进展登记（2026-08-30 第二波：场景加载链修复 v38-v42）**：用户 bug=“首局 2014-01-01 开局+无加载画面+911 事件+图标消失”。**🔬 方法**：PB39 探针包 11 点位（smali Log.i 打点）→ 三次根因反转：a) details.get(-1)（误判，前几轮方向错）→ b) v38 1a 无条件设 scenarioID 劫持点击分支（cond0 预览无加载画面；1b if-ltz 写反致 sid=1 被置0→加载 ModernWorld 2022）→ c) **完整堆栈终极真相=MenuManager.showAirForceQuick menus.get(IN_GAME/IN_GAME_AIRFORCE_QUICK)=-1**（B2 菜单字段构造器=-1、**真正注册在进局后**→首局加载链 disposeCivilizations→clearActiveArmy→showAirForceQuick 在菜单未注册时崩→异常吞掉→日历三行被跳过→Game_Calendar 默认 2014-01-01）。**✅ 修复（v40-v42）**：1a 回退+1b 改 if-gez（二局=2000✅）→ v41 QUICK 守卫（加载画面回归）→ v42 补 IN_GAME 守卫双保险（**首局=2000-01-01 用户确认✅**）；另 kaishi.txt mission_image=kaishi→0（NumberFormatException 消失✅，911 系事件链修复一半）。**🔴 遗留**：①InitGame.smali 图标加载链 v1 寄存器残留污染（wending/technology/manpower 段→人力/科技图标消失，P1 探针已布、修复待实施）②B2 信息条动态字段（挂起主线）③B1 行为层（核弹链 Toast 占位）。当前基线 **pkg_new77 v42**（23:41）；教训累计 **80 条**（㉘ 修复方向与条件句/㉙ 探针方法学/㉚ B2 面板与菜单注册时序）。详见《A1打击任务UI_实现计划书v1.md》**v1.13**。
**🔄 进展登记（2026-08-31 第四波：B2 信息条字段决策v2）**：用户拍板——①挂载体系简化（战/截=只对空、攻/轰=只对地；唯一挂载=核挂载，开启后**仅轰炸机**受影响，原三态配置废弃）②**战力显示取消** ③**编队=师粒度**（一师一编队，混编不做）④**空军对战系统自研**（不套 ICBM/陆军，远期主项）。源文件调研已完成（信息条现状=静态占位"空军师｜待命"；动态字段数据链路：师名=ArmyDivision.sArmy、机型×数量=aircraft Map+syncAirDivisionForType、航程=getAircraftRange 现成、核挂载=Airport.prefPayload 持久化已有）。详见《A1打击任务UI_实现计划书v1.md》**v1.15**（附录D）。基线 **pkg_new77 v51**；教训累计 **86 条**。

**🔄 进展登记（第五波：B2 信息条动态字段完成✅）**：v52 装机用户确认（机型×数量｜师状态五态）；正式版 v53（去探针）装机 02:56 零崩溃。基线 **pkg_new77 v53**。教训累计 **90 条**（㊲-㊵：构建环境陷阱/战后面板刷新点/HoveredArmy类型/条件跳转写反）。

**🔄 进展登记（第六波：×1000 残值闭环 + B3 方案甲拍板）**：用户反馈"只建1架却显示×1000"→v54 探针实证（gif:k=airhq_73_2315 uid=8 num=1 ord=1，真实 num=1；**×1000=存档陈旧 num 残留**——载入 RebuildMenus 异步恢复旧师导致）→**v55 双保险修复**：①载入完成后（Menu_LoadSavedGame$2 尾部）追加强制 syncAllDivisions（根因层）②信息条 num 合法性兜底（>10 或 <1 视为陈旧值→key 解析省份→机场 aircraft 真相源重算，防御层）。v55 装机 04:10 零崩溃，用户确认×1。**B3 方案甲拍板✅（2026-08-31）**：机库[打击]=机场自动打击模式开关（OFFENSIVE 接活，弃方案乙手动合一；与"取消智能路由"裁定=引擎层策略≠UI 点击层智能，层级不同不冲突）；批次 B3-A1（OFFENSIVE→敌省→战略轰炸，最小闭环）/B3-A2（目标扩展：敌军/敌机/制空+机型分工战截→对空攻轰→对地）/B3-A3（canReach/战损/打磨）；调研锚点全套见 A1 v1.16 附录D.7-D.10。基线 **pkg_new77 v55**。

**🔄 进展登记（第七波：B3-I 即时面板打击决策定稿）**：用户拍板——①四机型打击矩阵认同（轰炸→敌省 STRATEGIC_BOMBING / 攻击→敌军 ATTACK_ARMY / 战斗→敌机制空 INTERCEPT/AIR_SUPERIORITY / 截击→拦截）②护航=任务级合并（打击任务自动并入空闲 FIGHTER/INTERCEPTOR，师保持一师一机型不混编，sync 兼容）③软校验改为意图路由（对空机型点省=移动 createPatrol，对地机型点省=打击）。调研发现：handleProvinceClick 作战链现成（选机场→点省→防重复→航程→建任务→起飞）、createPatrol 语义=飞往→到达→滞留→折返（即移动）、STRATEGIC_BOMBING 打击效果（economy/population）全库缺失（G4）。批次：B3-I-1（打击接线+机型路由+护航+返航取消）/B3-I-2（效果结算+敌军/对空）/B3-I-3（确认条+打磨）。详见 A1 v1.16b/c 附录D.11。  **B3-I-1 分部化（2026-08-31）**：细分为 I-1a（G5 返航/取消）/I-1b（G2 机型路由）/I-1c（G3 护航合并）/I-1d（G1 BtnCmd[打击]接线），每步单文件单验收点；验收手册=A1 附录D.11.5（逐步玩家操作卡）；**行进链修正**：点省需先经[行进]进入选择目的地模式（chooseProvinceMode=true），非选中师直接点省不触发（总纲§2.2链路5/§13.1）。  **取消键语义定稿（v1.16e）**：[取消]=取消选中师（clearActiveArmy()+setActiveProvinceID(-1)）；[返航]=任务召回（forceReturn，唯一终止入口）；forceAbort 不做。  **移动选中保持（AFKEEP，v59）**：用户新指示（不做飞行中选中师，AFDIV2 回滚）——下达移动后师保持选中；根因链+修复见 A1 v1.16f/D.11.6；装机基线 **pkg_new77 v59**。  **移动选中保持（AFKEEP，v59）**：用户新指示（不做飞行中选中师，AFDIV2 回滚）——下达移动后师保持选中；根因链+修复见 A1 v1.16f/D.11.6；装机基线 **pkg_new77 v59**。
**🔄 进展登记（第八波：I-1b 机型路由装机✅ + 遗留两项 + 军队栏闪现消失调查）**：v70（I-1b 机型路由：新增 createMissionForClick 按 getKeyOrd 分流 ord2/3→createStrategicBombing、ord0/1→createPatrol；handleProvinceClick 删硬编码 FIGHTER 判定；createStrategicBombing divKey 机型绑定 BOMBER/ATTACKER）装机（PID=9861 零崩溃），用户确认"整体基本成功"（#23）。**遗留①**：信息条错字"循逻"→"巡逻"（已修 InGame_AirForceQuick.smali:159，待并装）。**遗留②**：军队栏闪现消失——调查已收敛，**完整因果链+代码证据表（F1-F9）+竞争假设（H1 tapClr 清空/H2 师离省）+鉴别探针方案（6 点 ub:*）+修复预案见总纲 §21.5.1**；结论要点：①AFKEEP 恢复条件 getArmyKeyID>=0 在师被 moveDivisionAlongFlight 首跳 removeArmy 出机场省后必然失败 ②rebuild(ZZ) :cond_5（activeArmySize<=0 直接隐藏三件套）与 actionUp_SetActiveArmy cond_0（同条件 setVisible(false)）均无守卫 ③$23 AFG2 守卫仅保护 setVisibleInGame_ProvinceArmy(false) 且依赖 selectedAirportProvinceID>=0（可能被 GameActiveProvince tapClr 在 chooseProvinceMode=true 时清空）。**下一步**：v71=错字+6 探针（ub:*）装机→用户复现→实证 H1/H2→修复（主=AFKEEP 兜底化）→五防线→打包签名→装机复验→I-1b 验收→I-1c 护航合并。

**🔄 进展登记（第九波：军队栏闪现消失闭环✅ + I-1b 验收✅）**：v71（错字+6 探针 logOnce 版）→@$23 v5 VerifyError 闪退（**分支标签多入口陷阱**：`:afg2_hide` 有 if-eqz→直接跳入路径，v5 从未赋值=Undefined→[0x6AB]）→v71b（P3 修复）→v72（**全 dKey 探针版**：hc:sel/afk1-3/ub:\* 8 点——**logOnce 500ms 全局节流致 v71 探针全军覆没**，多条探针必须 dKey 通道）+ub:mvs0 移到 :mv_tryrm（实际换省路径）→**实锤根因**：①handleProvinceClick（先执行）：hc:sel=2315 正常→创建任务（i1b:rt=patrol）→AFKEEP 全过（afk1:div=/afk2:sel=2315/afk3:key=0/ub:afk:sz=1/afkeep:ok）→军队栏显示【闪一下】②GameActiveProvince.actionUp_setActiveProvinceID（后执行）tapClr（chooseProvinceMode=true & 悬停敌省≠机场省）→selectedAirportProvinceID=-1→$23 守卫失败（ub:afg2hid×2）→setVisible(false)【消失】**=H1 时序版实锤，H2（师离省）排除**（afk3:key=0、ub:tdiv<0 未出现）→**v73 TAPG 守卫修复**（:tap_clear 处 getActiveDivKey≠→跳过清空）→五防线全过→装机（PID=31878 零崩溃）→**用户确认"正常正常"✅**。**I-1b 验收完成✅**（机型路由+错字"巡逻"+军队栏闭环）。教训累计 **99→105 条**（㊿ logOnce 节流/㊿1 多入口寄存器 VerifyError/㊿2 探针插真实路径/㊿3 versionCode 硬编码递增/㊿4 多探针全 dKey/㊿5 logcat 自污染），详见总纲 §21.5.1/21.5.2。**下一步：I-1c 护航合并**（B3-I-1c：createStrategicBombing 补 AF15 式 divKey 机型绑定+空闲 FIGHTER/INTERCEPTOR 自动并入 assignedAircraft；验收=轰炸机打击起飞后，机库战斗机显示"任务中"数量减少）。装机基线 **pkg_new77 v73**。

**🔄 进展登记（第十波：I-1c 护航合并闭环✅ + 护航状态六态 + 防重复师级化）**：用户"验收成功"✅。**v74**（createStrategicBombing 补 INTERCEPTOR 护航段——引擎原版已有 FIGHTER 段，发现 1026/1028 重复 addAll 已删；esc 探针 dKey:esc:sz=assignedAircraft 总数）→用户问"护航是什么功能·战斗机图标原地"→**核实=数据级合并**（护航借机库飞机 AirUnit，地图图标=师图标不跟飞=引擎原生 BOMBER+FIGHTER 语义）→用户报"**护航中显示待命**"→**v75**（InGame_AirForceQuick.getInfoText 六态化：师无任务时查本师机型机架 isInFlight=1→"护航"，.locals15 内 v0/v1/v12/v14 错峰）→用户报"**战斗机行动时轰炸机起飞不了**"→**v76**（根因=hasActivePatrol 机场级"一机场一任务"原版防重复拦截异师任务；修复=签名 (Airport,String) 师级化：玩家链传 getActiveDivKey 只拦同师（airhqKey equals）+同师打击任务也防重复、AI 链 tryPatrolForAirport 传 null 保持机场级）→五防线 4×0+MISSING15 白名单→装机（PID 零崩溃）→用户"验收成功"✅。**I-1c 验收完成✅**（护航合并+护航状态+防重复师级化）。教训累计 **105→108**（㊿6 原版防重复维度≠新功能维度/㊿7 数据级合并≠视觉级合并/㊿8 smali 替换锚点含空行缩进差异）。**护航机跟飞+拦截=登记 B3-I-2 扩展**。**下一步：I-1d（G1 BtnCmd[打击]接线）**。装机基线 **pkg_new77 v76**。

**🔧 I-1d 范围修正（2026-08-31 用户指正 + ICBM 原文调研，A1 v1.17b/D.11.8）**：用户指出**巡逻是一个模式，不用接入**——**ICBM 原文实锤**：巡逻=机场 Air Patrol 模式开关（lang/Eng/UI.lng **2066** "Allow air patrol"/**3301** "Air patrol:"/**3510** 教程 toggle Air Patrol buttons→机场自动绕场巡逻；拦截=机场自动自卫），配套 CanHostAircrafts "Fighter" 10 Patrol 4（机位+巡逻配额）/CanPatrolPoint/AIAutoPatrol；**打击=目标指派**（**2562-2564** 打击计划簿/ **2821-2822** 加入退出打击计划/教程 4102 "attack any targets you assign"）。**修正后 I-1d 范围**：只做 **[打击]按钮=点击选择目标省份模式**接线（pendingMissionMode=1+selectedAirportProvinceID=当前师机场省+iActiveProvince 同步+chooseProvinceMode=true+Toast"点选目标省份"→点省→机型路由现成）；**[巡逻]按钮不接入**（Air Patrol 模式开关登记为模式功能，见 B3 方案甲 OFFENSIVE/机库开关类）。教训 **108→109**（㊿9 功能语义须先对齐 ICBM 原文再接线）。

**🔄 进展登记（第十一波：I-1d 编码完成 + 三修复 v77-v79）**：**v77**=G1 [打击]按钮接线（BtnCmd :qc_c0：activeArmy 守卫链→pendingMissionMode=1（AirForceManager 新增 static）→selectedAirportProvinceID=当前师机场省（HoveredArmy.iProvinceID）→iActiveProvince 同步→chooseProvinceMode=true+chooseProvinceExtraY=0→Toast"点选目标省份"→探针 quk:stk:sel=，复用[行进]链模板；[巡逻]按钮保留占位=Air Patrol 模式开关）。**用户实测发现两处**→**v78**：①轰炸机/攻击机飞**本国省也打击**→国别校验（:cmc_ownchk 目标省 getCivID()==机场省 getCivID()→转本师机型移动 createPatrol，探针 i1b:rt=ownmove）②**攻击机也要护航**→护航守卫（createStrategicBombing：divKey ord==2 BOMBER 才并入 FIGHTER/INTERCEPTOR，ATTACKER 无护航，legacy=null 保留原版）。**用户指正（占领区）**→**v79**："游戏里还分占领区…AI_moveatwar 类里有算前线省份的方法引用省份实际控制权字段"→**引擎实锤**：AI_MoveAtWar.addOccupiedProvinces（1114）把 isOccupied 省份加入攻击目标（OccupiedByCivID<0=叛军/≥0=敌国，分数 OCCUPIED_BY_ENEMY_CIV/REBELS）→**占领省 getCivID=所有权仍原主**→V78 误判本国禁打击→**修复：:cmc_ownchk isOccupied() 优先→被占省（敌/叛军）→允许打击收复**；仅未占+同国→移动。五防线 4×0+MISSING15 白名单→装机（v79 PID=18886 零崩溃）。教训 **109→111**（㊿10 省份归属=实际控制≠所有权/㊿11 护航按机型语义）。**A1 升 v1.18 + D.11.9**。**下一步**：I-1d 验收（v79）→B3-I-2。装机基线 **pkg_new77 v79**。

**🔄 进展登记（第十一波：I-1d 编码完成 + 三修复 v77-v79）**：**v77**=G1 [打击]按钮接线（BtnCmd :qc_c0：activeArmy 守卫链→pendingMissionMode=1（AirForceManager 新增 static）→selectedAirportProvinceID=当前师机场省（HoveredArmy.iProvinceID）→iActiveProvince 同步→chooseProvinceMode=true+chooseProvinceExtraY=0→Toast"点选目标省份"→探针 quk:stk:sel=，复用[行进]链模板；[巡逻]按钮保留占位=Air Patrol 模式开关）。**用户实测发现两处**→**v78**：①轰炸机/攻击机飞**本国省也打击**→国别校验（:cmc_ownchk 目标省 getCivID()==机场省 getCivID()→转本师机型移动 createPatrol，探针 i1b:rt=ownmove）②**攻击机也要护航**→护航守卫（createStrategicBombing：divKey ord==2 BOMBER 才并入 FIGHTER/INTERCEPTOR，ATTACKER 无护航，legacy=null 保留原版）。**用户指正（占领区）**→**v79**："游戏里还分占领区…AI_moveatwar 类里有算前线省份的方法引用省份实际控制权字段"→**引擎实锤**：AI_MoveAtWar.addOccupiedProvinces（1114）把 isOccupied 省份加入攻击目标（OccupiedByCivID<0=叛军/≥0=敌国，分数 OCCUPIED_BY_ENEMY_CIV/REBELS）→**占领省 getCivID=所有权仍原主**→V78 误判本国禁打击→**修复：:cmc_ownchk isOccupied() 优先→被占省（敌/叛军）→允许打击收复**；仅未占+同国→移动。五防线 4×0+MISSING15 白名单→装机（v79 PID=18886 零崩溃）。教训 **109→111**（㊿10 省份归属=实际控制≠所有权/㊿11 护航按机型语义）。**A1 升 v1.18 + D.11.9**。**下一步**：I-1d 验收（v79）→B3-I-2。装机基线 **pkg_new77 v79**。

**🔄 进展登记（第十二波：巡逻模式 ICBM 式落地 v80→v83，用户"验收成功"✅）**：**构建方式变更**——DSH 容器内自建工具链（Ubuntu24.04+OpenJDK21+baksmali/smali 2.5.2+zipalign+apksigner），流程=从已装 APK 抽 classes.dex→baksmali(5514 类)→内容锚定 .py 补丁→smali 汇编→自研 mkzip(31734 条目逐条 raw copy+STORED 4 字节对齐+剔签名)→apksigner 用 debug.keystore(androiddebugkey/android) 签→指纹校验必须 == d6d886f1…（与 v79 一致才允许覆盖装，保存档）；**不再走 apktool b**。

**v80（巡逻引擎侧六修）**：①`tryPatrolForAirport` 首指令即 `return-void`（整方法被短路）②`hasActivePatrol` 判定**写反**（无任务反而跳过，永远发不出第一次巡逻）③`assignedAircraft.isEmpty()` 判定**写反**（有飞机反而不入列）④概率 0.4f→0.2f（起飞率 60%→80%，语义=开关打开后每回合每机场派机概率；调度链 GameThread_Turns→updateAll→update(civ)→updatePatrols）⑤`getRandomBorderProvince` 硬编码 FIGHTER 航程→拆 (Airport)/(Airport,AirType) 双重载按 CombatRadius（截400/战500/轰800/攻300）⑥新增 civ 守卫（仅玩家机场；AI 不受影响——`executeAIAssignment` 只判 mode==AI）。**订正**：`getRandomBorderProvince` 候选=**本国省**（if-ne 跳过异国）=绕基地巡逻，与 ICBM 3510 一致；此前"只收外国省"系自研 DEX 解码器读反跳转所致误判。

**v81（用户实测三修）**：①`Airport.<init>` 默认 mode PATROL→OFFENSIVE（开局不再自动巡逻；老档 mode 已持久化需手动关）②信息条「护航」误显→「待命」（根因=getInfoText 在本师无任务时，只要同机场同机型有 isInFlight 就标护航）③`createPatrol` 按师编制截断派机（新增 `AirMission.divLimit(Airport,divKey)` 读 ArmyRegiment.num，>10 视陈旧不限制；divKey==null 的 AI 路径不变）④面板 [巡逻] 改开关（有任务→forceReturn 返 -4／已返航 -5）。

**v82（机场级两根因）**：①机场自动巡逻走 `createPatrol(...,null)` 无师路径→divLimit 不生效→12 架全带走（贴图 ×12、第二个师 0 架可用）→新增 `pickIdleDivKey(Airport,AirType)`（airhqKey4 遍历 seq1-10 找存在且无任务的师）+ 防重复改师级；②**机库模式键关不掉的真因**=`BtnMission.actionElement` 把 mode 设置埋在"逐机型可用飞机检查"之后，飞机全在天上→avail 全空→整个循环跳过→模式纹丝不动；修=模式切换前置（脱离可用飞机限制）+ 新增 `stopAirportPatrols(provinceID)`（该机场在飞 PATROL 全 forceReturn，探针 pt:stop:n=）。

**v83（司令部按钮改造，用户验收✅）**：巡逻键→**两态开关**（PATROL⇄OFFENSIVE，关闭时联动召回）+ 新增 `BtnMission.getTextToDraw()` 动态显示「自动巡逻：开/关」（参照 BtnPayload 现成写法）；三键文本 巡逻/打击/返航 → **自动巡逻 / 自动打击 / 紧急召回**（紧急召回=missionType3 原有 clearPatrolForAirport 链）。**自检口径**：五道防线自研化（CheckInvoke 跨 6 dex + **父类链解析**白名单 enum/继承；CheckRegs·CheckSig 实参寄存器数==形参宽度和+this；CheckRange；CheckInit）+ 包完整性（testzip 全 CRC、STORED 30657 全 4 字节对齐、dex md5 一致）——v83 = 1290 条 invoke，TOTAL BAD:0。装机基线 **pkg_new77 v83**。

**📌 A1/G4 重大订正（DEX 实证，详见《A1_v79源码核对报告_dex实证.md》）**：D.11.2 的 G4「打击效果结算缺失·economy/population 扣减全库不存在」**证伪**——`AirMission.executeAttack` 完整存在（Σ groundAttack→economy-=0.1×Σ→population-=1000×Σ→recordDamage→attackRoundsExecuted++），**唯一调用者=`AirMission.update` 的 EXECUTING 分支且无条件调用**；`createStrategicBombing` maxAttackRounds=1、`createPatrol` maxAttackRounds=0（巡逻不误伤）。**真正缺口三条**：①**人口伤害写错层**——executeAttack 直接 iput 聚合缓存 `provincePopulationSize/Total`，per-civ 源 `populationOfCivID` 未动，回合结算会从源重算→伤害被抹（对比 `Province.atomicBombDropped` 逐 civ 调 `setPopulationOfCivID(I,I)Z` 才正确）②**零反馈**——`totalDamageDealt`/`enemyAircraftShotDown`/`lostAircraft` 三字段全写不读、已进存档但无任何 UI 消费点③**敌我不对称**——`recordKill` 全库无调用者（敌机不掉血不击落），`updateAirCombat` 单向扣血且只取每 civ 第 0 个机场第 0 架飞机的 radarRange 取样、被击落机不从 aliveAircraft 移除。**现成底座**：引擎自带战报 `Player.addBattleReport(BattleReport)`（BattleReport{key,iProvinceID,iTurnID,fWarScore,leftSideWon,playerWon,civReportLeft/Right{iCivID,iSoldiers,iCasualties,iRetreated}}，当前仅 `Battle.updateBattle_SummaryCasualties` 在用）→ **A2 战报可零 UI 开发直接接**；`Province.atomicBombDropped` = M3 核挂载现成落点。**另**：`pendingMissionMode` 全库 1 写 0 读 → [打击] 与 [行进] 行为完全等价（按钮语义未落地）。

**▶ 下一步候选（B3-I-2 打击可见化，待拍板）**：N1 人口伤害改逐 civ `setPopulationOfCivID`（伤害真正留存）／N2 打击接引擎战报 `Player.addBattleReport`（复用原版战报面板，零 UI）／N3 打击 Toast 即时反馈／N4 `pendingMissionMode` 消费点+清零（修 [打击]/[行进] 语义分叉）／N5 A3.1 敌机对称（recordKill 接活 + updateAirCombat 取样重构）。巡逻侧遗留：P-2 配额 `getPatrolQuota`（截2/战4/轰2/攻0，全库零调用者）、P1 巡逻绕圈视觉。
