# 调研 · AD-R0「只读诊断版」 第一轮：入口 → 出口 全量摸底

日期：2026-10-03 ｜ 批次 r6d169（计划）｜ 类：新增 `aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali`

---

## 1. 目标（本批要回答什么）

AD-1 实测到 **`nAD` 零行**（从未出现"有反导阵地 + 射程内有敌机"的省），但**不知道卡在哪一环**。本批只做**读操作**，把这条链的每一环数据打出来：

| 环 | 问句 | 本批用它回答的探针 |
|---|---|---|
| A | tick 有没有跑 | `nADT`（沿用）+ `nABOOT`（首次自证） |
| B | **反导阵地/雷达建筑有没有被识别** | `nADG`（全局）+ `nADA`（每个有阵地的省） |
| C | **全世界有没有"在任务里、已部署、还有活飞机"的敌机** | `nADM` |
| D | **射程 300px 到底卡掉多少** | `nADA` 里的 `inR=`（同省 + 300px 内的合格敌任务数） |
| E | **是不是国家没有机场 ⇒ 永不 tick** | `nADA` 里的 `A=`（该省主人国的机场数），`A=0` 即为 E 成立 |

---

## 2. 入口（唯一注入点）

```
GameThread_Turns.updateTurns…  (Game 线程, 每回合一次)
   └─ AirForceManager.getInstance()            // static
        └─ AirForceManager.updateAll()V         // 实例方法, .registers 4, 无参数
             ├─ demoLoadCfg()
             ├─ syncAllFromProvinces() / loadSave_Airforce()
             ├─ syncAirports() / syncRadar() / updateMissions() / updateAirCombat()
             ├─ for (civID : allAirports.keySet())  update(civID)V      ← ★ 只有"有空军基地的国家"
             ├─ syncAllDivisions() / repairAircraft() / dumpMissions()
             └─ return-void
```

**关键事实（逐字核实）**：
- `AirForceManager.allAirports:Map` 的 key 是 **civID**（`getAirportsForCiv` 用 `Map.get(Integer.valueOf(civID))`）⇒ `updateAll` 只对**有空军基地的国家**调用 `update(civID)`。
- `updateAll()` 开头逐字：
  ```
  .method public updateAll()V
      .registers 4
  <空行>
      invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->demoLoadCfg()V
  ```
  ⇒ **注入点选在 `.registers 4` 之后、`demoLoadCfg()` 之前**：方法最开头，不落在任何 `:label` 与 try 区间内，零副作用；`.registers 4` ⇒ 无需改寄存器（本批不传参）。

**为什么不挂 `update(I)V`**：那只会覆盖"有空军基地的国家"，正好会漏掉本批要诊断的 E 环。挂 `updateAll()` = 每回合一次全局视角。

---

## 3. 数据源（全部已逐字核实签名）

