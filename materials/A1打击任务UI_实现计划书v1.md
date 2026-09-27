# A1 打击任务 UI —— 实现计划书 v1.18

> **v1.18（2026-08-31）I-1d 实现+三修复（v77-v79）**：**v77**=G1 [打击]按钮接线（pendingMissionMode=1+selectedAirportProvinceID=当前师机场省+iActiveProvince 同步+chooseProvinceMode=true+chooseProvinceExtraY=0+Toast"点选目标省份"+探针 quk:stk，BtnCmd.getInfoText 同款守卫链，AirForceManager 新增 static pendingMissionMode，装机待用户验收）；**v78 双修复**：①轰炸机/攻击机点**本国省**不再打击→国别校验（:cmc_ownchk：目标省 getCivID()==机场省 getCivID()→转本师机型移动 createPatrol，探针 i1b:rt=ownmove）②**攻击机不借护航**（createStrategicBombing 护卫守卫：divKey ord==2 BOMBER 才并入 FIGHTER/INTERCEPTOR，ATTACKER 战术打击无护航，legacy=null 保留原版）；**v79 占领省修复（用户指正）**：游戏分**占领区**——被占省 getCivID()=所有权仍原主→V78 误判本国禁打击→**修复=isOccupied() 优先**（被占=敌国/叛军→允许打击收复）；**引擎语义实锤=AI_MoveAtWar.addOccupiedProvinces（1114）把被占省加入攻击目标**（ProvinceData.getOccupiedByCivID()<0=叛军/≥0=敌国，分数 AT_WAR_MOVE_PROVINCE_SCORE_OCCUPIED_BY_ENEMY_CIV/REBELS）→迁移判定从"所有权"改为"实际控制"；**证据表=A1 D.11.9**；教训 109→111（㊿10 占领区语义/㊿11 护航按机型语义）。
> **v1.17b（2026-08-31）I-1d 范围修正（用户指正 + ICBM 原文调研）**：**[巡逻]按钮不接入任务指派=机场 Air Patrol 模式开关**（ICBM lang/Eng/UI.lng 2066 "Allow air patrol"/3301 "Air patrol:"/3510 教程"toggle the Air Patrol buttons to have the airbase automatically have planes patrol"）；[打击]=**目标指派=点击选择目标省份模式**（对齐 ICBM "assign targets"：教程 2562-2564 打击计划簿/2821-2822 加入退出打击计划）；**I-1d 范围收窄**：只做 [打击]按钮接线（pendingMissionMode=1+选机场省+iActiveProvince 同步+chooseProvinceMode=true+Toast"点选目标省份"→点省按机型路由现成）；[巡逻]模式开关登记为模式功能（后续/机库开关类，见 B3 方案甲 OFFENSIVE）。
> **v1.17（2026-08-31）I-1c 护航合并验收完成✅（v74-v76）**：v74（createStrategicBombing 补 INTERCEPTOR 护航段+esc 探针+去重复 addAll）→v75（**护航状态六态**：getInfoText 新增"护航"——师无任务时查本师机型机架 isInFlight=1→显示"护航"；用户发现护航中显示"待命"→修复）→v76（**防重复师级化**：hasActivePatrol(Airport,String) 签名扩展——原版"一机场一任务"拦截战斗机任务中的轰炸机起飞（用户发现）；玩家链传 getActiveDivKey 只拦同师、AI 链传 null 保持机场级）→用户确认"验收成功"✅；**护航=数据级合并（借调机库飞机+参与结算）**，视觉不跟飞=引擎原生语义（BOMBER+FIGHTER 数据合并）→护航机跟飞+拦截登记 **I-2 扩展**；**I-1c 验收✅ → 下一步 I-1d BtnCmd[打击]接线**（G1）。
> **v1.16i（2026-08-31）I-1b 验收完成✅（军队栏闪现消失闭环）**：v72 全 dKey 探针实锤根因=**H1 时序版**（①handleProvinceClick 先执行→AFKEEP 显示【闪一下】②GameActiveProvince.actionUp_setActiveProvinceID 后执行→tapClr 清 selectedAirportProvinceID→$23 守卫失败（ub:afg2hid×2）→隐藏【消失】；H2 师离省排除）；**v73 TAPG 守卫修复**（GameActiveProvince :tap_clear 处 getActiveDivKey≠→跳过清空）用户确认"正常正常"✅；错字"循逻"→"巡逻"（InGame_AirForceQuick.smali:159）已并装；**完成链条=总纲 §21.5.1/21.5.2 闭环**，本文档 D.11.7 已更新为闭环状态；**I-1b 验收✅（机型路由+错字+军队栏）→ 下一步 I-1c 护航合并**（B3-I-1c）。

