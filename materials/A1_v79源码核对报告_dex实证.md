# A1 / B3-I 源码核对报告 —— v79 安装包 DEX 实证（2026-08-31）

> 方法：直接从 **/sdcard/Download/dbg_signed77_v79.apk**（versionCode 14，722,873,809 B）解出 `classes.dex`（7,244,268 B / 5514 类），
> 用自研 DEX 解析器（无 java 环境，Python 解析 string_ids/method_ids/field_ids/class_defs + 按 Dalvik 指令宽度表走 code_item）
> 做 **方法级反汇编 + 全库调用图 + 全库字段读写点** 核对。以下每条结论都可复算，不依赖任何二手记述。
> 校验口径：调用者=全库扫描 5514 个类的每个 code_item 的 invoke-* 目标；字段读写=iget/iput/sget/sput 全量归集。

---

## 一、重大修正：G4「打击效果结算缺失」= **证伪**

《A1 v1.16b 附录 D.11.2》G4 记为"STRATEGIC_BOMBING 全库仅有 AirMission 内部引用，economy/population 扣减**全库不存在**"。
**DEX 实证结论：结算存在、完整、且已接线。**

### 1.1 executeAttack 完整反汇编（AirMission，code_off 3107668）
```
0   iget  attackRoundsExecuted / 2 iget maxAttackRounds / 4 if-lt  → 6 return-void   # 轮次守卫
7   iget  targetProvinceID / 9 if-ltz → 104 return-void                              # 目标守卫
12  aliveAircraft.iterator → 30 AirUnit.canAttackGround → 36 iget groundAttack
38  add-float/2addr                                   # Σ groundAttack 累加
39  iget currentPayload / 41 if-lez / 43 add-int/lit8 -1 / 45 iput currentPayload    # 扣挂载
50  Game.getProvince(targetProvinceID)
56  const 0x3DCCCCCD(=0.1f) / 59 mul-float / 61 getEconomy / 65 sub-float/2addr / 66 setEconomy
69  const 0x447A0000(=1000.0f) / 72 mul-float / 74 float-to-int
75  getPopulationSize   → 79 sub-int/2addr → 80 if-gez(<0 归零) → 83 iput provincePopulationSize
85  getPopulationTotal  → 89 sub-int/2addr → 93 iput provincePopulationTotal
95  recordDamage  / 98-102 attackRoundsExecuted++
```

### 1.2 接线实证
| 事实 | 证据 |
|---|---|
| `executeAttack` 的**唯一调用者 = AirMission.update`` | 全库调用图扫描：命中 1 处 |
| 调用位置 = update() 的 **EXECUTING 分支（pswitch）入口**，**无任务类型判断**、无条件调用 | update 反汇编 345 `invoke-direct executeAttack`，其前 321-342 为 `um_p2:l=` 探针、其后 348 `lingerRounds++` |
| PATROL 不会误伤 | `createPatrol`: `maxAttackRounds=0` → executeAttack 首行守卫直接 return |
| 打击=一次性 | `createStrategicBombing`: `maxAttackRounds=1` |

### 1.3 实际伤害量（AircraftTypes.json 实测值代入）
| 机型 | GroundAttack | MaxPayload | 单架单次打击效果 |
|---|---|---|---|
| BOMBER | 60 | 8 | 目标省 **经济 −6.0**、**人口 −60,000** |
| ATTACKER | 30 | 4 | 目标省 **经济 −3.0**、**人口 −30,000** |
| FIGHTER | 5 | 2 | （点省走 createPatrol，不结算） |

> `setEconomy` 全库仅 10 类写入点（事件/和约/投资/核爆/地图初始化 + 本条），**无每回合重算覆盖** → 扣减是**持久生效**的。
> `canAttackGround()` = `currentPayload>0 && canAttackGround`；`currentPayload` 由 `AirUnit.<init> → applyTypeDefaults → AircraftDataManager.applyType` 从 JSON 赋 MaxPayload，**建造即满挂载**。

