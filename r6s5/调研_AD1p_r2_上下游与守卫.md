# 调研 · AD-1′（开火重启）第二轮：上下游 / 守卫 / 边界 / 风险

批次 r6d171

---

## 1. 上游（决定"注入在哪、要不要守卫"）

| 事实（实测/逐字） | 影响 |
|---|---|
| `AirForceManager.updateAll()` 由 `GameThread_Turns` 每回合调用，**实测每回合被调用 2 次**（r6d170 抓样：t=2..34 多数回合 `nADM` 出现 2 次；76 回合/109 次调用） | **必须加"每回合只结算一次"守卫**，否则每座阵地会打 2 次（伤害翻倍） |
| `updateAll()` 内部顺序：`demoLoadCfg` → （读档时）`syncAllFromProvinces/loadSave_Airforce` → `syncAirports` → `syncRadar` → `updateMissions` → `updateAirCombat` → **对每个有机场的国家 `update(civID)`** → `syncAllDivisions` → `repairAircraft` → `dumpMissions` → `return` | 注入点选**尾部**（所有 sync 之后、`return-void` 之前）⇒ 不会在"读档恢复未完成"时开火 |
| 读档/新局首帧也会走 `updateAll` | 守卫用 `Game_Calendar.TURN_ID`；首帧 lastTurn=0 ≠ TURN_ID ⇒ 正常结算一次 |

## 2. 下游（开火会产生什么副作用——必须走游戏自己的账）

| 动作 | 走谁 | 效果 |
|---|---|---|
| 扣血 | `AirUnit.hp:F` | 与游戏空战同一字段 |
| 击落 | `AirMission.recordLoss(AirUnit;)V`（**public**） | 出 `aliveAircraft`、进 `lostAircraft`、`airport.removeAircraft` ⇒ 编队/机场/任务三者同步，**不留幽灵机** |
| 血量池 | `AirMission.recalcPool()V`（**public**） | `fPoolHP` 与编队一致 |
| 任务收尾 | **不自己做** | 编队空后由游戏自身 `allAircraftLost()`（在其 `update()`/返航路径）收尾 |

**不写**：`isAlive` / `isShotDown` / `isInFlight`（游戏战斗全程不写这三个，只有构造/存档/resetRound 碰）。
**不调用**：`applyAirDamage`（private ⇒ 跨类调用会 `IllegalAccessError`），只复刻其"伤害池倾泻"口径。

## 3. 边界与不变量

1. **索引循环，禁迭代器**：`recordLoss` 会改 `aliveAircraft` ⇒ 迭代器必 `ConcurrentModificationException`。
2. **判界**：所有 `Game.getProvince(id)` 前判 `0 ≤ id < Game.iProvincesSize`（该 API 是裸 `List.get`）。
3. **判空**：`aliveAircraft` / `buildings` / `AirForceManager.getInstance()`。
4. **只读诊断不动**：`AirDefDiag` 保留原样（它在本批注入点**之前**跑，读的是"开火前"状态，便于逐回合对比）。
5. **不删旧代码**：`AirForceManager.update(I)V` 里既有的旧 AAA 段（停在敌境机场的飞机每 tick −1hp）**保持不动**；留档类的 `tick(I)`/`tickSafe(I)` 保留但不挂载。
6. **不耗资源**、对 AI 与玩家一视同仁（无分支）。
7. **线程**：只由 Game 线程的 `updateAll` 调用（与诊断同线程）⇒ 不需要额外加锁。

## 4. 成本

| 循环 | 规模 | 说明 |
|---|---|---|
| 全局省份扫描 | 13,892 省 × 每省 `buildings`（个位数） | 每回合 1 次（`AirDefDiag` 已在做同样的扫描，本批再加一次，量级相同） |
| 开火 | 只在"有阵地的省"（本存档 = 2–3 个）上做：每省 `countTargets`（遍历任务池）+ 每发 `pickTarget` | 任务池实测 2–8 个 ⇒ 开销极小 |

## 5. 风险与对策

| 风险 | 对策 |
|---|---|
| **伤害翻倍**（每回合 2 次调用） | `tickTurn()` 用 `TURN_ID` 守卫（本批核心） |
| 在自己回合把敌机打死，导致任务瞬间空编队 | 属正常；游戏的 `allAircraftLost()` 会收尾（AD-1 规格已按此设计） |
| 中途阵地被拆/被毁 | `airDefenseAt` 每回合实时重数 ⇒ 自动反映（r6d170 已观测到 `aaa=3→2`） |
| 判定链写错 | 复用 `ad_sim_v6.py`（14 用例）+ 新增本批门禁（含"守卫极性"断言）+ 行为级模拟器 |
| 开局闪退（VerifyError） | 新方法只有 `tickTurn/tickAll`（结构极简，无 check-cast 风险）；跑 `check_params/check_regtype/check_castorder` |

## 6. 本批**不做**的事

- 不做雷达参与开火（雷达仍只探测）、不做代际弹数/射程、不做建筑耐久（H2）、不做导弹动画（已定复用飞机现有动画）。
- 不改命中率/伤害数值（0.5 / 3.0）。
- 不改 `AirDefDiag` 的日志格式（这样两批数据可直接对比）。