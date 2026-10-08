# 调研 · AD-R0「只读诊断版」 第二轮：拓展（上下游 / 边界 / 历史 / 成本）

日期：2026-10-03 ｜ 批次 r6d169（计划）

---

## 1. 上游（谁调用、什么时机、什么线程）

| 层 | 事实 | 对本批的影响 |
|---|---|---|
| `GameThread_Turns`（Game 线程） | 每回合调用一次 `AirForceManager.getInstance().updateAll()` | 探针**每回合跑一次**（不是每帧）⇒ 日志量可控 |
| `updateAll()` 自身有 4 个 try/catch 包（`syncAirports` / `syncRadar` / `updateMissions` / `updateAirCombat` / `update(civ)`） | 任一子步骤抛异常只记 `CFG.exceptionStack` 并继续 | 我们的注入点在**最前面**、且自带 try/catch ⇒ 不会破坏这些分支 |
| `LoadSavedGameManager` | `updateAll()` 里含"读档后一次性 restore"的门（`afRestored`） | 读档时也会调用一次 ⇒ 探针在"刚读档"时也会跑，属正常 |

**下游**：本批**没有下游**——探针不写任何游戏字段、不改任何返回值、不改变控制流。

---

## 2. 边界与不变量（本批必须成立的 8 条）

1. **只读**：不 `iput`/`sput` 任何**游戏类**的字段（只写 `AirDefDiag` 自己的静态计数器）。
2. **不越界**：访问 `Game.getProvince(id)` 前必须 `0 <= id < Game.iProvincesSize`（该方法内部是裸 `List.get`，越界即抛）。
3. **不空指针**：`AirForceManager.getInstance()`、`activeMissions`、`Province.buildings`、`AirMission.aliveAircraft`、`getAirportsForCiv()` 都可能为 null/空 ⇒ 全部判空。
4. **不改控制流**：不修改任何既有指令、不加/删/改任何既有标签；只在方法最开头**插入 1 行 invoke**。
5. **独立成方法**：主方法（`updateAll`）只留 1 行 `invoke-static {}`，全部逻辑在新类里（血案：内联探针会污染寄存器与类型流）。
6. **寄存器类型纪律**：String/对象与 int 不共用寄存器；`.registers` 的最后 k 个寄存器是参数寄存器（k = 参数个数）。
7. **探针通道**：一律 `AirDbgLog.dWrite`（免 `debug` 闸、免 500ms 节流）；**不使用 `dKey`**（会被 `debug:0` 整闸闸住），**不使用 `java.nio.file`**（在 /storage 上必失败）。
8. **限量**：每回合 `nADA` 行数上限 40，防日志爆炸（血案：早前 `RBM_DRAWN`/`dAF_IN` 单局 65MB）。

---

## 3. 成本评估（性能）

| 循环 | 规模 | 说明 |
|---|---|---|
| 省份扫描 | `iProvincesSize`（数千）× 每省 `buildings`（多为个位数） | 一次遍历即可；与游戏自身 `syncAllFromProvinces` 同量级 |
| 任务盘点 | `activeMissions.size()`（实测数十） | 每回合一次 |
| `nADA`（每有阵地的省）| 含一次"遍历任务"以算 `inR`（≤ `ed` 次距离计算） | 有阵地的省通常很少；上限 40 行 ⇒ 最多 40 次任务遍历 |
| 日志 | 每回合 ~5–45 行 | 每行一次 `FileWriter` open/append/close（`dWrite` 实现如此），量级可接受 |

⇒ 单回合开销 ≤ 一次省份全扫 + 数次任务遍历，**不会造成可感知卡顿**。

---

## 4. 历史（为什么这一轮这么设计——三次血案的直接后果）

| 血案 | 教训 | 本批的对应做法 |
|---|---|---|
| r6d161：判定块插在 `check-cast` 之前 ⇒ ART 拒整个 `Province` 类 ⇒ 开局闪退 | 插入位置必须合法、类型流必须对 | 注入点是**方法最开头、无标签、无 try 区间**；新类全部自查类型流 `check_regtype.py` + `check_castorder.py` |
| AD-1：探针全哑（`nAD` 零行） | 探针必须落在**真会执行的路径**上 | 挂在每回合必经的 `updateAll()` 开头，而不是某个分支 |
| 更早：`dKey` 被 `debug:0` 闸住 / NIO 读不到配置 | 通道要选对 | 全部 `dWrite` |
| 探针内联在主方法里 ⇒ 寄存器被占、被顺延 | 探针独立成方法 | 主方法 1 行 invoke，`.registers` 不动 |

**另外**：AD-1 期间已证伪"防空抛异常打断回合"（`nADX=0` / 412 次调用 0 异常），所以本批不再猜异常，直接数数。
**r6d139 的闪退（SIGSEGV in `libgdx-freetype` `FT_Load_Glyph`）与本 mod 代码无关**（栈里无我们的类），也与本批无关；但它提示"点军队/开菜单"会走字体加载 —— 本批不碰 UI。

---

## 5. 本批**明确不做**的事（划清边界）

- 不恢复开火（不算伤害、不 `recordLoss`、不改 `hp`）——那是 AD-R1/AD-1′。
- 不动 `AirDefense` 留档代码（留在 `r6s5/ad_disabled/`）。
- 不碰雷达/中层反导雷达的逻辑，不动 `AirForceManager` 既有的旧 AAA 段（"停在敌境机场每 tick −1hp"）。
- 不动 UI / 渲染 / 存档。
- 不加 `H1/H2`（统一打击入口、建筑耐久）——按用户决定"建筑耐久往后放"。

---

## 6. 预期的四种可能结论（决定 AD-R1 怎么修）

| 若观测到 | 结论 | AD-R1 对策 |
|---|---|---|
| `nADG` 里 `aaa=0` | 建筑根本没被识别（`AAA_BUILDING_ID` 未初始化 / 名字不匹配） | 修建筑 ID 匹配（`Buildings.json` 索引与名称） |
| `aaa>0` 但 `nADM ed=0`（没有"已部署"的敌机） | 目标条件过窄（P1） | 放宽目标口径（把"停在敌方机场的飞机"等情形纳入） |
| `ed>0` 但 `nADA inR=0` 普遍 | 射程 300px 不够（P2） | 改射程口径（同省必打 + N 环内必打） |
| `nADA` 里 `A=0` | 该国没机场 ⇒ `update(civID)` 永不调用（P3） | 把防空 tick 挪到全局入口（`updateAll` 或 `strikeTick_A1`） |
| 什么都正常（`ed>0`、`inR>0`、`A>0`） | 说明 AD-1 逻辑本身有别的缺陷（例如 `eligible` 判反） | 回到 r6d142 代码逐条对照真值表 |