**⇒ 真正的缺口不是"没结算"，而是"结算了但玩家看不见"。B3-I-2 的定义应从"补结算"改为"补可见性"。**

---

## 二、[打击] 按钮当前 = [行进] 的同义词（pendingMissionMode 只写不读）

| 事实 | 证据 |
|---|---|
| `AirForceManager.pendingMissionMode:I` 字段存在 | 字段表实证（v77 新增） |
| **写入点仅 1 处**：`InGame_AirForceQuick$BtnCmd.actionElement`（id=0 → sput 1） | 反汇编 63-64 |
| **读取点 0 处**（全库 iget/sget 扫描无命中） | 字段读写全量归集：只有 ('pendingMissionMode','W') |
| 任务类型实际由 `createMissionForClick` 按 **getKeyOrd 机型** 决定（ord2→BOMBER、ord3→ATTACKER 打击；ord0/1→createPatrol） | createMissionForClick 反汇编 6-16 |

**⇒ 玩家点 [打击] 与点 [行进] 后续行为完全相同**（都是 chooseProvinceMode=true → 点省 → 机型路由）。
功能上"能用"，但按钮语义未落地：模式没有消费点、也没有退出/清零点（下一次[行进]仍带着 pendingMissionMode=1）。

其余三键实证：[巡逻]=Toast `"巡逻：空军指令将在后续阶段开放"`（占位）；[返航]=`getAirMissionByKey→forceReturn`✅；[取消]=`clearActiveArmy+setActiveProvinceID(-1)`✅。

---

## 三、战报（A2）：数据模型齐备、**消费点为零**

| 字段 | 写入 | 读取 | 存档 |
|---|---|---|---|
| `AirMission.totalDamageDealt:F` | recordDamage（executeAttack 调用） | **无任何 UI** | ✅ Save/Load |
| `AirMission.enemyAircraftShotDown:I` | recordKill | **无任何 UI** | ✅ Save/Load |
| `AirMission.lostAircraft:List` | recordLoss（updateAirCombat 调用） | **无任何 UI** | ✅ Save/Load |
| `Airport.totalLost:I` | Airport.removeAircraft | 无 UI | ✅ Save/Load |

**⇒ A2 战报是"接线活"不是"建模活"**：三字段已在打，只差一个显示位（信息条第二行 / Toast / 回合提示条）。

---

## 四、敌我不对称（A3.1）实锤

| 事实 | 证据 |
|---|---|
| `AirMission.recordKill` **全库无调用者** | 调用图扫描 0 命中 → 敌机永远不掉血、不被击落 |
| `updateAirCombat` 只做单向扣血：`hp -= airAttack × 0.5f`，hp<0 → recordLoss | 反汇编 177-196（0x3F000000=0.5f） |
| 判定源极粗糙：每个文明只取 `getAirportsForCiv(civ).get(0)`（**第 0 个机场**）、只取 `getAvailableAircraft(INTERCEPTOR/FIGHTER).get(0)`（**第 0 架飞机**）的 radarRange 作为拦截半径 | 反汇编 43-81 |
| 被击落的飞机**不从 aliveAircraft 移除**（只 recordLoss 计数） | 反汇编 196-199 |

---

## 五、已具备但未启用的现成底座（下一阶段直接可用）