- 文档版本：**v1.16**（2026-08-31；v1 用户拍板后制定，v1.1 按大计划书第19章深度调研修正 6 项，v1.2 按用户追加决策修正 2 项，v1.3 素材交付盘点+ICBM 裁切坐标，v1.4 素材定稿拍板：airs_slot 方案A+39 张成品+Save_Airport 字段数修正，v1.5 B1 机库化编码+构建+装机完工，v1.6 B1 机库化 v6 视觉重构（按效果图）装机+新防线 CheckSig+教训⑨-⑬，v1.7 全链根因实证——v7 转机（getIsInView 恒 true）+v8 真根因（16 按钮缺失 List.add）+修复装机，v1.8 **空军司令部 UI 重置完成**——v9-v23 逐项视觉微调 15 轮+绘制链深层机制实证+APK 技术认知总结固化，v1.9 **B1 行为层登记待做**（核弹开关仅 Toast 占位）+ **B2 Info 面板 HTML 样品交付**（不写代码，先出原型），v1.10 **U4 师粒度补全完成**——五工厂全 divKey 化（v24）+ getActiveDivKey 公共化（v25）+ ICBM 巡逻逻辑调研实证，v1.11 **B2 即时面板编码启动（v26-v36）**——新面板类 InGame_AirForceQuick 落地+仅空军师显隐+z序每帧置顶+位置字段体系实证+滑块注册链实证+教训㉔-㉖，v1.12 **B2 滑动根因实证（v37）**——拖动链断根（actionMove cond_3 QUICK 实例守卫）+面板右移100px（x=152）+清理重复死代码+教训㉗，v1.13 **场景加载链修复全纪实（v38-v42）**——三处修复两处回退+11探针实测+三次根因反转（details.get→点击分支→showAirForceQuick 菜单未注册）+教训㉘-㉚，v1.14 **军库长按详情优化全纪实（v43-v51）**——用户需求（军库信息条长按→战机详情：名称=机型名+数据排列无章法溢出）→机型名硬编码链路（BtnSelect/BtnBuild 构造器 modelName 参数法）+详情重排（标题合并+数据五行）+**VerifyError 四连根修**（[0x212]v1 污染→[0x15A]7 参数→[0xAD]数组 merge→[0x1EB]/[0x5A1]签名不一致）+**CheckRange 第五防线新增**+**引擎 Text.getHeight 多行化**+教训㉛-㊱，v1.15 **B2信息条字段决策v2**（2026-08-31 用户拍板：挂载体系简化——战/截=只对空、攻/轰=只对地、**唯一挂载=核挂载**（开启后仅轰炸机受影响）；**战力显示取消**；**编队=师粒度**（一师一编队、混编不做）；**空军对战系统自研**登记（不套陆军/ICBM 引擎）+ 源文件调研报告（信息条现状=静态占位"空军师｜待命"；数据链路四字段锚点）），v1.15b **B2 信息条动态字段实施完成（v52-v53）**——v52 探针版装机用户确认✅ + v53 去探针正式版装机 02:56 零崩溃（实施纪实详见附录D.5 + 教训㊲-㊵，累计 90 条），v1.16 **B3打击指派流·方案甲拍板**（2026-08-31 用户决议：机库[打击]=机场自动打击模式开关（OFFENSIVE 接活），弃方案乙手动指派合一；登记 B3-A1/A2/A3 批次），v1.16b **B3-I 即时面板打击调研完成**（2026-08-31 用户指示先做即时面板打击逻辑：现成 handleProvinceClick 作战链发现+5 项缺口 G1-G5+四机型打击矩阵设计，详见附录D.11），v1.16c **B3-I 决策定稿**（2026-08-31：矩阵认同+护航=任务级合并+软校验改为意图路由——战斗机/截击机点省=移动(PATROL)，轰炸/攻击机点省=打击），v1.16d **B3-I-1 分部化+验收手册**（2026-08-31：用户指正行进链——点省需先经[行进]进入选择目的地模式(chooseProvinceMode=true)，非选中师直接点省（原文误记，已修正 D.11.1）；B3-I-1 细分为 I-1a/I-1b/I-1c/I-1d 四分部，每步单文件单验收点，验收手册见附录D.11.5），v1.16e **取消键语义定稿**（2026-08-31：用户拍板 **[取消]=取消选中师**——clearActiveArmy()+setActiveProvinceID(-1)（等价点空白/ESC，现成链）；**[返航]=任务召回**（唯一任务终止入口，forceReturn→RETURNING飞回）；forceAbort 不再需要（引擎全损自动 ABORTED 兜底保留）；G5 缩为只加 forceReturn()+两按钮接线；对齐 ICBM CancelOrders/ReturnToBase/AutoReturn 三语义），v1.16f **移动选中保持（AFKEEP）定稿+AFDIV2 回滚**（2026-08-31 用户新指示：**不做飞行中选中师**——AFDIV2（v57/v58 飞行中命中检测试验）回滚，飞机飞行过快点选不现实；**真实需求=下达移动指令后师保持选中**（不脱离，信息条/命令组保持以支撑[返航]验收）；游戏文件调研坐实根因链（MapTouchManager.actionUp 点省选中处理→activeArmy 被替换为目标省军队/清空→handleProvinceClick 创建任务后**无恢复选中**→空军面板隐藏）；修复 AFKEEP=handleProvinceClick 任务创建成功后恢复选中（clearActiveArmy+addActiveArmy(HoveredArmy{getActiveDivKey,selectedAirportProvinceID,getArmyKeyID,airport.civID})+actionUp_SetActiveArmy，模板=selectAirDivisionAt 尾部）；新缺口 **G6** 登记 D.11.2；装机 v59），v1.16f **移动选中保持（AFKEEP）定稿+AFDIV2 回滚**（2026-08-31 用户新指示：**不做飞行中选中师**——AFDIV2（v57/v58 飞行中命中检测试验）回滚，飞机飞行过快点选不现实；**真实需求=下达移动指令后师保持选中**（不脱离，信息条/命令组保持以支撑[返航]验收）；游戏文件调研坐实根因链（MapTouchManager.actionUp 点省选中处理→activeArmy 被替换为目标省军队/清空→handleProvinceClick 创建任务后**无恢复选中**→空军面板隐藏）；修复 AFKEEP=handleProvinceClick 任务创建成功后恢复选中（clearActiveArmy+addActiveArmy(HoveredArmy{getActiveDivKey,selectedAirportProvinceID,getArmyKeyID,airport.civID})+actionUp_SetActiveArmy，模板=selectAirDivisionAt 尾部）；新缺口 **G6** 登记 D.11.2；装机 v59）
- 项目：终序千禧 × ICBM 移植（Operation FALCON）
- 上级文档：总纲《终序千禧_ICBM移植_产品规划书_v2.1.md》（**第18章 ICBM 调研 + 第19章深度调研第二辑**）｜执行基准《当前阶段计划书_战斗可用版v1.md》
- 当前基线：**pkg_new77**（A0.1✅/A0.2✅/甲1✅/行进BUG✅/D1✅/滤镜✅/B1✅/师任务绑定✅/A0.3贴图✅/A1-B1机库化✅/A1-B1机库化v6视觉重构✅/A1-B1机库化v8按钮修复✅/**空军司令部UI重置完成✅（v23 装机 13:54:15）**／**B1行为层⏸待做**（核弹开关仅Toast占位，BtnBuild/BtnMission行为待验）／**B2即时面板·骨架✅（v26-v37；滑动根除✅用户确认，剩信息条动态字段）**／**场景加载链修复✅（v42 装机 23:41，首局 2000-01-01 用户确认；遗留：图标路径污染修复+B2 信息条动态字段+B1 行为层）**／**军库长按详情优化✅（v43-v51：机型名显示+数据两列五行+弹窗多行增高；VerifyError 四连根修，v51 装机）**／**U4师粒度补全✅（v24五工厂divKey化+v25 getActiveDivKey公共化，17:34安装）**）
- 定位：**设计先行，不写代码**——本文件是 A1 打击任务 UI 的实施方案，编码在用户确认后启动

---

## 0. 用户拍板（2026-08-29）

| 方案 | 用途 | 时机 |
|---|---|---|
| **方案② 机场机库挂载出击** | **拓展空军栏**（InGame_AirForce / InGame_AirForceOptions 升级为机库视图） | 本计划批次1 |
| **方案① 单位 Info 面板式** | **即时交互 UI**（选中编队后的实时操作面板+打击指派） | 本计划批次2-3 |
| **方案③ 目标策划式** | **后置**：等 M3 核弹阶段再做（AttackerInPlanner 战略层） | 后置 |

---

## 1. 设计总览（三层架构）

```
┌─────────────────────────────────────────────────────┐
│ 入口层（方案②）：空军栏 = 机库面板                     │
│  InGame_AirForce（机场列表, 现有不改）                  │
│   └→ InGame_AirForceOptions（单机场, 升级为机库）      │
│       4×机型格：图标+机位/配额+状态+挂载配置行          │
│       (BtnSelect 选中机型 / BtnBuild 建造 保留)         │
└──────────────────────┬──────────────────────────────┘
                       │ 选中编队（现有链：trySelect→HoveredArmy）
┌──────────────────────▼──────────────────────────────┐
│ 交互层（方案①）：即时 Info 面板                        │
│  InGame_AirForceQuick（新面板，选中空军师时弹出）       │
│   信息条：机型×数量 | 师状态（待命/打击/返航/取消/巡逻） │
│   按钮组：✚打击 / ◉巡逻 / ↩返航 / ✕取消（补给=返航自动）│
│   指派模式：地图准星 → 点目标 → 确认条(Accept/Cancel)   │
└──────────────────────┬──────────────────────────────┘
                       │ uiMode + selectedDivKey + target 信息
┌──────────────────────▼──────────────────────────────┐
│ 执行层：任务路由 + 五工厂（全部 divKey 化）             │
│  resolveMissionForTarget(目标类型) → 自动匹配任务       │
│   敌省→STRATEGIC_BOMBING | 敌军→ATTACK_ARMY           │
│   敌机→INTERCEPT | 空地→AIR_SUPERIORITY/PATROL        │
│  AirMission.create*(Airport,目标...,String divKey)   │
└─────────────────────────────────────────────────────┘
```

---

## 2. 现状盘点（全部已取证，2026-08-29）

### 2.1 可复用（✅ 已就绪，零改动）
| 组件 | 位置 | 说明 |
|---|---|---|
| 师-任务绑定 patch15 | `createPatrol(Airport,I,String divKey)` AirMission:875 | 用户路径已传 `Game.activeArmy[0].key`（handleProvinceClick:1662） |
| 打击入口（用户路径） | AirForceManager.handleProvinceClick:1556 → 1621 isInRange（D1）→1662 createPatrol | 已带 divKey + AFRNG:out=1 |
| 任务工厂×5 | createAirSuperiority:697 / createAttackArmy:738 / createIntercept:789 / createPatrol:875 / createStrategicBombing:934 | 全存在 |
| 打击结算 | executeAttack (972-1090)：canAttackGround 过滤→Σ groundAttack→省 economy×0.1 / population×1000 扣减 | 完整 |
| 挂载数量字段 | AirUnit.`currentPayload:I` / `maxPayload:I` | 已有（核弹阶段 M3 使用） |
| 机场容量 | Airport.`maxCapacity:I` / totalAircraft / aircraft(Map<AirType,List>) | 已有 |
| 机型格基础 | InGame_AirForceOptions 构造器：每机型行=文本(386/534/682/830 AirType.X+数量) + BtnSelect(426/574/722/870,typeOrdinal) + BtnBuild(472/620/768/916) | **机库格改造起点** |
| 任务按钮×3 | BtnMission(962/1016/1070)：AirForcePatrol(0)→OFFENSIVE / AirForceAttack(1)→PATROL / AirForceAuto(2)→特殊 | 保留作为直达入口 |
| 军队栏 | menusInGame/Province/InGame_ProvinceArmy*（选中师后弹出） | 即时面板的宿主环境 |
| 选中链 | trySelectAirUnit → selectAirDivisionAt → HoveredArmy{key=师key} → addActiveArmy | 已闭环 |
| 探针体系 | AirDbgLog.dKey/logOnce → airdbg_key/tick.txt | 验收链 |

### 2.2 缺口（本计划要补的）
| # | 缺口 | 说明 |
|---|---|---|
| U1 | 空军栏无机库语义 | 机型行只有"名称+数量"，无图标/配额/状态/挂载 |
| U2 | 无即时交互面板 | 选中师只有军队栏（编制+行进），无打击/巡逻/返航/补给按钮组 |
| U3 | 无指派模式 | 点目标→只走 PATROL（handleProvinceClick 固定调 createPatrol），无目标类型路由 |
| U4 | 五工厂 divKey 不齐 | 仅 createPatrol 带 divKey；其余 4 工厂沿用 getAirDivKey() 3 段 key（=老 bug 复现面） |
| U5 | 无挂载类型概念 | currentPayload 数值链**已持久化**（Save_AirUnit:23），已由机型分工解决（战/截=对空、攻/轰=对地）；prefPayload 仅作核挂载开关（0关/1开，仅轰炸机受影响） |

---

## 3. 数据设计（最小集）

### 3.1 新增字段（4 个，全部带默认值→旧档兼容）
| 类 | 字段 | 类型 | 默认 | 说明 |
|---|---|---|---|---|
| AirForceManager | `uiMode:I` | int | 0 | 0=正常 1=打击指派模式（选目标中）2=巡逻指派模式（规划复核，批次3 可并入1） |
| AirForceManager | `selDivKey:Ljava/lang/String;` | String | null | 当前指派编队 key（=选中的师 key） |
| AirForceManager | `tgtKind:I / tgtProv:I / tgtArmy:I` | int | -1 | 待确认目标信息（kind:0省/1军/2机） |
| Airport | `prefPayload:I` | int | 0 | 核挂载开关：0=关(默认) 1=开（**仅轰炸机受影响**；战/截=只对空、攻/轰=只对地——机型分工即对空/对地语义，无需挂载三态）；**持久化=Save_Airport 10→11 字段**（实测 2026-08-30：Save_Airport 现有 10 字段；SaveGameManager$Save_Airport.smali） |

### 3.2 静态常量（AirForceManager）
```java
// ICBM CanHostAircrafts 直译（AircraftTypes.json 扩展前先落代码，M2-A 再挪数据）
airQuota[4] = {4, 10, 5, 8};   // ord 0截/1战/2轰/3攻（ICBM: Interceptor4/Fighter10/Bomber5/Attack8）
airPatrolQuota[4] = {2, 4, 2, 0}; // 巡逻配额（ICBM: Patrol 2/4/2/-）
```
> 显示用；执法（容量拒绝/巡逻限流）批次4 或后置，本计划只做**显示与提示**（避免行为回归）。

### 3.3 挂载 Config（简化版：核挂载开关，用户拍板 2026-08-31）
| 值 | 名称 | 语义 | 生效范围 |
|---|---|---|---|
| 0 | 核挂载·关（默认） | 常规对空/对地（按机型分工：战/截只对空、攻/轰只对地） | 全部机型 |
| 1 | 核挂载·开 | 轰炸机出击携带核弹 | 🔴 **仅轰炸机**受影响（其他机型行为等价 0） |
> 挂载三态（对空/对地/任务改型）**已废弃**：机型分工天然解决对空/对地语义；原"任务改型"位并入核挂载开关。

---

## 4. 交互流程（端到端）

### 4.1 机库面板（方案②，批次1）
```
打开空军栏 → 机场列表（现有） → 点机场 → 机库面板（升级版 InGame_AirForceOptions）
  标题：AirForceOptions + 机场名/级别
  ┌─ 机型格 ×4 ────────────────────────────┐
  │ [机型图标] 截击机 J-8      机位 3/4 巡逻 1/2 │ ← 格内：图标(unitsImages)+名+机位+配额+状态
  │ 核挂载行：[核挂载:关][核挂载:开](仅轰炸机)    │ ← 点格选中后显示，sw=机场级 prefPayload
  └───────────────────────────────────────┘
  按钮：选中机型→B(建造)保留 | 格内"选拔出"→选中编队(close→地图选中)
  直达任务按钮×3（Patrol/Attack/Auto）保留在底部
```

### 4.2 即时面板（方案①，批次2-3）
```
地图上选中空军师（现有链）→ 军队栏弹出（现有）→ 同时弹出 InGame_AirForceQuick：
  ┌──────────────────────────────────────┐
  │ 截击机×4 | 状态:待命 │ ← 信息条（字段定稿：机型×数量×师状态）
  │ [✚打击] [◉巡逻] [↩返航] [✕取消]  │ ← 58px 命令按钮组（⛽补给已取消：返航即补给）
  └──────────────────────────────────────┘
点[✚打击] → uiMode=1 指派模式：
  - 地图出现攻击标记提示（**半透明红色填充圆+准星**：红圆=打击覆盖提示，纯色填充**无羽化**（区别于雷达圈羽化蓝晕），复用 AttackPosition_Mark 思路，绘制可挂 drawAirForce 段）
  - 点目标 → 目标解析（省/军队/敌机编队）
  - 弹出确认条：编队→目标 摘要 + 航程判定(D1 变色) + [✓确认][✕取消]
点[✓确认] → resolveMissionForTarget 路由 → createXxx(divKey) → 起飞执行
点[✕取消]/Esc → uiMode=0 恢复
```

### 4.3 目标路由（resolveMissionForTarget，新函数）
```java
// 伪代码（AirForceManager 新 private 方法）
kind = resolveTarget(screenX, screenY)  // 0省 1军 2敌机编队（复用现有命中逻辑粒度）
switch(kind):
  case 0:  // 敌省
    if(编队含轰炸/攻击) → createStrategicBombing(airport, provID, divKey)
    else → Toast"需轰炸机/攻击机编队"（或自动降级为巡逻）
  case 1:  → createAttackArmy(airport, armyID, provID, divKey)
  case 2:  → createIntercept(airport, targetUnitIDs, divKey)
  default: → createAirSuperiority(airport, provID, divKey)（空地=制空巡逻）
```
> 规则简化：**先按"目标类型"匹配（ICBM 同款），不强制机型校验**——机型不匹配时 Toast 提示但允许下达（批次3 先软化，避免卡死交互；严格校验留 A1 打磨轮）。
> **Payload 语义（v1.1 补充）**：对地任务（省/军）要求机场 prefPayload∈{1 对地}；若为 0 对空 → 确认条显示"当前挂载：对空（建议切对地）"提示但不阻止（软校验）；核态（2）B3 不生效（灰显"需科技"）。

---

## 5. smali 改动清单（锚点表，编码时逐项执行）

| # | 文件 | 位置 | 改动 | 批次 |
|---|---|---|---|---|
| 1 | AirForceManager.smali | 字段区 | 新增 uiMode/selDivKey/tgtKind/tgtProv/tgtArmy/prefPayload?（prefPayload 属 Airport） | 2 |
| 2 | Airport.smali | 字段区 | 新增 `prefPayload:I`（默认 0=核挂载关）+ Save_Airport 持久化 1 字段（默认 0 兼容旧档） | 1 |
| 3 | InGame_AirForceOptions.smali | 构造器 4 机型行（300-950） | 每行=Text_StaticBG+文本行+Bdetails_btn；**改法：4 行"文本行"（"AirType.X N / maxCapacity"）替换为机库格**（机型图标 unitsImages 66+ord 取图走 armyImages + 机位/配额文本 getAirQuota + 状态点）；BtnSelect/BtnBuild **原位保留**；挂载行（prefPayload 三态切换 BtnPayload）插在格后 | 1 |
| 4 | InGame_AirForceOptions$** 新内部类 | — | BtnPayload（挂载三态切换，typeOrdinal 类似） | 1 |
| 5 | menusInGame/AirForce/InGame_AirForceQuick.smali（新） | — | 新面板类：信息条+4 命令按钮（打击/巡逻/返航/取消）+确认条（继承 Menu；菜单管理注册 MenuManager） | 2 |
| 6 | InGame_AirForceQuick$BtnCmd.smali（新） | — | 命令按钮（cmdKind:I）：0打击/1巡逻/2返航/3取消（补给无按钮=返航自动完成，复用 returnToBase 满血满弹） | 2 |
| 7 | AirForceManager.smali | handleProvinceClick:1556 | 分支：uiMode==1 → 目标路由（resolveMissionForTarget→createXxx(divKey)）+确认条状态；uiMode==0 → 现逻辑（createPatrol） | 3 |
| 8 | AirMission.smali | 工厂 697/738/789/934 | 四工厂全部加 `String divKey` 参数（patch15 同款：非空→airhqKey=divKey+getKeyOrd 按机型派机；空→现行为） | 3 |
| 9 | AirMission.smali | executeAttack | （不动公式）仅确认 payload 扣减走 currentPayload/maxPayload 已有逻辑 | 3 |
| 10 | ProvinceDrawArmy.smali | drawAirForce 段 | 指派模式准星/标记绘制（uiMode==1 时**半透明红色填充圆+准星**，无羽化，轻量每帧） | 2-3 |
| 11 | 触发注册 | **MenuManager.smali:19023**（InGame_AirForceOptions 预创建同区）| Quick 面板同处预创建+setVisible 控制：选中空军师（HoveredArmy.key 前缀 airhq_）→show；清除选中→hide | 2 |
| 12 | 探针 | AirDbgLog | quk:open / quk:cmd / tgt:kind= / msn:fab=STRATEGIC_BOMBING / uiMode=1 | 2-3 |

---

## 6. 分步实施（每步独立装机+验收，单线串行）

| 批次 | 内容 | 产出 | 验收点 |
|---|---|---|---|
| **B1 机库化**（方案②） | 锚点 2/3/4：机型格图标+机位/配额显示+挂载三态行（先只记 prefPayload） | pkg_new77 | 空军栏 4 格显示图标/机位 N/total、配额、状态；挂载行可切换（写入持久化）；旧档正常 |
| **B2 即时面板**（方案①骨架） | 锚点 1/5/6/11/12：Quick 面板+4 按钮组+信息条；选中师弹出/清除收起 | pkg_new78 | 选中师→面板弹出；点按钮有探针日志；不选师不出现 |
| **B3 指派路由** | 锚点 7/8/10：uiMode 指派模式+准星+目标解析+确认条+四工厂 divKey 化 | pkg_new79 | 点打击→准星→点敌省→确认→STRATEGIC_BOMBING 起飞；点敌机→INTERCEPT；点敌军→ATTACK_ARMY；D1 超程灰显；CheckInvoke 0 bad；零崩溃 |
| B4 打磨（后置,挂靠 A2） | ① **巡逻视觉（大计划书20章 P1）**：EXECUTING 不再落地式悬停→改为绕圈巡航插值绘制（复用 flightProgress 时钟；师保持空中态）② 严格机型校验 Toast ③ 战报最小版（回合提示条）④ 指派/巡逻准星 | 后置 | A2 战报同期 |

---

## 7. 验收清单（M-A1-UI）

1. 空军栏 4 机型格：图标=对应机型（66-69 贴图）、机位/配额显示正确、状态（待命/巡逻中/在建）正确
2. 选中 4 机型任意师 → 即时面板弹出（信息条+4 按钮：打击/巡逻/返航/取消）；取消选中→收起
3. 点[✚打击]→指派模式：出现地图标记；点敌省→确认条（编队/目标/D1 判定）→[✓确认]→轰炸/攻击任务起飞（目标省 economy/population 下降，探针 msn:fab=STRATEGIC_BOMBING）
4. 点敌机编队→INTERCEPT；点敌军→ATTACK_ARMY；点空地→制空/巡逻
5. [✕取消]/再次取消→恢复正常；操作中无崩溃
6. 全程探针链可读（quk/tgt/msn/uiMode）；CheckInvoke TOTAL BAD:0
7. 存档→读档：prefPayload、uiMode 复位为默认（设计=不持久化 uiMode；prefPayload 持久化）状态一致
8. **用户真机确认**

---

## 8. 风险与对策（教训前置）

| # | 风险 | 对策 | 引用教训 |
|---|---|---|---|
| 1 | 四工厂 divKey 化引入 VerifyError | 每工厂改完必 CheckInvoke；invoke 与 move-result 紧贴；插点选"invoke 之前" | 47/48 |
| 2 | `$` 类名损坏 | 一律 .py 文件脚本执行，禁 shell 双引号；改后 grep `\$` 类名计数 | 49 |
| 3 | 新面板类寄存器/私有字段 | 新类 .locals 自足；跨类只读 public；字段可见性先 grep `.field` | 9/10/13 |
| 4 | prefPayload 旧档兼容 | 默认 0（对空）；读档缺字段→不走报错路径直接默认 | S3 系 |
| 5 | 指派模式与行进模式冲突 | uiMode 与 chooseProvinceMode 互斥（进入指派先关行进；Return 顺序小心） | 13.1 行进链 |
| 6 | Quick 面板每帧绘制性能 | 面板=Menu 元素列表渲染（与现有面板同构），仅在选中空军师时注册显示；命令按钮探针用 dKey（低频） | 35/43 |
| 7 | 多师同机场选中歧义 | 复用甲1 selectAirDivisionAt 最近的命中；Quick 面板数据源=HoveredArmy.key（师绑任务已闭环） | 甲1 |
| 8 | 任务类型匹配过度限制卡死交互 | 批次3 先"软匹配"（Toast 提示，允许下达），严格校验留 B4 | ICBM 体验 |
| 9 | 配额显示与现有 maxCapacity 矛盾 | 配额仅显示不执法；提示语"（显示）"；M2-D 容量联动时统一 | — |

---

## 9. 后置项（本计划不含）

- **方案③ 目标策划式**（AttackerInPlanner）：M3 核弹阶段实施（弹头 Config+波次+战损预估复用其框架）
- A2 战报面板化 / A3.1 敌机对称 / A4 防空火力：按《战斗可用版》A 线原顺序后置
- M2-B 挂载系统正式化（payloadKind 上机 + 弹药补给）：Airport.prefPayload 是其最小先行

---

## 10. 附录（引用大计划书第19章深度调研）

### 附录A：ICBM 武器谱（M2-B/M3 直接引用，详见大计划书 19.2）
- 空军直接武器：AAM（Fighter×2）/ LAAM（Interceptor×2，代差×4/×6）/ Plane Gun（×20000）/ Rocket Pod（×8 Launch8）/ Free fall bomb（Bomber×20 / Attack×4）/ C-RAM（机场近防）/ Nuclear & Fusion AAM（M5）
- 核弹家族：轻核 100kt-5M / 重核 500kt-100M / MIRV（ICBM/MRBM 系+诱饵）/ HGV / 钴盐 / EMP / 化学（+3 级改进）
- GENEVA_CATEGORY 21 条（弹头 10 × 投送 11）→ **M3 弹头分级表 = 直接数据源**

### 附录B：ICBM 参数词表（B3 编码用，详见大计划书 19.6）
`Weapon "X" N Launch M Time T AutoEngage`（N=携弹量 M=每轮发射数 T=冷却秒）；`Principal`=主武器 / `DefaultOff`=默认关；`Config "X" Default`=挂载套；`CanBeIntercepted`=可拦截；`CanHostAircrafts "X" N Patrol M`=机位+巡逻配额；`ImprovedBy/Set`=代差逐代；`AIAutoPatrol/CanPatrolPoint`=AI 巡逻。

### 附录C：UI 图片素材规格（11 键 × 3 档 = 33 张）

> **素材交付状态（2026-08-29 用户交付，来源 `/sdcard/GLG/历史23/贴图补充2/`）**：
> - ✅ **10 键已交付 XXH 单档**（RGBA 透明，尺寸与规格 XXH 精确一致）：airs_attack/patrol/return/cancel=96px、airs_aim=132px、airs_ok/no=66px、airs_pay_aa/ground/nuke=73px
> - ✅ 额外交付：**灰色airs_pay_nuke.png**（73px 核弹位灰显态）→ 接入命名 `airs_pay_nuke_gray.png`
> - 🔶 **airs_slot（机库框）= AI 裁切**（用户拍板选 B）：ICBM `UI_2048.png` 按 UI.txt 坐标 `Info_HostedFrame, 704, 580, 131, 131` 裁切 → 缩放 190×120/253×160/315×200；**拉伸方案=方案A 直接拉伸**（2026-08-30 用户拍板；B 等比填充版仅存档对比）
> - ✅ **素材已全部生成（2026-08-30）**：39 张成品落盘 `/sdcard/GLG/历史23/ui_assets/A1_icons/{H,XH,XXH}/`（各 13 张：10 键 + airs_pay_nuke_gray + airs_slot + airs_slot_B）；预览图 `/sdcard/GLG/历史23/ui_samples/A1_UI素材预览_v1.png`（用户已阅并拍板方案A）；尺寸抽查 13/13 通过
> - **H/XH 两档由 AI PIL 缩放生成**（LANCZOS；源=XXH 交付件）
> - 图片**只画图标不写文字**（文字走语言包引擎渲染；按钮标签 key 沿用 AirForcePatrol/AirForceAttack 等，见 19.7-6）

| # | 键名 | 用途 | H | XH | XXH | 素材状态 |
|---|---|---|---|---|---|---|
| 1 | airs_attack | 命令按钮：✚打击 | 58 | 77 | 96 | ✅ 已交付(XXH)→AI缩放XH/H |
| 2 | airs_patrol | 命令按钮：◉巡逻 | 58 | 77 | 96 | ✅ 已交付(XXH)→AI缩放XH/H |
| 3 | airs_return | 命令按钮：↩返航 | 58 | 77 | 96 | ✅ 已交付(XXH)→AI缩放XH/H |
| 4 | airs_cancel | 命令按钮：✕取消 | 58 | 77 | 96 | ✅ 已交付(XXH)→AI缩放XH/H |
| 5 | airs_aim | 指派准星 | 80 | 106 | 132 | ✅ 已交付(XXH)→AI缩放XH/H |
| 6 | airs_ok | 确认标记 ✓ | 40 | 53 | 66 | ✅ 已交付(XXH)→AI缩放XH/H |
| 7 | airs_no | 取消标记 ✕ | 40 | 53 | 66 | ✅ 已交付(XXH)→AI缩放XH/H |
| 8 | airs_slot | 机库格背景框 | 190×120 | 253×160 | 315×200 | 🔶 AI裁切(ICBM HostedFrame) |
| 9 | airs_pay_aa | 挂载三态·对空 | 44 | 58 | 73 | ✅ 已交付(XXH)→AI缩放XH/H |
| 10 | airs_pay_ground | 挂载三态·对地 | 44 | 58 | 73 | ✅ 已交付(XXH)→AI缩放XH/H |
| 11 | airs_pay_nuke | 挂载三态·核弹位 | 44 | 58 | 73 | ✅ 已交付（+灰显变体 airs_pay_nuke_gray） |

> ⛽补给按钮已取消（airs_supply 不再需要）；机型图标无需补（A0.3 已就位 Gen3/CN）。
> **ICBM 裁切坐标备用表**（UI_2048.png，UI.txt 行号实证；裁切/兜底/扩展用）：
> `Info_HostedFrame,704,580,131,131`（机库框）｜`Info_UnitFrame,669,194,194,154`（单位框）｜`Info_AttackIcon,179,843,58,58`｜`Info_RefillIcon,483,598,58,58`｜`Info_CancelOrdersIcon,26,910,58,58`｜`Info_MoveIcon,23,845,58,58`｜`AttackPosition_Mark,445,209,28,28`｜`Accept_Mark,212,1851,51,51`｜`Cancel_Mark,159,1851,51,51`｜`Main2_Icon{Move,Attack,Follow,CancelOrders},40×40（含 Red 变体）`。

### 附录D：pkg_new77 安装包体系与构建链认知（2026-08-30 实测固化）

#### D.1 设备双包识别（关键！勿混淆）
| 包 | 身份 | 状态 | 备注 |
|---|---|---|---|
| `age.of.history3.qiamxi.zhiri` | **我们的模组包**（versionCode=5, versionName=0.0.1, minSdk26 target34） | ✅ 装机/验收目标；lastUpdate 以 `dumpsys package ... grep lastUpdateTime` 为准 | 签名=CN=1 证书（apk_reverse_sign debug）；**覆盖安装必须同证书** |
| `age.of.history3.TNO.yunsi` | 官方基线 TNO0.91（versionCode=6，1.24GB，标准 Android debug 证书） | 无关包，**勿动** | 曾误判为安装目标（教训：验收前先 `pm list packages \| grep zhiri` 双确认） |

- 证书指纹：模组包 CN=1/OU=1/O=1（SHA-256 `a4f03629...`）；TNO 包 CN=Android（`a40da80a...`）。`apksigner verify --print-certs` 可随时核对。
- **双包同机共存**：`age.of.history3.qiamxi.zhiri` 与 `...TNO.yunsi` 是两个独立应用，互不影响。

#### D.2 构建链（pkg_new77，全命令级）
```
1. apktool b /tmp/build_work -o /tmp/pkg77_stage.apk      # smali→classes.dex
2. unzip -o -q pkg77_stage.apk classes.dex → /tmp/classes_new.dex
3. 四道防线（/tmp/verify_dex/，javac 配 dexlib2-2.5.2+guava）：
   CheckInvoke  (方法引用存在性) → TOTAL BAD: 0
   CheckRegs    (invoke 寄存器数 vs 签名) → TOTAL REG BAD: 0
   CheckInit    (new-instance→invoke-direct 配对) → TOTAL INIT BAD: 0
   CheckSig     (方法名+参数个数全局索引；跳过 enum 合成 ordinal/valueOf/values；外部继承(java.lang.Thread.start 等)与跨dex引用为已知白名单) → SIG CHECKS:151659 MISSING:15(全白名单)  ★v6新增
4. python3 /tmp/mkzip77.py   # 源=/tmp/orig2.apk(721MB 基线)，替换 classes.dex+AndroidManifest_patched.xml+资产，add_files 追加36张airs+既有资源 → /tmp/full_aligned.apk (722,857,840B, 31734 entries)
5. cp full_aligned.apk /sdcard/Download/full77_unsigned.apk   # 工具侧须 sdcard 路径
6. apk_reverse:apk_reverse_sign (sign_mode=debug, alias=androidkey, pkcs12.keystore) → /sdcard/Download/dbg_signedNN.apk
7. cp 到 /data/local/tmp/ 后 pm install -r   # ★必须 /data/local/tmp：system_server 无权读 /sdcard（fuse SELinux avc denied）
8. 验证：dumpsys package ... grep lastUpdateTime；am start 后 pidof + logcat 查 FATAL/VerifyError/Couldn't load file
9. 归档：cp dbg_signedNN.apk '/sdcard/GLG/历史23/build_apk/'
```
- **版本策略**：manifest（AndroidManifest_patched.xml）package=`age.of.history3.qiamxi.zhiri`、versionCode=5/versionName=0.0.1 —— **覆盖安装允许同 versionCode，禁止降级**（设备现 5）。
- **资源路径铁律**：`getRescouresPath()`=XXH→`interface/XXH/`；**UI 资源完整路径 = `"ui/" + getRescouresPath() + "icons/xxx.png"`** → `assets/ui/interface/XXH/icons/xxx.png`（airFighter 原版即此模式；airs_* 首版漏 `ui/` 导致 12 键全黑图）。
- **原有 A0.x 资产**：FIGHTER/INTERCEPTOR/BOMBER/ATTACKER.png（3档）、ringHP×9、建筑 101/102 等均已由 mkzip.py 维护，勿重复添加。

#### D.3 真机验证经验（本轮方法论）
- **logcat 是唯一事实来源**：`FATAL EXCEPTION`（堆栈含类名/方法/偏移）、`VerifyError`（含 `[0xNN]` 指令偏移）、`Couldn't load file: interface/...`（资源路径），均以 `logcat -d \| grep -E ...` 抓取；**防污染**：Operit 自身日志（DeepseekProvider 等含"FATAL EXCEPTION"字样）会命中 grep → 必须 `logcat -d -t 'HH:MM:00.000'` 时间窗 + `grep 'E AndroidRuntime'`。
- **偏移定位法**：VerifyError 报 `[0xNN]` → `DumpInsn.java`/`DumpAt2.java`（/tmp/verify_dex/，按 off±24 窗口 dump 指令+REF 签名打印，v6 用 0x533 秒定位 BtnNuke 签名错）。
- **UI 冒烟**：Automatic_ui_base 截图（OCR 验证面板元素）+ am start/pidof；面板打开成功即构造器无 VerifyError；**前台确认**：Operit 浮窗会抢占前台 → 用 `monkey -p <pkg> 1` 拉回 + `dumpsys activity activities | grep topResumedActivity` 确认。
- **旧档兼容**：`pm install -r` 不删数据；对局自动恢复=Save 链无损的快速信号。
- **apktool 编译错误速查**：`cannot fit into a byte`=add-int/lit8 超±127；`maximum of 5 registers`=非 range invoke 超 5 寄存器；`Invalid register: v16. Must be between v0 and v15`=子类构造器搬移参数时局部+参数寄存器超边界。

#### D.4 本轮教训清单（累计 70+，以下为 B1 新增六条 + 补两条）
19. ①Dalvik **无 sub-int/lit8**（用 `add-int/lit8 vA, vB, -N` 等价，3 处修正）；②BtnPayload 构造器签名 5 int→**6 int**（`iput p8` 越界）；③补丁脚本必须 **py_compile 预检**（缩进不一致=IndentationError）；④patch 幂等性：旧脚本已执行后跑修正版，先查 START/END_MARK 区间是否有旧块残留（dedup 1 次）；⑤**CheckInvoke 盲区**：不校验 invoke 寄存器数→ **CheckRegs** 防线化；⑥**插入式补丁检查 new-instance→invoke-direct 配对**：向 `new-instance` 前插同类块=重复初始化 VerifyError（v3→v4 教训）→ **CheckInit** 防线化
20. ⑦**资源路径逐块比对**：新注册块必须与原版同块（airFighter）逐字节比对路径拼装（`"ui/"` 前缀漏 12 处）；⑧**空行容忍**（教训12/25/30）：smali 源含空行，行级/容错 python 补丁，禁止字符串级精确匹配整块
21. ⑨**add-int/lit8 字面量限 ±127**（超界→const/16+add-int 两步；v6 三处 -0x10d/0xaa/0xd0 修正）；⑩**新类构造器签名"定义=调用"逐字符一致**（BtnNuke 6I vs 5I→ART VerifyError[0x533]，smali 汇编器与 CheckInvoke 均不校验→**CheckSig 第四防线**）；⑪**非 range invoke 上限 5 寄存器**（8 参 super 调用必须 invoke-direct/range）；⑫**子类构造器搬移参数溢位**（.locals+参数>16 时 pN 映射超 v15）→新类直接继承最底层类（Button）规避；⑬**logcat 防污染**（Operit 自身日志含 FATAL 字样，须时间窗+E AndroidRuntime 过滤）

### v1.4 修订记录（2026-08-30 素材定稿拍板）
12. **airs_slot 拉伸方案拍板 = 方案A（直接拉伸）**；39 张成品全部生成落盘（ui_assets/A1_icons/）+ 预览图交付（ui_samples/A1_UI素材预览_v1.png，用户已阅）
13. **Save_Airport 字段数实测修正**：现有 10 字段（含 level），prefPayload 后为 11——原"12→13"说法更正（§3.1 / v1.1修订2 同步）

### v1.5 修订记录（2026-08-30 B1 机库化完工装机）
14. **B1 机库化（pkg_new77）编码+构建+装机全链路完成**：模块A（数据层 5 处）/B-1（Images 12 字段+InitGame 12 键）/B-2（配额方法×2）/B-3（BtnPayload 新类）/B-4（构造器机库化：4 机型格 Icon40×40+BtnSelect+BuiBuild 右侧+挂载行 3 键）全部落地；CheckInvoke **TOTAL BAD:0**；36 张 airs 资源（3 档×12 键）入包（full_aligned 31734 entries）；**dbg_signed77.apk 已装机**（lastUpdate 2026-08-30 01:21:32，versionCode5 覆盖安装成功）
15. **闪退根因修复（VerifyError，v2 已装机 01:35）**：`List;->size()`（0 参数）误传 2 寄存器（BtnPayload actionElement/getTextToDraw 各 1 处）→ ART 验证器拒绝（"expected 2 argument registers, method signature has 1"）；修复为 1 寄存器后**进入空军栏不再闪退**，`dbg_signed77_v2.apk` 已覆盖安装（启动进程存活 45s+ 零崩溃）
16. **资源不显示修复（v3 已装机 01:49）**：airs_* 12 键注册路径漏 `"ui/"` 前缀（airFighter 为 `"ui/"+getRescouresPath()`，airs 仅 `getRescouresPath()`）→ `assets/interface/...` 找不到 → imageNotFound 黑图；12 块补齐 `ui/` 后 **logcat 加载错误清零**；同版修复：①机型格补 airs_slot 背景层（方案A 拉伸）②挂载行文本改短（任务改型(需科技)→任务改型）③行距压缩（去 pad）
17. **闪退根因2修复（VerifyError，v4 已装机 01:56）**：slot 背景块插入位置错误——原机型 Icon 的 `new-instance v16, Icon` 残留在 slot 块之前，slot 块二次 `new-instance v16` 覆盖，机型 Icon 的 invoke-direct 对已构造对象再次初始化 → `[0x189] Expected initialization on uninitialized reference`；修复=删除重复 new-instance、slot 块后补回新 new-instance（4 段）；**已实测进入空军栏零崩溃**（UI 截图验证：面板/机型行/建造/对地正常，对局自动恢复=旧档兼容 OK）
18. **新增防线 CheckInit**（verify_dex/CheckInit.java，dexlib2）：new-instance→invoke-direct 配对校验（new 类型 vs 目标类）——本次 **TOTAL INIT BAD: 0**；至此全链三防线 CheckInvoke/CheckRegs/CheckInit 齐备
20. **经验与安装包体系认知固化（用户指示 2026-08-30）**：新增**附录D**——D.1 设备双包识别（zhiri=目标模组包 / TNO.yunsi=无关官方包，证书指纹区分）；D.2 构建链命令级（apktool b→三防线→mkzip77→sign→/data/local/tmp 安装→dumpsys/logcat 验证→归档）；D.3 真机验证方法论（logcat 唯一事实源/偏移定位法/UI 冒烟）；D.4 教训⑦⑧（资源路径逐块比对、空行容忍）
21. **当前未决问题（B1 视觉层，待修）**：v4 已稳定（进入空军栏零崩溃、资源全部加载），但**布局/视觉仍有多处问题**（用户截图反馈：机型行显示不全/挂载行错位/图标显示等）；待用户下一轮截图或描述后逐项迭代修复（slot 格尺寸、挂载行三键几何、任务组拥挤等），修复后按 D.2 流程出 v5

### v1.6 修订记录（2026-08-30 B1 机库化 v6 视觉重构装机 + 新防线 CheckSig）
22. **B1 机库化 v6 视觉重构（按用户效果图）装机完成**（`dbg_signed77_v6.apk`，lastUpdate 2026-08-30 03:28:15，四防线全过；用户实测**空军栏加载成功**，布局细节待反馈）：①**4 机型卡片纵排**（顺序=效果图：FIGHTER「J-11」/BOMBER「H-6」/ATTACKER「Q-5」/INTERCEPTOR「J-8」，机型名硬编码映射自 AirUnitModelMap 中国三代）——每卡=型号名 Text_Static(左) + 大八边形 airs_slot(0x10d×0xaa 居中) + 飞机 Icon(0x78×0x50 居中于 slot) + BtnSelect 信息条(底部 0x1e，类型名+已建+在建) + BtnBuild 右列全高(0xc8)；②**核弹行**：airs_pay_nuke 图标(56×56) + 白文「轰炸机开启核挂载」+ **新类 Text_StaticRed** 红字「后果严重慎启」+ **新类 BtnNuke**（"✓开启"，继承 Button，点击 Toast 后置提示）；③**挂载行**：说明文「默认挂载：战斗机/截击机→对空 轰炸机/攻击机→对地」+ 对空/对地/任务改型 3 键横排（原 3 行纵排改 1 行）；④**命令组 4 键带图标**：巡逻(airsPatrol,type0)/打击(airsAttack,type1)/返航(airsReturn,type3)/取消(airsCancel,type4)——BtnMission 新增分支：type3=清机场全部任务（AirForceManager.clearPatrolForAirport **private→public** + **去除 PATROL 过滤**=清所有 MissionType）+重建；type4=清 selectedMask+重建；默认挂载语义因 prefPayload 无任务消费点（M2-B 后置）→ v6 以**说明行展示**，行为语义登记 B3 落点
23. **新防线 CheckSig**（verify_dex/CheckSig.java，v6 新增）：方法引用「名称+参数个数」全局索引校验——**抓出 CheckInvoke/CheckRegs 双重盲区**：BtnNuke 构造器调用签名 6I vs 定义 5I（smali 汇编器不做跨文件签名一致校验，仅运行时 ART VerifyError）→ 四防线齐备：CheckInvoke/CheckRegs/CheckInit/CheckSig；已知误报白名单：enum 合成方法（ordinal/valueOf/values）、外部库继承（java.lang.Thread.start/interrupt/join、ApplicationListener.initialize）、跨 dex 引用（**原版多 dex 确认：classes2.dex 存在**；buildAirport 定义不在 classes.dex = 原版遗留，与本次无关）
24. **教训⑨-⑬（v6 新增）**：⑨ smali **add-int/lit8 字面量限 ±127**（v6 三处超界：-0x10d(269)/0xaa(170)/0xd0(208) → const/16 + add-int 两步修正；apktool 报 "cannot fit into a byte"）；⑩**新类构造器签名必须"定义=调用"逐字符一致**（BtnNuke 6I vs 5I → ART VerifyError `[0x533] Rejecting invocation, expected 8 argument registers, method signature has 9 or more`；smali 汇编器不校验、CheckInvoke 不校验签名差异 → **CheckSig 防线化**）；⑪**非 range invoke 寄存器上限 5**（Text_StaticRed super 调用 8 寄存器 → 必须 `invoke-direct/range {p0 .. p7}`，apktool 报 "A list of registers can only have a maximum of 5 registers"）；⑫**子类构造器搬移参数寄存器溢位 v15**（.locals9+8 参数 → p7 映射 v16，报 "Invalid register: v16. Must be between v0 and v15"）→ 新类改为**直接继承 Button**（复制逻辑）规避继承链构造参数搬移；⑬**偏移定位工具升级 DumpAt2**（按偏移±24 窗口 dump 指令 + REF 签名打印，0x533 秒定位）+ **logcat 防污染**：Operit 自身日志（DeepseekProvider 含"FATAL EXCEPTION"文本）会污染 grep → 用 `logcat -d -t 'HH:MM:00.000'` 时间窗 + `grep 'E AndroidRuntime'` 过滤

### v1.7 修订记录（2026-08-30 v7 转机 + v8 真根因实证（按钮不显示全链闭环））
25. **v7（07:11-07:30）按用户 HTML 参考工程（`ui_samples/空军司令部.html`，691px 设计宽）重设计并装机**：4 卡纵排 0xc8(200px)/frame 0xcd×0x84(205×132) 八边形/飞机 0x9c×0x64(156×100)/名称 B+0x70/建造右列/核弹行 0xf4(244px) 高 art 0x79+开关 0x2c/命令组 4 键 0x5c(92px) 高（图标 0x44 左+文本）；同时误判根因 patch `MenuElement.getIsInView()` 恒 true（见 26 辨析）——**用户实测按钮仍全无**（J-11 大图/frame/核弹行文字/默认挂载说明已渲染，按钮类全缺）
26. **⚡ v8 真根因锁定（2026-08-30 现场实测全链，关键教训）**：①drawMenuElements（Menu.smali:1314）遍历 `menuElements` 列表仅两道闸门：`getVisible()`（isVisible 字段，默认 true）+ `getIsInView()`——**问题是列表里根本没有按钮**；②全量扫描：构造器 `new-instance v16, ...$Btn*` 共 **17 处**（BtnSelect×4/BtnBuild×4/BtnNuke×1/BtnPayload×3/BtnMission×4/BtnClose×1），其中 **16 处创建后缺失 `List;->add`**（BtnClose 为原版、有 add）→ 按钮对象构造后从未注册进 menuElements → drawMenuElements 倒序遍历永远画不到 → **v6/v7 按钮全部不显示**；③**setHeight 误伤链**：按钮创建段 `size()→get(last)→setHeight(0x28)` 因 add 缺失，实际把"前一个元素"（图标/文本）高度改成 40px → 布局错位/J-8 截断/图标列跑位全部由此而来；④**铁证**：BtnClose（有 add 的原版按钮）在用户截图底部显示"关闭"；Icon/Text_Static（全有 add）全部正常渲染——有 add 就显示、没 add 就不显示；⑤**isInView 辨析**：`updateMenuElements_IsInView()` 在 initMenu 中会遍历调用 `setIsInView`（此前 grep `setInView` 漏词；原版机制自洽，v4 实证）——v7 的"恒 true"补丁**非根因也非必需**，v8 已回退为原版字段读取
27. **v8 修复装机（08:00:36）**：①16 处按钮创建段补齐 `move-object/from16 v0, v16` + `invoke-interface {v9, v0}, List;->add`（add 后 size/get 自动指向按钮自身，setHeight 回归正确）；②`MenuElement.getIsInView()` 恢复原版（iget-boolean isInView）；③粘连行修复 16 次（`;)Z` 与下一行合并）；四防线全过（CheckInvoke 0/CheckRegs 0/CheckInit 0/CheckSig 151659→15 白名单）；装机 lastUpdateTime=2026-08-30 08:00:36，进程存活零崩溃；`dbg_signed77_v8.apk` 已归档（build_apk/）
28. **教训⑭（元素"创建≠注册"）**：smali 中 `new-instance`+`invoke-direct` 仅完成对象构造，**元素必须显式 add 进 `menuElements` 才被绘制**（drawMenuElements 只遍历列表）；检查法=`grep -c 'new-instance v16, ...$Btn'` vs `grep -c 'List;->add'` 对比；正确模板（v4 原版）= 创建→`move-object v0,v16`→`List.add`→`size()→get(last)`→`setHeight`（作用于自身）；**教训⑮（isInView 搜索词）**：应为 `setIsInView`（updateMenuElements_IsInView 调用方），`setInView` 全网无调用是搜索词错误导致的假象——排查绘制问题时以"列表内容"为本（先查 add，再查闸门值）

### v1.8 修订记录（2026-08-30 空军司令部 UI 重置完成——v9→v23 视觉微调 15 轮）
29. **v9-v15 飞机名称 X 坐标 8 轮微调**（用户逐轮反馈"左/右"）：112→88→100→92→84→76→68→**53px（0x35）**；期间用户提示"指令反了"回调一次（v11，100→92）；期间发现会话间 smali 文件存在预期外状态（v10 装机 100px 但文件已 0x5e 等），均核对构建产物后装机；**用户确认 53px 合适**
30. **v16 卡片间距拉开**（用户要求"至少一个按钮高度"）：推进 0xd0(208)→**0xf0(240px)**，4 张卡间隔=40px（名称/飞机/frame/信息条随 y 基准自动跟随）
31. **v17 信息条文字与贴图垂直错位修复**：BtnSelect 创建后 `setHeight(0x28=40px)` 只改文字居中基准（textY=posY+height/2-textH/2），背景贴图按原生高绘制 → 文字偏上→**移除 4 处 setHeight(0x28)** 回 Button 默认高（当时按"≈45px"理解；v22 实测精确值见 33）
32. **v18 slot 原生居中机制实证+几何重排**：Icon 绘制贴图=**原生尺寸居中**（`Image.draw(cx,cy)` 不缩放）→ airs_slot(315×200) 实际显示区=(y-34~y+166)；v18 将 slot 按钮 posY+34（显示区恰为卡顶 0~200）、飞机 posY+50（中心对齐 110）、信息条移 y+212、推进 0xf0→0x125(293)；**装机坑**：/data 空间不足（not enough space）+权限弹窗拒绝（User rejected permissions）→ **三段式装机固化**（install-create/write/commit）
33. **v19-v23 逐项修复**：v19 slot/飞机/名称整体下移 10px（0x22→0x2c / 0x32→0x3c / 0x3c→0x46）；v20 建造按钮两项修复——①**文字错位**根因=`setHeight(0x84=132)` 同 v17 类问题（移除）②**posY 对齐信息条**（y+0→y+212）；v21 **删除 payload 挂载行**（"默认挂载：…"文字+3 图标+3 按钮，118 行整段移除，命令组自动上移 87px）；v22 核弹行两项——①"轰炸机开启核挂载"**补信息条背景**（buttonMenu Button 垫底，y+128/540×110）②"开启"按钮错位根因=`setHeight(0x2c=44)` 移除；v23 **开启按钮与信息条同顶对齐**（posY 161→128）
34. **教训⑯-⑳（v18-v23 新增）**：⑯**buttonMenu.png 实测=44×110**（XXH，非此前假设 45px）——Button 背景按**原生高 110px 三明治拼贴**（左角+中间拉伸 draw2+右角），**不随 setHeight**→所有 setHeight 只改文字居中基准，与贴图错位是同一机制（v17/v20/v22 三案同根）；⑰**Icon 绘制=原生尺寸居中**（airs_slot 315×200 显示区 y-34~+166，frame 设定 205×132 仅为按钮盒）；⑱**add-int/lit16 限 v0-v15**、**const/4 限 v0-v15**（v20/v22 触雷）；⑲**python 三引号吞空串**（`const-string v17, ""` 变 `const-string v17,` → missing STRING_LITERAL）；⑳**装机三段式**（install-create/write/commit）绕开"not enough space"（/data 清理后仍紧）+ "User rejected permissions"（--user0 不够时）双坑；⚠️ 修正 v17 期认知："buttonMenu≈45px"→精确 **44×110，CFG.BUTTON_HEIGHT=110px=贴图原生高**（信息条视觉=110px 高条，用户确认 OK）
35. **B1 行为层登记待做（2026-08-30 用户指示）**：核弹开关（BtnNuke）实测=**仅 Toast 提示占位**（"核弹将在后续阶段开放"之类），**未实现任何武装/发射链**→B1 行为语义整体降级为 **⏸待做**（含 BtnBuild 建造行为待验、BtnMission 命令组行为待接入）；仅 B1 视觉层（空军司令部 UI 重置 v9-v23）已交付；**用户指示跳过功能层其他项，先做 B2 即时面板（方案① Info 面板），且明确"不写代码，先用 HTML 出样品"**——样品已交付：`ui_samples/空军Info面板样品_v1.html`（206 行单文件，内嵌 SVG 地图场景+JS 交互：按 §4.2 规格实现信息条「编队·机型×数量｜航程｜挂载｜战力」+58px 命令组四键+【✚打击】完整指派流演示——uiMode=1 红圆准星+航程白圈+确认条（航程判定变色）+确认/取消；其余按钮为占位提示；视觉基准=buttonMenu 语言+691px 设计宽）；**待用户阅后反馈改版方向，再进入 smali 编码（预期新面板类 InGame_AirForceQuick + 选中师弹出链，见 §4.2 锚点 1/5/6/11/12）**
36. **U4 师粒度补全（2026-08-30，用户分两步指示）——v24+v25 已装机**：①**ICBM 巡逻逻辑调研实证**（`ICBM Escalation Endless October PROPER/` Windows 版数据层）：巡逻=机场级自动机制——`CanHostAircrafts "Fighter" 10 Patrol 4 AIAutoPatrol`（容量/巡逻额度/AI自动巡逻 trait）、`CanPatrolPoint`、`AutoReturn`、`DoesNotTriggerWarWhenAttacked`（被击不宣战）、`CanCrossBorderDuringPeaceTime No`（和平不越界）、每机型独立 "Air Patrol" 开关（UI.lng 2066/3301）、巡逻机返航自动维修；AI 巡逻组=GroupsConquest `PatrolType NavalBase/CarrierAttack/BorderDefence/SubmarineHide`（随机巡逻点）；**移植对照结论：ICBM 无"师"概念=任务直接挂机场，我们=师粒度指派（divKey），巡逻落点建议=师指派（已具备骨架）+可选机场自动巡逻开关（ICBM 式增强，用 airPatrolQuota）**；②**v24 改动一**：4 工厂签名加 `String divKey`（createAirSuperiority/createAttackArmy/createIntercept/createStrategicBombing → +1 参），体内 `if-eqz pX, :u4_legacy → iput airhqKey`（=师归属，仍走 getAirDivKey 合成 key 回退=旧档/AI 零影响）；**必要调用点同步**（AirForceManager:104 AI 随机轰炸 → 传 ，否则 CheckSig 拦截；createPatrol 用户路径 1662 已带 key 无需动；AS/AA/IC 零调用=预留接口）；③**v25 改动二**：先核实——**存量唯一用户入口 handleProvinceClick:1662 已师粒度（patch15 activeArmy[0].key）→ 无需改**；改动二=**getActiveDivKey() 公共方法抽取**（AirForceManager 新 static 方法：activeArmy 空→、否则 HoveredArmy.key）+ handleProvinceClick 段（15 行）去重替换为单行调用（标签 fast_nokey/fast_key 验证仅本段引用后安全删除）——**B2 三调用点接线留待 B2 编码时直接 `invoke getActiveDivKey`**；v24 17:24:05 / v25 17:34:19 装机，四防线全过（0/0/0/15）启动零崩溃，均已归档
37. **教训㉑-㉓（U4 新增）**：㉑**整段字符串替换 vs 行级编辑**——smali 源文件空行/缩进与模板不一致时 `count()` 静默失败（v24 首次脚本 AS=0 AA=0 SB=0 仅 IC 命中：空行差异）→ 修复法=替换前 `assert count==N` 校验 + 失败即转**行级处理**（按方法名定位+索引插入，稳定可靠）；㉒**签名变更的"必要调用同步"边界**——工厂签名 +1 参时，调用点同步是"改动一"的**组成部分**（不同步=CheckSig 必拦、运行 VerifyError），不属"改动二"；分步交付时应明确此边界（本次 v24 即含 104 行同步）；㉓**AI 路径传 null 是有意设计**——AI 任务无师归属（合成 key 回退），勿当缺口"补"（B2 用户路径才传 activeArmy key）

38. **B2 即时面板编码（2026-08-30，用户参照 `ui_samples/空军作战界面-3.html` 定布局——v26-v36 已装机）**：①**v26 骨架**：新类 `InGame_AirForceQuick`（Menu 子类：信息条 buttonMenu 460×110+命令组 4×BtnCmd+initMenu 初始隐藏）+ 新类 `InGame_AirForceQuick$BtnCmd`（**继承 Icon**——cmdKind 0打击/1巡逻/2返航/3取消，actionElement=Toast 占位+探针 `quk:cmd`）；**MenuManager 注册链 3 处**：字段 `IN_GAME_AIRFORCE_QUICK`（AIRFORCE_OPTIONS 后）+ 占位（14299 区 addNextMenuToView(IN_GAME, EmptyMenu)）+ rebuild 注册（19032 区 set）+ 新方法 `showAirForceQuick(Z)`；**Game 接线 2 处**：addActiveArmy 尾部（key `airhq_` 前缀判定 → 仅空军师显示，陆军师/空 key → 隐藏）+ clearActiveArmy 尾部（隐藏）；②**v27-v34 位置/层级迭代**（见教训㉔-㉖ + 总纲 §21.1）：v27 固定 posY=461（错误推测设计坐标）→ v28 跟随军队栏（armyY-238 → 用户澄清=要**覆盖层**不是"上边"）→ v29 覆盖（x/y 跟随军队栏）→ v30 固定底 + `setOrderOfMenu` 置顶 → v31 **每帧置顶**（draw(SpriteBatch;III) 入口守卫）+ `GAME_HEIGHT-230` 动态贴底 → v32 换 `setPosX/setPosY`（全字段）→ v33 删 setPosX（滑块根源）+按钮收窄 135→115px（文字间距紧凑）→ v34 位置全部移入 initMenu（无 setter）+ x=W-512 → v35 cond_17 防滑守卫 → v36 **x=52 左侧（右侧预留后续 UI）+ y=GAME_HEIGHT-230**（装机 20:16:10）；③**当前仍存在"面板可水平滑动"复现**（用户反馈，v35 防滑只是其中一条路径，主因链尚未 100% 定位——待续查 Touch/menu_MoveInnerElements 完整触发链）；④**B2 骨架验收达成**：选中空军师→面板弹出（下层军队栏之上、左下贴底）、按钮点击有 Toast+探针、选中陆军师不显示、清除选中收起

39. **教训㉔-㉖（B2 新增）**：㉔ **Menu 位置字段三套体系**——`iPosX/iPosY`（initMenu 写入，**绘制实际读取**）、`iMenuPosX/iMenuPosY`（滚动位置，getMenuPosX/Y 读取）、`iNewMenuPositionX/Y`（动画目标）；**setPosX/setPosY 三字段全同步**（含 updateMenuPosX/Y 调用），而 **setMenuPosX/Y 只写 iMenuPos*（部分字段）→ 视觉位置不变**（v32 实证：v30/v31 用 setMenuPosY 时位置"没变"）；**可靠做法=位置写死在 initMenu**（构造期三字段同值，无动画无副作用）；㉕ **滑块注册链**——`setPosX(I)` 内部调 `updateMenuPosX(I)` → 若 p1≤getPosX() 则调 `setUpdateSliderMenuPosX(true)` 把菜单注册为**滑块菜单**（手指水平可拖）+ 触摸流程 `cond_17`（`menu_MoveInnerElements=true` 时对 `activeSliderMenuID` 菜单调 `Menu.scrollTheMenu()`）→ **修补：显示/初始化不调用任何 setPos*；cond_17 加 QUICK 守卫跳过**；㉖ **z 序 = orderOfMenu 绘制顺序表**——`orderOfMenu[viewID]` 决定每层菜单绘制顺序（先画=底层）；`setOrderOfMenu(I)` 把菜单移到表尾=最后绘制=**最顶层**；菜单进出会触发 `setOrderOfMenu_InGame()` 等重排 → 仅在显示时置顶不够，**v31 改为在 `draw(SpriteBatch;III)` 入口每帧守卫**（层==IN_GAME && QUICK visible → setOrderOfMenu(QUICK)）→ z 序稳定（用户确认修复）
40. **v37 滑动根因实证（B2 收尾，2026-08-30 20:39 装机）**：用户确认 v36 后滑动仍存→深挖触摸框架层完整触发链，**实证滑动双路径**：①actionElement（点击/抬起）cond_17→Menu.scrollTheMenu（v35 已守）；②**actionMove（拖动）cond_3→getActiveMenu().get(activeSliderMenuID).setScrollPosY/X 直接写滚动位置+Menu.update() 每帧消费 scrollModeX 移动**（v33-v36 三连防滑均未覆盖此路径，故滑动反复）。修复=actionMove cond_3 入口加 **QUICK 实例守卫**（getActiveMenu().get(activeSliderMenuID) instanceof InGame_AirForceQuick→return v2 跳过整条移动链）；同时 initMenu x=52→152（用户要求右移100px，右侧留空）并清理 v34-v36 补丁叠加的重复死代码 5 行。装机 20:39:10，四防线全过、启动零崩溃；**用户确认：滑动根除✅ 位置正确✅**。B2 面板骨架验收达成：选中空军师→面板弹出（下层军队栏之上、左下贴底）、按钮点击 Toast+探针、选中陆军师不显示、清除选中收起、z 序稳定、位置锁定不可拖。
41. **教训㉗（滑动双路径框架）**：MenuManager 触摸处理分两条独立路径——`actionElement`（点击/抬起，cond_17→Menu.scrollTheMenu 惯性滚动）与 `actionMove`（拖动，cond_3→`setScrollPosY/X` 直接写滚动位置，Menu.update() 每帧消费 scrollModeX 移动菜单）；**防滑必须在拖动链断根**——仅防位置设定（initMenu 写死/删 setPos*）与点击路径（cond_17）均无效（v33-v36 实证）；修复=actionMove cond_3 入口对 activeMenu.get(activeSliderMenuID) 做 **instance-of 实例判断**（比 ID 常量比较可靠：activeSliderMenuID 语义为 order 索引，与菜单 ID 字段不等价）；另记：`menu_MoveInnerElements` 由触摸按下时元素 `getScrollable()=true`（Button/Icon 默认可滚）激活→拖动进入 cond_3；`MenuElement.scrollTheMenu()` 为空实现（非滑动源）。

42. **场景加载链修复全纪实（2026-08-30，v38-v42；用户 bug：首局 2014-01-01+无加载画面+911 事件+图标消失；v42 装机 23:41 修复成功，首局 2000-01-01 用户确认✅）**：①**v38 三处修复（一有效一有害一写反）**：Button_Preview/PreviewSmall 入口无条件设 scenarioID（**方案错误**，教训㉘①）+ loadScenario_1_ClearData 加 if-ltz 兜底（**条件写反**，教训㉘②）+ kaishi.txt mission_image=kaishi→0（**有效**，NumberFormatException 消失✅）；②**v39 探针包（11 点位，tag=PB39）**：P1 ImageManager.addImage 入口全覆盖图标路径｜P2/P3/P4 ClearData 入口 sid/出 get 前 dsize+get 后 sid/Year 后 cal｜C1/C2 两按钮点击入口 btn+g｜C3/C4 两按钮 cond_0/cond_1 分支｜L1 Menu_LoadScenario step0｜L2 loadScenario_1 入口；机装=smali 插 Log.i 探针+四防线（汇编/dex 字符串 grep -a/签名/启动零崩溃）；③**实测数据（v40 探针）**：首击 BIG btn=1 g=0→cond1→LS step0 sid=1→CLR sid=1→**无 cal**（异常断流）；二击→CLR sid=1→cal=2000-1-1✅；④**根因反转三次**：a) 误判 details.get(-1)（v38 前数轮方向错误）；b) v38 1a 致首击走 cond0（无加载画面）；c) **完整堆栈终极真相=MenuManager.showAirForceQuick 的 menus.get(IN_GAME)/get(IN_GAME_AIRFORCE_QUICK)=-1**（B2 菜单首局未注册）；⑤**v40-v42 修复**：v40 回退 1a+1b 改 if-gez（二击=2000✅）→ v41 加 QUICK 守卫（加载画面回归）→ v42 补 IN_GAME 守卫（**首局=2000 全链闭环✅**）。

43. **教训㉘（修复方向与条件句）**：①**修复前先实证症状与代码路径耦合**——v38 未验证就改 Button 入口逻辑，把原版正常分支（if-ne→cond1 加载）劫持成 cond0 预览（无加载画面），引发新回归；②**if-ltz/if-gez 方向**：兜底句“若<0 则修正”必须写 `if-gez v1, :ok`（≥0 跳过），写 `if-ltz` 则把**合法值清零**（v38 1b 实证：sid=1 被置 0→get(0)=ModernWorld→开局 2022）；③**事件字段类型陷阱**：mission_image 必须为数字（kaishi→NumberFormatException 中断事件加载→911 系事件开局即蹦/删不掉），修复=数据改 0。

44. **教训㉙（探针方法学）**：①**Log.i 唯一 tag 打点**（smali 插 StringBuilder 拼接打印，防 logcat 噪音）；②**logcat 被 DeepseekProvider（AI 服务进程）日志污染**——设备上 AI 会话文本全量灌入，必须按游戏 PID+tag 双过滤（grep ' PID ' | grep 'PB39:'）；③**baksmali 反汇编 dex 校验探针**（防线②），大 dex 反汇编超时可用 `grep -a` 直查 dex 字符串；④**单点入口打点优先**（ImageManager.addImage 一个点覆盖全部图标路径，优于逐段打点）；⑤**完整堆栈=终极真相**——Index -1 前几轮误判 details.get，完整堆栈一行指向 showAirForceQuick；⑥**shell 变量捕获陷阱**：`$(pm install-create|grep -oE ...)` 子 shell 捕获失败→安装链断，拆行硬编码 session id 更稳。

45. **教训㉚（B2 面板与菜单注册时序，APK 核心认知）**：①**MenuManager 菜单字段双阶段**——构造器初始化全部 IN_GAME_*=-1，**真正注册在进局后**（addNextMenuToView→iput 序列）→ 任何在**首局加载链**（loadScenario_1_ClearData→disposeCivilizations→clearActiveArmy→showAirForceQuick）中访问 menus.get(IN_GAME)/get(IN_GAME_AIRFORCE_QUICK) 都会 **-1 崩溃**；②**该崩溃中断整个加载**（异常上抛被 try-catch 吞掉→Day/Month/Year 三行 sput 被跳过→Game_Calendar 保持默认 0/0/2014）——**这就是“首局 2014+二次正常”的完整机制**；③修复标准模板=**未注册静默跳过**：`if-gez v1, :go; goto :done; :go`（IN_GAME 与 QUICK 双守卫）；④**首局 vs 二局差异**：二局时菜单已注册→不崩→2000（一切“重试成功”类现象先查注册时序）。


### v1.14 修订记录（2026-08-30 军库长按详情优化 v43-v51 + VerifyError 四连根修 + CheckRange 防线 + Hover 布局机制）
46. **用户新需求（#18 立项）**：军库（空军司令部）面板信息条长按→战机详细数据窗口粗糙：①显示名称=种类名（"战斗机"）而非机型名（J-11/H-6/Q-5/J-8）②数据排列无章法、超过弹窗外。**代码链路**：长按=引擎原生机制（MenuElement.menuElementHover 字段 + BtnSelect/BtnBuild.buildElementHover() 每次长按重建 + drawAlwaysOver_Mobile 绘制）；机型名硬编码=主类 Text_Static（408/523/638/753 行）＋构造器参数；数据字段=AircraftDataManager.types[AircraftTypeData]（Name/AirAttack:F/GroundAttack:F/Defense:F/Speed:F/Agility:F/CombatRadius:F/MaxPayload:I/ConstructionTime:I/CostGold:I）
47. **v43-v51 修复链**：v43 setText 方案→**VerifyError [0x212] v1 类型污染**（const-string v1 覆盖 int 临时寄存器，后续 sub-int v23,v4,v1 冲突）→**v44 构造器参数法**（Btn* 新字段 modelName:Ljava/lang/String;+构造器尾参 p9+主类 invoke-direct/range {v16..v25}+前置 const-string v25 机型名；hover 标题 iget modelName）→**v45-46 VerifyError 三连**（ProvinceDrawArmy.drawAirForce 早期 B1 代码：[0x15A] HP ring draw 7 寄存器 vs Image.draw 6 槽；[0xAD] types 数组多用途寄存器 merge 成 Object）→**v47 drawAirForce 全量重写**（三层循环迭代器/对象专用寄存器 v3/v4/v5/v6/v11；types 循环专用；icon id 与 ring id 分离；attacker 补 default 分支）→**v48 [0x1EB]**（v44 漏改调用侧签名：定义 9 参/调用 8 参+range10 寄存器）→**v49 [0x5A1]**（全局字符串替换误伤 BtnMission 8 参→10 槽）→**v50 hover v3**（标题=机型名+种类名合并单元素；数据 Text 首行 \n）→**v51 引擎 Text.getHeight() 多行化**（split(\n).length×单行高；单行场景零副作用；宽度=GlyphLayout 最宽行）——**装机 v51（dbg_signed77_v51.apk）用户确认长按详情框布局正常**
48. **教训㉛-㊱**：㉛ smali 汇编器寄存器规则全集（本轮实测：iget-family/check-cast/move(非 from16)/move-result-object/invoke(非 range) 限 v0-v15；sget/sput/const/算数=8bit 允许 v16+；move-object/from16 目标 8bit；range 16bit；.locals 增大不改变 pN 映射）；㉜ 构造器"定义=调用"逐字符一致（教训⑩ 复现：改定义漏调用→[0x1EB]/[0x5A1]，全局替换必须类名锚定）；㉝ invoke/range 参数数=receiver+参数（实例含 this/static 不含/J-D 宽×2）；㉞ 循环回边寄存器类型合并——aget/iget 操作数必须循环内专用+使用前精确重定义（多用途→merge Object→[0xAD]）；㉟ MenuElement_Hover 布局机制——HoverElement 元素**横向排列**（x 累加 getWidth/y 不变）、Text.getHeight 固定单行（多行需重算）、TextTitle_BG=金色标题带背景；㊱ CheckRange 第五防线（verify_dex/CheckRange.java：invoke 含 range 寄存器数 vs 签名槽位）——"修改→assemble→CheckRange 同轨道"（v48 漏跑教训）
49. **APK 理解固化**：①长按详情=引擎原生 hover（非自建）②军库卡片机型名=Text_Static 硬编码（AirUnitModelMap.json 中国三代映射：战斗机=SU-27/J-11、截击机=J-8、攻击机=Q-5、轰炸机=H-6）③drawAirForce=早期 B1 手写，寄存器复用混乱（三代 VerifyError 潜伏至今，v47 重写根治）④smali 汇编器对寄存器格式的隐性规则（㉛）⑤防线体系：CheckInvoke/CheckRegs/CheckInit/CheckSig/CheckRange 五防线齐备

## APK 技术认知总结（v23 基准，2026-08-30 用户指示写入）

**① 目标包与组件**：`age.of.history3.qiamxi.zhiri`（AoH3 Android 改版，libGDX）；空军栏主类=`InGame_AirForceOptions`（B1 机库化全部 UI 构造集中于此），内部类 BtnSelect×4（信息条）/BtnBuild×4（建造）/BtnNuke（核弹开关）/BtnMission×4（命令组）/BtnPayload×3（v21 已随行删除）；贴图/文字元素=Icon/Text_Static/Text_StaticRed，基类=MenuElement→Button 体系。

**② 绘制链（核心认知）**：`menuElements` List **倒序绘制**（后 add 先画=底层）→ drawMenuElements 两道闸门（getVisible→getIsInView）→ **元素必须显式 List.add 才被绘制**（教训⑭）；Button.draw=drawButtonBG（背景拼贴）+drawText（文字，textY=posY+height/2-iTextHeight/2 居中）；Icon.drawText 内嵌图片绘制=**原生尺寸居中**（不缩放）。

**③ 布局规格（v23 装机态）**：4 机型卡 J-11/H-6/Q-5/J-8 纵排，推进 293px/卡——slot 视觉 315×200 居中显示（卡顶 0~200）、飞机 156×100 中心 y+110、名称 x=53px y+70、信息条 buttonMenu 110px 高 y+212、建造按钮右列对齐信息条行；核弹行=图标 121×121（y+40）+信息条背景 540×110（y+128）+白文 y+161 +红字"后果严重慎启"+开启按钮（同顶 y+128）；命令组 4 键（巡逻/打击/返航/取消）图标 68×68+文本，随核弹行后。

**④ 构建链（固化）**：修改 smali → apktool b → 四防线（CheckInvoke 引用/CheckRegs 寄存器/CheckInit new→invoke 配对/CheckSig 签名 15 白名单）→ mkzip77.py（基线 /tmp/orig2.apk 721MB，产物≈722.86MB/31734 entries）→ apk_reverse_sign(debug) → 三段式安装（cp /data/local/tmp + install-create/write/commit --user 0）→ dumpsys lastUpdateTime 验证 → am start/logcat 零 FATAL → 归档 build_apk（v1→v23 全）。

**⑤ smali 陷阱清单（累计）**：add-int/lit8 限 ±127（教训⑨）；非 range invoke 寄存器限 5（⑪）；子类构造器搬移溢位 v15（⑫）；new-instance→invoke-direct 配对（⑰ v4 闪退根因）；方法签名"定义=调用"逐字符一致（⑩，CheckSig 防线化）；创建≠注册（⑭）；搜索词 setInView vs setIsInView（⑮）；register 窗口限制 v0-v15 类（⑱）；空串转义（⑲）。

**⑥ 当前状态**：v23 装机 13:54:15，四防线全过、启动零崩溃；**空军司令部 UI 重置完成**（用户确认）；历史版本 v1→v23 全部归档。

9. **用户已交付 UI 素材**：`/sdcard/GLG/历史23/贴图补充2/` 含 10 键 XXH 单档（RGBA）+ 灰色核弹位变体 → 附录C 状态更新；H/XH 两档由 AI PIL 缩放（LANCZOS）
10. **airs_slot 拍板 = AI 裁切（选B）**：ICBM `UI_2048.png` 裁 `Info_HostedFrame(704,580,131,131)` → 三档；附录C 附 ICBM 裁切坐标备用表（58px 命令按钮/标记/Main2 图标，UI.txt 行号实证）
11. **打击指派标记定稿**（用户修正）：= **半透明红色填充圆+准星**（纯色填充、无羽化；区别于雷达圈羽化蓝晕）；**航程无"白圈"概念**——航程 = 可到达省份渲染为白色（滤镜 0.4 可调，行进时触发）

### v1.2 修订记录（2026-08-29 用户追加决策）
7. **⛽补给按钮取消 → 返航即补给**：returnToBase 已实现 hp=maxHp 满血满弹/燃油回满，无需手动补给入口 → 命令按钮组 5→4（打击/巡逻/返航/取消）；锚点 5/6、B2 批次、验收 2 同步更新
8. **UI 图素材由用户供给**（下一会话交付全部所需图片）→ AI 出图任务改为"按规格接入"，规格 12 键→11 键（见附录C，含兜底裁切方案）

### v1.1 修订记录（对应大计划书 19.8）
1. U5 降级：currentPayload 已持久化（Save_AirUnit:23），仅需补类型语义
2. prefPayload 持久化锚点=Save_Airport 10→11 字段（2026-08-30 实测：现有 10 字段）
3. Quick 面板注册点=MenuManager:19023（与 InGame_AirForceOptions 同区预创建）
4. 机库格改造=4 行文本行替换，BtnSelect/BtnBuild 原位保留（结构=Text_StaticBG+文本+Bdetails）
5. §4.3 补 Payload 软校验语义
6. 本章附录 A/B（武器谱/参数词表）

---

*本计划书 v1.4 由 2026-08-29 用户拍板【方案②拓展空军栏+方案①即时交互+方案③后置核弹】+ 深度调研第二辑（大计划书第19章）+ 用户追加决策【⛽补给取消（返航即补给）/ UI 图用户供给（贴图补充2 已交付 10 键 XXH）/ airs_slot=AI 裁切（选B）】+ v1.4【airs_slot 拉伸方案A 拍板 + 39 张成品就位 + Save_Airport 字段数修正】修订；编码开工需用户确认批次 B1 启动。*
Options 同区预创建）
4. 机库格改造=4 行文本行替换，BtnSelect/BtnBuild 原位保留（结构=Text_StaticBG+文本+Bdetails）
5. §4.3 补 Payload 软校验语义
6. 本章附录 A/B（武器谱/参数词表）

---

*本计划书 v1.4 由 2026-08-29 用户拍板【方案②拓展空军栏+方案①即时交互+方案③后置核弹】+ 深度调研第二辑（大计划书第19章）+ 用户追加决策【⛽补给取消（返航即补给）/ UI 图用户供给（贴图补充2 已交付 10 键 XXH）/ airs_slot=AI 裁切（选B）】+ v1.4【airs_slot 拉伸方案A 拍板 + 39 张成品就位 + Save_Airport 字段数修正】修订；编码开工需用户确认批次 B1 启动。*
 启动。*
---
## 附录D：B2 信息条字段决策 v2 + 源文件调研报告（v1.15，2026-08-31）

### D.1 用户决策（拍板）
1. **挂载体系简化**：战斗机/截击机=只对空、攻击机/轰炸机=只对地（机型分工即挂载语义，原"对空/对地"三态配置废弃）；**唯一挂载=核挂载**，开启后**仅轰炸机受影响**
2. **取消战力显示**（信息条不再显示战力字段）
3. **编队=师粒度**：一个师=一个编队（直接复用现有空军师体系），**混编不做**
4. **空军对战系统=自研**：不能套用 ICBM 的空军对战/不能照搬陆军——引擎不同，需自行设计（登记为远期主项，待 B2/B3 后启动）
5. **信息条字段定稿（2026-08-31 二轮）**：**取消编队名**——信息条只显示 **机型｜数量｜师状态**（待命/打击/返航/取消/巡逻）；编队名/航程/核挂载/战力均不占信息条（航程数据链路保留备查，核挂载仍在军库面板操作）

### D.2 信息条现状（源文件调研实证）
> **回答"信息条现在显示的是什么/是不是新创建的"**：是完全**新创建的战后面板**（v26-v37 制造），非引擎原生。类=InGame_AirForceQuick（继承 Menu，MenuManager:19081 预创建注册，选中空军师（HoveredArmy.key startsWith "airhq_"）时显示）。构造器（InGame_AirForceQuick.smali 5-110）当前内容：

| 层 | 元素 | 内容 | 位置 |
|---|---|---|---|
| 1 | Text_Static | "空军师｜待命"（**静态占位**，动态字段未做） | x=0x46 y=0xa2 |
| 2 | Text_Static ×4 | 打击(0x5c)/巡逻(0xcf)/返航(0x142)/取消(0x1b5) | y=0x6 |
| 3 | BtnCmd ×4 | airsAttack/airsPatrol/airsReturn/airsCancel（盒 135×96 y=24） | x=0x34/0xa7/0x11a/0x18d |
| 4 | Button | 空文本背景条（宽 0x1cc=460） | x=0x34 y=0x78 |
| 5 | initMenu | (x=0x98=152, y=GAME_HEIGHT-0xe6, w=0x1cc, h=0xe6=230) | — |

**结论**：信息条字段完全未实现，现仅一行静态文本占位；本次改造=把该 Text_Static（"空军师｜待命"）替换为动态组合文本：**机型×数量｜师状态**（待命/打击/返航/取消/巡逻）。

### D.3 动态字段数据链路（全部已验证）
| 字段 | 数据源 | 实现锚点 |
|---|---|---|
| ~~编队名~~ | ~~取消~~（不显示；师 key 仍作任务绑定内部用途） | — |
| 师状态 | AirMission.airhqKey+state:MissionState+type:MissionType——无 active mission→待命；PATROL/AIR_SUPERIORITY→巡逻；ATTACK_ARMY/STRATEGIC_BOMBING/INTERCEPT→打击；RETURNING→返航；ABORTED→取消 | AirForceManager.getAirMissionByKey:358 / AirMission$MissionState（PLANNING/EN_ROUTE/EXECUTING/RETURNING/COMPLETED/ABORTED）/ MissionType（PATROL/AIR_SUPERIORITY/ATTACK_ARMY/STRATEGIC_BOMBING/INTERCEPT） |
| 机型×数量 | 机场 aircraft:Map<AirType,List<AirUnit>>（机场-师同步链：syncAirDivisionAirport→syncAirDivisionForType 每机型每 10 架建一师，ArmyRegiment.num=数量，uID=typeOrd+7） | Airport:17 / AirForceManager:546-659 |
| 航程 | AirForceManager.getAircraftRange(AirType):F（现成函数=CombatRadius） | AirForceManager:189 |
| 核挂载 | Airport.prefPayload:I（0=关 1=开；持久化=Save_Airport 字段；BtnNuke/BtnPayload 已存在，BtnNuke 行为=Toast 占位） | Airport:43 / BtnNuke / BtnPayload |
| ~~战力~~ | ~~（取消）~~ | — |

### D.4 空军对战系统自研登记（远期主项）
用户明确：不套 ICBM（引擎不同）、不照搬陆军。需在 B2/B3 完成后单独立项调研：敌机编队 AI、空战结算模型、战报呈现（引擎原生无空战体系，ProvinceDrawArmy.drawAirForce 仅为渲染）。登记于总纲 21.4 队列。
---
### D.5 v52 实施纪实（B2 信息条动态字段，2026-08-31 用户确认✅）
- **实现**：InGame_AirForceQuick 新增 getInfoText()（static）+ infoText 字段 + refreshInfo()；**刷新点=draw() 入口**（每帧；经验证 MenuManager 对 Quick 面板**不调用 update()**——战后面板更新必须挂 draw）。
- **数据链**（全部实证）：activeArmy[0]（Game$HoveredArmy）→ key + iProvinceID → Game.getProvince → Province.getArmy(key) → ArmyDivision → lArmyRegiment[0]（uID/num）→ AirType.values()[ord].name() → Lang.get("AirType.XXX")；状态=getAirMissionByKey(key)（type/state 五态）。
- **机型序双通道**：①uID∈[7,10]→ord=uID-7（新师）②否则 key.split("_")[3] 解析（新格式含序；legacy 3 段→ord=1；**旧存档师 uID=5 必走此通道**）。
- **根因链条（用户反馈三连）**：a) update() 不被调用（刷新点错误）b) activeArmy 元素=HoveredArmy 非 ArmyDivision（类型错误）c) ord 校验 if-gez 写反（or 成功反跳 RET）d) 构建链曾用 shell 环境跑 mkzip77.py 静默失败→装机旧包（**教训㊲：mkzip/打包必须 Ubuntu terminal 环境；shell 环境 /tmp 挂载不同**）。
- **交付**：v52（探针版，用户确认✅）→ v53（去探针正式版，装机 02:56 启动零崩溃）。探针=PB39/GIF 链（教训㉙ 方法学实践：EN/key/prov/div/ord 分步定位）。
### D.6 教训固化（v52 战役链，总纲㊲-㊵）
- **㊲ 构建环境陷阱**：mkzip77.py/打包/签名必须用 Ubuntu terminal 环境执行；shell 环境（Android 直连）的 /tmp 挂载与终端不同，python 脚本**静默失败**（管道 tail -1 吞输出）→ 打包产物=旧 dex → 装机旧包 → 连续两轮"无效果"假象。**校验法=打包后 unzip 比对 classes.dex md5 == classes_new.dex md5 再签名**。
- **㊳ 战后面板刷新点**：MenuManager 对自定义菜单（如 InGame_AirForceQuick）**不调用 update()**；必被调用的是 draw()（z序守卫实证）→ 动态文本刷新必须挂在 draw 入口（另建 refreshInfo() 方法）。
- **㊴ activeArmy 元素类型**：Game.activeArmy 为 List<Game$HoveredArmy>（key/iProvinceID），**不是** ArmyDivision——取师数据必须 HoveredArmy→Game.getProvince(iProvinceID)→Province.getArmy(key)→ArmyDivision→lArmyRegiment[0]。
- **㊵ 条件跳转写反**：if-gez/if-ltz 语义混淆（v52 ord 校验 if-gez 跳 RET 导致"解析成功反被放弃"；首次同型 bug=v38 1b if-ltz 写反）——治理：条件句只写"成功路径在前"，构建前逐条核对跳转方向。
- **㊶ 分支内寄存器覆盖→VerifyError**（v57 闪退，v58 修复）：RETURNING 判断 `sget-object v2, MissionState->RETURNING` 覆盖了 AirForceManager 实例 v2，命中后 `iput v8, v2, selectedAirportProvinceID` 对枚举对象写实例字段→类型流验证失败 `VerifyError [0x120]`——治理：**条件跳转/分支内寄存器复用必须检查后续使用点**；枚举 sget 一律用死寄存器（本轮 v9）。
- **㊷ smali 汇编器运行方式**（v59 构建踏坑）：`java -jar smali-2.5.2.jar assemble` 报 "no main manifest attribute"（无 Main-Class）；显式 `org.jf.smali.Main` 报 `NoClassDefFoundError: org/jf/util/jcommander/Command`（smali 2.x 需要 fork 版 jcommander，org.jf.util 包；系统 com.beust 版不兼容）——**解法=apktool b**：`java -jar apktool.jar b /tmp/build_work -o out.apk`（内置全套依赖），再从产物 `unzip -o out.apk classes.dex` 提取，md5 与基线对比后走 mkzip77.py。
- **㊸ pm install-write 无 -r**（v59 装机踏坑）：`-r` 仅 `pm install-create` 支持；`pm install-write -r <session>` 报 `IllegalArgumentException: Unknown option: -r`→正确="pm install-write <session> base /path"（v57/v58 成功链为证；错误时 session 失效需重新 install-create）。
- **㊶ 分支内寄存器覆盖→VerifyError**（v57 闪退，v58 修复）：RETURNING 判断 `sget-object v2, MissionState->RETURNING` 覆盖了 AirForceManager 实例 v2，命中后 `iput v8, v2, selectedAirportProvinceID` 对枚举对象写实例字段→类型流验证失败 `VerifyError [0x120]`——治理：**条件跳转/分支内寄存器复用必须检查后续使用点**；枚举 sget 一律用死寄存器（本轮 v9）。
- **㊷ smali 汇编器运行方式**（v59 构建踏坑）：`java -jar smali-2.5.2.jar assemble` 报 "no main manifest attribute"（无 Main-Class）；显式 `org.jf.smali.Main` 报 `NoClassDefFoundError: org/jf/util/jcommander/Command`（smali 2.x 需要 fork 版 jcommander，org.jf.util 包；系统 com.beust 版不兼容）——**解法=apktool b**：`java -jar apktool.jar b /tmp/build_work -o out.apk`（内置全套依赖），再从产物 `unzip -o out.apk classes.dex` 提取，md5 与基线对比后走 mkzip77.py。
- **㊸ pm install-write 无 -r**（v59 装机踏坑）：`-r` 仅 `pm install-create` 支持；`pm install-write -r <session>` 报 `IllegalArgumentException: Unknown option: -r`→正确="pm install-write <session> base /path"（v57/v58 成功链为证；错误时 session 失效需重新 install-create）。


---

## B3 打击指派流 · 方案甲（机场自动打击 OFFENSIVE 接活）**v1.16，2026-08-31**

> 用户拍板（2026-08-31）：机库[打击] = **机场自动打击模式开关**——接活 `Airport.mode=OFFENSIVE` 消费点（弃方案乙：手动指派入口与即时面板合一）。
> 背景：OFFENSIVE 全库零消费（唯一引用=BtnMission 写入方）→ 机库[打击]为死按钮；本次补消费分支，与 PATROL（自动巡逻）/ AI（自动指派）构成三态完整体系。

### D.7 B3-方案甲 决策记录
1. **与"取消智能路由"的关系（裁定）**：用户 #28 取消的是 **UI 点击层**智能路由（方案A双路径：直接点敌省自动判定）；方案甲是 **引擎层机场模式策略**（PATROL 对称设计），玩家在机库一次性配置，不涉及点击自动判定——层级不同，不冲突。
2. **目标分工（B2 决策延续）**：战/截=只对空（制空/拦截）、攻/轰=只对地（战略轰炸/攻击敌军）。
3. **防重复**：每个机场同时最多一个活跃打击任务（仿 `hasActivePatrol` 检查模式），任务完成/取消后可自动再次出击（持续循环）。
4. **非战争期**：OFFENSIVE 机场不自动打击（无目标不袭击），保持待机。

### D.8 调研结论（OFFENSIVE 接活所需全部锚点，2026-08-31 源码实证）

| 锚点 | 位置 | 说明 |
|---|---|---|
| **消费点** | `AirForceManager.update(I)`（2315行）`updatePatrols(I)` 之后 | 每回合 tick 执行（`GameThread_Turns` → `updateAll()` → 遍历 civ → `update(civID)`，try-catch 包裹） |
| **模式字段** | `Airport.mode:Airport$Mode`（PATROL/OFFENSIVE/AI） | 只有 OFFENSIVE 无消费点 |
| **目标选择复用** | `getEnemyProvincesInRange(Airport, AirType)`（233行，private）→ `getProvincesInRange`（1187行 public） | 射程内敌方省份列表（排除己方/中立 civID） |
| **任务工厂** | `AirMission.createStrategicBombing(Airport,int,String)`（949行） | 分配 BOMBER+FIGHTER 护航，maxAttackRounds=1，divKey 参数已支持（null=legacy） |
| **任务工厂全表** | createAirSuperiority(697)/createAttackArmy(743)/createIntercept(799)/createPatrol(890)/createStrategicBombing(949) | MissionType 5 类全齐 |
| **防重复样板** | `hasActivePatrol(Airport)`（private） | 检查 activeMissions 中 sourceAirport 匹配 + type 匹配 + state∉{COMPLETED,ABORTED} |
| **任务内检查** | `airhqKeyInMission(String)`（472行 static） | 师级任务占用检测 |
| **战争检测** | `executeAIAssignmentForAirport`（58行）中 `isAtWar(civID)` | 非战争→FIGHTER 巡逻（不打击） |
| **同步时机** | `updateAll()` 尾部 `syncAllDivisions()` | 每回合编队/数量对账（try-catch） |

### D.9 实施批次

**B3-A1（首批，最小闭环）**：OFFENSIVE→敌省→战略轰炸
- 新增 `tryOffensive(civID)`（或 `tryOffensiveForAirport(Airport)`），挂 `update(I)` 中 `updatePatrols(I)` 之后：
  - 遍历机场，`mode==OFFENSIVE` → 检查该机场已有活跃打击任务（type∈{STRATEGIC_BOMBING,ATTACK_ARMY,INTERCEPT}，state∉{COMPLETED,ABORTED}）→ 有则跳过（防重复）；
  - `isAtWar(civID)` 为假→跳过；
  - `getEnemyProvincesInRange(airport, BOMBER)` 随机选目标省 → `createStrategicBombing(airport, targetProv, null)` → assignedAircraft 非空 → `activeMissions.add(m)`。
- 验收：机库[打击]→机场 OFFENSIVE→自动轰炸（信息条跳"打击"）→自动返航→再出击循环；启动零崩溃。

**B3-A2（目标扩展）**：优先级路由：敌省（STRATEGIC_BOMBING，攻/轰）→ 敌军（createAttackArmy，需枚举敌省军队）→ 敌机（createIntercept，需敌机列表）→ 制空（createAirSuperiority）；机型分工完整（战/截→对空、攻/轰→对地）。

**B3-A3（打磨）**：canReach 航程判定、战损统计（aliveAircraft/lostAircraft）、任务回合上限、探针（tag=AIRDBG，off:XXX）+验证+计划书收尾。

### D.10 关联
- 机库[打击] BtnMission 写入面**不动**（selectedMask 机型掩码→mode=OFFENSIVE 保留）；本批只补引擎消费面。
- 即时面板 BtnCmd 四按钮仍为占位（B3-A2/A3 后按统一指派流接入，登记后续）。


---

## B3-I 即时面板[打击] 调研记录 + 四机型打击矩阵（附录D.11，v1.16b 2026-08-31）

> 用户指示（2026-08-31）：先做即时面板的打击逻辑（BtnCmd[打击] 接线），暂不编码——先完整调研。本附录为调研产出。

### D.11.1 现状能力盘点（全复用，零新增）

| 能力 | 现状 | 锚点 |
|---|---|---|
| **作战下发链（核心发现）** | ✅ `handleProvinceClick(provID)` 已完整：选中机场→点省→防重复（hasActivePatrol）→航程（isInRange）→可用机（getAvailableAircraft）→getActiveDivKey→createPatrol→activeMissions.add→play=1 | AirForceManager(1576) |
| 点击源（修正） | **前置=行进模式**：选中师→点[行进]→原版移动模式（chooseProvinceMode=true，选择目的地界面）→点目标省→MapTouch 空军拦截段→handleProvinceClick(iActiveProvince)→newMove 拦截 airhq_（return false 师不移动）+ return-void 防双触发（pkg_new61）→createPatrol | AirForceManager(1576)·总纲§2.2链路5·§13.1 |
| 选中态清除点 | `Game.setActiveProvinceID()` + touch 段：iActiveProvince<0 时清 selectedAirportProvinceID=-1 | Game(15514) |
| 机型-师绑定派机 | ✅ createPatrol AF15 段：divKey→getKeyOrd→INTERCEPTOR(0)/FIGHTER(1)/BOMBER(2)/ATTACKER(3)→按师机型派机 | AirMission(890) |
| 可用机判定 | ✅ isAlive && !isInFlight | Airport.getAvailableAircraft(281) |
| 航程判定 | ✅ isInRange（D1） | AirForceManager(755) |
| 任务状态机 | ✅ EN_ROUTE→EXECUTING→RETURNING→COMPLETED/ABORTED；fuel≤30%自动返航；shouldReturn | AirMission.update(1340) |
| 信息条状态五态 | ✅ B2 闭环（getAirMissionByKey） | InGame_AirForceQuick |
| 防重复/清理 | ✅ hasActivePatrol + sync cleanup + dedupAirhqDivision | AirForceManager |
| 任务 divKey 化 | ✅ create* 全支持（U4） | AirMission |
| 5 类任务工厂 | ✅ createAirSuperiority(697)/createAttackArmy(743)/createIntercept(799)/createPatrol(890)/createStrategicBombing(949) | AirMission |

### D.11.2 缺口清单（B3-I 需补）

| # | 缺口 | 方案 |
|---|---|---|
| G1 | BtnCmd[打击]占位 Toast | 点击→设 pendingMissionMode（新增 static）+设 selectedAirportProvinceID=当前师机场省+同步 iActiveProvince（防清除）→Toast 提示 |
| G2 | handleProvinceClick 固定 createPatrol | 按 pendingMissionMode 分支：0=巡逻（原链）/1=打击→createStrategicBombing(airport,目标省,divKey) |
| G3 | createStrategicBombing 无 divKey→机型绑定 | 补 AF15 式绑定（按师机型派机+护航） |
| G4 | ⚠️ 打击效果结算缺失 | STRATEGIC_BOMBING 全库仅有 AirMission 内部引用，economy/population 扣减**全库不存在**——需补打击回合结算（economy×0.1/population 扣减，ICBM 式） |
| G5 | 返航/取消无手动入口 | 新增 forceReturn()（复用 update() 内 RETURNING 段）→BtnCmd[返航]接线=任务召回；BtnCmd[取消]=**取消选中师**（clearActiveArmy()+setActiveProvinceID(-1)，等价点空白/ESC）——forceAbort 不做（引擎全损自动 ABORTED 兜底保留） |
| G6 | **下达移动后师脱离选中**（2026-08-31 用户报告，I-1a 验收前置） | **根因**：MapTouchManager.actionUp 点省选中处理（cond_13 点中军队→addActiveArmy(目标省军队)/cond_14→clearActiveArmy+选中省军队）把 activeArmy 替换/清空→handleProvinceClick 创建任务后**无恢复选中**→空军面板（key 前缀 airhq_ 显隐）隐藏；**修复 AFKEEP**：handleProvinceClick 任务创建成功后恢复选中（模板=selectAirDivisionAt 尾部），详见 D.11.6 |
| G6 | **下达移动后师脱离选中**（2026-08-31 用户报告，I-1a 验收前置） | **根因**：MapTouchManager.actionUp 点省选中处理（cond_13 点中军队→addActiveArmy(目标省军队)/cond_14→clearActiveArmy+选中省军队）把 activeArmy 替换/清空→handleProvinceClick 创建任务后**无恢复选中**→空军面板（key 前缀 airhq_ 显隐）隐藏；**修复 AFKEEP**：handleProvinceClick 任务创建成功后恢复选中（模板=selectAirDivisionAt 尾部），详见 D.11.6 |

### D.11.3 四机型打击矩阵（设计，待用户确认）

| 机型 | 打击目标 | 任务类型 | 角色 |
|---|---|---|---|
| 截击机 INTERCEPTOR | 敌机 | INTERCEPT | 快速拦截 |
| 战斗机 FIGHTER | 敌机/制空 | INTERCEPT / AIR_SUPERIORITY | 空战主力（兼对地任务护航） |
| 轰炸机 BOMBER | 敌省（战略） | STRATEGIC_BOMBING | 战略打击 |
| 攻击机 ATTACKER | 敌军 | ATTACK_ARMY | 战术打击 |

> 原则：四机型全员可执行打击，目标按机型对空/对地能力匹配（延续 B2 决策：战/截=只对空、攻/轰=只对地）。

**护航（任务级合并，2026-08-31 拍板）**：打击任务创建时自动把机场空闲 FIGHTER/INTERCEPTOR 合并进同一任务（assignedAircraft 多机型机群）——BOMBER 主攻+FIGHTER 护航（引擎 createStrategicBombing 已有雏形）；**师保持一师一机型不变**（混编不做，sync 体系兼容）。

**✅ 实施纪实（v1.17，2026-08-31，装机 v74-v76）**：①v74=createStrategicBombing 补 INTERCEPTOR 护航段（引擎原版已有 FIGHTER 段，发现 1026/1028 重复 addAll 已删）+esc 探针（dKey,esc:sz=assignedAircraft 总数）；②v75=信息条状态六态化——**护航中战斗机师误显"待命"**（根因=状态按师查 getAirMissionByKey，护航借走的是机库飞机非师任务）→师无任务时检查本师机型机架 isInFlight=1→"护航"（InGame_AirForceQuick.getInfoText +45 行）；③v76=**防重复师级化**——**战斗机任务中轰炸机起飞不了**（根因=hasActivePatrol 机场级"一机场一任务"原版逻辑拦截）→签名 (Airport,String)：divKey≠ 只拦同师（airhqKey equals）、= 保持机场级（AI 链 tryPatrolForAirport 传 null）；**护航视觉**：地图只画师图标+数量标注（count=assignedAircraft.size），护航机不单独图标=引擎原生语义；**玩家期望（护航机跟飞/拦截）→ 登记 B3-I-2 扩展**（多机图标绘制+护航机交战结算）。

**软校验改为意图路由（2026-08-31 拍板）**：不用"提示不阻止"——直接按机型路由任务：

| 点省时的机型 | 任务 | 说明 |
|---|---|---|
| BOMBER / ATTACKER | STRATEGIC_BOMBING（打击） | 主战，FIGHTER 自动护航 |
| FIGHTER / INTERCEPTOR | **createPatrol（=移动）** | 现成链零改动（飞往→到达→**即返航，无滞留**——2026-08-31 拍板：滞留计数单位=帧（pswitch_2 每 update() 调用即 ++，update() 每帧被调），引擎无回合实时时长字段，"半回合"需新增 lingerEndMs 毫秒字段+换算，成本高不精确→**取消滞留**（到达即返航）；半回合滞留登记为 I-3 可选增强） |

> 即：战斗机点敌省=移动（PATROL 语义=飞过去滞留折返）；对地机型点敌省=打击。

### D.11.4 实施批次（待拍板）

| 批次 | 内容 | 验收 |
|---|---|---|
| B3-I-1a | **G5 返航召回+取消选中（最小，v1.16e 定稿）**：AirMission 新增 forceReturn()（复用 update() 内 RETURNING 段）+ BtnCmd[返航]接线（getAirMissionByKey(当前师key)→forceReturn）+ BtnCmd[取消]接线（clearActiveArmy()+setActiveProvinceID(-1)=取消选中师，等价点空白/ESC） | 飞机飞行中→点[返航]→状态跳"返航"飞机转头；选中师→点[取消]→信息条关闭（选中清除） |
| B3-I-1b | **G2 机型路由核心**：handleProvinceClick 尾部按师机型分支——BOMBER/ATTACKER→createStrategicBombing（打击），FIGHTER/INTERCEPTOR→createPatrol（移动，原链一字不动） | 轰炸机师点敌省→状态"打击"；战斗机师点敌省→状态"巡逻"（移动） |
| B3-I-1c | **G3 护航任务级合并**：createStrategicBombing 补 AF15 式 divKey 机型绑定 + 空闲 FIGHTER/INTERCEPTOR 自动 addAll 入任务 assignedAircraft | ✅ **完成（v74-v76，2026-08-31 用户"验收成功"）**：机库战斗机"任务中/可用数减少"+任务结束恢复；护航状态六态显示（v75）；防重复师级化（v76） |
| B3-I-1d | **G1 BtnCmd[打击]接线（最后，v1.17b 范围修正）**：pendingMissionMode=1 + selectedAirportProvinceID=当前师机场省 + iActiveProvince 同步（防清除）+ chooseProvinceMode=true + Toast"点选目标省份"——**[巡逻]不接入**（Air Patrol 模式开关，ICBM 2066/3301 语义，登记为模式功能） | ✅ **编码完成（v77 装机+修复 v78/v79）**：选中师→点[打击]→Toast→点敌省→轰炸/攻击=打击、战斗/截击=移动（机型路由）；本国省→移动；被占省→可打击（收复）；攻击机无护航 |
| B3-I-2 | G4 打击效果结算（economy×0.1/population 扣减）+ ATTACK_ARMY（敌军目标）+ 对空拦截（INTERCEPT/AIR_SUPERIORITY） | 轰炸后目标省经济/人口实际下降 |
| B3-I-3 | 确认条 + 航程提示 + 驻留参数（移动 linger）+ 打磨 | 操作反馈完整 |

### D.11.5 B3-I-1 分部化与验收手册（2026-08-31，用户指示细分）

**拆分原则**：每步≈1 个改动点≈1 个文件，单点单验，出问题好定位；顺序 I-1a→I-1b→I-1c→I-1d，每步装机验收通过才进下一步。

**按钮语义定稿（v1.16e，2026-08-31 用户拍板；v1.17b 修正）**：[打击]=目标指派=点击选择目标省份模式（I-1d）；**[巡逻]=Air Patrol 模式开关（v1.17b 修正，非任务指派！=机场自动巡逻模式，ICBM 2066/3301/3510 语义，登记为模式功能后续做）**；[返航]=任务召回（forceReturn→RETURNING 飞回，唯一任务终止入口）；[取消]=取消选中师（clearActiveArmy()+setActiveProvinceID(-1)，等价点空白/ESC）。forceAbort 不做——引擎全损自动 ABORTED 兜底保留（对齐 ICBM：CancelOrders/ReturnToBase/AutoReturn 三语义分工）。

**验收准备（通用）**：进游戏→开局→机库造 ≥2 种机型各 ≥1 架（轰炸机/攻击机 + 战斗机）→找航程内敌国省份；选中师的入口=点地图上飞机图标（trySelectAirUnit 自动设 selectedAirportProvinceID=机场省+选中该师）。

**⚠️ 行进链正确触发方式（用户指正）**：选中师后**点[行进]→进入选择目的地界面（chooseProvinceMode=true）→点目标省**才触发 handleProvinceClick；选中师后直接点省**不触发**（无行径模式）。
**⚠️ 前置修复（AFKEEP，v59）**：原版点省链会把 activeArmy 替换为目标省军队/清空（MapTouchManager.actionUp 选中处理），handleProvinceClick 已补恢复选中——**下达移动后师保持选中**（信息条保持"巡逻"），飞行中可直接点[返航]。
**⚠️ 前置修复（AFKEEP，v59）**：原版点省链会把 activeArmy 替换为目标省军队/清空（MapTouchManager.actionUp 选中处理），handleProvinceClick 已补恢复选中——**下达移动后师保持选中**（信息条保持"巡逻"），飞行中可直接点[返航]。

| 步 | 玩家操作 | 预期现象 | 判定 |
|---|---|---|---|
| I-1a | 选中战斗机师→[行进]→点敌省（起飞，状态"巡逻"）→点[返航] | 状态跳"返航"，飞机转头飞回 | 信息条状态跳变+飞机返航 |
| I-1a | 选中师→点[取消] | 信息条立即关闭，选中清除（等价点空白/ESC） | 信息条消失 |
| I-1b | 轰炸机师→[行进]→点敌省 | 状态"打击"（打击任务） | 与战斗机对比状态不同 |
| I-1b | 战斗机师→[行进]→点敌省 | 状态"巡逻"（移动，行为与现在一致） | 未改坏 |
| I-1c | 轰炸机师打击起飞后看机库 | 战斗机"任务中/可用数减少"（被借护航） | 数量恢复 |
| I-1d | 选中师→点[打击]→Toast→点敌省 | 轰炸/攻击=打击、战斗/截击=移动 | 按机型路由 |

**验收证据链**：信息条状态跳变 + 飞机起飞/返航/数量恢复；每步通过记入计划书，不通过抓探针（tag=AIRDBG，logcat 过滤 gif:）。

### D.11.6 AFKEEP 移动选中保持（v1.16f，2026-08-31）
**需求**：不做飞行中选中师（AFDIV2 回滚）；下达移动指令后师保持选中（信息条/命令组不消失），支撑 I-1a [返航]验收链。
**根因链（游戏文件实证）**：
```
选中空军师（activeArmy=[airhq师]）→点[行进]（InGame_ProvinceArmy_Move$1：仅翻转 chooseProvinceMode，不清选中）
→点目标省（MapTouchManager.actionUp 706）
  ├─ cond_13 点中军队：addActiveArmy(目标省军队 HoveredArmy)+actionUp_SetActiveArmy
  └─ cond_14 点空白：clearActiveArmy()+选中省军队（cond_15-17）
→ :goto_4 → 3713 actionUp_setActiveProvinceID（GameActiveProvince 1520）
→ cond_9 行进模式：sput chooseProvinceMode=false → 遍历省份 → 命中目标省（892-899）
→ 空军拦截段：selectedAirportProvinceID>=0 且 != 目标省 → handleProvinceClick（创建任务+play=1）+ return-void
✂️ activeArmy 已被上述选中处理替换/清空，handleProvinceClick 无任何恢复 → 空军面板（key airhq_ 显隐）隐藏 = "脱离选中"
```
**修复（1 处）**：handleProvinceClick :ap_done 之后、:hc_done 之前（成功路径唯一入口；失败全 goto :hc_done 不受影响）插入恢复段（模板=selectAirDivisionAt 尾部，AirForceManager 3438-3452）：
```
getActiveDivKey→v0（null 跳过）→iget selectedAirportProvinceID→v1（<0 跳过）
→Game.getProvince(v1)→v2（null 跳过）→getArmyKeyID(v0)→v3（<0 跳过；=师在机场省 army 索引）
→Game.clearActiveArmy()（防残留敌军选中）
→new HoveredArmy v4：key=v0 / iProvinceID=v1 / iArmyID=v3 / iCivID=airport.civID（getAirportByProvinceID(v1)，null 回退 0）
→Game.addActiveArmy(v4)（尾部 airhq_ 前缀→show 面板）→ProvinceTouchExtraAction.actionUp_SetActiveArmy()（军队栏刷新）
→探针 dKey"afkeep:ok"；寄存器 .locals6 内 v0-v5 错峰复用，零新增
```
**效果**：选中师→[行进]→点敌省→飞机起飞+信息条保持"机型×数量｜巡逻"+命令组保持→飞行中直接点[返航]（forceReturn）验收 I-1a。EN_ROUTE 期间师仍在机场省 army 列表（createPatrol 无 removeArmy），信息条数据可读；EXECUTING 时师被 placeAirDivision 移出→信息条暂空（不崩，I-2 打磨）。
**边界**：仅玩家行进链触发（空军拦截段 return-void 路径）；陆军移动链（:air_mv_skip→moveActiveArmiesToProvinceID）不受影响；点机场省自己（:air_mv_skip）不触发恢复。

### D.11.6 AFKEEP 移动选中保持（v1.16f，2026-08-31）
**需求**：不做飞行中选中师（AFDIV2 回滚）；下达移动指令后师保持选中（信息条/命令组不消失），支撑 I-1a [返航]验收链。
**根因链（游戏文件实证）**：
```
选中空军师（activeArmy=[airhq师]）→点[行进]（InGame_ProvinceArmy_Move$1：仅翻转 chooseProvinceMode，不清选中）
→点目标省（MapTouchManager.actionUp 706）
  ├─ cond_13 点中军队：addActiveArmy(目标省军队 HoveredArmy)+actionUp_SetActiveArmy
  └─ cond_14 点空白：clearActiveArmy()+选中省军队（cond_15-17）
→ :goto_4 → 3713 actionUp_setActiveProvinceID（GameActiveProvince 1520）
→ cond_9 行进模式：sput chooseProvinceMode=false → 遍历省份 → 命中目标省（892-899）
→ 空军拦截段：selectedAirportProvinceID>=0 且 != 目标省 → handleProvinceClick（创建任务+play=1）+ return-void
✂️ activeArmy 已被上述选中处理替换/清空，handleProvinceClick 无任何恢复 → 空军面板（key airhq_ 显隐）隐藏 = "脱离选中"
```
**修复（1 处）**：handleProvinceClick :ap_done 之后、:hc_done 之前（成功路径唯一入口；失败全 goto :hc_done 不受影响）插入恢复段（模板=selectAirDivisionAt 尾部，AirForceManager 3438-3452）：
```
getActiveDivKey→v0（null 跳过）→iget selectedAirportProvinceID→v1（<0 跳过）
→Game.getProvince(v1)→v2（null 跳过）→getArmyKeyID(v0)→v3（<0 跳过；=师在机场省 army 索引）
→Game.clearActiveArmy()（防残留敌军选中）
→new HoveredArmy v4：key=v0 / iProvinceID=v1 / iArmyID=v3 / iCivID=airport.civID（getAirportByProvinceID(v1)，null 回退 0）
→Game.addActiveArmy(v4)（尾部 airhq_ 前缀→show 面板）→ProvinceTouchExtraAction.actionUp_SetActiveArmy()（军队栏刷新）
→探针 dKey"afkeep:ok"；寄存器 .locals6 内 v0-v5 错峰复用，零新增
```
**效果**：选中师→[行进]→点敌省→飞机起飞+信息条保持"机型×数量｜巡逻"+命令组保持→飞行中直接点[返航]（forceReturn）验收 I-1a。EN_ROUTE 期间师仍在机场省 army 列表（createPatrol 无 removeArmy），信息条数据可读；EXECUTING 时师被 placeAirDivision 移出→信息条暂空（不崩，I-2 打磨）。
**边界**：仅玩家行进链触发（空军拦截段 return-void 路径）；陆军移动链（:air_mv_skip→moveActiveArmiesToProvinceID）不受影响；点机场省自己（:air_mv_skip）不触发恢复。

### D.11.7 军队栏闪现消失专案（v1.16i，2026-08-31，**闭环✅**）
> 用户 #23："下达行动指令时军队栏闪一下然后消失"。**根因=H1 时序版（v72 全 dKey 探针实锤）→ v73 TAPG 守卫修复 → 用户确认"正常正常"✅**。完整链条（F1-F9 证据/探针清单/版本线）= 总纲 §21.5.1/21.5.2；此处为闭环摘要。

**操作路径**：选中机场省师→[行进]（chooseProvinceMode=true）→点敌省 → ACTION_UP 链：
`MapTouchManager.actionUp` →（cond_13/14 选中处理：activeArmy 被替换/清空）→ `GameActiveProvince.actionUp_setActiveProvinceID(3713)`【① tapClr（chooseProvinceMode=true 且悬停省≠机场省 → selectedAirportProvinceID=-1，GameActiveProvince:1541-1568）② $23.extraAction（AFG2 守卫：selected>=0 才不隐藏，$23:1830-1853）】→ `ProvinceTouchExtraAction.actionUp_ExtraAction(3914)` → `actionSetActiveProvinceID(1082)`【setActiveProvinceID→provAct→handleProvinceClick】→ `AirForceManager.handleProvinceClick(1650)`：【if-ltz selected→done；创建任务（createMissionForClick→createPatrol/StrategicBombing，**无 removeArmy**）；AFKEEP(1768-1799)：getArmyKeyID>=0 才恢复 addActiveArmy+actionUp_SetActiveArmy】→ 任务加入 activeMissions → play=1。

**已排除**：①AFKEEP 段缺失（实际完整）②$23 AFG2 守卫缺失（实际正常）③actionUp_SetActiveArmy 逻辑错（实际正常）④错字（已修）。

**关键机制（证据）**：
- F1 | AFKEEP 恢复前置 getArmyKeyID(机场省,师key)>=0，师一旦离开机场省列表 → 恢复被整体跳过（AirForceManager:1777-1779）
- F3 | moveDivisionAlongFlight 首跳（airDivisionAtProvinceID==0）：v8!=source → removeArmy(机场省)+addArmy(邻省)（AirMission:480-504）——师离开机场省列表的唯一时机（F2：创建任务不 remove）
- F4 | 军队栏重建 tDivID=getProvince(HoveredArmy.iProvinceID).getArmyKeyID(sActiveKEY)；tDivID<0 → key=""+:cond_1f 跳过按钮构建=内容空（InGame_ProvinceArmy:291,354,418）
- F5 | rebuild(ZZ) 开头 activeArmySize<=0 → :cond_5 直接隐藏三件套（MenuManager:30164,30833-30896）——不经 AFG2
- F6 | actionUp_SetActiveArmy cond_0（activeArmySize<=0）→ setVisible(false)（ProvinceTouchExtraAction:1287-1349）——无守卫
- F9 | clearActiveArmy 全库 18 处调用点；MapTouchManager 点省链 1382 等紧随 setActiveProvinceID

**真假假设（待探针）**：H1=tapClr 清 selected→AFG2 失效（时序存疑：若任务创建成功则 tapClr 必在其后/条件未满足）；H2=师离省→tDivID=-1→内容空+（activeArmySize 被清时）cond_5/F6 隐藏。两者可叠加。

**验证探针（6 点 ub:*）+ 修复预案（AFKEEP 兜底化 / tDivID<0 空军兜底）**：见总纲 §21.5.1。**待办**：v71=错字（InGame_AirForceQuick:159 已改）+6 探针→装机→用户复现→实证→修复→I-1b 验收→I-1c。

### D.11.8 ICBM 巡逻 vs 打击语义调研 + I-1d 范围修正（v1.17b，2026-08-31）
> 用户指正：**巡逻是一个模式，不用接入任务指派**；[打击]=**点击选择目标省份的模式**→看 ICBM 原文。
**ICBM 原文证据（/sdcard/GLG/历史23/ICBM Escalation Endless October PROPER）**：
| 概念 | 证据 | 结论 |
|---|---|---|
| 巡逻=模式 | lang/Eng/UI.lng **2066** "Allow air patrol"（允许空中巡逻开关）/ **3301** "Air patrol:"（开关标签）/ **3510 教程** "toggle the Air Patrol buttons to have the airbase automatically have planes patrol" + Units.txt CanHostAircrafts "Fighter" 10 Patrol 4（机位+巡逻配额）+ CanPatrolPoint/AIAutoPatrol | **巡逻=机场级 Air Patrol 模式开关（自动绕场巡逻）**；拦截=机场自动自卫（3510：即使不开巡逻，机场也会自动派战斗机攻击威胁）——**不是"派往目标省的任务"** |
| 打击=目标指派 | UI.lng **2562-2564** 打击计划簿教程（新建打击计划→图标→执行）/ **2821-2822** "加入/退出打击计划" / 教程 4102 "attack any targets you assign" | **assign targets=选中→指派目标→执行** 流程 |
| 巡逻路线 | **2734** "Set patrol route" / **2770** "Patrolling..." | 巡逻=路线/状态，非任务派遣 |
**I-1d 范围收窄（用户拍板）**：只做 [打击]按钮=**点击选择目标省份模式**（pendingMissionMode=1+selectedAirportProvinceID=当前师机场省+iActiveProvince 同步+chooseProvinceMode=true+Toast"点选目标省份"→点省→机型路由现成）；[巡逻]按钮不接入（Air Patrol 模式开关登记，后续做，类 B3 方案甲 OFFENSIVE/机库模式开关）。

### D.11.9 占领区语义调研（v1.18，2026-08-31，用户指正："战争时自家省被占领了还不能去"）
> **核心事实**：省份有两个维度——**所有权 getCivID()/ProvinceData.civID（法律归属）≠实际控制 isOccupied()/OccupiedByCivID（占领者）**。
**引擎证据**：
| 项 | 证据 |
|---|---|
| 实际控制字段 | ProvinceData.getOccupiedByCivID()（Province.smali 9800/11727/15021 等 15+处）；Province.isOccupied()/setOccupiedByCivID |
| 前线/占领计算 | **AI_MoveAtWar.addOccupiedProvinces（1114）**：civ 省份遍历→isOccupied→加入 possibleProvinces（=可攻击目标）→OccupiedByCivID<0=叛军占（AT_WAR_MOVE_PROVINCE_SCORE_OCCUPIED_BY_REBELS）/≥0=敌国占（OCCUPIED_BY_ENEMY_CIV）|
| 用户记忆验证 | 用户记得"AI_moveatwar 类里有算前线省份的方法引用实际控制权字段"——= addOccupiedProvinces + getOccupiedByCivID ✅ |
**修复（v79）**：createMissionForClick :cmc_ownchk 增加 isOccupied() 优先判定→被占省（敌/叛军）→直接 :cmc_strikchk 打击（收复）；仅未占+同国→转移动。**治理原则**：省份归属类判定一律用实际控制（isOccupied/OccupiedByCivID），勿用 getCivID 所有权。


---

> 🆕 **B 线现状核实（2026-09-16）**：N1 人口伤害逐 civ 写 / N2 引擎战报 addBattleReport / N4 pendingMissionMode 消费+清零（createMissionForClick）/ N5 敌机对称（recordKill）——**均已在代码接线**；B3-I-2 剩余＝"敌军→ATTACK_ARMY／敌机→INTERCEPT"点击路由补全＋链路验收收口。B5①巡逻绕圈视觉**取消**（用户 2026-09-16）；B6 核弹开关**延后至核弹批次**。清单主档＝设计v2 §七十三 v3（二轮批注并入）。
>
> 🆕 **B 线二轮修订（2026-09-16 晚）**：①B2——**航程提示已实现**（可达性显示链已在 ProvinceDraw），剩余＝确认条＋移动 linger＋打磨；②B4——**[巡逻]按钮现役**（即时栏＋机场界面：无任务→自动选边境省出击；有任务→取消返航），**巡逻配额（P-2）取消**；③B5——**机型校验取消**、**战报面板化只做"伤害飘字"**（面板/存档砍掉）、战报最小版（回合提示条）与指派准星保留；④B1 与 **A4（攻击机＝专注对陆军）联动**：ATTACK_ARMY 路由即攻击机主场。
>
> 🆕 **护航三轮修订（2026-09-16 晚）**：方案＝**a 跟随护主＋c 数量双层限制**；**b 优先接敌取消**。数量规则：①轰炸机:战斗机/截击机＝**1:1**；②**机场保留比例**（借调不得抽空驻场，保底保留一定比例，建议默认 50% 可调）。与 B3（视觉/结算）联动。

> 刷新（2026-09-16）：任务线状态以《空战重做专案_设计v2》§七十三 v4＋第四轮修订为准——A1 游猎＝"返航中游猎＋HP<50% 过滤"待实施；A2 关闭；A3 结案；A4 方向已定；B1/B2/B3 待做；R4c165 飞机雷达实时开图已上线。