| 用途 | API | 备注 |
|---|---|---|
| 当前回合 | `Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I` | 静态 int，可直接 sget |
| 国家总数 | `Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;`（+ `iCivsSize:I`、`getCivsSize()I`） | 可用 `lCivs.size()` 兜底 |
| 省份总数 | `Laoc/kingdoms/lukasz/jakowski/Game;->iProvincesSize:I`（`lProvinces:Ljava/util/List;`） | ⚠ `getProvince(I)` 是**裸 List.get**，越界即抛 ⇒ 必须先判 `0 <= id < size` |
| 省对象 | `Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;` | |
| 省建筑表 | `Province;->buildings:Ljava/util/List;`（元素 `ProvinceConstructedBuilding`） | 逐项 `getBuilding()I` |
| 建筑 ID | `BuildingsManager;->AAA_BUILDING_ID:I`（反导阵地）、`RADAR_BUILDING_ID:I`（雷达）、`LONGRADAR_BUILDING_ID:I`（中层反导雷达）、`AIRPORT_BUILDING_ID:I` | 初值均为 `-0x1`（未定义）⇒ 先判 `>=0` |
| 省中心 | `Province;->getCenterX_Real()I` / `getCenterY_Real()I` | 与 AD-1 的射程口径一致 |
| 省主人 | `Province;->getCivID()I` | |
| 任务池 | `AirForceManager;->getInstance()` → `->activeMissions:Ljava/util/List;`（元素 `AirMission`） | **实例字段**，故经 `getInstance()` 取 |
| 任务关键字段 | `AirMission;->civID:I`、`->aliveAircraft:Ljava/util/List;`、`->airDivisionAtProvinceID:I`、`->state:AirMission$MissionState;`、`->type:AirMission$MissionType;` | `airDivisionAtProvinceID` 初值 `-1` = 未部署 |
| 机场数（按国） | `AirForceManager;->getAirportsForCiv(I)Ljava/util/List;` | 该国无机场时返回**空表**（不会 null） |
| 国家省份 | `Civilization;->getNumOfProvinces()I`、`->getProvinceID(I)I` | 本批**不使用**（改用"遍历全部省份 + 按 `getCivID` 归组"，更便宜且能看到无主省） |
| 日志 | `AirDbgLog;->dWrite(Ljava/lang/String;)V` | 写 `<sdcard>/Android/data/<pkg>/files/aircfg_diag.txt`；**免 debug 闸、免 500ms 节流**；内部 catch 异常不外抛 ✓ |

枚举序号（用于日志取值，避免多写字符串）：`MissionState` = ABORTED 0 / COMPLETED 1 / EN_ROUTE 2 / EXECUTING 3 / PLANNING 4 / RETURNING 5；`MissionType` = AIR_SUPERIORITY 0 / ATTACK_ARMY 1 / INTERCEPT 2 / PATROL 3 / STRATEGIC_BOMBING 4。

---

## 4. 出口（写什么、写多少）

每回合（= 每次 `updateAll()`）最多 6 类行，全部 `dWrite`：

```
nABOOT v=r6d169                                  # 仅首次调用，证明类加载 + 探针活着
nADM t=<turn> all=<任务总数> alive=<有活飞机> dep=<已部署(=airDivisionAtProvinceID>=0)> noDep=<alive-dep>
nADG t=<turn> pTot=<省数> aaa=<阵地总数> rad=<雷达总数> mid=<中层雷达总数> pAAA=<有阵地的省数> pRad=<…> pMid=<…>
nADA t=<turn> c=<省主人civ> p=<省id> aaa=<该省阵地数> A=<该国机场数> en=<该国敌方alive任务数> ed=<其中已部署> inR=<同省或≤300px 的合格敌任务数>   # 仅"有阵地的省"，上限 40 行
nADTRUNC c=<被截断的 nADA 行数>                                # 仅截断时出现
nADX <异常类:消息>                                              # 仅异常时
```

**限量**：`nADA` 每回合上限 **40** 行（静态计数器），超出只在末尾写一行 `nADTRUNC`。日志按"行是否出现过"判读，不依赖行数。

---

## 5. 本轮得到的、可直接引用的结论

1. **P3（没机场 ⇒ 不 tick）成立且有据可查**：`updateAll` 的循环键是 `allAirports.keySet()`。AD-R0 用 `nADA` 的 `A=` 字段就能指出"哪些国家的阵地永远不会开火"。
2. **P1（目标条件过窄）有明确的观测手段**：`nADM` 的 `alive` / `dep` / `noDep` 三数即可分辨"根本没有敌机" / "有敌机但都未部署" / "有已部署敌机"。
3. **P2（射程）有观测手段**：`nADA` 的 `inR` 与 `ed` 一对比，即知 300px 卡掉了多少。
4. 旧探针之所以哑火，是因为它们挂在**别的类/别的分支**（`adp` 在 `ProvinceDrawArmy$1.drawArmy`、`posD` 在战斗分支）或走 `dKey`（会被 `debug:0` 闸住）——本批全部改用**唯一入口 + dWrite**。