| 底座 | 位置 | 用途 |
|---|---|---|
| `Province.atomicBombDropped()` | Province（code_off 3495028）：`Game.getAtomicBombCasualties` 按人口结算伤亡 → 逐 civ 扣人口 → `economy × GameValues.atomic.ATOMIC_BOMB_ECONOMY` → 遍历 `iArmiesSize/lArmyRegiment` 摧毁驻军 | **M3 核挂载的现成落点**；也是"重型打击可见效果"的模板 |
| `Airport$Mode{PATROL, OFFENSIVE, AI}` | 写入=`InGame_AirForceOptions$BtnMission.actionElement`；读取=`tryPatrolForAirport`/`executeAIAssignment` | **[巡逻] 按钮=机场模式开关**（ICBM 3510 语义）的现成管线，AI 侧已在消费 |
| `Airport.prefPayload:I` | 写=`BtnPayload.actionElement`/读=`BtnNuke.getTextToDraw`/`BtnPayload.getTextToDraw`，Save/Load 已持久化 | 核挂载开关（B1 行为层） |
| `getAircraftRange(type)` 读 `AircraftTypeData.CombatRadius`（回退 300f/500f） | AirForceManager | **D1 代差友好已落实**（无 800f 硬编码残留） |
| 代差贴图资产 | `assets/game/AirUnit/AirUnitlmages/Gen3|Gen4|Gen5/{CN,EU,RU,US}/{FIGHTER,INTERCEPTOR,BOMBER,ATTACKER}.png` 已在包内 | **M2-A 代差视觉侧已备料**（数据侧 AircraftTypes.json 仍是单代 4 条） |

---

## 六、ICBM 原文复核（本轮抽验，文档引用成立）

- 文档中的 "UI.lng 2066/2734/2770/3301/3510/2562-2564/2821-2822/4102" 是 **key ID 不是行号**（UI.lng 共 2279 行），逐条抽验**全部命中且语义与文档一致**。
- 3510 原文补充要点（文档未记全）：**"Regardless if you tell them to patrol or not, airbases will automatically send out fighters to attack enemy planes if they pose a threat to us."** → ICBM 机场**自卫拦截是常驻自动行为**，Air Patrol 开关只影响"是否额外绕场巡逻"。
- `Units/Units.txt:3123 [UNIT] "Airport"`：`Airway Launch 2 Time 180` / `CanHostAircrafts "Fighter" 10 Patrol 4` / `airway 1 "Bomber" 5 Patrol 2` / `"Interceptor" 4 Patrol 2` / `"AWACS" 2 Patrol 1 AIAutoPatrol` —— 与总纲 18.4 一致。
- `Units.txt:836 [UNIT] "Bomber"`：Range 6000 / Power 2 / Speed 400 / `AutoReturn Yes` / `LaunchMePathIcon element "path/launch bomber"` —— 与 18.3 一致。

---

## 七、结论与下一步建议（按性价比排序）

1. **P0 — I-1d 验收标准改写并立刻验收（v79 已在机）**：验收动作不是"看到打击"，而是**记录目标省"经济/人口"数值 → 下达轰炸 → 到达（信息条转"打击"）→ 再看同省数值**。预期：1 架轰炸机 = 经济 −6、人口 −60,000。若数值**没变**，才是真 bug（排查顺序：任务是否进 EXECUTING → currentPayload 是否 >0 → 目标省是否 targetProvinceID）。
2. **P0.5 — 修 [打击]/[行进] 语义分叉**：给 `pendingMissionMode` 加消费点与清零点（进入=1、handleProvinceClick 消费后=0、[取消]/ESC=0），否则按钮是装饰件、且状态会粘住。
3. **P1 — A2 战报最小版（收益/成本比最高）**：打击命中时 Toast/回合条显示"XX 省 经济 −6 / 人口 −6.0 万"，信息条追加"战果：累计伤害 N"。三字段现成，无需新建数据。
4. **P2 — A3.1 敌机对称**：`recordKill` 接活 + `updateAirCombat` 去掉"第 0 个机场/第 0 架飞机"取样、被击落飞机从 aliveAircraft 移除并回写 Airport.totalLost。
5. **P3 — [巡逻] 按钮 = Airport.mode 开关**（PATROL/OFFENSIVE 现成枚举 + AI 侧已消费），对齐 ICBM 3510 语义。
6. **文档治理**：G4 这类"全库不存在"的断言，今后一律用 DEX 调用图/字段读写表复核后再写入计划书（本轮已建立可复用工具链：/tmp/dexlib.py + dis.py）。

*（本报告由 v79 安装包 DEX 反汇编生成，所有结论可用同一工具链复算。）*
