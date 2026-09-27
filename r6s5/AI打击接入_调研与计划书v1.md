# AI 打击接入 · 调研与计划书 v1

- 日期：2026-09-24
- 项目代号建议：**B7 / AI-Air**（"让 AI 正式会使用空军"）
- 当前装机基线：`r5c024`（dex `74f43584449a3576d4f552b195889096`／apk `96f3cb85b124d387277e558bd4e2ddf9`）
- 相关既有档案：《B3-A1自动打击接活_具体方案书v1》（玩家侧自动打击，已落地）、《空战重做专案_设计v2》§附-2.3 AI 层

---

## 0. 结论速览（三条）

1. **AI 侧"造任务"的能力是现成的，而且一直在跑**：`AFM.updateAll()`（7160）每回合遍历所有文明 → `update(I)`（6910）→ `executeAIAssignment(I)`（6966）→ 对 `mode == Airport$Mode.AI` 的机场调 `executeAIAssignmentForAirport`（1021）。该方法**开战时已经会造战略轰炸任务**：
   `isAtWar(civID)` → `getEnemyProvincesInRange(ap, BOMBER)` → 随机取一个省 → `AirMission.createStrategicBombing(ap, pid, 0)` → `assignedAircraft` 非空才 `activeMissions.add(mission)`。
2. **真正的门在"结算端"**：`strikeTick_A1(civID)`（6894）开头就是
   `if (Game.player == null || civID != Game.player.iCivID) return;`
   ⇒ **只有玩家国的打击结算（a1Snap／a1Scan／a1bScan）会跑**。AI 造出来的轰炸任务即使在天上飞，也**不会走到"掉血／掉建筑"那一步**。
3. **好消息**：我们的结算实现基本是 **civ 参数化**的 —— `a1Scan(I)`（6108）、`a1bScan(I)`（6847）、`a1bPick(ap,civID)`（6491）、`a1bDispatch(civID,pid)`（6680）、`a1Dispatch(II)`（5860）都吃 `civID`/`pid` 参数 ⇒ **"让 AI 结算"很可能是"放开一道门 + 加几道闸"，而不是重写一套 AI 空战。**

> 结论：本项目**不是从零做 AI 空军**，而是 **①放开结算门 ②给 AI 补齐频率/视野/去重闸门 ③做对称与可感知性**。

> ⚠️ **v1.1 补录（2026-09-24 第二轮调研）**：新增三项重大发现 —— ①**AI 压根不会造飞机**（不是"打得不准"，是"根本没机"）；②**空战链本身已对称**（无玩家门）；③**难度系统**可直接当旋钮。详见 **§11 第二轮调研补录**（含 P0 广撒网探针矩阵）。阶段划分已按此修订为 **P0→P1 造机→P2 派发+结算→P3 空战/对称→P4 难度→P5 收尾**。

---

## 1. 现状清单（带行号，均已逐行读过）

### 1.1 已经在跑（AI 侧）
| 能力 | 位置 | 说明 |
|---|---|---|
| 每回合遍历全部文明的空军更新 | `AFM.updateAll()` 7160 → 循环 → `update(I)` 7281（带 try/catch）| 调用者：`GameThread_Turns:1335`（回合线程）|
| 机场级更新 | `AFM.update(I)` 6910 | → `executeAIAssignment(I)` 6966、`updatePatrols(I)` 6967 |
| AI 派发（**仅 mode==AI 的机场**） | `executeAIAssignment(I)` 2795 | 遍历 `getAirportsForCiv(civID)`，`if (airport.mode == Airport$Mode.AI)` 才派 |
| AI 派发内容 | `executeAIAssignmentForAirport(Airport)` 1021 | **战时**：随机选一个"航程内敌省" → `createStrategicBombing` → 任务非空则入 `activeMissions`；**非战时**：`getRandomBorderProvince` + FIGHTER 航程内省（巡逻/制空路线） |
| AI 自动拦截 | `updateAIAutoIntercept()` 2900 | R4c106/107/109 已做：对称化 + `aiRadarVision`（4031）/`aiVisRadarPass`（4062）/`aiVisAirportPass`（4140）雷达视野门 |
| 任务类型枚举 | `AirUnit$Mission` | AIR_SUPERIORITY / ATTACK_ARMY / INTERCEPT / PATROL / STRATEGIC_BOMBING（5 态）|
| 任务工厂 | `AirMission.createStrategicBombing` / `createIntercept` / `createAirSuperiority` / `createAttackArmy` | 均存在（后三个曾被记为"0 调用者"）|
| 选靶/可达件 | `getEnemyProvincesInRange` 1362、`getProvincesInRange` 4250、`getRandomBorderProvince` 4383、`canReach` 2709、`isInRange` 1636 | 私有/公开混用，**同包内可用** |
| 配额/去重件 | `getAirQuota` 1282、`getPatrolQuota` 1459、`hasActivePatrol` 1490、`pickIdleDivKey` 1878 | 已被 `tryPatrolForAirport`（2524）使用 |

### 1.2 玩家侧（我们已做，且是"参照实现在此"）
| 能力 | 位置 | 备注 |
|---|---|---|
| 打击 tick | `strikeTick_A1(civID)` 6894 | **玩家门就在这里**；被 7085 调用（方法收尾于 7088）|
| 攻机对军 | `a1Snap`／`a1Scan(I)` 6108／`a1Dispatch` 5860 | civ 参数化 |
| 轰机对建筑 | `a1bScan(I)` 6847／`a1bPick(ap,civID)` 6491／`a1bDispatch(civID,pid)` 6680 | civ 参数化；`a1bScan` 尾部另有一处 `Game->player` 引用（**待定：是门还是比较**）|
| 玩家"自动打击"开关 | `Airport.autoStrikeOff` ／ `Save_Airport.strikePaused`（r5c020/r5c023 已存档）| 语义＝"该机场关闭自动打击"|

### 1.3 明确缺的（本项目的活）
| # | 缺口 | 证据 |
|---|---|---|
| **G1** | **AI 国的打击结算不跑** | `strikeTick_A1` 6894 玩家门 |
| **G2** | AI 机场是否处于 `mode==AI` 未知（若 AI 国机场默认别的模式，则 1021 根本不被调用）| 需 P0 探针 |
| **G3** | AI 出击**没有任何频率/上限门**：1021 里是"随机取一个敌省就造"，没有概率门、没有每回合上限、没有去重（`hasSameTargetInFlight` 只在玩家选靶层有）| 1021 全貌 |
| **G4** | **情报/视野门**：AI 选靶用的是 `getEnemyProvincesInRange`（航程内＋非本国），**不看雷达视野** ⇒ 若直接放开 G1，AI 会"全知轰炸" | 1021 ＋ `aiRadarVision` 4031 只在拦截链路用 |
| **G5** | 性能：`a1Scan`/`a1bScan` 是全任务扫描；若对所有文明、每 tick 都跑，开销×civ 数 | 6894 调用点频率待测 |
| **G6** | 可感知性：AI 炸玩家时玩家没有任何提示（战报/警报），体验上像"凭空掉血" | 现状 |
| **G7** | 参数化：`AIR_AI_INTERCEPT_FIRST_CHANCE`（GameValue_Air）等 AI 参数**未接线**，难度旋钮没有落点 | 设计v2 §附-2.3 |

---

## 2. 目标与范围

### 2.1 目标（一句话）
**让 AI 文明真正会用空军：在合理闸门下，AI 的战略轰炸／对军打击／拦截能落地生效，且与玩家规则基本对称、可被玩家感知。**

### 2.2 红线（不做）
1. **不改玩家链的既有手感**：玩家自动打击的选靶/结算/开关语义不变（只允许"共用代码路径"的重构级改动）。
2. **不升寄存器**（工具链 smali 2.5.2 硬顶 v15）——新增状态用静态字段/空闲寄存器。
3. **不新增存档字段**，除非确有必要（必要时要写向后兼容的 null 保护，同 r5c024 范式）。
4. **不做"AI 全知"**：任何 AI 选靶必须过视野/情报门（G4）。
5. **不碰** `age.of.history3.TNO.yunsi`。

### 2.3 影像面（会动到的文件）
- `aoc/kingdoms/lukasz/map/battles/AirForceManager.smali`（主战场）
- 可能：`AirMission.smali`（任务层闸门/提示）、`GameThread_Turns.smali`（节拍，**尽量不动**）
- 探针：`AirDbgLog.smali`（复用 `e5i/e5s`，新增 `nAI*` 系列）

---

## 3. 设计方案（三层 + 闸门）

### 3.1 派发层（回合级，AI 造任务）
现状：`executeAIAssignmentForAirport` 1021。**改造点（P1）**：
```
战时分支（保留 createStrategicBombing）＋ 新增闸门：
  1) 战争门：isAtWar(civID)                       # 已有
  2) 概率门：rnd.nextFloat() < AI_STRIKE_CHANCE    # 新增（旋钮，见 §5）
  3) 频率门：本回合该国出击数 < AI_STRIKE_PER_TURN # 新增（静态计数，回合重置）
  4) 飞机门：pickIdleDivKey(ap, BOMBER) 非 null   # 复用 1878（现版本未做，是"造了任务但可能没飞机"）
  5) 视野门：目标省 ∈ aiRadarVision 口径（G4）      # 复用 4031 一套
  6) 去重门：hasSameTargetInFlight(pid, BOMBER)    # 新增（镜像玩家侧同款）
  7) 造任务 → assignedAircraft 非空 → activeMissions.add   # 已有
```
> 非战时分支（FIGHTER 巡逻/制空）**保持原样**，本项目先不扩。

### 3.2 结算层（帧级，让 AI 的伤害落地）
**核心改动（P1，一行级）**：把 `strikeTick_A1(civID)` 6894 的玩家门改成 **"只跳过玩家自己（避免与玩家链重复）＋只对处于战争的文明跑"**：
```
现状：if (player == null || civID != player.iCivID) return;
改为：if (player != null && civID == player.iCivID) return;   # 玩家仍走原链（别重复结算）
      if (!isAtWar(civID)) return;                            # 和平国不跑，省性能
      # 另外：把"是否跑 AI"交给 §3.3 的节拍/难度开关
```
⚠️ 注意两点（P1 必核）：
- `a1Snap/a1Scan/a1bScan` 内部若有**隐式假设"只有玩家会有任务"**的代码（例如直接把结果写进玩家 UI 面板），要一并查出并隔离。
- `a1bScan` 尾部那处 `Game->player` 引用，**先定性**（门 or 比较）再动。

### 3.3 闸门层（节拍 / 性能 / 难度）
- **节拍**：AI 结算不必每 tick 跑 —— 用静态计数器错峰（例如每 N tick 跑一个 AI 国，`civID % N == tick % N`），把 G5 的性能开销压成常数级。
- **难度旋钮**（P3）：概率、每回合上限、是否允许对建筑（战略轰炸）／对陆军（攻机）—— 建议用 `GameValue_Air` 新键，**P1 先用常量**（避免一次改两处）。
- **开关**：给"AI 空军"一个总闸（先做静态常量，P3 再考虑接设置界面）——出问题能一键回退。

### 3.4 对称与可感知（P2）
1. **对称**：AI 打玩家的伤害公式/防御减免＝玩家打 AI 同款（复用同一 `a1bDispatch`/`a1Dispatch`，不另写公式）。
2. **提示**：AI 轰炸命中玩家时给玩家一个可见信号。**两种落点（P2 时二选一）**：① 复用**引擎既有**的 `aoc/kingdoms/lukasz/map/battles/BattleReport`（＋`InGame_BattleReport` UI，**代码里现成**）追加一条"XX 国轰炸机空袭 YY 省"；② 我们自己的 **B5③ 战报最小版尚未做**（仍在后置线），若届时仍未做，就先只落日志/探针，不阻塞本项目。
3. **AI vs AI**：是否允许（G4/待拍板），默认**允许**但要用视野门限制，避免"AI 互相无脑互炸"导致世界地图被炸空。

---

## 4. 分阶段实施（建议）

| 阶段 | 内容 | 产出 | 验收 |
|---|---|---|---|
| **P0 诊断批（广撒网）**（只读探针，0 行为改动）| 八组探针 `nA1e/nA2m/nA3b/nA4d/nA5t/nA6c/nA7s/nA8f`（矩阵见 §11.4）| `r5c025`（探针批）| 抓样判读："AI 到底卡在哪一门"定案（**是否有机场/有飞机/造不造/派不派/结算不结算**）|
| **P1 AI 造机**（新增，**最大缺口**）| 给 AI 机场队列塞机型（`startBuild` 无资源门/无玩家门，只查容量）＋ 成本闸（难度相关）| `r5c026` | AI 机场 `totalAircraft` 随回合增长；抓样能看到 AI 机型与数量变化 |
| **P2 派发 + 结算** | 放开 `strikeTick_A1` 玩家门 ＋ 补 3.1 的五道闸（概率/上限/飞机/视野/去重）| `r5c027` | AI 轰炸**真的掉血/掉建筑**；玩家被炸有日志；无闪退；帧率无可见下降 |
| **P3 空战与对称** | 验证 AI 机参与空战（链已对称，缺的是"有飞机"）＋ 提示可感知（引擎自带 `BattleReport`）| `r5c028` | AI↔玩家、AI↔AI 空战有实据；玩家能看到提示 |
| **P4 难度旋钮** | 出动频率/上限/造价/伤害 挂 `Game.difficultyID`（§11.3）| `r5c029` | 难度越高 AI 空军越强；可一键关 |
| **P5 收尾** | 清 P0~P4 探针、归档、写专档 | — | 与 E3 清探针一并做 |

> 每批必走门禁（现行流程）：`补丁 → arity/selfcheck2 → assemble → 八件套 → 源码 diff → incr_audit →（若动迭代器循环）check_loopexit → build`（先 `df -h /data` ≥3G）`→ 装机（autotap）`。

---

## 5. 参数与旋钮（初值建议，P3 可调）

| 参数 | 建议初值 | 位置 |
|---|---|---|
| `AI_STRIKE_CHANCE`（每回合每机场出击概率）| 0.15 | 静态常量 → 后续 `GameValue_Air` |
| `AI_STRIKE_PER_TURN`（每国每回合上限）| 1 | 静态计数（回合开始重置）|
| `AI_STRIKE_ENABLED`（总闸）| true | 静态常量 |
| AI 结算节拍 | 每 4 tick 跑一个 AI 国（错峰）| §3.3 |
| 视野门 | 必须过（同玩家拦截口径）| `aiRadarVision` 4031 |

---

## 6. 探针与门禁

- **探针命名**：`nAI1`…`nAI5`（走 `dKey` 通道，一次性打满，无分支块，`StringBuilder` 拼接）。
- **判据纪律**：写 `if-*` 判定块前先找引擎同语义范式对齐 + 手写 4 情形模拟表；打印前先确认寄存器定义域。
- **本项目的"新门禁"要求**：凡新增"循环/迭代器"改动跑 `check_loopexit.py`；凡新增探针/块跑 `incr_audit.py`（只审增量）。
- **抓样口径**：每批装机后重置 `live_baseline.txt`，抓样后 `grep -ao 'nAI[0-9] [^ ]*'` 对账。

---

## 7. 验收口径（先定好，免得事后扯皮）

**P1 验收（必须全中）**
1. AI 国（与玩家开战的那个）**出现了** `createStrategicBombing` 成功日志（探针 `nAI3`，`assignedAircraft>0`）。
2. 该任务在玩家省上**真的造成伤害**：陆军规模下降（对军）或建筑受损（战略），且能在 `a1b*` 日志中看到 `civID != playerCivID` 的记录。
3. 玩家**没有被凭空打击**：无视野/无航程的目标不出现。
4. 连续跑 20 回合：无闪退、无 CME、性能无可见退化（帧率/卡顿观察）。
5. 玩家自己那套自动打击**手感不变**（回归测试：玩家机场开 OFFENSIVE 仍按原规则出击）。

**回滚预案**：只保留 `build_apk/dbg_signed77_v119_r5c024.apk`（现役）——任何异常立即回装 r5c024。

---

## 8. 风险清单

| 风险 | 等级 | 缓解 |
|---|---|---|
| 放开 tick 门后 AI 全知轰炸，体验崩 | 高 | 视野门（G4）先做好，再放门；总闸可关 |
| 性能（a1Scan/a1bScan × 全文明 × 每 tick）| 中 | 错峰节拍 + 只跑交战国 |
| 结算路径里有"玩家专属假设"导致闪退/写坏 UI | 中 | P0 先定性；P1 先小范围（仅一个 AI 国）验证 |
| 与玩家链重复结算（同一次打击算两遍）| 中 | 玩家 civID 仍然 `return`，不并入 AI 链 |
| 存档兼容 | 低 | 本设计**不新增存档字段** |
| 世界被炸空（AI↔AI 无限制）| 中 | 上限 + 视野门 + 待拍板第 4 条 |

---

## 9. 待你拍板（开工前请答复）

1. **AI 强度定位**：AI 也要能**炸掉玩家建筑/陆军**（对称），还是只做"骚扰"（低倍率）？
2. **AI vs AI**：允许 AI 之间互相轰炸吗？（我倾向允许，但受视野门 + 上限约束）
3. **每回合上限**：每国 **1 次**出击是否合适？（还是按机场数给，如"每 2 个机场 +1"）
4. **视野门**：AI 必须"雷达看到"才能打（推荐），还是给 AI 一个"情报容差"（如可视范围 ×1.5）？
5. **P0 是否先做只读诊断批**（强烈建议：先看 AI 到底卡在哪一门，再动门）
6. **难度旋钮**：P1 先用常量、P3 再接 `GameValue_Air` —— 可以吗？
7. **玩家可感知性**：AI 空袭要不要出**战报条目**（P2）？还是先静默（更省事）？
8. **总闸**：要不要顺手做一个"AI 空军开关"（静态常量起步）？

---

## 10. 附：一句话给"下一台电脑"的交接

> AI 造任务的能力早就有（`executeAIAssignmentForAirport` 1021，每回合经 `update(I)` 6966 跑）；**卡点在 `strikeTick_A1` 6894 的玩家门**——只有玩家国的打击会被结算。本项目＝放开这道门 + 补闸门（概率/上限/飞机/视野/去重）+ 做对称与提示。**先做 P0 探针批定案，再动门。**

---

# 11. 第二轮调研补录（2026-09-24，全部带行号实证）

## 11.1 重大发现①：**AI 根本不会造飞机**（比"不会炸"更靠前的一层）
| 证据 | 内容 |
|---|---|
| `Airport.startBuild(AirType)` 的**唯一调用者** | 全树只有一个：`menusInGame/AirForce/InGame_AirForceOptions$BtnBuild:78` ⇒ **玩家 UI 按钮** |
| `AI/` 目录是否碰空军 | `grep -rln -i Airport\|AirForce\|AirUnit aoc/kingdoms/lukasz/jakowski/AI/` ⇒ **空结果**（AI 完全不碰空军）|
| AI 建造体系内容 | `AI/Build/` 只有 17 个类，全是建筑/研究/经济（`AI_BuildEconomy`／`AI_BuildResearch`…），**没有空军** |
| 但**造机推进是通用的** | `Airport.updateBuild()`（464）由 `AFM.update(I)` **6935** 调用 ⇒ **对所有文明都会推进**；到点 `new AirUnit(buildingType, civID)` 入 `aircraft` 表（**不扣钱、不看 civ**）|
| `startBuild` 内部闸门 | 只有两条：队列 `size() < 3`（793 行口径：`if-lt v0, 3 ⇒ return false`）与 `totalAircraft + 队列 + 在建 ≥ maxCapacity ⇒ return false`；**无资源检查、无玩家门** |

⇒ **推论（P1 就是干这个）**：只要把机型塞进 AI 机场的 `buildQueue`，`updateBuild` 会自动把它造出来。**"AI 出飞机的速度/便宜"＝我们控制塞入频率 + 造价扣费**。

## 11.2 重大发现②：**空战链本身已经是对称的**（无玩家门）
逐方法审计 `Game->player` 出现情况：
| 方法 | 玩家门 | 结论 |
|---|---|---|
| `AirMission.applyAirDamage`（5640）| 无 | 对称 ✔ |
| `AirMission.huntCombatHalf`（3961）| 无 | 对称 ✔ |
| `AirMission.airCombatTick`（5373，调用者 4757）| 无（只比 `civID`）| 对称 ✔ |
| `AFM.airCombatOne`（180）| 无（注：注释写 `# AA disabled: airCombatOne short-circuit`）| 对称 ✔ |
| `AFM.dispatchSweep`（3600）| 无 | 对称 ✔ |
| `AFM.airCombatAirport`（100）| 无 | 对称 ✔ |
| `AFM.dispatchAutoIntercept`（3279）| 有 `Game->player`，但是**兜底**：`if (dspCivForce > 0) civ = dspCivForce; else civ = player.iCivID`（R4c106 对称化覆盖字段）| **不是硬门** ✔ |
| `AFM.updateAIAutoIntercept`（2900）| 同上（`dspCivForce` 兜底）| 可对称 ✔ |
| `AFM.updateAirCombat`（7090）| 无；由 `updateAll` 链 **7250** 调（与 `updateMissions` 7244 同链）| 对称 ✔ |

⇒ **空战层不需要重做**；AI 不参与空战的原因**不是"门"，而是"AI 机场里根本没飞机"**（§11.1）。这正是 P1 的因果链。

## 11.3 重大发现③：**难度系统可直接当旋钮**
- 数值源：`Game.difficultyID:I`（`Game.smali:144`，写在 792）
- 表：`GameValues.difficulty:GameValue_Difficulty`（`GameValues.smali:118`），字段：
 `BONUS_DURATION:I`／`CAN_VASSAL_PROCLAIM_INDEPENDENCE_AGAINST_PLAYER:[Z`／`CONSTRUCTION_COST:[F`／`CORE_COST:[F`／`INCOME_PRODUCTION:[F`／`LEGACY:[F`／`MANPOWER:[F`／`MONTHLY_INCOME:[F`／`NAME:[Ljava/lang/String;`／`NORMAL_ID:I`／`RECRUIT_ARMY_COST:[F`／`RECRUIT_ARMY_TIME:[F`／`REGIMENTS_LIMIT:[I`／`RELIGION_COST:[F`
- 读取点（全树 17 处 `Game->difficultyID`）：`Game.initDifficulty()` **11543+**（把表值套用全局）、`AI/AI_Manager:1248`、`AI/Diplomacy/AI_Player:519`、`AI/Diplomacy/AI_VassalLiberty:231`、`map/CoalitionManager:791`
- **难度选择入口**：`menus/NewGame/NewGame_Settings`（多处读 `GameValues->difficulty`）⇒ **是"开局新游戏设置"里的难度**（未搜到局内可改难度的 UI，**需你确认**）
- 旋钮映射建议（P4）：
 | 想调什么 | 用什么 |
 |---|---|
 | AI 出击频率/每回合上限 | **自建表**由 `difficultyID` 索引（建议 `[0..N-1]` 直接读，不新增存档）|
 | AI 造飞机"便宜" | 复用 `CONSTRUCTION_COST[id]`（既有建造费倍率）或自建"AI 机价倍率"；扣钱走 AI 国金库 |
 | AI 收入 | 复用 `INCOME_PRODUCTION[id]`／`MONTHLY_INCOME[id]` |
 | AI 伤害倍率 | **自建倍率表**（不要改全局伤害公式，避免影响玩家手感）|
- 档数：由 `NAME[]` 长度决定（运行时来自 `CFG.FILE_GAME_VALUES_DIFFICULTY` 的 JSON）⇒ P0 探针要把 `difficultyID` ＋ `NAME[id]` 打出来。

## 11.4 P0 广撒网探针矩阵（八组，按你的要求"和上次一样广撒网"）
> 原则：**只读、不改行为**；探针一律无分支（纪律②）；走 `dKey` 通道；一次性把可分辨项全打进去。
| 组 | 探针名 | 打点位置 | 内容（每条都要能独立分辨"卡在哪一门"）|
|---|---|---|---|
| 1 | `nA1e` | `AFM.update(I)` 入口 | `civ=`／`apts=`（该文明机场数）／`pl=`（玩家 civ）／`diff=`／`lvl=`（机场 mode 分布串）|
| 2 | `nA2m` | `executeAIAssignment(I)` 循环内 | `civ=`／`ap=`／`mode=`（该机场 mode）→ **证明 AI 机场是否处于 `AI` 模式** |
| 3 | `nA3b` | `Airport.updateBuild()` 头部 | `civ=`／`ap=`／`q=`（队列长）／`bt=`（在建机型）／`rem=`（剩余回合）／`tot=`（`totalAircraft`）→ **AI 机场队列是否推进** |
| 4 | `nA4d` | `executeAIAssignmentForAirport` | `civ=`／`war=`（开战否）／`cand=`（候选省数）／`mk=`（任务是否创建）／`ac=`（`assignedAircraft` 数）／`k=`（失败码）→ **AI 是否真的造任务、为什么失败** |
| 5 | `nA5t` | `strikeTick_A1` 入口 | `civ=`／`pl=`（可区分"只跑玩家"）／`n=`（本 civ 任务数）
| 6 | `nA6c` | `AirMission.airCombatTick` 入口 | `mid=`／`civ=`／`opp=`（是否找到交战方）／`k=`（结算出口码）→ **空战里是否有 AI 机参与** |
| 7 | `nA7s` | `AFM.updateAirCombat()` 每帧汇总 | `ms=`（任务总数）／`byciv=`（按 civ 计数串）／`apts=`→ 一帧全景快照 |
| 8 | `nA8f` | `Game.initDifficulty()` 之后 ／ `AFM.update(I)` 首帧 | `diff=`／`nm=`（难度名）／`cc0=`（`CONSTRUCTION_COST[0]`）→ **难度读数（供 P4 用）** |
**判读表（P0 出结果后直接照此定案）**：机场数=0 → 卡在"AI 没有机场"；有机场但 mode≠AI → 卡在 mode；有队列但不推进 → 卡 `updateBuild` 链；造了任务但 `ac=0` → 卡"没飞机"；`nA5t` 只有 `civ==pl` → 卡结算门。

---

# 12. 拍板归档（用户 2026-09-24 已答复）
| # | 问题 | 用户答复 | 落到哪 |
|---|---|---|---|
| 1 | AI 强度定位 | **要能真炸掉玩家建筑和陆军**（对称，不做"无害骚扰"）| P2 |
| 2 | AI 是否涉及空战 | **要**（"你再去调一下他的空战"）⇒ 已审计：空战链无玩家门，**缺的是 AI 没飞机** | P1→P3 |
| 3 | AI vs AI | **允许** | P2/P3 |
| 4 | 视野门 | **按推荐：必须雷达看到才能打** | P2 |
| 5 | P0 是否先做 | **先做诊断批，且"和上次一样广撒网"** | P0（八组探针）|
| 6 | 难度 | **用游戏难度选项**调 AI 出动频率／造机成本／伤害之一或组合 | P4（§11.3）|
**新增待确认（P1 开工前）→ ✅ 已全部答复（2026-09-24）**：
1. AI 造飞机**要不要扣钱**：**要扣**（用户："那AI造飞机肯定要扣钱啊"）⇒ P1 必须实现"扣 AI 国金库 + 上限"，不许免费无限造。
2. **难度以开局为准**（用户："难度肯定以开局为准"）⇒ P4 直接读 `Game.difficultyID`，不引入局内改难度 UI。
3. **AI 机场造什么机型＝按 难度／机场 `level`／时代 的小表**（用户："第三项我同意"）⇒ P1 落地该表。

---

# 13. 全量复核调研（2026-09-24，第二轮后审计；"防逻辑写错"专项）
> 目的：把 §3/§11 设计所依赖的**每一条假设**逐条钉死（读实代码，不靠推断）。结论写在"判定"列。

| # | 待验假设 | 复核方式 | 判定 |
|---|---|---|---|
| A1 | `AFM.update(I)` 是否对每个文明每回合调用 | `updateAll()` **7256–7281** | ✅ **是**，但集合＝**`allAirports.keySet()`** ⇒ 只对"有机场登记的文明"更新（没机场的国不进循环）|
| A2 | `updateBuild()` 调用点是否在 `update(I)` 内且无 civ 过滤 | `update(I)` 6910 开头 | ✅ **是**：`getAirportsForCiv(civID)` → 循环 → `updateBuild()`，**对所有文明一视同仁** |
| A3 | `isAtWar(I)` 是否"恒 false 的坏方法" | 方法体 1599–1622 | ✅ **不坏**：遍历 `Game.lCivs` 调 `DiplomacyManager.isAtWar(p1,i)`，任一为真即 true（B3-A1 的旧记录已过时）|
| A4 | `Airport.buildQueue` 构造是否非 null | `Airport.<init>` 128 | ✅ **非 null**（`new ArrayList`）；`aircraft` 表也已按 4 个 AirType 预建空表（104–118）|
| A5 | `Airport.mode` 默认值／赋值点 | `<init>`142 ＋ 全树赋值点 | ⚠️ **默认＝`OFFENSIVE`**（不是 AI）；赋值点仅：`toggleAirportPatrol`5607/5616、玩家 UI `BtnMission`106/123/138/257、存档 4158/416 ⇒ **没有任何代码会把 AI 国机场设成 `Mode.AI`** |
| A6 | AI 金库与扣费范式 | `Civilization.fGold:F`（115）；`AI_Build` 403/442 读 `fGold`；`BuildingsManager$Buildings.CostGold`；`AI/Values/AI_ValuesBuild` 常量类 | ✅ **有**：`civ.fGold`（float）＋ "阈值常量类"范式 ⇒ P1 扣费照此写 |
| A7 | 机型与建造时间 | `AirUnit$AirType`；`Airport.getBuildTime` 158 | ✅ 机型 **4 种：ATTACKER／BOMBER／FIGHTER／INTERCEPTOR**；`getBuildTime`＝`AircraftDataManager.types[type.ordinal()].ConstructionTime`（缺省 3）|
| A8 | `maxCapacity`／`level` 来源 | `<init>` 78–90 | ✅ `level = 构造参数`（登记时**恒定传 1**，见 A9）；`maxCapacity = level×20`；`radarRange = level×20+200` |
| A9 | 登记时是否白送飞机 | `registerAirport` 4908–5007 | ✅ **白送，且只送 AI**：`INTERCEPTOR×4` ＋ `FIGHTER×4`，`totalAircraft = 8`；**`BOMBER`／`ATTACKER` 一架都不送**（玩家路径直接跳过）|
| A10 | `strikeTick_A1` 调用方与频率 | 所属方法边界 | ✅ 调用点 **7085 在 `update(I)` 内** ⇒ **回合级、每文明一次**（不是帧级）⇒ 放开 AI 门**性能无忧** |
| A11 | 任务工厂签名 | AirMission 方法表 | ✅ `createStrategicBombing(Airport,I,String)`／`createAttackArmy(Airport,I,I,String)`／`createIntercept(Airport,List,String)`／`createSweep`/`createPatrol`/`createAirSuperiority`；**第 3 参是 divKey 字符串，可传 `0`（null）** |
| A12 | 是否还有其他 AI 空军入口 | 全树造任务调用点 | ✅ **只有** `executeAIAssignmentForAirport`（1069）一个 AI 入口；其余为玩家链（`createMissionForClick` 812/821、`a1Dispatch` 5936、`a1bDispatch` 6721、`dispatchAutoIntercept` 3451）|

## 13.1 🔴 复核带来的三条**设计修正**（原 §3 设计按此改）

**修正①：AI 派发门（`mode==AI`）在默认游戏里永不成立**
`Airport.<init>` 默认 `OFFENSIVE`，而全树**没有任何代码**把 AI 国机场设成 `Mode.AI`（`Mode.AI` 只出现在 `executeAIAssignment` 的判断与存档字段里）。
⇒ P1/P2 必须**改判据**：AI 国机场不再依赖 `mode==AI`（建议：`civID != player.iCivID` 即视为 AI 托管），**或**在 `registerAirport` 给 AI 机场显式置 `Mode.AI`。⚠️ 这是"AI 从来不出击"的**第二道门**（第一道是没轰炸机，见修正②）。

**修正②：AI 没有轰炸机，所以"AI 轰炸分支"必然空手而归（因果链闭合）**
`executeAIAssignmentForAirport` 战时分支：`createStrategicBombing` → `assignedAircraft` 为空则**丢弃任务**。
而 `createStrategicBombing` 只从机场 `BOMBER` 池取机，AI 机场**只有 4 拦截 + 4 战斗**。
⇒ **P1（AI 造机）是 P2（AI 能炸）的前置**，顺序不能颠倒；且 P1 的机型小表必须**包含 BOMBER/ATTACKER**。

**修正③：`syncAllFromProvinces` 会重建全部机场 ⇒ 一次性写入会被抹掉**
调用者：`updateAll` 7195（首帧 GATE 后）、`InitGame:21234/21253`、`Menu_LoadSavedGame:522`；方法体 5304 开头就是 `allAirports.clear()`，然后按省建筑重新 `registerAirport`（⇒ 队列清空、飞机重置为 8 架）。
⇒ **P1 的"给 AI 补队列"必须是每回合幂等动作**（放在 `update(I)` 内），**不能做成一次性事件**（否则读档/首帧就被清）。这也是"AI 永远只有拦截机+战斗机"的机制解释。

## 13.2 复核后确认的**项目顺序（最终）**
```
P0 诊断（八组探针，含验证上述三条修正）
  └─► P1 AI 造机：每回合幂等补队列 + 扣 fGold + 上限（容量 level×20 / 队列<3）
        └─► P2 AI 派发：改判据（修正①）+ 补闸门（视野/频率/去重）+ 放开 strikeTick_A1 玩家门
              └─► P3 空战/对称/提示（空战链已对称，缺的只是飞机）
                    └─► P4 难度旋钮（difficultyID，开局为准）
                          └─► P5 收尾清探针
```

## 13.3 P0 探针增补（因复核新增，必须打上）
在 §11.4 八组基础上，**每组各加一项"分型飞机计数"**（用于验证 A9／修正②）：
| 增补 | 打点 | 内容 |
|---|---|---|
| `nA3b` ＋ | `Airport.updateBuild()` | 追加 `it=`（INTECEPTOR 数）／`ft=`（FIGHTER）／`bt=`（BOMBER）／`at=`（ATTACKER）／`tot=` ⇒ **期望初始为 4/4/0/0 且 tot=8**（若 BT/AT 恒 0 ⇒ 修正②成立）|
| `nA2m` ＋ | `executeAIAssignment(I)` | 追加 `mode=` 分型串（该文明所有机场 mode 的去重串）⇒ **期望 AI 国全为 `OFFENSIVE`**（若如此 ⇒ 修正①成立）|
| `nA4d` ＋ | `executeAIAssignmentForAirport` | 追加失败原因码（`k=`）：0 ok／1 未开战／2 空候选／3 造任务但 `assignedAircraft` 空（**预期最常见＝3**）／4 已在飞 |
| `nA9r`（新） | `registerAirport` 尾部 | `civ=`／`pl=`（是否 AI 分支）／`it=`／`ft=` ⇒ **实证"白送 4+4 只给 AI"** |
| `nA0q`（新） | `syncAllFromProvinces` 尾部 | `n=`（重建的机场总数）／`byciv=` ⇒ **实证"重建把队列/飞机重置"**（修正③）|

## 13.4 复核结论一句话
> 前两轮说的"AI 不会用空军"**不是一句话，而是三道串联的门**：**①AI 机场默认 `OFFENSIVE`（派发门不成立）→ ②AI 没有 BOMBER/ATTACKER（即使派发也空手）→ ③打击结算 `strikeTick_A1` 只跑玩家**。
> 三道门顺序解决：**P1 造机（补 ②，且每回合幂等以对抗重建 ③syncAll）→ P2 派发（改 ① 判据 + 闸门）→ P2 结算（放开 ③）→ P3 空战/对称 → P4 难度**。

---

# 14. P0 诊断批（r5c025）结果 —— 实测实证（2026-09-24）

## 14.1 本批信息
| 项 | 值 |
|---|---|
| 装机基线 | dex `7a3b082808c153c56658fa756c18dc6c`／apk `c6928c1d57895526b67c4db57db5a73e`（设备侧 DEX_MATCH=1／APK_MATCH=1）|
| 抓样 | `r6s5/cur_r5c025.txt`（28.9 MB，`nE5 nA*` 记录 **14879** 条）|
| 探针对账脚本 | `r5c025_analyze.py`／`r5c025_analyze2.py` |
| 用户测试条件 | 玩家给（某文明）机场塞了 **3 架轰炸机**；测试期间**全部停战** |

## 14.2 实测结果（全部来自本样本，非推断）
| # | 观察 | 数据 | 结论 |
|---|---|---|---|
| 1 | **只有 1 个文明机场被登记** | `nA3b` 只出现 civ=**73**，机场＝6258／6259／6335／6338；`nA1e` 只出现 `(civ=73, apts=4)` | 在该存档里**只有 civ73 有机场**；`updateAll` 的 civ 循环（＝`allAirports.keySet()`）因此只跑 1 个文明 |
| 2 | **所有机场 mode 恒为 OFFENSIVE** | `nA3b mode=` 计数：`{1: 1184}`（Airport$Mode：0=AI／1=OFFENSIVE／2=PATROL）| 🔴 **修正①实证成立**：**没有任何机场处于 `Mode.AI`** |
| 3 | **AI 派发分支从未被进入** | `nA4d`（`executeAIAssignmentForAirport` 入口）**0 条**；`nA4f` 0 条；`nA2m` 0 条（其插桩点落在 `mode==AI` 分支内）| 🔴 **派发链路整条是死路**：`executeAIAssignment` 的 `if (mode == Mode.AI)` 永不成立 ⇒ 连"造任务"这一步都不会发生（与是否开战无关）|
| 4 | **AI/玩家的 civ 交替出现** | `nA1e pl=` 序列：`226,226,226,73×7,226×17,73×3,226…`（测试期间换过存档/读档）| 说明存在 **player=226** 的时段；该时段里 civ73＝**非玩家（AI）文明** |
| 5 | **AI 文明确实能有机场与飞机** | 在上条时段，civ73 的机场仍在被更新（`updateBuild` 每回合推进）；各机场机型峰值：`ap=6259 ft=69`、`ap=6335 bm=4`、`ap=6338 bm=4`、`ap=6258 q=3/tot=4` | ⇒ **AI 可以拥有机场+飞机**（本样本里甚至有大编队与轰炸机）；**问题不在"能不能有"，而在"不派发/不结算"** |
| 6 | **`strikeTick_A1` 会被以 AI 的 civID 调用** | `nA5t (civ,pl)` 组合＝`(73,73)` 与 `(73,226)` | ⇒ 结算 tick **确实会被 AI 文明调用**，但 **`(73,226)` 这一组会被玩家门 `civID != player.iCivID ⇒ return` 直接挡掉** ⇒ **修正③实证**（体不执行）|
| 7 | **整个会话没有任何任务在天上** | `nA5t ms=` 恒 `0`；`nA6c`（空战 tick）**0 条** | 玩家与 AI 都没起飞 ⇒ 空战/打击链本次无从验证（需下次带"有任务"的场景）|
| 8 | **登记送机分支本次未触发** | `nA9r` 4 条全是 `civ=73 tot=0 it=0 ft=0 bm=0 at=0` | 登记发生时 `player==73` ⇒ 玩家路径（不送机）✔ 与代码一致；**"AI 白送 4+4"仍未实测**（需在"玩家≠该 civ"时登记）|

## 14.3 结论（P0 定案）
1. **当前第一道阻塞＝`mode==AI`（修正①）**：即便某文明有 4 个机场、69 架战斗机、4 架轰炸机，**派发也一次都不会发生**。
2. **第二道阻塞＝战争门**：本样本全程停战 ⇒ 即使改了 `mode`，`isAtWar` 也为 false（下次需带战争验证）。
3. **第三道阻塞＝`strikeTick_A1` 玩家门（修正③）**：已被"以 AI 的 civID 调用"证实，体被挡。
4. **"AI 白送 4+4"（A9）未实测**：需在玩家≠该 civ 的时机登记（P1 的探针保留，届时复核）。
5. **P1 范围不变**（造机→派发→结算），但**优先级改为**：①`mode` 判据（改判据或给 AI 机场置 `Mode.AI`）→ ②派发闸门（视野/频率/去重）→ ③`strikeTick_A1` 开门 → ④AI 造机（扣钱+上限）。**"AI 造机"仍必须做**（否则 AI 永远只有初始那点飞机）。

## 14.4 P0 探针覆盖缺口（诚实记录，供下批修）
| 组 | 情况 | 处理 |
|---|---|---|
| `nA2m` | 插桩点落在 `if (mode==AI)` 的**分支体内** ⇒ 只在 AI 模式时打印，本次 0 条 | 其信息已被 `nA3b`（无条件、含 `mode=`）覆盖 ⇒ **不必补**；但记下教训：**插桩点不要落在条件分支体内** |
| `nA6c` | 只在 `airCombatTick` 被调用时打印；本会话无任务 ⇒ 0 条 | 下批（有任务的场景）自然会有 |
| `nA4f` | 依赖 `nA4d` 前置（同一个死分支） | 下批改 `mode` 判据后自然会有 |
| `nA5t` | 只证明"被调用"，**没证明"体是否执行"**（探针在门之前） | 下批在 `strikeTick_A1` 门**之后**再加一条 `nA5b`，直接证明体是否执行 |
| `nA9r` | 本次全为玩家路径 | 保留，下批复核 |

## 14.5 顺手抓到的真实缺陷（独立于本项目，登记待修）
- **`AirDbgLog.e5s` 判空极性写反**：`if-nez p1, :e5s_have` ⇒ 非 null 输入反而打印 `-`（历史 `W1path s=-` 的根因）。本批全部改走干净的 `e5i` 通道；`e5s` 本体留到 **E3 清探针**时一并修。
- **`AirDbgLog.smali` 没有 `.end class`**（以 `.end method` 结尾）⇒ 补丁脚本须按"EOF 追加"处理（已适配）。

---

# 15. P1a 定案与施工设计（判据改造：让 AI 派发真正被尝试）

> 本批＝**判据改造 ＋ 派发闸门 ＋ 结算开门 ＋ 探针**。产出批次号：**r5c026**。本轮只调研与立项，不写代码。

## 15.1 判据改造的**唯一正确形式**（本次审计最关键发现）
**现状**：`AFM.executeAIAssignment(I)` 2829–2833：
```
iget-object v3, v2, Airport->mode
sget-object v4, Airport$Mode;->AI
if-ne v3, v4, :cond_20        # mode != AI ⇒ 跳过
invoke-direct {p0, v2}, AFM->executeAIAssignmentForAirport(Airport)V
:cond_20
```
**审计发现**：`mode` **全树读写点只有 10 处**（下表），其中 **`InGame_AirForceOptions$BtnMission` 255/257 也能把机场设成 `Mode.AI`** ⇒ `Mode.AI` 是**玩家"把机场委派给 AI 托管"的功能**，不是死字段。
⇒ **不能把判据直接替换成"非玩家文明"**（那会废掉委派功能）。正确形式是**或**：
```
新判据： if (airport.mode == Mode.AI) || (airport.civID != playerCivID) → 派发
（playerCivID = Game.player != null ? Game.player.iCivID : 该机场 civID 自身
  —— 即 player==null（观战/无玩家）时退化为"只看 mode==AI"，保持原语义）
```
### 15.1.1 `Airport.mode` 全树影响面审计（10 处，逐条定性）
| # | 位置 | 读/写 | 定性 | 改判据后是否受影响 |
|---|---|---|---|---|
| 1 | `Airport.<init>` 140/142 | 写 | 默认 `OFFENSIVE` | 否 |
| 2 | `SaveGameManager` 414/416 | 读→DTO | 存档写出 | 否 |
| 3 | `LoadSavedGameManager` 4156/4158 | DTO→写 | 存档读回 | 否 |
| 4 | `AFM.executeAIAssignment` 2829/2831 | 读 | **本次要改的地方** | — |
| 5 | `AFM.toggleAirportPatrol` 5612/5614、5618/5620、5627/5629 | 读+写 | 玩家按钮切 `PATROL↔OFFENSIVE`（**从不设 AI**）| 否 |
| 6 | `AFM.tryPatrolForAirport` 2543/2545 | 读 | 玩家巡逻链（含玩家门）| 否 |
| 7 | `InGame_AirForceOptions$BtnMission` 98/100/104/106/121/123/136/138 | 读+写 | 玩家 UI：设 `PATROL`/`OFFENSIVE` | 否 |
| 8 | `InGame_AirForceOptions$BtnMission` 255/257 | 写 | 玩家 UI：**设 `Mode.AI`（委派）** | **必须保留** |
| 9 | `InGame_AirForceOptions$BtnMission` 459/461 | 读 | UI 显示分支 | 否 |
| 10 | `AirDbgLog` 1166/1167 | 读 | r5c025 探针 | — |

## 15.2 只改判据会"过头" ⇒ P1a 必须同批补的闸门
**玩家侧现成范式**＝`tryPatrolForAirport`（2530–2596）的**六道关**：`Game.player != null` → `player.iCivID == airport.civID` → `mode == PATROL` → `rnd.nextFloat() < 0.2f` → `pickIdleDivKey(airport, FIGHTER) != null` → 造任务。
AI 侧（`executeAIAssignmentForAirport`）**目前一道都没有**（无概率门、无上限、无视野门、无去重）⇒ 直接放开＝"每回合每机场必派发"。故 P1a 同批补：
| 闸门 | 设计 | 依据 |
|---|---|---|
| **概率门** | 入口处 `Game.oR.nextFloat() < 0.2f`（镜像玩家巡逻的 0.2）| `tryPatrolForAirport` 2553 的 `0x3e4ccccd = 0.2f` |
| **天然上限** | **不需要新增计数**：`executeAIAssignmentForAirport` **每机场每回合只被调用一次**（由 `update(I)` 的机场循环决定）⇒ 上限＝该文明机场数 | `update(I)` 6910 循环 + `executeAIAssignment` 2795 循环 |
| **视野门** | 目标必须落在该 civ 的雷达/机场雷达圈内：复用 **`aiVisRadarPass(x,y,civID,stealthMul)`**（4072）与 **`aiVisAirportPass(...)`**（4150）——**两者都已按 civID 过滤**（已核 4096／4181 行）| R4c109 既有对称化实现 |
| **选靶改造** | 由"随机取一个"改为"**先过滤（视野）再随机**"：一次候选遍历，收集可见目标，再 `nextInt(visible.size())` | 现体 1046–1066 |
| **去重（可选）** | 同型任务已在飞同一目标则不派（遍历 `activeMissions` 比 `targetProvinceID` ＋ `type`）；**建议 P2 再做**，P1a 先靠概率门＋每机场一次 | 玩家侧同类逻辑在 `a1bPick` 内联 |
**stealthMul 取值的两个选项**：①先写死 `1.0f`（无隐身折减，最宽松）②取目标机型 stealth（需从机型数据取）⇒ **建议 P1a 用 ①并在文档标注**，P2 再精修。

## 15.3 结算侧（同批开门）
`AFM.strikeTick_A1(civID)` 6894 现状：
```
sget-object v0, Game->player
if-eqz v0, :st_ret                      # 玩家不存在 ⇒ 直接返回
iget v1, v0, Player->iCivID
if-ne p0, v1, :st_ret                   # 不是玩家国 ⇒ 直接返回   ← 本次要改的门
... a1bClock / a1Snap / a1Scan / a1bScan ...
```
**改为**：
```
if (player != null && civID == player.iCivID) return;   # 玩家仍走原链（避免与玩家链重复结算）
if (!isAtWar(civID)) return;                            # 和平国不跑（省性能；AI 打击只在战时）
```
**为什么安全（本次已核）**：结算链 `a1Snap／a1Scan／a1bScan／a1bPick／a1bDispatch／a1Dispatch／a1bClock／a1bDiag` **全部没有玩家门**（`a1Snap` 5812 的 `Game->player` 只是取"兜底 civID"，非门）；空战链 `AirCombatTick／applyAirDamage／huntCombatHalf／airCombatAirport／airCombatOne／dispatchSweep` 同样无门 ⇒ **AI 可安全复用同一条结算链**。

## 15.4 P1a 探针设计（新增/调整，全部走 `e5i` 通道）
| 探针 | 位置 | 打印 | 作用 |
|---|---|---|---|
| `nA2m`（**移位**）| `executeAIAssignment` 循环**开头**（不再落在 `mode==AI` 分支内）| `civ/ap/mode/q/tot/it/ft/bm/at` | 无条件看每机场 mode |
| `nA4d`（已有）| AIA-p 入口 | `civ/war/ms` | war 结果 |
| `nA4v`（新）| 选靶过滤后 | `cand=`（航程内候选数）／`vis=`（过视野数）| **证明视野门在工作** |
| `nA4e`（新）| AIA-p 出口 | `k=`：0 ok／1 概率门未过／2 无候选／3 无可视候选／4 任务空手／5 已入队 | **一眼看出 AI 卡在哪一步** |
| `nA5b`（新）| `strikeTick_A1` **门之后**（体入口）| `civ=` | 直接证明"体是否执行" |
| `nA4f`（已有）| `assignedAircraft.isEmpty()` 处 | `empty=0/1` | 空手判据 |

## 15.5 验收口径（P1a 通过判据，全部必须命中）
1. `nA4d war=1` 出现（说明派发真的被尝试了）；
2. `nA4v cand>0` 且 `vis<=cand`（视野门在过滤，不是全放开）；
3. `nA4e k=0` 出现，且 **`activeMissions` 里出现 civ＝AI 的任务**（`nA6c` 能看到 AI 的 civID）；
4. `nA5b` 出现 **AI 的 civID**（结算体执行）；
5. 无闪退／无 CME／无性能可见退化；**玩家侧手感不变**（玩家机场仍走原链，玩家"委派给 AI（mode==AI）"仍生效）。
**测试条件（需要你配合）**：带一场**与 AI 开战**的存档，跑 5–10 回合；AI 机场里有轰炸机最好（没轰炸机也能看到 k=4）。

## 15.6 风险与回滚
| 风险 | 等级 | 缓解 |
|---|---|---|
| AI 全知轰炸（视野门写错／stealthMul 给 1.0 太宽）| 中 | 先用 1.0 但**必须**走 `aiVis*Pass` 过滤；探针 `nA4v` 直接对账 cand vs vis |
| AI 每回合多机场多任务（过强）| 中 | 概率门 0.2（可调）；上限＝机场数；必要时再叠"每国每回合 N 次" |
| 玩家"委派给 AI"功能被废 | **高** | 判据必须是"或"，`mode==AI` 分支原样保留（§15.1）|
| AI 无轰炸机 ⇒ 任务空手（本项目 P1b 要解决）| 中 | `nA4f` 监控；P1b 造机 |
| 观战/无玩家时全图 AI 派发 | 低 | `player==null` 时退化为"只看 mode==AI" |
| 性能 | 低 | 候选遍历与玩家侧同量级；结算 tick 是**回合级**（A10 已证）|
**回滚**：保留现役 `dbg_signed77_v119_r5c025.apk`；P1a 单独批次，异常立即回装。

## 15.7 待你拍板（P1a 参数，4 问）→ ✅ 已定案（2026-09-24）
| # | 问题 | 用户答复 | 落地 |
|---|---|---|---|
| 1 | 概率门初值 | **0.1**（"巡逻的话换成 0.1 吧"）| P1a 用 `0.1f`（`0x3dcccccd`）；**后续接难度**（P4）|
| 2 | 视野门 stealthMul | 按我建议 ⇒ **先写死 `1.0f`** | `aiVis*Pass` 传 `1.0f`（不减半径）|
| 3 | 去重 | 按我建议 ⇒ **P2 再做** | P1a 不做 |
| 4 | 观战口径 | 按我建议 ⇒ **保持原语义** | `Game.player == null` 时：派发只认 `mode==AI`；结算 tick 直接返回 |

---

# 16. P1a 开工前终批全量调研（施工锚点 · 寄存器预算 · 调用约定）

## 16.1 施工锚点（逐处，含"插入前/后"的确切文本与空闲寄存器）
| # | 位置 | 现状锚点 | 改法 | 空闲寄存器（结论）|
|---|---|---|---|---|
| **C1** | `AFM.executeAIAssignment(I)` 2829–2833 | `iget-object v3, v2, Airport->mode` / `sget-object v4, ...;->AI` / `if-ne v3, v4, :cond_20` | 改为"**或**"：`mode==AI \|\| civID != playerCivID`（player==null 时退化为只看 mode）| **v3/v4 比较后即死** ⇒ 可复用（`.registers 7` ⇒ locals 仅 v0–v4，v0=List／v1=索引／v2=机场**必须保留**）|
| **C1b** | 同方法 2835–2837（r5c025 的 `nA2m`）| 现落在 `if-ne` 的**分支体内** | **移到循环开头**（`check-cast v2, Airport` 之后、`iget ... mode` 之前）⇒ 无条件打印 | 同上 |
| **C2** | `AFM.executeAIAssignmentForAirport` 1025（方法体首行）| 紧跟 `.param` 的 `return-void`（原版残留）| 在此插入**概率门**：`Game.oR.nextFloat() < 0.1f` ⇒ 不过则 `nA4e k=1` ＋ return | `.registers 9` ⇒ p0=v7／p1=v8，**locals v0–v6，其中 v6 全程空闲（已核）** |
| **C3** | 同方法 1041–1069（战时选靶）| `getEnemyProvincesInRange(airport,BOMBER)` → `isEmpty` → `rnd.nextInt(size)` → `get` → `intValue` | **整段替换**为一次调用：`v3 = aiPickVisibleTarget(airport, BOMBER, Game.oR)`；`if-ltz v3` 才继续 | 用 v2/v3/v4（现场已死）|
| **C4** | 同方法 1071–1089（造任务/入队）| `const/4 v4,0` → `createStrategicBombing` → `isEmpty` → `p0Empty` → `add` | 保留，出口补 `nA4e`（k=0／4）| v4/v5 |
| **C5** | `AFM.strikeTick_A1` 6912–6915 | `if-eqz v0, :st_ret`（player==）/ `if-ne p0, v1, :st_ret`（非玩家）| 门2 **极性反转**为 `if-eq`（玩家国照旧返回）＋ 新增 `if (!isAtWar(civID)) return`（用 v2 承接）| `.registers 4` ⇒ locals v0–v2；v2 现场空闲 |
| **C6** | 同方法 6916（体首行）| `a1bClock()` | 在其前插 `nA5b`（门后探针）| 同上 |

## 16.2 新增方法设计（放 `AirForceManager`，避免动 AIA-p 的寄存器压力）
```
.method private static aiPickVisibleTarget(Airport ap, AirUnit$AirType type, Random rnd)I
    # 1) cand = getEnemyProvincesInRange(ap, type)      （私有，同类可调）
    # 2) if cand 为空 → return -1
    # 3) vis = new ArrayList(); 遍历 cand：
    #      Province p = Game.getProvince(pid);  if p == null → 跳过
    #      x = p.getCenterX_Real(); y = p.getCenterY_Real(); civ = ap.civID
    #      if aiVisRadarPass(x, y, civ, 1.0f) || aiVisAirportPass(x, y, civ, 1.0f) → vis.add(pid)
    # 4) 探针 nA4v：cand=<cand.size> vis=<vis.size>
    # 5) if vis 为空 → return -1；否则 return ((Integer)vis.get(rnd.nextInt(vis.size()))).intValue()
```
- 调用约定（已从现役代码核实）：`aiVisRadarPass(IIIF)Z`／`aiVisAirportPass(IIIF)Z`＝`(x, y, civID, stealthMul)`；两者**内部都按 `civID` 过滤**（4096 省拥有者／4181 机场属主）
- 视野半径来源（供理解）：雷达省＝300／600／2400（按雷达/长波雷达）×地图缩放；机场＝`Airport.radarRange`
- `Game.oR:Ljava/util/Random;`（public static，448）✔ 可直接用；**不 new Random**（省对象、且与引擎同源）

## 16.3 P1a 变更清单（施工版，6 处改动 + 1 新方法 + 4 探针）
| 序 | 文件 | 改动 |
|---|---|---|
| 1 | `AirForceManager.smali` | C1 判据改"或" |
| 2 | 同上 | C1b `nA2m` 移出分支 |
| 3 | 同上 | C2 概率门 0.1 ＋ `nA4e k=1` |
| 4 | 同上 | C3 选靶改用新 helper（视野过滤）|
| 5 | 同上 | C4 出口 `nA4e k=0/4` |
| 6 | 同上 | C5 `strikeTick_A1` 门改（极性反转＋战争门）、C6 `nA5b` |
| 7 | 同上 | 新方法 `aiPickVisibleTarget`（含 `nA4v`）|
| 8 | `AirDbgLog.smali` | 新增 3 个 helper：`p0K(int)`（打 `nA4e k=`）、`p0V(int,int)`（打 `nA4v cand=/vis=`）、`p0Civ` 复用给 `nA5b` |

## 16.4 施工顺序与门禁（照铁律·十步）
`备份 .pre_r5c026 → 补丁脚本（幂等＋锚点唯一性断言） → check_calls ×2 → selfcheck2(本批通用版) → assemble → arity → 八件套（Sig Δ 与设计内新增 invoke 数一致） → incr_audit（逐块寄存器活性） →（新 helper 无迭代器改动则跳 check_loopexit） → build（先 df -h /data ≥3G） → autotap 装机 → 抓样 → 判读`
**验收口径**：同 §15.5（5 条全中）；**测试条件**：需你带一场**与 AI 开战**的存档跑 5–10 回合。


---

## 17. r5c029 —— P1a 极性三修（子代理审查报告落地）【2026-09-24】

### 17.1 起因
r5c028 的只读审查（子代理，输入 `build_inputs/review_p1a/QUESTIONS.md`）产出了报告，逐条指出 P1a 判据链上**仍有 3 处极性反写**（我 r5c026 写、r5c027 只修了其中一处）：

| # | 位置（r5c028 行号） | 反写形态 | 实际后果 | 修正 |
|---|---|---|---|---|
| FIX-1 | `executeAIAssignment(I)V`:2887 | `if-gez v4`（=v4>=0 才跳） | 有玩家 ⇒ 跳去"跳过块" ⇒ **AI 机场永不派发**；反而观战模式全派发 | → `if-ltz v4` |
| FIX-2 | `executeAIAssignmentForAirport`:1037 | `if-ltz v0`（=v0<0 才跳） | 概率门 10%/90% **反置**（实为 ~90% 派发） | → `if-gez v0` |
| FIX-3 | 同方法:1060 | `if-gez v3`（=v3>=0 才跳） | 有合法目标 ⇒ 放弃；无目标(-1) ⇒ **把 -1 传给 `createStrategicBombing`**（高危畸形任务） | → `if-ltz v3` |

**逐条核实方式（不靠"报告说"）**：读实树 + 读 `:p0_blk1`/`:p0_blk3`/`:cond_20` 三个跳转目标块的实际内容（放弃块含 `p0K(1|3)+return-void`；继续块含 `add-int/lit8 v1,v1,#1`）。三条报告**均成立**。

### 17.2 本批改动
- 文件 `aoc/kingdoms/lukasz/map/battles/AirForceManager.smali`，**只换 3 行操作码**（指令条数不变、无新增/删除指令、`.registers` 未动）。
- 备份 `AirForceManager.smali.pre_r5c029`；补丁 `r5c029_fix.py`（含唯一性断言 + 三处"不许动"保护断言）。
- 探针**全部保留**（`nA2s/nA2t/nA2u/nA2m/nA4d/p0V/p0K/nA5b`），因为下一步抓样要用 `nA2t` 定案"空列表"假设。

### 17.3 新增门禁：`r5c029_sitecheck.py`（dex 级定点极性门禁，语义级）
- 唯一真值＝产物 dex 经 baksmali 反汇编后的**指令序列**；断言"上下文指令 ⇒ 必须的 if 极性 ⇒ 该 if 的跳转目标块必须含预期指令"。
- **不依赖标签名**（baksmali 会把 `:p0_disp` 重命名成 `:cond_45`）。
- 铁律⑲执行记录：先在**已知有 bug 的 r5c028 dex** 上跑 ⇒ 精确报出 3 个 FAIL（②a/③/④）+②b/⑤ PASS；再在 r5c029 dex 上跑 ⇒ **失败点 = 0**。

### 17.4 门禁与产物
| 项 | 结果 |
|---|---|
| `r5c029_fix.py` | 3 处落位 ✅（唯一性断言 + 保护断言全过） |
| `r5c029_sitecheck.py` | r5c028 dex：3 FAIL（预期）；r5c029 dex：**0 FAIL** ✅ |
| `check_arity.py` | BAD=0（WARN=3 历史白噪） |
| 八件套 | Invoke/Regs/Init/Range BAD=0；MISSING=14/Cast=50/Undef=4 = 白噪基线；`Sig 152638→152638（Δ=0，因只换操作码）` |
| `check_dangling.sh`（dex） | 真悬空 = 0 |
| `incr_audit.py` | 对 FIX-2/FIX-3 报"应为 if-eqz"⇒ **已知假阳性**（Q4 只认判空形态；这两处是数值比较） |
| dex | `df112f5aab6f73fbd43aa2bb65803d84` |
| apk | `0e80f3df…`（`build_apk/dbg_signed77_v119_r5c029.apk`，738,374,836 B，Earth3=18510） |
| 装机 | ✅ `DEX_MATCH=1`（设备 dex md5 与本地一致） |

### 17.5 子代理报告里另一条**待验证**结论（nA2t 就是它的判据）
报告给出静态推理：`nA2s`（入口）能打出来、循环体不执行，唯一自洽解释是该 civ 在 `allAirports` 里**只有空壳 key**（`getAirportsForCiv` 取不到就 `new` 一个空 List；`syncAirports`/`unregisterAirport` 只 `List.remove()` 不删 map key）⇒ 第一层原因是 **AI 侧没有可用机场**（不是循环语法问题）。
⇒ **可证伪预测**：抓样里若只见 `nA2s` + `nA2t a=0`、无 `nA2u` ⇒ 支持该假设；若 `nA2t>0` 却无 `nA2u` ⇒ 与代码矛盾（属日志提取问题）。

### 17.6 下一步
1. 用户跑 3~5 回合（**不必开战**）⇒ 抓样读 `nA2s → nA2t → nA2u → nA4d → p0V → nA4e k=`；
2. 若确认"无可用机场"⇒ 提前动 **P1b（AI 造机）** 或先查 AI 是否造机场建筑（`Province.updateBuildingsUnderConstrucion → buildAirport` 不分玩家/AI）；
3. 再进 P1a 完整验收（需"与 AI 开战"存档）：`nA4d war=1` → `p0V cand>0 vis>0` → `nA4e k=0` 且 AI 任务入 `activeMissions`。


---

## 18. r5c029 抓样判读 ⇒ "空壳 key"假设被否 + r5c030 二分（诊断批）【2026-09-24】

### 18.1 r5c029 抓样（`r6s5/cur_r5c029.txt`，6.05MB，90 次调用）
| 探针 | 结果 | 说明 |
|---|---|---|
| `nA2s` | 90 次 | `executeAIAssignment` 入口正常（civ=73、pl=226、apts=4） |
| `nA2t` | **89/90 次为 `a=4`** | **`getAirportsForCiv` 返回的 list 尺寸 = 4**（非空！） |
| `nA2u` | **0** | 循环体入口省号 —— 一次都没打 |
| `nA2m` | 0 | 循环体内机场快照 |
| `nA4d/nA4v/nA4e/nA4f` | 0 | 派发链后续全部没到 |
| `nA5t` | 90（civ=73、apts=4） | `strikeTick_A1` 正常（结算门开着） |
| `nA3b` | 360 = 90 回合 × 4 机场 | `update(I)` 的两趟 `iterator()` 遍历（updateBuild/updateDeployedCount）**都成功** |
| `nA5b` | 56 | 结算体被 AI 文明调用 |

**关键结论（否掉子代理的静态假设）**：
1. 列表**不是空壳**（size=4），所以"map 有 key、list 为空 ⇒ 循环体不执行"**不成立**；
2. `update(I)` 用 `iterator()` 遍历**同一个 list** 并成功调用 `updateBuild()`/`updateDeployedCount()`（`nA3b` 打了 360 次，`Airport.updateBuild` 内部解引用机场）⇒ **元素是合法 Airport 对象**（否则 `check-cast`/`updateBuild` 早就炸了）；
3. 日志通道无过滤、无去重（`dKey` 只做 500ms flush 节流，且 flush 判据 `if-ltz` 本身是反的——缓冲区仍会累积，不影响"是否记录"）；
4. 日志顺序显示：`nA2s → nA2t → 直接 nA5t`（`nA5t` 在 `strikeTick_A1`）⇒ **`executeAIAssignment` 在 nA2t 之后没有产生任何输出**。

⇒ 于是出现与代码矛盾的实测：**代码里 `if-ge v1,v2` 在 v1=0/v2=4 时必然进循环体**。可能是"方法被异常提前打断"或"运行的不是这段代码"。r5c030 就是为了区分这两者。

### 18.2 r5c030（诊断批，已装机，dex `cbd8c225…`）
探针（全部无分支、都插在 `move-result` 之后 / 条件跳转之前；只动 `executeAIAssignment(I)V`，外加 `AirDbgLog.p0Exc`）：

| 键 | 位置 | 作用 |
|---|---|---|
| `nA2v` | 方法头 | build stamp(30)：证明跑的是本批 dex |
| `nA2w` | `isEmpty()` 之后 | isEmpty 的实际结果（0/1） |
| `nA2x` | 循环内 `size()` 之后 | 循环判据里的 size 实际值 |
| `nA2y` | `if-ge` 之前 | 循环索引实际值 |
| `nA2b` | `check-cast` 之后（解引用之前） | 循环体**是否真的进了** |
| `nA2r` | `:cond_23` 的 `return-void` 之前 | **正常返回**标记 |
| `nA2e` | `.catchall` 处理器 | 异常被捕获时打印**异常类名**（`AirDbgLog.p0Exc(Throwable,String)`） |

**可证伪预测**：
- 若 `nA2b`+`nA2e` 都无、但 `nA2r` 有 ⇒ 方法正常返回却没进循环 ⇒ 只有 isEmpty=true 能解释 ⇒ 看 `nA2w`；
- 若 `nA2b` 有、`nA2u` 无 ⇒ 循环体里**解引用机场**那一步炸了（异常被 `nA2e` 抓到并给出类名）；
- 若 `nA2e` 给出异常类名 ⇒ 直接定位（NPE / ClassCast / IncompatibleClassChange / …）；
- 若 `nA2v` 的 `a=30` 不出现 ⇒ 跑的不是本批 dex（安装/进程问题）。

**注意**：本批带 `catchall`，若确有异常，行为会从"回合被异常中断"变为"吞掉并继续"——这是**诊断期的临时改动**，定位后必须按结论改成正常处理。

### 18.3 本批顺带修到的两个工具链坑（已修，见铁律 ㉖）
1. `assemble.sh` 只看 `java` 退出码 ⇒ **RunSmali 失败时也返回 0**，会静默沿用旧 dex（本批真踩：`const/4 v4, 0x1e` 越界 ⇒ `result=false`，而脚本仍报"汇编完成"）。已加 `result=true` 硬校验。
2. `const/4` 只能承载 -8..7（nibble）⇒ 探针里的常量值要用 `const/16`。


---

## 19. 【真因定案】P1a FIX-4：`isEmpty` 判据极性反写（原版第三类 bug）【2026-09-24】

### 19.1 r5c030 抓样的决定性数据
| 探针 | 结果 | 含义 |
|---|---|---|
| `nA2v` | 76× `a=30` | ✅ 跑的就是本批 dex |
| `nA2s`/`nA2t` | 76 / 76 | 入口正常；list 尺寸=4 |
| **`nA2w`** | **76× `a=0`** | **`isEmpty()` == false（列表非空）** |
| `nA2x` / `nA2y` | **0 / 0** | 循环判据那两个探针**一次都没打** |
| `nA2b` | **0** | 循环体没进 |
| **`nA2r`** | **76× `a=1`** | **方法每次都"正常返回"** |
| `nA2e` | 无 | **没有异常**（catchall 从未触发） |

⇒ 执行路径被钉死为：`nA2s → nA2t → nA2w(=0) → nA2r（return）`，中间全被跳过、且无异常。

### 19.2 真因
```
invoke isEmpty() → move-result v1
if-eqz v1, :cond_23      ← 原版：v1 == 0（=非空）就跳去 return
```
`if-eqz` = "等于 0 才跳"。`isEmpty()` 返回 false(0) 表示**非空**，于是：
- 列表**非空** ⇒ `if-eqz` 成立 ⇒ **直接 return**，循环永不执行；
- 列表**为空** ⇒ 不跳，进 `const/4 v1,0x0` → `size()=0` → `if-ge 0,0` 成立 ⇒ 也立刻 return。

⇒ **该循环在任何情况下都不可达**（死代码）。这与前面两类原版 bug 同一性质（首行 `return-void`、文明比较 `if-eq`）——开发商写好了 AI 派发，但**三处入口条件全部写反/写死**。

### 19.3 FIX-4
| 位置 | 改前 | 改后 |
|---|---|---|
| `executeAIAssignment(I)V` 循环守卫 | `if-eqz v1, :cond_23` | **`if-nez v1, :cond_23`**（空表才 return） |

同批撤掉 r5c030 的诊断期 `.catchall`（已确认无异常，恢复普通返回语义）。

### 19.4 门禁与产物
- **门禁扩展**：`r5c029_sitecheck.py` 新增 **⑥ 循环守卫**（`isEmpty()` → `move-result v1` → 紧随的 if 必须是 `if-nez v1`，且目标块含 `return-void`）。
- 铁律⑲执行记录：先在 **r5c030 dex（有 FIX-4 bug）** 上跑 ⇒ **恰好报出 1 个 FAIL（⑥）**、其余全 PASS；修后在 r5c031 dex 上 ⇒ **0 FAIL**。
- `check_arity`：BAD=0。八件套：Invoke/Regs/Init/Range BAD=0；`Sig 152647→152646（Δ=-1）`＝撤掉 catchall 时删掉的那 1 个 `p0Exc` 调用，**属预期**（不是改坏 invoke，但八件套会报 ⚠️，需人工确认——已登记）。
- 产物：dex `9b6fed59ed2593d66b4953d835dc2086` / apk `d3a87a97…`（`build_apk/dbg_signed77_v119_r5c031.apk`）。
- **装机：✅ DEX MATCH=1；日志与基线已重置。**

### 19.5 下一步预期（可证伪）
抓样应当首次出现：
1. `nA2x a=4`、`nA2y a=0/1/2/3`（循环真的转了）、`nA2b a=1`；
2. `nA2u a=<省号>` ×4 与 `nA2m mode=/ap=/civ=/…`（`nA2m` 首次出现！）；
3. 派发链：`nA4d`（isAtWar 结果）→ 若开战：`nA4v cand=/vis=` → `nA4e k=`（0=派发成功 / 1=概率门挡 / 3=无可见目标 / 4=空机组）；
4. `nA2r a=1` 依旧（正常返回）。
若 `nA2x/nA2y` 仍为 0 ⇒ 我对 `if-eqz/if-nez` 的语义判读有误，需回到 dexdump 逐字节复核。


---

## 20. 【P1a 贯通】r5c031 抓样：AI 派发链首次端到端跑通（只差飞机）【2026-09-24】

抓样 `r6s5/cur_r5c031.txt`（10.1MB，51 次 `executeAIAssignment` 调用）。

### 20.1 循环已通（FIX-4 生效）
| 探针 | 结果 |
|---|---|
| `nA2x` | 260 × `a=4`（每次调用 5 次判据：4 个机场 + 1 次退出） |
| `nA2y` | `a=0/1/2/3` 各 52、`a=4` 52 ⇒ 索引 0→3 迭代 + 4 退出 ✓ |
| `nA2b` | 207 × `a=1`（循环体入口） |
| `nA2u` | 4 个机场所属省：**6258 / 6335 / 6337 / 6338** |
| `nA2m` | 208 次（civ=73、ap=上述四省、mode=1） |
| `nA2r` | 51 × `a=1`（正常返回） |

### 20.2 派发链（195 次尝试）
| 结果码 | 次数 | 含义 |
|---|---|---|
| `k=1` | **181** | 被概率门挡（0.1 生效 ✓；14/195 ≈ 7% 通过，符合随机） |
| `k=4` | **14** | **过门后：war=1 → 选靶成功 → 建任务 → 机组为空 ⇒ 丢弃** |
| `k=0` | 0 | 尚无成功派发 —— **原因见 20.3** |
| `k=3` | 0 | 没有"无可见目标"的情形（视野门未成为瓶颈） |

- `nA4d`：14 次，全部 `war= a=1`（AI 文明 73 确实处于交战状态）；
- `nA4v`：`cand= 218/461/470/474/477`、`vis= 218`（14 次）⇒ 走完了视野门；
- `nA4f`：14 × `empty= a=1` ⇒ 任务被"空机组"丢弃。

### 20.3 唯一剩余阻塞：AI 机场没有 BOMBER（＝P1b 范围）
`nA2m` 机队快照（208 次）：

| 机型 | 取值 |
|---|---|
| `bm=`（轰炸机） | **全 0（205/205）** |
| `ft=`（战斗机） | 全 0 |
| `it=`（拦截机） | 全 0 |
| `at=`（攻击机） | 0(61) / 1(11) / 2(12) / 3(12) / 4(111) |

⇒ AI 机场当前**没有轰炸机**，而 `createStrategicBombing` 只认 BOMBER ⇒ `assignedAircraft` 必空 ⇒ `k=4`。
**这就是"P1a 通了但还没看见 AI 轰炸"的全部原因**，与 §13/§16 的预判一致。

### 20.4 结论与下一步
- **P1a 的判定链（启用＋判据"或"＋概率门＋战时/和平分支＋视野门＋建任务＋空机组丢弃）已全部实测贯通**；`k=0` 只欠"AI 有轰炸机"。
- 待办：**P1b —— AI 造机**（每回合幂等补建造队列 ＋ 扣 `Civilization.fGold` ＋ 上限：容量 `level×20`／队列 <3 ＋ 机型小表含 BOMBER/ATTACKER），完成后 `k` 应变为 0 且 `activeMissions` 出现 AI 任务、`nA5b` 侧可见。
- 遗留观察项：`nA4v vis=` 恒为 218 而 `cand` 在变（218/461/470/474/477），**视野门的 count 口径疑似不是"候选∩可见"**，P2 细化视野门时需回看 `aiPickVisibleTarget` 里 `p0V` 的实参。
- 遗留：`AirDbgLog.dKey` 的 flush 判据 `if-ltz` 疑似写反（不影响记录内容，仅影响落盘时机）；`e5s` 判空极性写反。


---

## 21. 待做（随 P1b 一起交付）：人物"无限生命"＝免疫自然死亡【GV 方案，2026-09-24 调研完成】

> 完整调研见独立文档：`r6s5/人物不死_GV调研_v1.md`

**结论**：元首/顾问/将领**没有 HP 字段**，"无限生命"＝**不再老死**；死亡有**唯一咽喉** `RulersManager.characterDies(iCivID, iBornYear)Z`（7 个调用点全走它）。

**决定采用的改法（纯 JSON，零 smali；与 P1b 同批交付）**：
1. `assets/game/gameValues/GV_Advisors.json`：`CHANCE_OF_DEATH` **全置 0**（覆盖全部 7 个调用点，含闸门外的"未指派将领"）；
2. `assets/game/gameValues/GV_GameUpdate.json`：`GAME_UPDATE_DEATH_RULER_MIN_TURN_ID` 设为极大（如 `999999999`），关掉总闸门内的死亡检查；
3. 注入方式：在 `/tmp/rebuild_v119fix.py` 里按**现成机制**（同 `assets/game/RadarConfig.json` 那几段）替换这两个 JSON；
4. 兜底（若实测仍有死亡路径）：1 行 smali —— `characterDies` 首行 `return false`。

**注意**：
- ⚠️ `GAME_UPDATE_DEATH_*_EVERY_X_DAYS` **绝不能设 0**（参与 `TURN_ID % X`，除零会被 catch 吞掉）。
- ❗待实测：GV 只在"开局初始化"里加载（`InitGame:19569` → `GameValues.init()`、`AA_Game:1662` → `initGameValue()`）⇒ **老存档是否重读 GV 未验证**；若不重读，改动只对新档生效。

**验收**：新档（或读档后确认生效）连推若干回合 ⇒ 元首/顾问/将领不再死亡（可用 UI 观察或探针）。


---

## 22. r5c033 —— P1b：AI 造机（+玩家也扣钱）；同批交付"人物不死"【2026-09-24】

### 22.1 本批改动（依据 `r6s5/P1b_终批审计_防写反_v1.md`）
**smali（3 文件 7 项）**
| # | 位置 | 内容 |
|---|---|---|
| S1 | `Airport.startBuild`（两道 guard 之后） | 插入 `p1bChargeForBuild(p0,p1)`：**只有真正入队才扣钱**；玩家 UI 与 AI 共用此路径 ⇒ "玩家也扣钱"只需一处 |
| S2 | `Airport.p1bCost(AirType)I` | 照 `getBuildTime` 守卫写法取 `AircraftTypeData.CostGold`；取不到返回 -1 |
| S3 | `Airport.p1bPickAffordable(Airport,AirType)AirType` | 可负担阶梯 `[首选, ATTACKER, FIGHTER, INTERCEPTOR]`；全买不起返回 null |
| S4 | `Airport.p1bChargeForBuild(Airport,AirType)V` | 成本≤0 不扣；否则 `int-to-float`→`neg-float`→`Civilization.addGold(负)` |
| S5 | `AFM.update(I)` 第一圈（`updateBuild()` 之后） | `invoke-direct {p0,v2} updateAIBuildUp(v2)` |
| S6 | `AFM.updateAIBuildUp(Airport)V`（private） | 仅 AI、非建造中、空队列 ⇒ 补 **1 架**；机型=轰炸机占比<50%→BOMBER 否则 ATTACKER，再经 S3 取"买得起"的 |
| S7 | `AirDbgLog.p0Gold(int,String)V` | 探针：打印该 civ 的 `fGold` |

**资源（人物不死，GV 方案）**
- `GV_Advisors.json`：`CHANCE_OF_DEATH` 15 项 → **全 0**（覆盖 7 个 `RulersManager.characterDies` 调用点）
- `GV_GameUpdate.json`：`GAME_UPDATE_DEATH_RULER_MIN_TURN_ID` 3985 → **999999999**
- 刻意**不动** `..._EVERY_X_DAYS`（参与 `%` 取模，设 0 会除零）；注入由 `rebuild_v119fix.py` 完成（已核实设备侧 apk 内生效）

### 22.2 判据方向（D1–D9，全部经 dex 级门禁逐条 PASS）
无玩家⇒跳过(`if-eqz`)、非玩家机场才处理(`if-eq`)、正在建造⇒跳过(`if-nez`)、队列非空⇒跳过(`if-gtz`)、轰炸机占比<50%⇒BOMBER(`if-lt`)、买不起⇒跳过(`if-nez`)、入队失败⇒不记探针(`if-eqz`)、阶梯内钱不够⇒下一档(`cmpg-float`+`if-ltz`)、成本≤0⇒不扣(`if-lez`)。

### 22.3 门禁与产物
- **新增门禁** `r5c033_sitecheck.py`（语义级、不依赖标签名）：上版 r5c031 dex ⇒ **7 FAIL**；本批 ⇒ **0 FAIL**（D1–D9 全 PASS）。
- `check_arity` BAD=0；八件套 Invoke/Regs/Init/Range BAD=0，白噪不变，`Sig 152646→152661`。
- **Δ 对账**：逐条 diff 三文件 invoke ⇒ 新增 **18 条**，全部设计内（hook1、updateAIBuildUp7、p1bCost1、p1bPickAffordable2、p1bChargeForBuild3、p0Gold2、startBuild内1、ordinal+1）。（八件套的 "Sig Δ=+15" 是另一口径，两者都无"意外 invoke"。）
- 产物：dex `3c4b58519e5bd8c3728faa02fcc1680d`／apk `1c67e117…`（`build_apk/dbg_signed77_v119_r5c033.apk`）。
- **装机：✅ DEX MATCH=1；设备 apk 内 `CHANCE_OF_DEATH=[0×15]`、`MIN_TURN_ID=999999999` 已核。**

### 22.4 待实测（用户跑档后抓样）
1. `p1bT`（选中的机型 ordinal）与 `p1b`（扣钱后的金）应周期性出现；`p1b` 的数值应**阶梯下降**；
2. `nA2m` 的 `q/rem` 应出现 >0（AI 真在造）；数回合后 `bm`（轰炸机）应上升；
3. 与 AI 开战时：`nA4d war=1` → `nA4v cand/vis` → **`nA4e k=0`**（首次成功派发）→ `nA5b`；
4. 人物不死：元首/顾问/将领不再死亡（老档是否重读 GV 待确认；若不重读则只对新档生效）。


### 22.5 r5c034 —— 修 r5c033 的真机 VerifyError（p0/p1 寄存器约定）
- **症状**：r5c033 装机后一启动就闪退。logcat：
  `java.lang.VerifyError: Verifier rejected class AirForceManager: void updateAIBuildUp(Airport) failed to verify: [0x4] cannot access instance field int Airport.civID from object of type Reference: AirForceManager`
- **原因**：`updateAIBuildUp` 是**实例方法** ⇒ `p0 = this(AirForceManager)`、`p1 = 参数 Airport`；我按"p0=机场"写了全部字段访问 ⇒ ART 校验器直接拒绝（并拒绝整个类）。
- **修复**：该方法的机场访问 `p0 → p1`（6 处字段 + 2 处调用），共 1 个方法、零逻辑改动。
- **门禁补强**：`r5c033_sitecheck.py` 加 **⑨/⑨b 寄存器约定检查**（实例方法里机场必须 `p1` 且禁止 `p0`；静态方法里机场必须 `p0`）。
  铁律⑲执行记录：在**会闪退的 r5c033 dex** 上跑 ⇒ **⑨ FAIL（forbidden_p0=True）**；修后 r5c034 dex ⇒ **0 FAIL**。
- **产物**：dex `40fa5a8fc2fc4063729e4054305f9ac5` / apk `e98868df…`（`build_apk/dbg_signed77_v119_r5c034.apk`）。
- 八件套：`Sig 152661→152661（Δ=0）` ⇒ **本批只改寄存器名、未动 invoke**，属预期（八件套会提示"确认是否真的没动 invoke"，已人工确认）。
- 结论：**r5c034 = r5c033 + p0/p1 修复**，其余内容（含人物不死 GV）完全一致。

## 23. r5c035a —— P1b 审计修正 + AI 造机状态探针（2026-09-25 02:17）

### 23.1 本批定位
r5c035 构建后做了一次**全面审计**（对照真实字段/API/寄存器），抓到 **4 个问题**并把它们与本批一起交付。
其中 ① 是"AI 从不造机"的头号嫌疑。

### 23.2 四项修正
| # | 位置 | 原文 | 改为 | 为什么 |
|---|---|---|---|---|
| ① | `Airport.p1bPickAffordable` | `cmpg-float` 后 `if-ltz v4, :next` | `if-gez v4, :next` | cmpg 结果为 **-1 表示 gold<cost**。原写法 ⇒ **买得起就跳走、买不起反而返回** ⇒ **AI 富有时永远返回 null ⇒ 永不造机**（与 r5c034 抓样"p1bT 零/机队全 0"完全吻合） |
| ② | `Airport.p1bStat` 的 `B` 标志 | `if-nez v2, :p1b_st_b0` | `if-eqz v2, :p1b_st_b0` | 使 **B=1 表示"在建"**、B=0 表示空闲（原写法语义相反） |
| ③ | `AirDbgLog.p0Tag` | `private static` | `public static` | `Airport.p1bStat` **跨类**调用它；private 跨类 invoke 是 ART 校验/访问错误句式的来源（与 r5c033 闪退同类） |
| ④ | `AFM.updateAIBuildUp` 机型选择 | `if-lt v4, v5, :bomber`（2×轰炸机 < 总数） | `if-le v4, v5, :bomber`（≤） | 原写法在 **total=0 的空机场**落到"攻击机"分支；改为含 total=0 ⇒ 空机场优先造**轰炸机**（P1a 的唯一阻塞项就是缺轰炸机） |

### 23.3 探针（r5c035 内容，随本批一起装）
`Airport.p1bStat(Airport,String)`：每个 AI 机场**每回合**在"AI 判定之后、任何跳过之前"打一条决策前状态：
`G`=金（float→int）、`B`=是否在建(1/0)、`Q`=建造队列长度、`T`=总机数、`M`=轰炸机数、`A`=攻击机数、`CB`=轰炸机成本、`CA`=攻击机成本。

### 23.4 产物与门禁证据
| 项 | 值 |
|---|---|
| dex md5 | `1011fb5fad2d8869adf8523ac2ac5809` |
| apk md5 / 归档 | `91e10a51ca49057a6d0b971f307db4e4` / `build_apk/dbg_signed77_v119_r5c035a.apk` |
| arity（check_arity.py） | BAD **0**（WARN 3 为历史白噪） |
| sitecheck | **0 FAIL**（含新增 ⑩/⑪/⑫） |
| 八件套 verify | Sig=152681，Δ=**+20**（与本批新增 invoke 一致） |
| 负样本（铁律⑲） | 未修正 dex `bda4adb1…` 上 **⑩/⑪/⑫ 恰好 3 FAIL**，修正后 0 FAIL |
| Earth3 条目 | 18510（=18510） |
| GV 注入 | `GV_Advisors.CHANCE_OF_DEATH` 全 0；`GV_GameUpdate.GAME_UPDATE_DEATH_RULER_MIN_TURN_ID=999999999`；`GAME_UPDATE_DEATH_*_EVERY_X_DAYS` 保持 1818/772/842/942（**未设 0**） |

### 23.5 门禁新增（r5c029_sitecheck.py v3）
- **⑩ P1b 可负担判定**：`cmpg-float` 之后第一条 if 必须是 `if-gez v4`，且目标块含 `goto`（循环推进）。
- **⑪ P1b 状态探针 B 标志**：读 `Airport.buildingType` 之后第一条 if 必须是 `if-eqz v2`，且紧随有 `const/4 v3,0x1`。
- **⑫ 跨类可见性**：`AirDbgLog.p0Tag` 必须是 `public static`。

### 23.6 人物不死（GV 方案）键名核对
- `CHANCE_OF_DEATH` 数组**只存在于 `GV_Advisors.json`**（15 元素，已全 0）⇒ 覆盖**顾问**；
- **元首/将领**走的是总闸门 `GAME_UPDATE_DEATH_RULER_MIN_TURN_ID`（已设 999999999）——调研结论是元首/顾问/将领的死亡**都在该闸门之内**，故闸门一并覆盖；
- 验收方式＝**行为**（不插探针）：新档/老档连推若干回合，观察是否老死。

### 23.7 下一步（未完成）
1. **装机 r5c035a** → 用户跑几回合 →「抓」；
2. 抓样判读目标：`p1bG`（金）、`p1bB/Q`（在建/队列）、`p1bT/M/A`（机队）、`p1bCB/CA`（成本）⇒ 定案"为什么没造机"（若 ① 已修好，应看到 `p1bT`/`p1b` 首次出现、`M` 逐步上升）；
3. P1b 完整验收：`bm` 上升 → 开战 `nA4e k=0` → `activeMissions` 含 AI 任务 → 真的炸到玩家；
4. 人物不死行为验收（连推回合）；
5. 之后：P2（去重/频率上限）、P3（空战对称）、P4（难度接 `difficultyID`）、P5（清探针）。

## 24. r5c035b —— 回退①（可负担极性）＋ 更正上轮错误结论（2026-09-25 02:33）

### 24.1 以实装 dex 为准的事实（r5c035a，md5 `1011fb5f…`）
```
move-result v4              # v4 = cost
if-lez v4, :cond_31         # cost<=0 ⇒ 跳过该档 ✓
int-to-float v4, v4
cmpg-float v4, v2, v4       # v2 = gold ⇒ v4 = sign(gold - cost)
if-gez v4, :cond_31         # ✗ v4>=0（gold>=cost，买得起）时跳走
return-object v3            # ⇒ 返回的是"买不起"的机型
```
⇒ **r5c035a 的 ① 是回归**：买得起的机型全被跳过。**正解 = `if-ltz v4`**（v4<0 = gold<cost = 买不起 ⇒ 换下一候选）。

### 24.2 更正上轮的错误结论（作废）
- §23.2 表格里 ① 写的"原写 if-ltz ⇒ 富有时永不造机"**是错的**，作废；
- 事实：`if-ltz` = **<0 才跳**（铁律②的助记符），原文注释 `if-ltz = 小于0才跳` **本来是对的**；我凭印象把助记符记反，去"修"了正确的代码。
- ⇒ r5c035b 已把 ① 回退；②③④ 保留。

### 24.3 关于"AI 从不造机"的真因（据子代理报告 + 我方 logcat 实证）
- r5c033 的 `updateAIBuildUp` 把**实例方法的参数寄存器用错**（`this` 与 `Airport` 混用）⇒ **类校验被拒 → `java.lang.VerifyError` 闪退**（logcat 实证，非"静默跳过"）；
- r5c034 的逐条 diff 恰好是 `v10→v11` 全量改写 ⇒ **r5c034 才是寄存器修复**；
- 但 r5c034 抓样仍是 `p1bT`/`p1b` 零、机队全 0 ⇒ **真因仍未定案**，必须靠 r5c035 引入的"决策前状态"探针（`p1bG/B/Q/T/M/A/CB/CA`）来定。

### 24.4 本批产物与门禁
| 项 | 值 |
|---|---|
| dex md5 | `fbab9edc60a0b0d7dcf8f1a020def865` |
| apk md5 / 归档 | `1692e7a4e7fad564e154c43940c76cd5` / `build_apk/dbg_signed77_v119_r5c035b.apk` |
| arity | BAD 0 |
| sitecheck | **0 FAIL**（⑩ 已改为断言正解 `if-ltz v4`） |
| 负样本 | 对 r5c035a dex（`1011fb5f…`）跑新⑩ ⇒ **恰好 1 FAIL**；回退后 0 FAIL ✓ |
| 八件套 | Sig=152681，Δ=+20（与 r5c034 对照，含探针新增 invoke） |

### 24.5 下一步
装机 r5c035b → 用户推回合 → 抓样判读 `p1bG/B/Q/T/M/A/CB/CA`（+ `p1bT`/`p1b`）⇒ **一次定案"为什么没造机"**。

## 25. r5c037 —— ★P1b 真因定案并修复：「选机型判空」极性反写（2026-09-25 03:31）

### 25.1 定案过程（r5c036a 抓样，一次定位）
r5c036a 的探针把范围收死：

| 探针 | 抓样值 | 结论 |
|---|---|---|
| `p1bG` | **1,000,123** | AI 很有钱 ⇒ **"买不起"排除** |
| `p1bC` / `p1bL` | **20 / 1** | 容量、等级正常 ⇒ **"容量为 0"排除** |
| `p1bB` / `p1bQ` | 0 / 0 | 不在建、队列空 ⇒ 两道 guard 都通过 |
| **`p1bZ` / `p1bW` / `p1bS`** | **0 / 0 / 0** | **根本没走到 `startBuild`** ⇒ 阻塞在"机型选择/可负担挑选"这一段 |

再把 r5c036a 的实装 dex 反汇编出来读，真凶现形：

```
31| invoke-static {p1, v6}, Airport;->p1bPickAffordable(...)   # 选到机型返回非 null
32| move-result-object v6
33| if-nez v6, :cond_5e        ← ★v6 非 null（选到了）反而跳去"跳过"
```
⇒ **越"选得到"越不造**，只有"没得造(null)"才会继续。于是：金不掉、队列空、机队恒 0、`p1bZ/W/S` 恒 0 —— 与历次抓样完全吻合。

### 25.2 修复（r5c037）
`if-nez v6, :p1b_u_skip` → **`if-eqz v6, :p1b_u_skip`**（只有 null=没得造 才跳过）。

### 25.3 账：这个错从 r5c033 起就在，5 批没抓到
| 批次 | 当时的假设 | 结果 |
|---|---|---|
| r5c033 | 首版（错寄存器） | 闪退 |
| r5c034 | 修寄存器 p0→p1 | 不崩了，但 `p1bT/p1b` 零 |
| r5c035/035a/035b | 猜"买不起"（并把可负担极性改反又回退） | 抓样否掉"买不起" |
| r5c036a | 加"容量/等级/到达点"探针 | **钉死：没到 startBuild** |
| **r5c037** | 读 dex 第 33 行 | **真因=选机型判空极性反写** |

教训：**"探针零输出"时必须继续往上游找第一个没到的地方**（本轮 `p1bZ` 就是那一刀），而不是猜下游原因。

### 25.4 门禁新增⑬（含负样本证据）
- **⑬ P1b 选机型判空**：`p1bPickAffordable` ⇒ `move-result-object v6` ⇒ 之后第一条 if 必须是 **`if-eqz v6`**，且目标块 `return-void`；
- 负样本：对 r5c036a dex（`3e944acd…`）跑 ⇒ **恰好 1 FAIL**；修复后 **0 FAIL** ✓。

### 25.5 产物
| 项 | 值 |
|---|---|
| dex md5 | `3c61b45d8e49b6a7ac13302d4f81037d` |
| apk md5 / 归档 | `d07a85f3578db65b83484a91def00126` / `build_apk/dbg_signed77_v119_r5c037.apk` |
| arity / sitecheck / 八件套 | BAD 0 / **0 FAIL** / Δ=**0**（只换一个分支指令，无 invoke 变化，符合预期） |
| 装机 | `Success` + **DEX MATCH** ✓ |

### 25.6 下一步
用户推 1~3 回合 → 抓样。**预期首次出现**：`p1bZ`（到达 startBuild）、`p1bW=1`（入队成功）、`p1bS`（机型 ordinal）、`p1b`（扣钱后金）；随后 `p1bQ`/`p1bT`/`p1bM` 上升 ⇒ P1b 造机贯通。

## 26. ★里程碑：AI 造机（P1b）+ AI 派发（P1a）双双贯通（r5c037 抓样，2026-09-25 04:06）

抓样 `r6s5/cur_r5c037.txt`（28.9MB）。**r5c037（修 `if-nez v6`）装机后立刻见效。**

### 26.1 P1b 造机：贯通
| 探针 | 抓样 | 含义 |
|---|---|---|
| `p1bZ` | **785**（BOMBER 755 / ATTACKER 30） | 真正到达 `startBuild` 调用点 |
| `p1bW` | **1 ×60**、0 ×725 | 60 次入队成功；725 次被拒（**因为已到容量上限 20**，符合设计） |
| `p1bS` | **60**（BOMBER 30 / ATTACKER 30） | 60 架成功下线入队 |
| `p1b a=`（扣钱后金） | 60 行，约 **996k–999k**（起点 1,000,123） | **AI 真在扣钱造机**（−500/−320 每架） |
| `p1bT`（总机数） | 阶梯上升到 **20** | 达到 `maxCapacity=20`（`p1bC`=20 一致） |
| `p1bM` / `p1bA` | 各自上升到 **10 / 10** | 轰炸机与攻击机各 10 架 ⇒ 机型小表（占比阶梯）生效 |

⇒ **"AI 造机 + 玩家/AI 同路径扣钱"验收通过**。

### 26.2 P1a 派发：贯通（首次出现 k=0）
| 探针 | 抓样 | 含义 |
|---|---|---|
| `nA4v` | `cand=477 / vis=50` | 选靶链正常（候选 477、视野内 50） |
| `nA4d` | `war=1` ×75 | 处于战争态 |
| **`nA4e k=0`** | **41** | **首次成功派发打击任务**（历史抓样恒 0） |
| `nA4e k=1` / `k=4` | 912 / 35 | 概率门挡 / 空机组（早期回合机队为空） |
| `nATK` | 41 | 攻击任务创建（`tgt=5961/5968/1679/5712/5713/5962/5990/5969`，`civ=73`） |
| `nAH` | 44（`pct=0.15`） | 到达后对目标省执行"陆军 15% 伤害" |
| `nFP` / `nRH` | 42 / 320 | 航程推进 / 返航 |

### 26.3 尚未证实的一项：「真的炸到玩家」
- 玩家 civ = **226**（`pl= a=226` ×1251）；但**日志中没有任何 `civ=226`**；
- 41 次打击中：38 次目标省**无部队**（`sz=0`）、3 次省内部队是 **civ73 自己**（`same=1`，友军不伤，已正确跳过）；
- ⇒ 抓样窗口内**没有打到玩家部队**（没打中 ≠ 没打）。
- 待办：确认被炸省（5712/5713/5961/5968/5969/5990/1679…）的**归属**；若属 226 ⇒ 已达成"炸到玩家基础设施"，若属其它 AI ⇒ 属"AI 互炸"（也是被允许的）。

### 26.4 下一步
1. **问用户**：上述省是否为玩家属地 / 是否看到空袭提示或损失；
2. 如需硬证据：加一枚"目标省归属 + 省份/建筑/人口伤害"探针（小批，1 次构建）；
3. 人物不死：行为验收（连推回合看元首/顾问/将领是否老死）；
4. P2/P3/P4：去重与频率上限（ICBM `Fade/MaxTargets/PriorityDivider`）、空战对称与分工、难度接 `difficultyID`。

### 26.5 用户确认 + 伤害模型解码（2026-09-25 04:08）

**用户确认：被炸省（5712/5713/5961/5968/5969/5990/1679…）全部是玩家（civ226）属地** ⇒ 「AI 真的炸到玩家」**成立**。

`AirMission.executeAttack()` 到达目标省后的伤害模型（dex 实装 1997–2069）：

| 分支 | 条件 | 经济 | 人口 | 陆军 | 战报 |
|---|---|---|---|---|---|
| **轰炸机/战略**（log 中 `pct=0.15` 即此路） | `missionType != ATTACK_ARMY` | `economy -= payload×0.10` | `applyPopDamage(省, payload×1000)` | `applyArmyDamage(省, civ, cap 0.15)` | `emitStrikeReport` |
| ATTACK_ARMY（师级） | `missionType == ATTACK_ARMY` | `economy -= payload×0.02` | `applyPopDamage(省, payload×100)` | `applyArmyDamage(省, civ, 0.35)` | `emitStrikeReport` |

- `nGA`（executeAttack 探针）**只挂在攻击机分支**（注释写明 "attacker tier only; bomber path jumps to :cond_51"）⇒ AI 走轰炸机分支时 `nGA=0` **属预期**；
- `nAHs` 的 `civ=` 是**部队所属文明**（不是省份归属）⇒ 5712/5713 出现 `civ=73` 表示"AI 军队正驻在玩家省里"，因此那次被 `same=1` 判为友军跳过（**防止自己炸自己，行为正确**）。

### 26.6 验收结论
| 验收项 | 状态 |
|---|---|
| AI 造机（含扣钱、机型小表、容量上限） | ✅ 通过 |
| AI 派发打击任务（`nA4e k=0`） | ✅ 通过 |
| AI 任务在飞、到达并结算 | ✅ 通过（`nATK`/`nAH`/`nFP`/`nRH`） |
| **真的炸到玩家（人口/经济/陆军）** | ✅ **通过**（用户确认目标省为玩家属地 + 伤害模型解码） |
| AI 空战对称与分工（拦截/巡逻/SEAD 等） | ⏳ P3 |
| 难度接入（造机折扣/出击频率/视野容差） | ⏳ P4 |
| 派发去重与频率上限（ICBM `Fade/MaxTargets/PriorityDivider`） | ⏳ P2 |
| 探针清理（P5） | ⏳ P5 |

## 27. 【新 bug】AI 出动不可见（"看不见 AI 飞机师飞出来，只见自己被炸"）（2026-09-25 04:23，仅调研）

### 27.1 现象（用户报告）
AI 派发打击后，玩家**看不到 AI 的飞机从 AI 机场起飞/在途飞行**；自己领土却直接挨炸。

### 27.2 调研结论：**两处独立断点**（都实测到）

**断点①（逻辑层，阻断在最前）：侦测链被一个"死字段"掐死**
- 机制：`PlayerFogOfWar.detectEnemyMissions()`（599 行）负责"侦测敌方在途任务"，
  命中后会 `airDetSeen.add(missionID)` 并 `AFM.dispatchAutoIntercept(mission)`（**自动派己方拦截**）。
- 它的第一道判定是：
  ```
  iget v5, mission, AirMission;->airDivisionAtProvinceID:I
  if-ltz v5, :cond_176        ← 该值 <0 直接跳过
  ```
- 而 `AirMission.airDivisionAtProvinceID` **只在构造函数里被写成 -1，全树没有第二处写入**
  （同族 `airDivPrevProvinceID / airDivPrevPrevID / airDivSegAnimMs / airDivSegDurMs` 同样只在构造器写入）。
- 抓样实证（**注意：`logOnce` 写的是 `airdbg_tick.txt`，不是 key 文件**）：
  `nDE_ENTER` = **1047**（侦测在跑）／ `nDR_DET` = **0**（一次都没侦测成功）；
  同期 `um_mv0:…:at=-1` 显示该字段恒为 -1。
⇒ 结论：**侦察永远不成立 ⇒ 不会显示、也不会自动拦截**（这也是 P3 的一半失效）。

**断点②（渲染层）：只画"自己的任务"**
- `ProvinceDrawArmy.drawAirForceMissions()` 对 `activeMissions` 逐个判定：
  ```
  invoke-static {v1}, ProvinceDrawArmy;->isMyMission(AirMission)Z
  if-eqz v2, :goto_c          ← 不是"我的任务"⇒ 跳过绘制
  ```
- `isMyMission(m)` = `Game.player != null && m.civID == player.iCivID`（7521 行）。
- 同样过滤还存在于 `drawAircraftRadar()`（2956 行，雷达层的空情）。
⇒ 结论：**敌方任务在任何图层都不会被绘制**（连"已侦测"的也不例外）。

**（附）AI 机场图标是画了的**：`drawAirportIcons()` 遍历 `allAirports`（所有文明）画通用 `airUnit` 图标
⇒ 玩家能看到"机场存在"，但看不到"驻机/起飞/在途"。

### 27.3 修法设计（P1c 内容，尚未实现）
| # | 内容 | 关键点 |
|---|---|---|
| C1 | **让"任务当前所在省"可用**（解断点①） | 用 `sourceProvinceID → targetProvinceID` + `flightProgress` 插值推算（渲染层已用同一套插值），或恢复 `airDivisionAtProvinceID` 的运行时维护；推荐前者（不改每帧写状态） |
| C2 | **渲染放行"已侦测的敌方任务"**（解断点②） | `drawAirForceMissions` / `drawAircraftRadar` 的判据由 `isMyMission(m)` 改为 `isMyMission(m) \|\| enemyMissionVisible(m)`；`enemyMissionVisible` 读 `PlayerFogOfWar.airDetSeen.contains(m.missionID)`（**只能看见被侦测到的**，避免全图透视）；敌方用不同贴图/透明度 |
| C3 | **出动表现** | 起飞/在途/返航全段可见（现有 `flightProgress` + `state`：EN_ROUTE/EXECUTING/RETURNING 已在渲染逻辑里）；AI 机场在雷达内可显示驻机数（复用 `drawAirDivisionAsPlane`） |
| C4 | **对称性核查** | `AFM` 里的 R4c109 两段（radar-provinces pass / airport-radar pass）是 AI 侧侦测镜像；需确认它们是否同样受"死字段"影响 ⇒ 若受影响，AI 也看不见玩家（P3 需要） |
| C5 | **联动** | C1 修好后 `dispatchAutoIntercept` 才会真正开始工作 ⇒ 这本身就是 P3（空战对称/拦截）的一半 |

### 27.4 在制作流程中的位置（本次要"安排"的结论）
**新增阶段 `P1c：敌方空情可见性（看得见的 AI 出动）`，位置＝紧跟 P1b（AI 造机）之后、P2（派发闸门细化）之前。**

理由：
1. 它是 P1（AI 打击接入）的**玩家可感知闭环**：P1a/P1b 已让 AI"能造、能派、能炸"，玩家却**看不见过程**；
2. P2 的闸门调参（`Fade`/`MaxTargets`/`PriorityDivider`）需要"看得见"才能被人工验证；
3. P3（自动拦截/空战对称）直接依赖 C1 修好的"侦测成功"⇒ 必须排在 P3 之前。

更新后的顺序：`P1a ✅ → P1b ✅ →` **`P1c ⏳（本 bug）`** `→ P2 → P3 → P4（难度）→ P5（清探针）`。

### 27.5 验收方式（P1c 完成后）
1. 抓样：`nDE_ENTER`（在 `airdbg_tick.txt`）与 `nDR_DET` **>0**；
2. 新增/复用探针：`drawAirForceMissions` 放行计数（己方 vs 敌方已侦测）；
3. 肉眼：AI 飞机从 AI 机场起飞 → 在途 → 轰炸 → 返航，全程可见（玩家雷达范围内的省份）；
4. 反向：未被侦测的敌方任务**不应**显示（防全图透视）。

## 28. P1c 实现前全面审计（含对 §27 的更正 + 补丁设计 + 寄存器账）（2026-09-25 04:29）

### 28.1 对 §27 的三处更正（以代码/日志为准）
1. **更正"死字段"说法**：`AirMission.airDivisionAtProvinceID` **不是只在构造器写**。运行时维护有 4 处：
   `pickupAirDivision`（置 0，AirMission:2358）、`placeAirDivision`（置省份，2421）、
   `returnAirDivisionHome`（置 -1，2492/2534）、**`moveDivisionAlongFlight`（置当前省，3554）**。
2. **真正的原因**：这些任务**没有 airhq 师**（`airhqDivision == null`），而
   `moveDivisionAlongFlight()` 的第一句就是 **`if-eqz v14(airhqDivision), :cond_1ad`（3253–3255）** ⇒ **整个方法空转**
   ⇒ `airDivisionAtProvinceID` 永远不更新 ⇒ `detectEnemyMissions()` 的第一道门（`if-ltz`）永远跳过。
   实证：`nRT seg new=` = **0**（含 `iput 3554` 的那段代码从未执行）；`um_mv0:…:at=-1`。
3. **引擎模型澄清**：本作把"在途任务"实现为**借用一个'空军师'实体在地图上移动**。
   `AFM.dedupAirhqDivision(mission)` 在 `RealTimeSim.updateFrame()` 里**每帧对每个任务**先调用（216 行），
   但**只有能找到合适师的任务才会被赋值**（AFM 966–970 双重判空后才 `iput airhqDivision`）⇒ AI 任务拿不到。

### 28.2 同因影响面（都在等这个字段，一并记录）
| 位置 | 读点 | 后果 |
|---|---|---|
| `PlayerFogOfWar.detectEnemyMissions` | 723（门）、990（仅日志） | **侦测永不成功**（`nDR_DET`=0）⇒ 不显示、不自动拦截 |
| `ProvinceDrawArmy.getAirSpriteX/Y` | 6511 / 6591（`if-ltz` 门） | 取不到"任务当前位置"坐标 |
| `ProvinceDrawArmy.drawAircraftRadar` | 3010–3012（`if-ltz` 门） | 雷达层不画任务（含己方？己方另有路径） |
| `ProvinceDrawArmy.drawAirDivisionAsPlane` | 498 / 612 | 机师图标路径依赖它 |
| `PlayerFogOfWar.fogPlaneCross / planeFogCx / planeFogCy / planeFogRY / fogFromPlanes` | 34 / 113 / 152 / 191 / 308 | 飞机的迷雾覆盖圆 |
| **`AFM.aiRadarVision`(4150) / `updateAIAutoIntercept`(3058,3246) / `dispatchAutoIntercept`(3396) / `airCombatOne`(217)** | — | **AI 侧"看见/拦截"同样失效** ⇒ 这就是 P3 的一半 |

### 28.3 补丁设计（最终版，待施工）
| # | 内容 | 寄存器账（已核） |
|---|---|---|
| **C1** | 新增 **`AFM.curProvinceOf(AirMission)Province`**（public static，自带 `.registers 6`）：<br>`m==null`→null；`p=m.flightProgress`；`state==RETURNING`→`p=1-p`；`id = (p<0.5 ? m.sourceProvinceID : m.targetProvinceID)`；`id<0`→null；否则 `Game.getProvince(id)`。<br>（与渲染层 `drawAirForceMissions` 的 source→target+fp 插值同源） | 调用点：`detectEnemyMissions` **723–728** 四行替换为 `invoke-static {v4}, AFM->curProvinceOf` + `move-result-object v12`；**730 行 `if-eqz v12` 原样保留**。<br>审计：`v12` 首次使用原为 728 ⇒ 替换后仍是首次使用 ✓；`v5` 在 726 之后到 756 之前无使用 ✓ |
| **C2** | 新增 **`ProvinceDrawArmy.myOrDetectedMission(AirMission)Z`**（public static，自带 `.registers 5`）：<br>`isMyMission(m) || (PlayerFogOfWar.airDetSeen != null && airDetSeen.contains(Long.valueOf(m.missionID)))` | 把 **1949 / 2994** 两处 `invoke-static` 的**调用目标**由 `isMyMission` 换成 `myOrDetectedMission`（**签名相同**）⇒ 紧随的 `move-result` 与 `if-eqz` 一字不改 ⇒ **寄存器中性** ✓ |
| **C2b** | （可选，第二步）雷达层 `drawAircraftRadar` 3010–3012 的门改用 `curProvinceOf` 坐标 | 单独一批，先保证主层可见 |
| **C3** | 表现：主层已有"source→target 线 + 状态α"（2121–2157 `setColor`+`drawLinePts`）⇒ 敌方任务会画成**航线**；机场驻机暂不做（依赖 airhq 体系） | — |
| **C4** | 把 C1 的 helper **复用到 AI 侧**门（`aiRadarVision`4150 / `updateAIAutoIntercept`3058,3246）⇒ AI 也能"看见"玩家 ⇒ 解锁 P3 自动拦截 | 同 helper，各自调用点单独核寄存器 |
| **C1-B（不做）** | 给 AI 任务也发 airhq 师（走 `syncAirDivisionForType`/`dedupAirhqDivision`）＝最"正统"，但风险高（假 uID 会让引擎 `updateArmy` 越界，见 R5b004 注释）⇒ 留 P3 评估 | — |

### 28.4 门禁（新增，含负样本要求）
- **⑭** `detectEnemyMissions` 的"任务当前省"门必须来自 `AFM.curProvinceOf`（不得再直接 `iget airDivisionAtProvinceID` 后 `if-ltz`）；
- **⑮** 两个渲染门的调用目标必须是 `myOrDetectedMission`（防回退成 `isMyMission`）；
- **负样本**：在现役 dex（r5c037，`3c61b45d…`）上跑 ⇒ ⑭/⑮ **必须报 FAIL**；修好后 **0 FAIL**。

### 28.5 纪律与风险
1. `curProvinceOf` 必须是**纯函数**（无副作用），可安全用于渲染/侦测；
2. **不得把渲染门放宽成"全画"**（会变成全图透视）⇒ 必须挂 `airDetSeen`（已侦测集合）；
3. 新 helper 若被**其它类**调用，必须是 `public`（铁律㉟）；
4. 施工顺序：C1 → C2 → 门禁⑭⑮（含负样本）→ 汇编/八件套 → 构建 → 装机 → 抓样（`nDE_ENTER`/`nDR_DET` 在 **`airdbg_tick.txt`**，铁律㊺）。

## 29. P1c 施工记录：敌方空情可见性（批次 r5c038 → r5c038a）（2026-09-25 04:44）
### 29.1 落地内容
| # | 内容 | 位置 |
|---|---|---|
| **C1** | 新增 `AFM.curAirRealX/curAirRealY(AirMission)I`：以 `sourceProvinceID→targetProvinceID` 的 **`getCenterX_Real/getCenterY_Real`（Real 域）** 按 `flightProgress` 插值，`RETURNING` 时取 `1-p`；无效返回 `-1`。替换 `PlayerFogOfWar.detectEnemyMissions()` 里"`iget airDivisionAtProvinceID` + `if-ltz`"死门（原 723–738 行），改为 `curAirRealX/Y` + `if-gez v13, :cond_176` | AFM（EOF 追加）、FOW（正则定点替换） |
| **C2** | 新增 `ProvinceDrawArmy.myOrDetectedMission(AirMission)Z` ＝ `isMyMission(m) \|\| (airDetSeen != null && airDetSeen.contains(Long.valueOf(m.missionID)))`；把 `drawAirForceMissions`(1949) 与 `drawAircraftRadar`(2994) 的**调用目标**改为它（签名相同 ⇒ 调用点零改动） | PDA |
| **门禁** | ⑭（侦测门必须走 `curAirRealX/Y`，且方法内不得再有 `iget 该字段 + if-ltz`）；⑮（两个渲染门必须调 `myOrDetectedMission`，且两层不得回退 `isMyMission`）；**⑯ 新增常驻门禁 `check_moveresult.py`**（全树 invoke 返回类型 ⇔ `move-result*` 形态） | r5c029_sitecheck.py、check_moveresult.py |
### 29.2 事故与修正（重要教训）
- **r5c038 装机后闪退**：`java.lang.VerifyError: ProvinceDrawArmy.myOrDetectedMission failed to verify: [0x13] copyRes1 v2<- result0 type=Precise Reference: java.lang.Long`
  ⇒ 根因：`Long.valueOf(J)Ljava/lang/Long;` 之后写成了 **`move-result v2`**（应为 **`move-result-object v2`**）。
- **本地八件套全绿也没抓住**（提醒原文即写明"不覆盖 ART 级 VerifyError"）⇒ 因此新增**门禁⑯**：
  在**当前含错树**上跑 ⇒ **恰好报出 1 FAIL / 5520 文件**（该点）；修正后 **0 FAIL**（负样本→正样本双向验证通过）。
- 修正批 **r5c038a**：只改这一条指令；门禁⑯=0、sitecheck⑭⑮=0、八件套 **Δ=0**（未动 invoke，符合预期）。
### 29.3 批次产物
| 批次 | dex md5 | apk md5 | 状态 |
|---|---|---|---|
| r5c038 | `7efcb1c11bfb1cfc853512f80298d631` | `0dafe2df90fa0528dae9bcb7beff8e69` | ❌ 闪退（VerifyError），已作废 |
| **r5c038a** | **`7be646c64e2ef3827a9a2961299b17c5`** | **`548b71d6e63af3907497a3aab48f2e4c`** | ✅ 已装机（`Success` + DEX MATCH） |
### 29.4 待验收（抓样）
1. `airdbg_tick.txt` 里 **`nDE_ENTER` > 0 且 `nDR_DET` > 0**（侦测首次成功）；
2. `airdbg_key.txt` 里出现 `nDR_DET civ=<AI> prov=… type=radar|airport`（`dKey` 走的那个文件）；
3. **肉眼**：AI 飞机从 AI 机场起飞 → 在途**看得见航线** → 被炸 → 返航；未被侦测的敌方任务不该出现。
### 29.5 已知限制（记入待办）
- `airDetSeen` **全树无清理点**（一旦侦测过就一直保留）⇒ "看见过就持续可见"；P2/P5 再评估是否加"任务结束即清除"。
- 雷达层 `drawAircraftRadar` 内部仍以 `airDivisionAtProvinceID` 取坐标（3010–3012）⇒ 该层对敌方任务仍画不出位置（主层已可见）；如需补，走 C2b（用 `curAirRealX/Y`）。
- AI 侧对称（`aiRadarVision`4150 / `updateAIAutoIntercept`3058,3246）仍读死字段 ⇒ **AI 仍"看不见"玩家**，属 P3/C4 范围。

## 30. P1c 修正批 r5c038b：两处判据反写（采纳第三方审查）（2026-09-25 05:07）
### 30.1 审查指出的两个缺陷（**已独立复核确认为真**）
| # | 位置 | 我写的 | 实际语义（🔴错） | 正解 |
|---|---|---|---|---|
| ① | `PlayerFogOfWar.detectEnemyMissions` 的坐标门 | `if-gez v13, :cond_176` | `if-gez`＝**≥0 跳**⇒**有效坐标**被跳去 `:cond_176`→`:goto_176`→`goto/16 :goto_2b`（下一个任务）；`-1` 反而落进侦测体，拿 (-1,-1) 算雷达椭圆 | **`if-ltz v13, :cond_176`**（<0 ＝无效 ⇒ 跳过本任务） |
| ② | `ProvinceDrawArmy.myOrDetectedMission` | `if-nez v0, :modm_chk` | `if-nez`＝**≠0 跳**⇒**己方**任务被跳去查 `airDetSeen`；**非己方**落穿 `return 1` ⇒ 实际语义 = `(!己方) ∨ 已侦测` ⇒ **敌方全画（正是要避免的透视）＋ 己方反而不画** | **`if-eqz v0, :modm_chk`**（非己方 ⇒ 才去查已侦测集合） |
复核方式（三源交叉，不靠记忆）：①旧代码同位置就是 `if-ltz v5, :cond_176`（<0⇒跳过）＋ helper 内 `if-ltz` 挡负值；②引擎旁证（`Airport.updateBuild:760` 等）；③直接看**跳转边**：`:cond_176` 块 = `:goto_176` → `goto/16 :goto_2b`（循环推进＝跳过本任务）。
### 30.2 新增门禁 ⑰/⑱（"对着正解"写，并走负样本→正样本）
- **⑰** `myOrDetectedMission`：`isMyMission` 之后第一条 if 必须是 `if-eqz v0, <LAB>`，`<LAB>` 块须含 `contains`，且 fall-through 必须是 `const/4 v0, 0x1`。
- **⑱** `detectEnemyMissions`：`curAirRealY`+`move-result v14` 之后第一条 if 必须是 `if-ltz v13, <LAB>`，`<LAB>` 块须含 `goto` 且不含 `calcInEllipse`，且 fall-through 须进侦测体（含 `getInstance`）。
- **负样本**（`r5c038a` dex）：⑰ 报 `if-nez v0, :cond_8`、⑱ 报 `if-gez v13, :cond_18b` ⇒ **2 FAIL** ✓；**正样本**（`r5c038b` dex）：**0 FAIL** ✓。
- ⚠️ **门禁自身也曾出错**（见铁律 55/56）：`seq_after` 默认 `span=14` 导致⑱取错位置（假 FAIL）；⑰的报文显示项 span 写窄（显示 False 但判定 PASS）。已修（⑱显式 `span=300`、⑰显示用 `span=14`）。
### 30.3 批次产物（现役＝r5c038b）
| 批次 | dex md5 | apk md5 | 状态 |
|---|---|---|---|
| r5c038 | `7efcb1c1…` | `0dafe2df…` | ❌ VerifyError 闪退（已作废） |
| r5c038a | `7be646c6…` | `548b71d6…` | ❌ 两处判据反写（已作废） |
| **r5c038b** | **`41db18bccd04f97223cdaf2edb043cb9`** | **`d1caaac1070a8c7a9de68c00af900f1e`** | ✅ **现役**（`Success` + DEX MATCH；门禁⑯⑭⑮⑰⑱ 全 0；八件套 Δ=0） |
### 30.4 验收预期（本批修正后）
| 观测 | r5c038a（错） | r5c038b（正解） |
|---|---|---|
| `nDE_ENTER` | >0 | >0 |
| `nDR_DET civ=…` | 恒 0 | **被侦测到时应 >0** |
| 己方飞机/航线 | 看不见 | **看得见** |
| 敌方航线 | 全可见（含从未侦测的） | **只有被侦测的才可见** |

## 31. r5c038b 抓样判读 + 中立国 bug 根因 + 批次 r5c039（2026-09-25 05:22）
### 31.1 抓样判读（`r6s5/cur_r5c038b.txt` 18.8MB / `cur_r5c038b_tick.txt`）
| 观测 | 值 | 结论 |
|---|---|---|
| `nDE_ENTER`（logOnce，**tick 文件**） | **266** | 侦测每帧在跑 |
| **`nDR_DET`（dKey，key+tick 文件）** | **0 / 0** | **侦测仍未成功**（"打我方者必见"这条在本批之前不存在） |
| `um_mv0:…:at=-1:…:hq=0` | 多条（st=1/3、fp 0.05~1.0） | AI 任务**确实在飞**，但仍无 airhq 师（`moveDivisionAlongFlight` 空转） |
| 玩家侧 | 无飞机/航线可见 | 与 `airDetSeen` 为空一致 |

⇒ 结论：渲染侧（C2）已就位，但**没有"可见性来源"**。侦测只认"玩家自己的**雷达省**/机场覆盖圈"（半径 300/600/2400，`calcInEllipse`），
玩家没有雷达/机场覆盖 AI 航线 ⇒ 永远侦测不到 ⇒ 永远不可见。

### 31.2 中立国 bug 根因（用户报告：开战后 AI 会给中立国派轰炸）
`AFM.getEnemyProvincesInRange(Airport, AirType)`（AFM:1386）对范围内省份只做两条过滤：
```
if (province.civID == airport.civID) skip # 自己的省
if (province.civID < 0) skip # 无主
# ⇒ 其余全部当作"敌方"（含中立国！）
```
**完全没有 `isAtWar` 判定** ⇒ 中立国被列为打击目标。**正解**：补 `DiplomacyManager.isAtWar(机场文明, 省文明)`。

### 31.3 批次 r5c039 内容（已装机）
| # | 内容 | 说明 |
|---|---|---|
| **定位探针** | `detectEnemyMissions` 内 6 个 `logOnce`：`inDE_A`(任务非空)/`B`(有存活机)/`C`(是敌方)/`D`(交战中)/`E`(状态=在途或执行)/`F`(坐标有效) —— 插在各前置门**之后**，用 `v12/v13`（该区间死寄存器）、F 用 `v12/v5` | 一次性定位"卡在哪道门"（铁律㊱） |
| **可见性放宽** | `myOrDetectedMission` 重写：`己方 ∨ 已侦测 ∨ **目标省属于玩家**`（`targetProvinceID → Province.getCivID() == Game.player.iCivID`） | 用户语义：**AI 来炸我的省 ⇒ 我必然看得见**；仍不看未被侦测且不打我的敌机（防全图透视） |
| **禁打中立国** | `getEnemyProvincesInRange` 增 `isAtWar(机场文明, 省文明)`（temp 用 **v1**，注意 v3 是省 ID 不能占） | 修用户报告的 bug |
| **门禁** | 新增 **⑲**（选靶必须含 `isAtWar`）、**⑳**（可见性必须含 `targetProvinceID→getCivID→iCivID`）；⑱的 fall-through 窗口放宽到 13 行（探针占行） | 负样本 `r5c038b` ⇒ ⑲⑳ **2 FAIL**；正样本 `r5c039` ⇒ **0 FAIL** |
### 31.4 产物与校验
| 批次 | dex md5 | apk md5 | 状态 |
|---|---|---|---|
| **r5c039** | **`755dd71c95c689676ced011c10ecfd1f`** | **`292932f34e9a1b4ae0d57760c71a95e0`** | ✅ 已装机（`Success` + DEX MATCH）；门禁⑯⑭⑮⑰⑱⑲⑳ 全 0；八件套 **Δ=9**（6 探针 + 2 helper + 1 isAtWar，人工对账一致） |
### 31.5 待验收（下次抓样）
1. `airdbg_tick.txt`：`inDE_A..F` 出现到哪一档 ⇒ 若只到 `E` ⇒ 坐标/数据问题；若到 `F` 仍无 `nDR_DET` ⇒ **确认为"雷达覆盖"问题**（则本批的"打我方者必见"就是正确解）；
2. **肉眼**：AI 轰炸机从 AI 机场起飞、飞行、轰炸、返航**应可见**（因为目标=玩家省 ⇒ 命中新判据）；
3. 中立国：开战后应**不再**出现打中立国的任务（`nA4e`/`nATK` 目标省应全部属于交战国）。

## 32. P1c-3：修 r5c039 引入的两处反写（+NPE 路径）+ 门禁㉑㉒（2026-09-25 05:41）
### 32.1 审查指出、我复核确认为真的两处（同一方法内成对出错）
| # | 位置 | 我写的 | 实际语义 | 正解 |
|---|---|---|---|---|
| ① | `myOrDetectedMission` 中 `airDetSeen` 判空 | `if-nez v1, :modm_tgt` | `if-nez`＝**≠0 跳** ⇒ airDetSeen **非空**时跳去"查目标省"，**"已侦测"整路被跳过**；而 airDetSeen **为 null**（首次侦测前）时落穿到 `contains` ⇒ **NPE** | **`if-eqz v1, :modm_tgt`** |
| ② | 同方法 `contains` 结果判定 | `if-nez v0, :modm_tgt` | `contains`为真（已侦测）时跳走 ⇒ **反而不返回 true** | **`if-eqz v0, :modm_tgt`** |
**必须成对改**：只改①会变成"未侦测 ⇒ return true"＝全图透视。
### 32.2 为什么这解释了"还是不可见"（NPE 会中止整段空军绘制）
`ProvinceDrawArmy.drawAirForce` 把**整个方法**包在 `:try_start_0 .. :try_end_167` + **`.catch Ljava/lang/Throwable`**，
catch 里把 `e.toString()` 写 `AirDbgLog.dKey("AIRDBG", …)`（堆栈另存 `AIRDBG_STK`，只存一次）。
⇒ r5c039 的 NPE 会**中止 drawAirForce 的整帧绘制**（`drawAirportIcons / drawAirForceRadarIcons / drawAirForceBuildingIcons / drawAirForceMissions / drawAircraftRadar` 全在同一 try 内），
⇒ **连己方航线也看不见**——与用户「还是不可见」一致。
（核查：`r5c038b` 抓样里 `NullPointerException`/`AIRDBG_STK` 均为 **0**，因那一版 helper 是 NPE-safe 的；NPE 是 r5c039 重写引入的，故从未在抓样里出现。）
**后续排查利器**：以后凡空军不显示，先在 key 文件里 `grep -a 'NullPointerException\|AIRDBG_STK'`。
### 32.3 门禁升级（⑳ → 定点极性 ㉑/㉒）
- **㉑**：`sget airDetSeen` 之后首条 if 必须是 `if-eqz v1, …`，跳转目标块含 `targetProvinceID`，fall-through 含 `contains`；
- **㉒**：`Set;->contains` 的 `move-result` 之后首条 if 必须是 `if-eqz v0, …`，且 fall-through 含 `const/4 v0, 0x1`。
- **负样本 `r5c039`**：㉑ 报 `if-nez v1`、㉒ 报 `if-nez v0` ⇒ **恰好 2 FAIL**（与审查预测一致）；**正样本 `r5c039a`** ⇒ **0 FAIL**。
### 32.4 产物
| 批次 | dex md5 | apk md5 | 状态 |
|---|---|---|---|
| r5c039 | `755dd71c…` | `292932f3…` | ❌ 两处反写（已作废） |
| **r5c039a** | **`4dae256ce5fd08ba988c34996f046de8`** | **`b523da5112630eb21cdab01177deb9b8`** | ✅ **现役**（`Success` + DEX MATCH；⑯⑭⑮⑰⑱⑲⑳㉑㉒ 全 0；八件套 Δ=0） |
### 32.5 待确认（记入待办，暂不改）
- 审查 §8 读出的原版逻辑："**已被我方拦截机咬住（`hasActiveChaser`）且尚未入 `airDetSeen` 的任务不再走雷达点亮**"。
  需确认设计口径：若希望"有拦截机飞过去也算看见"，则这是**漏标记**，应在 chaser 分支也 `airDetSeen.add`。

## 33. r5c039a 抓样判读 + "飞机不真飞/拦不住"根因 + 批次 r5c040（2026-09-25 06:06）
### 33.1 r5c039a 抓样判读
| 观测 | 值 | 结论 |
|---|---|---|
| `NullPointerException` / `AIRDBG_STK` | **0 / 0** | 上批 NPE 已消失 ✓ |
| `nDE_ENTER` | 279 | 方法在跑 |
| **`inDE_A..F`** | **全 0** | ⚠️ **不是功能没走到，而是探针通道被节流吞掉**（见 33.2） |
| `nDR_DET` | 0 | 侦测仍未成功 |
| 肉眼 | **敌方航线可见** ✓ | "目标是我方省 ⇒ 可见"生效 |
| 中立国 | 不再被炸 ✓ | `isAtWar` 过滤生效 |
### 33.2 踩坑：`logOnce` 是**全局 500ms 节流**，探针不能用它
`AirDbgLog.logOnce` 用**单个静态 `tickMs`**：`now - tickMs < 500` 直接 return（先到先占窗口）。
`nDE_ENTER` 在 `detectEnemyMissions` 方法开头每帧调用 ⇒ **恒占窗口** ⇒ 同帧内更靠后的 `inDE_A..F` 永远打印不出来（279 次 ≈ 279×0.5s 正好吻合）。
**正解**：探针走 **`AirDbgLog.e5i(String,I)`**（内部走 `dKey` → 共享 StringBuilder 缓冲、仅按 500ms 落盘、**不丢失键**）。本批已把 6 个探针全部换成 `e5i`。
### 33.3 根因：AI 任务的 `airhqKey` 为 null ⇒ 永远拿不到"空军师"
```
AFM.dedupAirhqDivision(AirMission) 第 12–13 行：
  iget-object v7, m, AirMission->airhqKey
  if-eqz v7, :cond_94        ← airhqKey == null ⇒ 直接 return（什么都不做）
```
- 没有 airhq 师 ⇒ `AirMission.moveDivisionAlongFlight()` 首句 `if (airhqDivision == null) return` ⇒ **空转**
  ⇒ `airDivisionAtProvinceID` 永不更新（`um_mv0 … at=-1 hq=0`）⇒ 雷达侦测不可能成功、飞机也不"真飞"、自然**不会被拦截**。
- 引擎原意：`syncAirDivisionAirport(机场)`（由 `Airport.updateBuild()` 在**飞机产出时**调用）会为每个机型建"airhq 师"
  （键 = `airhqKey4(civ, 机场省, 机型序号, 1)`；机型序号=1(BOMBER) 时即 3 段键 `airhq_civ_prov`）。
  而 `AirMission.getAirDivKey()` 的回退值也正好是这个 3 段键 ⇒ **只要把 `airhqKey` 填上，整条链就活了**。
### 33.4 批次 r5c040 内容（已装机）
| # | 内容 | 说明 |
|---|---|---|
| **A** | AFM 新增 `public static tagAirhqKey(AirMission, Airport, int typeOrdinal)`：`airhqKey==null && sourceProvinceID>=0` 时写入 `airhqKey(civ, sourceProv, type)`；在 **AI 派发两条分支**（轰炸 type=1 / 巡逻 type=2）各调一次 | 让 `dedupAirhqDivision` 能命中 ⇒ 有师可动 ⇒ 真飞＋可拦截＋雷达可侦测 |
| **B** | 6 个探针 `logOnce` → **`e5i`**（无节流通道） | 下次抓样才能真正看出卡在哪道门 |
| **门禁** | 新增 **㉓**（AI 派发必须给任务打 airhqKey：定义存在 + 两条调用）；负样本 `r5c039a` ⇒ FAIL，正样本 `r5c040` ⇒ 0 FAIL | 防回归 |
### 33.5 产物
| 批次 | dex md5 | apk md5 | 状态 |
|---|---|---|---|
| r5c039a | `4dae256c…` | `b523da51…` | 上一版 |
| **r5c040** | **`930f8e6c0f210c77d8cdfa13a07b7111`** | **`9d3d1c214ae1ca867cc3f680eb10d021`** | ✅ 现役（`Success` + DEX MATCH；门禁⑯⑭⑮⑰⑱⑲⑳㉑㉒㉓ 全 0；八件套 Δ=+3 ＝ 新 helper 1 + 两处调用 2） |
### 33.6 下次抓样的预期（可证伪）
| 观测 | 预期 |
|---|---|
| `inDE_A..F`（key 文件，`nE5` 形式） | 若全出现 ⇒ 前置门都过；缺哪档 ⇒ 卡哪道门 |
| `um_mv0 … hq=` | **应变为 1**（拿到 airhq 师了）；`at=` 会随飞行变化而非恒 -1 |
| `nRT seg new=` | 应 >0（`moveDivisionAlongFlight` 开始真正按省推进） |
| `nDR_DET` | 应 >0（雷达覆盖内被侦测） |
| 肉眼 | AI 飞机**真的从机场飞出来**（机师图标/航线移动）；你的战斗机**能起飞拦截** |

## 34. r5c040 抓样判读（只调研，未改代码）
### 34.1 数据（`cur_r5c040.txt` / `cur_r5c040_tick.txt`）
| 观测 | 值 | 含义 |
|---|---|---|
| NPE / AIRDBG_STK | 0 / 0 | 已稳定 |
| `nE5 inDE_A/B/C/D` | 108 各自 | **前置四门全过**（任务非空 / 有存活机 / 是敌方 / 交战中） |
| `nE5 inDE_E` | 46 | 状态门过 46 次（EN_ROUTE/EXECUTING） |
| `nE5 inDE_F` | 46 | **坐标有效 46 次**（我们的 C1 插值没报错） |
| **`nDR_DET`** | **0** | ⇒ 这 46 次“当前坐标”**从未落入玩家雷达椭圆** |
| `um_mv0 … at=-1 hq=0` | 全部 | **任务仍无 airhq 师**（`hq=` 即 `airhqDivision` 空判定） |
| `nRT seg new=` | 0 | `moveDivisionAlongFlight` 的“跨省推进”段从未执行 |
| `airhq_*` 键 | civ73：`airhq_73_6335`/`_6336`（3 段=BOMBER）＋ `_2_1`/`_3_1`（FIGHTER/INTERCEPTOR）；civ226：`airhq_226_5696` | 引擎已为这些机场建了师（含轰炸机师） |
### 34.2 结论：两处**独立**卡点
**(B1) 侦测的几何门**：A–D/F 都过，但雷达椭圆一次未命中。两个可能：
- 玩法层：玩家雷达省（长波 2400 / 雷达 600 / 无雷达 300，中心=省份中心）与航线不相交——尤其“敌机从自己机场起飞”那段；
- 数据层：我们喂椭圆的“当前位置”是 **source/target 两省中心的连线插值**（与玩家看到的航线一致），若该线不穿雷达圈则永不命中。
⇒ 需要一次**坐标级**探针（打印 x/y ＋ 命中省）才能定论。
**(B2) 任务仍拿不到 airhq 师**（hq=0、seg=0）⇒ 飞机不真飞、不可拦截。三个可疑点（按可能性）：
1. **`AFM.dedupAirhqDivision` 有 1 秒全局限流**（`dedupLastMs`）：它每帧对每个任务调用，但每秒只有“列表里第一个任务”能进——若首任务永远找不到师，后面所有任务被**饿死**；
2. 我给巡逻任务的键格式不符引擎规范（我用 `airhq_civ_prov_2`，引擎为 `airhq_civ_prov_2_1`）；
3. 在飞的任务**可能不是**我们派发的那条路径产出（`nA6c` 只有聚合计数），tag 未作用到它们身上。

## 35. 与旧方案对比：为什么"不做 airhq"要改成"照原版传 divKey"（2026-09-25 06:47）
### 35.1 旧方案（§28 C1-B）"不做"的理由，以及它为何不适用
- 旧理由：给 AI 任务发 airhq 师＝**我们自己手造的师**，假 uID 会让引擎 `updateArmy` 越界（见 `AirMission` 内 R5b004 注释，至今仍有 `key.startsWith("airhq") → skip` 的守卫）。
- **不适用**：原版路径用的师是**引擎自己建的**——`AFM.syncAirDivisionForType()`（由 `Airport.updateBuild()` 在飞机产出时按机型调用）创建，uID = 机型序号 + 7（合法），编制清单自洽；
  且 `AFM.pickIdleDivKey(airport, type)` 只会返回**该省真实存在且未被其它任务占用**的师键。⇒ 不产生假 uID，风险不适用。
### 35.2 参考实现：`AFM.a1bDispatch`（现成的 ICBM/A1 打击链）
```
key = pickIdleDivKey(ap, AirType.ATTACKER)
if (key == null) → 不出兵（跳过该机场）
if (!射程含目标) → 跳过
m = AirMission.createAttackArmy(ap, -1, target, key)     ← divKey 作为第 4 参传入
m.a1bBlind = !目标可见 ; m.a1bAuto = true
activeMissions.add(m)
```
`pickIdleDivKey` 逻辑：`for n=1..10 { key = airhqKey4(civ, 机场省, 机型ordinal, n); if (该省有此师的军队 && getAirMissionByKey(key)==null) return key } return null`.
### 35.3 我们过去的差距（三处）
| 现象 | 原因 |
|---|---|
| 任务无 airhqKey（`um_mv0 … hq=0`） | `createStrategicBombing(ap,target,**0x0**)` —— 第 3 参就是 `divKey`，我们传了 `null` |
| `tagAirhqKey` 合成键无效 | 没经过 `pickIdleDivKey` 的"存在且未占用"检查；巡逻还用了错格式（`_2` vs 引擎的 `_2_1`） |
| 飞机不真飞/拦不住/雷达侦测不到 | 无师 ⇒ `moveDivisionAlongFlight` 首句 return ⇒ `airDivisionAtProvinceID` 恒 -1 |
### 35.4 新方案（本批 r5c041 已实施）
1. **轰炸**：`key = pickIdleDivKey(ap, BOMBER)`；`key==null` ⇒ `p0K(5)` 并跳过；否则 `createStrategicBombing(ap, target, key)`。
2. **巡逻**：`key = pickIdleDivKey(ap, FIGHTER)`；`key==null` ⇒ `p0K(6)` 并跳过；否则 `createPatrol(ap, prov, key)`。
3. **删除** `tagAirhqKey`（两处调用 + 定义）。
4. **保留**渲染侧兜底（`curAirRealX/Y` 插值 + "打我方者必见"），用户确认"反正我们在测试，保留"。
5. 后续（P3）：护航/空优用 `pickIdleDivKey(ap, INTERCEPTOR/ATTACKER)` 同理补上。

## 36. r5c041 施工记录：AI 出兵按原版规矩传 divKey（2026-09-25 06:47）
- 改动文件：`AirForceManager.smali`（`executeAIAssignmentForAirport` 内两处派发点 + 两个新出口块 `:p0_blk5/6`；删除 `tagAirhqKey`）。
- 门禁 **㉓ 改版**：断言 AI 派发必须 `pickIdleDivKey` 取键（2 处）＋空键跳过＋全树不得残留 `tagAirhqKey`。
  **负样本 r5c040 ⇒ ㉓ FAIL**；**正样本 r5c041 ⇒ 全 0**（⑯⑭⑮⑰⑱⑲⑳㉑㉒㉓）。
- 八件套 **Δ=+1**（＋2 pickIdleDivKey ＋2 p0K −2 tagAirhqKey 调用 −1 helper 内 airhqKey invoke，人工对账一致）。
- 产物：dex **`a367f55628e27834ce6b7909470a1737`** / apk **`de359aee4fa8b508a562ffa277a8ae2c`** ⇒ 已装机（`Success` + DEX MATCH），基线已重置。
- 施工小坑：①补丁脚本 `%` 与 `+` 优先级（`%` 只绑最后一段字符串）；②出口块要插在 `.end method` **之前**（我一度插到之后，自检抓到）。
- **下次抓样（可证伪）**：
| 观测 | 期望 |
|---|---|
| `um_mv0 … hq=` | **1**（拿到师）；`at=` 随飞行变化（不再恒 -1） |
| `nRT seg new=` | **>0** |
| `nE5 nA4e k= a=5/6` | 出现＝该机场"无空闲师"（本该不出兵，属正常节流） |
| `nDR_DET` | 有雷达覆盖时应 **>0** |
| 肉眼 | AI 机师图标**真的离开机场沿航线移动**；我方战斗机/拦截机能起飞迎击 |

## 37. r5c041a：修 ART 校验错误「整数常量喂给引用形参」（＋门禁㉔）（2026-09-25 07:10）
### 37.1 审查指出、我复核确认为真
- `AFM.pickIdleDivKey(Airport, **AirUnit$AirType**)String` ⇒ 第 2 参是**引用类型**；
- 我在 r5c041 的两处派发点写成 `const/4 v6, 0x1` / `const/4 v6, 0x2` ⇒ 该寄存器类型是 Integer ⇒ 传给引用形参必被 ART 拒
  （预期 logcat：`Verifier rejected class …AirForceManager…: register v6 has type Integer but expected Reference`）⇒ **启动即崩**（r5c041 已装机，属未爆弹）。
- **全树 9 个既有调用点全是 `sget-object v?, AirUnit$AirType;->BOMBER/ATTACKER/INTERCEPTOR/FIGHTER` 后传寄存器** ⇒ 我这两处是全树唯一异类。
- 审查补充的边界确认正确：`const/4 vX, 0x0` 是 **Zero**，可赋引用（故上一批 `createStrategicBombing(...,0x0)` 传 null 合法）；**非零才违规**。
### 37.2 修法（同形替换，寄存器与 invoke 数不变）
```
1064| const/4 v6, 0x1  →  sget-object v6, …AirUnit$AirType;->BOMBER:…AirUnit$AirType;
1142| const/4 v6, 0x2  →  sget-object v6, …AirUnit$AirType;->FIGHTER:…AirUnit$AirType;
```
### 37.3 新增常驻门禁 ㉔：`check_invoke_argtype.py`
- 判据：`invoke-*` 实参寄存器，其**上一条有效指令**若是 `const/4|const/16|const|const/high16` 且**同寄存器、字面量非零**，而该位形参是引用（`L…;` / `[`）⇒ FAIL。
- **负样本（含错的当前树）⇒ 恰好 2 FAIL / 5520 文件**（无其它误报）；修正后 **0 FAIL**。
### 37.4 产物与校验
| 批次 | dex md5 | apk md5 | 状态 |
|---|---|---|---|
| r5c041 | `a367f556…` | `de359aee…` | ❌ ART 校验崩（作废） |
| **r5c041a** | **`93e9dafca55866c433f022834b6b32b3`** | **`4dab3fbc9e2471b8279ef90123ce56a9`** | ✅ 现役（`Success` + DEX MATCH；门禁㉔⑯ 0、sitecheck 全 0；八件套 Δ=0） |
### 37.5 三连 ART 层事故复盘（工具链已补两道专用门禁）
| 批次 | 错型 | 现由谁兜住 |
|---|---|---|
| r5c033 | 寄存器用错 | 八件套 Regs/Init ＋ 人工 |
| r5c038 | `move-result` 形态错 | **门禁⑯ `check_moveresult.py`** |
| r5c041 | 非零常量喂引用形参 | **门禁㉔ `check_invoke_argtype.py`** |
⇒ 三连都属 ART 校验层，**本地八件套不覆盖** ⇒ 每批「门禁⑯㉔ ＋ 真机启动」双保险。

## 38. 自动拦截专题：dispatchAutoIntercept 全部出口 + 判读探针批 r5c042（2026-09-25 08:09）
### 38.1 r5c041a 抓样（回答"自动拦截怎么没了"）
| 观测 | 值 | 含义 |
|---|---|---|
| `hq=1` | 137 | ✅ AI 任务拿到 airhq 师（真飞） |
| `nDR_DET` | 100 | ✅ 雷达侦测首次成功 |
| `nA4e k=0/5/6` | 14 / 20 / 7 | 派发成功 + "无空闲师"节流 |
| `nDSPT0` | 100 | 拦截调度已真正跑起来 |
| **`nDR_DSPT no-airport`** | **100** | ❌ **全部卡在"选不出机场"** |
| `nDR_DSPT ok` / `nDR_AID ok` | 0 | 成功拦截 0 次 |
| `nDSPT3` | `sz=1 ap0=5716` | 玩家只有 1 个机场（省 5716） |
| `dbgAirport` | `ap=5716 ik=(空) fk=airhq_226_5716` | 无 INTERCEPTOR 师、有 FIGHTER 师（不构成阻碍） |
**结论**：r5c040 之前 `airDivisionAtProvinceID` 恒 -1 ⇒ `dispatchAutoIntercept` **第一行就 return** ⇒ 自动拦截**从未真正工作过**；现在能进，但选不出机场。
### 38.2 `dispatchAutoIntercept` 的 18 个出口（其中 8 个静默）
- 前置闸门：①p0 空 ②省 ID<0 ③省对象空 ④`hasActiveChaser`（已有拦截机在追） ⑤**`dspRetryGate`＝同一任务 4 小时内只试一次** ⑥机组空（有 `dbgDSPTg`） ⑦AFM 空 ⑧机场表空（`nDSPT3`）
- 逐机场：⑨airport 空 ⑩**无可用机（静默）** ⑪**射程不含（静默）** ⑫**无空闲师键（静默，但 `dbgAirport` 已打 ik/fk）** ⑬距离落选
- 选后：⑭未选中（`no-airport`）⑮无师键（`no-divkey`/`nDSPT2`）⑯`createIntercept==null` ⑰机组空 ⑱成功（`nDR_DSPT ok`）
### 38.3 "4 个探针够不够"→ 收敛为 3 个新探针
- ⑫ 已被 `dbgAirport(ik/fk)` + `nDSPT2` 覆盖 ⇒ **不新增**
- ⑬ 仅多机场才有意义（玩家 1 个）⇒ 不适用
- **⑪ 用排除法**：⑩⑫ 探针都不响、又非"选不出" ⇒ 必是超程
- ⑩ 需新增，且要分开"没机 / 在忙 / 机型不符" ⇒ 用 `ta=totalAircraft`、`dp=aircraftDeployed`（后者＝`isInFlight` 计数，见 `Airport.updateDeployedCount`）
- ②③④⑤ 全静默 ⇒ 加**入口计数**，与 `nDSPT0` 对比即知被闸门吃掉多少
⇒ 最终新增 **3 个**：`nDSPTc`（入口计数）/`nDSPT4`（无可用机，打 ta/dp）/`nDSPT8`（选中机场）＋助手 `AFM.dspLogAp(String,Airport)`。
### 38.4 产物与校验（r5c042，已装机）
- dex **`690bce18ed54650c6174b5c7f00137f6`** / apk **`3eea2be22bb3c0f0cacec11d27ec8b4b`**；`Success` + DEX MATCH
- 门禁新增 **㉕**（三探针齐备＋助手存在）：负样本 `r5c041a` ⇒ FAIL；正样本 ⇒ 全 0（⑯⑭⑮⑰⑱⑲⑳㉑㉒㉓㉔㉕）
- 八件套 `SIG CHECKS` +4，但**文件行数实点 +13 条 invoke** ⇒ 见铁律【68】
- 插入点寄存器：`v8/v9`（该体内为 temp）；**`v15 = p0`（参数）禁用**
### 38.5 下次抓样判读表（自动拦截）
| 观测 | 结论 |
|---|---|
| `nDSPTc` 远大于 `nDSPT0` | 被前置闸门吃掉（chaser / 4h 重试窗 / 省无效） |
| `nDSPT4` 出现且 `ta=0` | 机场根本没飞机 |
| `nDSPT4` 出现且 `ta>0, dp=ta` | 飞机全在飞（在忙）⇒ 非 bug |
| `nDSPT4` 出现且 `ta>0, dp<ta` | 有余机但**机型不符**（缺战斗机/拦截机）⇒ 需造对应机型 |
| `nDSPT4`、`nDSPT8` 都不出现 | 必是**超程** ⇒ 玩法参数（拦截航程 < 雷达圈） |
| `nDSPT8` 出现但无 `ok` | 落在后面 ⑮⑯⑰ 之一（已有对应探针） |

## 39. 自动拦截判决（r5c042 抓样）：唯一卡点＝作战半径 CombatRadius（2026-09-25 09:00）
### 39.1 探针判决（`r6s5/cur_r5c042.txt` / `_tick.txt`）
| 观测 | 值 | 含义 |
|---|---|---|
| `nDSPTc` | 230 | 拦截调度被调用 230 次（入口） |
| `nDSPT0` | 169 | 通过前置闸门（②③④⑤）169 次 ⇒ 61 次被 chaser / 4h 重试窗 / 省无效吃掉 |
| **`nDSPT4`** | **0** | **"无可用机"出口从未触发 ⇒ 机场是有可用飞机的** |
| **`nDSPT8`** | **0** | **从未选中机场 ⇒ 卡在循环内的射程/师键判定** |
| `nDSPT2` | 0 | 终局"无师键"未触发 |
| `dbgAirport` | `ap=5722 pv=1 k0=airhq_226_5722 **ik=null fk=airhq_226_5722**` | 有 FIGHTER 师可用 ⇒ ⑫ 不阻碍 |
| `nDSPT3` / `no-airport` | 169 / 169 | 全部以"选不出机场"结束 |
| `nDR_DSPT ok` | 0 | 成功拦截 0 次 |
⇒ ⑩（无可用机）与 ⑫（无空闲师键）均**不成立** ⇒ **唯一剩下的就是 ⑪ 射程**（排除法成立）。
### 39.2 射程由什么决定（本次调研的关键新增）
`dispatchAutoIntercept` 的射程判定 = `AFM.getProvincesInRange(airport, type)`：以**机场所在省中心**为圆心，
半径 = **`AircraftDataManager.types[type].CombatRadius`**（无数据时默认 500 / 类型缺失时 300），取"省中心距离 ≤ 半径"的省集合。
⇒ 也就是说：**拦截的"够得着"完全由机型数据的作战半径决定**。
### 39.3 参数现状（`assets/game/AirUnit/AircraftTypes.json`，可直接改）
| 机型 | CombatRadius（作战半径） | RadarRange | 备注 |
|---|---|---|---|
| INTERCEPTOR | **500** | 700 | 拦截主力 |
| FIGHTER | **400** | 500 | 次选 |
| BOMBER | **1000** | 340 | **敌机轰炸半径 1000 ≫ 我方拦截 400~500** |
| ATTACKER | 370 | 180 | |
对照：玩家长波雷达 **2400**、普通雷达 **600** ⇒ **雷达看得见，拦截机够不着**（"看得见打不着"）。
实测：敌机当前省 6333–6340（其机场省），玩家机场在 **5722** ⇒ 距离远超 500 ⇒ 每次都超程。
### 39.4 三个修法选项（等用户选）
| 选项 | 做法 | 影响面 | 备注 |
|---|---|---|---|
| **A. 改数据** | 提高 `AircraftTypes.json` 里 INTERCEPTOR/FIGHTER 的 `CombatRadius`（如 500/400 → 1200~2000），必要时同步 `RadarRange` | 全局：`getProvincesInRange` 也被 **AI 打击判定** 使用 ⇒ AI 也能打更远（对称） | 不改代码，可逆；需重打包（我们流程已覆盖 assets） |
| **B. 改逻辑（推荐先做）** | `dispatchAutoIntercept` 的射程判定接受"**敌机当前省 或 其目标省**在我半径内" ⇒ "敌人要来炸我，我提前起飞拦" | 仅影响**自动拦截**，不波及 AI 打击范围 | 实现小：循环内对两省各做一次 `contains` 判定 |
| **C. A+B** | 既加强型数据又加"目标省"判定 | 最大 | 若 B 之后仍觉得"够不着"再上 A |
**建议**：先做 **B**（最小、语义最贴"自动拦截"）；若仍嫌够不着，再按 **A** 调数值。
### 39.5 顺带记录
- 本批节奏：`nDSPTc` 与 `nDSPT0` 的差（230 vs 169）说明**4 小时重试窗/已有 chaser** 确实在压制重复调度（属设计行为）。
- 对称性：同一射程门也作用于 **AI 侧自动拦截**（P3）。

## 40. 【更正 §39】自动拦截真正的卡点＝射程门**两处反写**（批次 r5c043）（2026-09-25 09:16）
### 40.1 更正声明
§39 的结论"作战半径不够（超程）"**是错的**——那是我用"排除法"（⑩⑫探针不响 ⇒ 只剩⑪）推出来的，
而 **⑪ 本身方向就是反的**，所以"射程不含"其实是"**射程太含**"。用户当场质疑"这不可能是航程问题"是对的。
### 40.2 真实缺陷（第二份审查 + 我逐行复核，一致）
`AFM.dispatchAutoIntercept` 的射程判定（两个机型各一处）：
```
I 圈： v6 = getProvincesInRange(ap, INTERCEPTOR) … contains(敌师省) → v5
      if-nez v5, :dsp_rng_f     ← ★应为 if-eqz（不在 I 圈 ⇒ 才去试 F 圈）
F 圈： v6 = getProvincesInRange(ap, FIGHTER) … contains(敌师省) → v5
      if-nez v5, :dsp_loop      ← ★应为 if-eqz（不在 F 圈 ⇒ 才跳过该机场）
```
`if-nez`＝**值≠0 才跳**（同方法内 3517/3527 的 `isEmpty()` 用法、以及 3592 `if-nez v6,:dsp_selend2` 可自洽印证）。
代入后化简：**"成为候选" ⇔ 距离 > 战斗机半径(400)** ⇒ **敌机越近越被跳过**：
- 敌机贴脸（<400）⇒ **所有机场全被跳过** ⇒ 永不出拦截（`no-airport`）⇒ **正是用户看到的"轰炸机在我脸上却不拦截"**
- 敌机 >400 ⇒ 反而成为候选（方向错的另一半）
### 40.3 修法与校验（r5c043，已装机）
| 项 | 内容 |
|---|---|
| 改动 | 同批两处：`if-nez v5, :dsp_rng_f` → **`if-eqz`**；`if-nez v5, :dsp_loop` → **`if-eqz`**（标签不动、寄存器不动、invoke 数不变 Δ=0） |
| 门禁 | 新增 **㉖**（`contains` 之后必须 `if-eqz`）：负样本 `r5c042` ⇒ `if-eqz=0 if-nez=2` **FAIL**；正样本 ⇒ 全 0（⑯⑭⑮⑰⑱⑲⑳㉑㉒㉓㉔㉕㉖） |
| 产物 | dex **`ddbcd8c0c989ad00162c3f022f169708`** / apk **`0cd9f5003fd3e486c69951ef5ae10007`**；`Success` + DEX MATCH |
### 40.4 次要注意项（未改，记待办）
选完机场后的取键顺序是"先试 INTERCEPTOR 键、再试 FIGHTER 键"，**不看该机型半径**：
⇒ 若敌师落在 400~500，可能在无空闲截击机时派出**够不到**的战斗机（F 半径 400）。严谨做法：F 分支额外要求 `dist ≤ 400`。
### 40.5 归责与底座问题
审查方报告：`/tmp/base_v119.apk` 的 classes.dex 与 `r5c026_classes.dex` **完全相同**（含 AirDbgLog 等补丁基础设施）
⇒ **我们的"基线 apk"不是原版**，无法用它判定这段代码是原版自带还是我们写的。可确定的是：**r5c037 起它就是这样**，本次 r5c042 的实质差异只有 3 个探针＋`dspLogAp`。
### 40.6 下次抓样（可证伪）
| 观测 | 期望 |
|---|---|
| 敌师贴脸（<400） | **首次出现 `nDSPT8`** → 随后 `nDR_DSPT ok k=` / `nDR_AID ok k=`；肉眼可见我方战斗机/截击机起飞迎击 |
| 敌师 >500 | **应被跳过**（真正的"超程"）⇒ `nDSPT8` 不出现（方向已修正） |

## 41. 【规范落地】每版必附"设计逻辑"（世界书已入）＋ r5c043 设计逻辑独立成文（2026-09-25 09:18）
- 用户要求：**以后每交付一个新版本，必须带上"设计逻辑"（非代码逻辑，越详细越好）**，并写入世界书。
- 已建世界书条目（**常驻激活**）：`交付规范：每个新版本必须附带【设计逻辑】`（11 项模板：版本定位/设计目标/判定顺序/参数阈值/状态生命周期/边界不变量/玩家可感知表现/失败与回退/验收标准/规则级变更清单/风险待办）。
- 本次已按模板产出：**`r6s5/设计逻辑_r5c043.md`**（现役版本 r5c043 的完整设计逻辑）。

## 42. r5c044 —— 「活猎手」去重门修正（严格调研 → 定口径 → 成对修 → 门禁㉗）（2026-09-25 09:53）
### 42.1 起因
第三方审查指出 §39/§40 修复后仍有三处疑点，其中①`hasActiveChaser` 与文档 §3② 不一致（"本条最需定口径"）；
②取键顺序不复核战斗机半径（风险①）；③F⊂I ⇒ F 分支恒不成立（文档措辞需改）。
### 42.2 调研结论（证据链，四源交叉）
1. **设计文档**（`r6s5/漏网轰炸机_拦截再派发_调研v1.md` §四/§七）明写：`hasActiveChaser` 命中 =
   `civ==防守方 ∧ type==INTERCEPT ∧ targetMissionID==敌ID ∧ state∈{EN_ROUTE,EXECUTING}`；两链判定统一为
   **"已侦测 ∧ 有猎手 ⇒ 跳过"**（无猎手即可重扫重派）。
2. **三个调用点**传的都是"我方/防守方"文明：`AFM.dispatchAutoIntercept`（dspCivForce>0 ? 强制 : player.iCivID）、
   `FOW.detectEnemyMissions`（`iget v1, Player;->iCivID`，本批已逐行核）、`AFM.updateAIAutoIntercept`（被攻击省的拥有者文明）。
3. **历代备份**（`pre_r4c167p` … `pre_r4c176`）该判据**一直是 `if-eq`** ⇒ 这条反写不是本会话引入，而是
   自 r4c166d（"改显式 v11"的那次闪退修复）起就存在 ⇒ **"活猎手"去重门从未生效**。
4. **姊妹链结构**：AI 链（`updateAIAutoIntercept`）两条门都是 `if-eqz` ⇒ `skip ⇔ 已侦测 ∧ 有猎手`（正确）；
   FOW 链第一条门是 `if-nez` ⇒ 全树唯一异类。
5. **别名证据**（附带纠正一条旧认知）：产物 dex 反汇编后该方法首条判据显示为 `if-eq v5, p2, …`
   —— baksmali 把参数寄存器还原成 `p*`，且**宽参占两位**（本方法 `.registers 12` + `(J,I)` ⇒ 长参 = p0/p1，int 参 = p2 = v11）。
   这正是 r4c166c 当年写 `p1` 会汇编成 `v10`（long 高半字）而闪退的原因。
### 42.3 本批改动（3 处，均为规则级）
1. `AFM.hasActiveChaser`：`if-eq v5, v11, :hac_next` → **`if-ne v5, v11, :hac_next`**
   （命中条件恢复为"任务文明 == 传入文明（防守方）"，与文档一致）。
2. `FOW.detectEnemyMissions`：helper 调用前那条门 `if-nez v5, :rr_p1` → **`if-eqz v5, :rr_p1`**
   （成对修改，铁律【60】）：使 skip ⇔ 已侦测 ∧ 有猎手，与 AI 链一致；否则修正①后会变成
   "未见 ∧ 有猎手 ⇒ 不侦测"（可见性隐患）。
3. `AFM.dispatchAutoIntercept`：新增 `nHAC` 计数探针（活猎手门命中次数），用于验收"有猎手时不重派"。
### 42.4 门禁
- 新增 **㉗**（活猎手判据必须是 `if-ne v5, v11|p2`）+ **㉗b**（FOW 配对门必须是 `if-eqz v5, …`）。
- 负样本 = 现役 r5c043 dex ⇒ **恰好 2 FAIL**（㉗：`if-ne=False if-eq=True`；㉗b：`if-nez v5, :cond_98`），其余全 PASS；
  正样本 = r5c044 dex ⇒ **0 FAIL**。
- 门禁自身修一处误报：baksmali 会把参数寄存器还原为 `p*` ⇒ 断言必须同时接受 `v11` 与 `p2`（否则报"if-ne/if-eq 都 False"）。
### 42.5 产物与对账
- dex `323fdab08bfa777fe0a88b25d19eff45`（⚠️ 汇编非确定，md5 只对本产物有效）｜apk `317c8ac24d386d697d9c72f545acfc9f`｜`build_apk/dbg_signed77_v119_r5c044.apk`。
- 装机：`Success`；设备侧 dex md5 **DEX MATCH**（借道 `r6s5/devverify.sh`，该脚本本批被重建）。
- 人工实点：AFM `invoke-` 行 1148→**1149（+1 = nHAC 探针）**、FOW 450→**450（+0 = 纯极性）**；八件套 `Sig Δ=1` **与 +1 一致**（铁律【68】对账通过）；Invoke/Regs/Init/Range BAD=0。
### 42.6 验收（可证伪）
1. `nHAC` 应出现且 >0（我方拦截机已在追时，同一敌机不再被重复派）；
2. `nDR_DSPT ok k=` / `nDR_AID ok k=` 仍能出现（去重门不会把"该派的"也挡掉）；
3. `nDR_DET` 仍 >0（FOW 配对门修正后侦测不受损）；
4. 肉眼：敌机进圈 ⇒ 我方起飞迎击（§40 的修复保持有效）。
### 42.7 未改（待办）
- **风险①（保留）**：取键顺序"先截击机师、再战斗机师"不复核战斗机半径 ⇒ 敌机落 400~500 且无空闲截击机时，可能派出够不到的战斗机。修法：战斗机回退分支额外要求"在战斗机圈内"。
- **措辞（保留）**：因 INTERCEPTOR 500 > FIGHTER 400，F ⊂ I ⇒ F 分支当前恒不成立，实装判据等价于"dist ≤ 500"，"先 I 后 F"只是形式。

## 43. 【规范落地】r5c044 设计逻辑独立成文 + 世界书常驻规范已生效（2026-09-25 09:53）
- 用户新增强制要求：**每个新版本交付时必须附带"设计逻辑"**（11 项：版本定位/设计目标/判定顺序/参数阈值/状态生命周期/边界不变量/玩家可感知表现/失败与回退/验收标准/规则级变更清单/风险待办），并写入世界书。
- 已建世界书条目（常驻激活，priority 100）：`交付规范：每个新版本必须附带【设计逻辑】`。
- 已按模板产出：r5c043 → `r6s5/设计逻辑_r5c043.md`；**r5c044 → `r6s5/设计逻辑_r5c044.md`**。

## 44. r5c044 抓样判读 —— 「自动拦截」首次真派机（2026-09-25 11:05）
### 44.1 结论：里程碑达成（玩家已验证"真会飞"）
| 观测 | 值 | 含义 |
|---|---|---|
| `nDSPT8` | **12** | 自动拦截**首次选中机场**（历史首次；r5c043 之前恒 0） |
| `nDR_DSPT ok k=airhq_226_5715` | **12** | 每次选中都**成功建了拦截任务**并带上真实空军师键 |
| `nDR_AID ok k=airhq_226_5715 civ=226` | **12** | 与上一行逐条成对（同一次派发在两条链各留一条痕）|
| `no-divkey` / `create-null` / `no-aircraft` | **0 / 0 / 0** | 派发链**无一处失败**（有师才出兵、有飞机才起飞）|
| `um_mv0 … hq=1` | **104 / 104** | 抽样的任务推进**100% 绑定到真实"空军师"**（此前恒 `hq=0`） |
| `um_mv0 st=` | 1:27 / 3:77 | 在途与返航状态都在推进；`fp` 0→18 |
| `nDR_DET` | **444** | 雷达持续点亮（样例 `civ=73 prov=6335 type=radar`）|
| crash buffer | 本局 **0** 条 | 那 18 条是 12:39 的旧版（PID 6719/9151，`ProvinceDrawArmy` VerifyError，r5c038 时代）|
⇒ **r5c043（射程门方向）+ r5c044（活猎手门）落地后，"雷达看见 → 半径内起飞 → 用真实空军师执行"整条链路第一次真正跑通。**

### 44.2 未判到 / 待办（诚实记录，不当作成功）
1. **`nHAC` = 0**（内层活猎手门从未被触发）。两种解释**无法用现有探针区分**：
   (a) 两条链的外层门现在已在"调用 dispatchAutoIntercept 之前"就拦住了（本批把 FOW 首门修正后，`已侦测 ∧ 有猎手 ⇒ 跳过` 会先发生）⇒ 内层门成为冗余的第二道；
   (b) 我方拦截任务寿命短于 4 游戏小时冷却 ⇒ 下一次尝试时已无猎手。
   ⇒ 下一批在**两条链的跳过点**各加一个计数（如 `nSKIPa`/`nSKIPb`）即可区分。**本批既不算通过也不算失败。**
2. **448 次 `no-airport` 里有 432 次自检为 `nDSPT3 sz=1 ap0=5715 n0=-1`** ⇒ 防守方只有 1 个机场(5715)，而该机场所在省的 `Game.getProvince()` 返回 **null**；但同一机场在另外 12 次里能正常算出距离并成功派机 —— **自相矛盾，需下一批定位**（猜测方向：跨局/跨场景残留的机场列表，或 province 列表越界；`nDSPT4`=0 已排除"无机可用"这一路）。
3. **风险①**（取键顺序不复核战斗机半径）仍在，未改。
4. `nDSPT4`=0 与上批(547)相反 ⇒ 本局我方机场始终有可用机（飞机没被打光）。
5. P2（派发闸门细化）/ P3（空战对称与分工）/ P4（难度）/ P5（清探针）仍待排。

### 44.3 本批结论一句话
**"AI 会飞 + 我方会拦"这条主链路已闭环并通过实测；剩下的都是"闸门精细化"和"探针语义澄清"级别的收尾。**

## 45. 【归档索引】自动拦截闭环已归档（r5c037 → r5c044）（2026-09-25 12:07）
- 归档文件：**`r6s5/归档_v2_自动拦截闭环_r5c037-r5c044.md`**（批次链表 / 元教训 / 当前主链设计 / 遗留入口 / 关键路径）。
- 现役版本：**r5c044**（dex `323fdab0…` / apk `317c8ac2…`）；回滚点：r5c037。
- 本段结果：①看得见 ②真的在飞 ③拦得住 —— 三条主链均通过实测；玩家确认"这次是真会飞了"。
- 计划书章节索引（本专题）：
  | 章节 | 内容 |
  |---|---|
  | §27–§34 | P1c 可见性（调研/审计/施工/修正批 r5c038–r5c039a） |
  | §35–§37 | 新旧方案对比 + P1c-5 出兵传师键（r5c041/r5c041a） |
  | §38 | 自动拦截专题（出口全集 + 探针批 r5c042） |
  | §39 | ~~自动拦截判决（作战半径）~~ **已被 §40 更正** |
  | §40 | 【更正】射程门方向反写（r5c043） |
  | §41/§43 | 交付规范：每版必附"设计逻辑"（世界书常驻条目） |
  | §42 | 活猎手去重门修正（r5c044） |
  | §44 | r5c044 抓样判读（首次真派机 12 次） |
  | §45 | 本索引 |

## 46. 【调研】飞机导弹动画的坐标域问题（2026-09-25 12:20）—— 只读，未改码
- 结论：**导弹 FX 的弹体位置与尾迹存的是屏幕坐标**（`msFxX/msFxY`、`msFxTX/msFXTY`），相机平移/缩放时不重投影
  ⇒ 滚动地图时"粘在屏幕上随屏幕走"；飞机本体因每帧重算而正常。
- 证据链、症状机制对应、已排除项（核弹动画 / 机炮 FX / 飞机本体）、三种修复方案（A 最小 / **B 推荐：只存世界坐标** / C 参数化）、
  可证伪验收标准、风险待办 ⇒ 全文见 **`r6s5/调研_导弹动画坐标域_v1.md`**。
- 涉事代码：`ProvinceDrawArmy.drawAirMissileFx/msFxStep/msFxTrailAdd`（8772 / 8978 / 9143）+ `AirMission.msFx*` 字段（117-131）。
- 关键对照：`getAirSpriteX/Y`（6508 / 6588）每帧重算 ⇒ 正确；`getAirDrawPosX/Y`(IF) = `(iCenterShift + mapCoords.pos) * scale` ⇒ 屏幕域定义。
- **状态：待用户选方案（A/B/C）后再施工**；本批未改任何代码。

## 47. 【运维】全盘空间清理记录（2026-09-25 12:20）
| 位置 | 处理 | 腾出 |
|---|---|---|
| proot `/tmp`（"AI 电脑"） | 删 25 个历史 signed/aligned apk（保留 base_v119.apk）、门禁 dump 目录（bk*/neg*/pos*/rev*/icbm）、ctl/旧 classes dex、日志 | ≈20 G |
| `/var/cache`、`/root/.cache` | 清空 + `apt-get clean` | ≈0.2 G |
| `/data/local/tmp` | 删 `r5c044.apk`(738M)、ui_dump.xml 等 | ≈0.7 G |
| `历史23/build_apk` | 删 `r5c043`（已被 r5c044 取代，回滚点 r5c037 保留） | ≈0.74 G |
| `r6s5/cur_*.txt` | 删旧抓样（仅留 `cur_r5c044_tick.txt`） | ≈0.25 G |
| `历史23/*.log` | 删 `r4c197_full/boot.log` | ≈0.01 G |
| **合计** | `/data` 可用 **12G → 33G**（95% → 85%） | **≈22 G** |
- 保留（铁律【13】）：5 个 jar、`debug.keystore`、`rebuild_v119fix.py`、`base_v119.apk`、`RunSmali.class`、10 个资源文件、`/tmp/e3`、`/tmp/w3a`、`/tmp/r5c044_classes.dex`。
- 未动（用户个人资料，仅报告）：`/sdcard/GLG` 内游戏/小说等（Hearts of Iron IV 11G、LimeLightLemonadeJam 2G、千恋＊万花 1.2G…）、
  `/sdcard/Download`（16G，含 game 6.6G / QuarkDownloads 2.6G / 123云盘 2.1G，以及一处 `…zip` 与 `…zip.bak` 重复）、DCIM 5.6G / Pictures 4.4G。

## 48. 【调研】方案B（导弹世界域）施工前置审计（2026-09-25 12:30）—— 只读，未改码
- 用户已**选定方案 B**；本节是"动手前"的全量可行性审计 ⇒ 结论：**可行、0 新字段、0 新方法、3 处改动、约 40 条指令**。
- 坐标域公理：`屏幕 = (世界 + 相机) * scale`（`getAirDrawPosX/Y` 6452/6480 = `(iCenterShift + mapCoords.pos) * scale`）；
  **逆变换全树不存在**（0 命中）⇒ `world = 屏幕/scale − 相机` 需自写。
- 存档面安全：`Save_AirMission` 的 22 个字段**无任何 `msFx*`**、全树 `*Save*.smali` 0 命中 ⇒ FX 状态不落档，改语义零兼容风险。
- 封闭性：`msFxStep` 1 个调用点、`msFxTrailAdd` 2 个（都在 `msFxStep` 内）、`drawAirMissileFx` 1 个（1957）；
  **共享 helper 不可动**：`getAirSpriteX/Y` 各 3 调用点（含机炮 FX）、`getAirDrawPosX/Y` 各 27 调用点。
- 三处改动点（含寄存器分配）：
  ① **8869↔8870 之间**：端点「屏幕→世界」换算（20 条；v4=camObj、v11/v12 临时、v14=camX、v15=camY；`+0x14` 保持屏幕域）；
  ② **8895 后 + 8900-8905 替换**：尾迹逐点投影（v14=scaleF、v15=camXF、v0=camYF；净增 6 条/点）；
  ③ **8937-8942 替换**：弹体投影（v11=scaleF、v12=camXF、v13=camYF）。
- **不动清单（红线）**：8775-8790 运行门、8808-8864 端点有效性判定、8866-8869 `+0x14`、8870-8876 缩放钩子、
  `msFxStep`/`msFxTrailAdd` 全体、四个共享 helper；`.registers` 不上调；不插在 invoke 与 move-result 之间。
- 死字段：`msFxVX/msFxVY` 全树 0 引用（备用容器）。
- 阈值影响：到达 8 单位 / 尾迹间距 4 单位 / `msFxSpd` 改为世界单位 ⇒ **scale=1 时与改前逐像素等价**，缩放时观感有差异。
- 待拍板 2 项：①阈值是否按 `1/scale` 补偿（推荐不补偿）；②`msFxLastScale` 清尾迹钩子保留（推荐）还是移除。
- 全文：**`r6s5/调研B_导弹世界域施工前置_v1.md`**。**状态：只读调研完成，未改一行 smali**。

## 49. 【交付】r5c045：导弹 FX 世界域改造（2026-09-25 12:44）
- **本版做了什么**：飞机导弹特效（弹体 + 尾迹）由"屏幕坐标域"改为"世界坐标域"；绘制时统一投影 `(世界+相机)×缩放`，
  与省份/飞机同源（`getAirDrawPosX/Y`）。**零新增字段、零寄存器上调**。
- **三处改动**（文件 `ProvinceDrawArmy.smali`，行号为本版新行）：
  ① 端点换算 `世界 = 屏幕/缩放 − 相机`（插在原 `+0x14` 之后；寄存器 v0/v11/v12/v13）；
  ② 尾迹绘制整体移入**新方法** `msFxDrawTrail(SpriteBatch, AirMission)`（世界→屏幕逐点投影；原内联循环 8881-8916 换成一次调用）；
  ③ 弹体投影（原 8937-8942 替换；寄存器 v2/v11/v12/v13）。
- **红线未触碰**：8775-8790 运行门、8808-8864 端点有效性、8866-8869 `+0x14`、8870-8876 缩放钩子、
  `msFxStep` / `msFxTrailAdd` 全体、`getAirSpriteX/Y` 与 `getAirDrawPosX/Y` 全部。
- **复核抓出的坑（重要）**：`drawAirMissileFx` 是 static `.registers 16` ⇒ **p0=v14、p1=v15**，
  参数寄存器不可当临时用（p0 一直用到 8950 的 setColor）。故尾迹循环必须独立成方法（新方法内局部 v0..v13 全可用）。
  前一轮"用 v14/v15 当浮点临时"的设想是**错的**，已在施工前纠正。
- **产物**：dex `80b773703122e62bd36bfc26fa1fc0f3`（7355800 B）／apk `0afa275880783e2030201eb715b26c22`（738374836 B，Earth3 条目 18510）。
  文件 9593→9657 行；`invoke-` 906→915。
- **门禁**：八件套 ✅（Regs/Init/Range/Invoke BAD=0；Cast=50、Undef=4、MISSING=14 均白噪）；
  对照组 Sig 152714 → 152723（Δ=+9 ＝新增 invoke 数，逐条对账：P1 +2、P2 −1、P3 +3、新方法 +5）；
  `check_branch.py` 对两方法：方向可疑=0。**设备侧独立核验**：`base.apk` md5 与 `classes.dex` md5 均与本地一致。
  ⚠️ `install.sh` 第 4 步本次出现 `Failure calling service`（Shizuku 瞬时故障）却仍打印"✅ 一致"⇒ **install.sh 该步有假阳性**，已用独立核验覆盖（待修脚本）。
- **阈值语义**：到达 8 世界单位、尾迹间距 4 世界单位、`msFxSpd` 改为世界单位/毫秒 ⇒ `scale=1` 时与改前逐像素等价。
- **验收**：拖动地图 / 缩放地图 / 发射→命中 / 读旧档；不通过判据见设计逻辑 §9。**状态：⏳待用户实测抓样**。
- 全文：**`r6s5/设计逻辑_r5c045.md`**。

## 50. 【事故·已修】r5c045a 装机后启动闪退（VerifyError）—— 类名字符串写错 + 新门禁㉘（2026-09-25 12:55）
- **现象**：r5c045a 装机后**一进游戏就闪退**（进程起 → 立刻死）。
- **崩溃原文**：
  `java.lang.VerifyError: Verifier rejected class aoc.kingdoms.lukasz.map.province.ProvinceDrawArmy:`
  `void ...msFxDrawTrail(SpriteBatch, AirMission) failed to verify: [0x52] 'this' argument 'Reference: textures.Image'`
  `not instance of 'Reference: textures.Images'`
- **根因**：新方法里的绘制调用被我写成了 `Laoc/kingdoms/lukasz/textures/Images;->draw(...)`（**复数类**），
  正确目标是 `Laoc/kingdoms/lukasz/textures/Image;->draw(...)`（**单数**）。`Images` 类里**没有** `draw` 方法；
  而接收者寄存器（`Images.pix` 字段）静态类型是 `Image` ⇒ ART 校验器直接拒绝整个类。
- **为什么门禁没拦住**：八件套（CheckInvoke/CheckRegs/CheckInit/CheckRange/CheckSig/Cast/Undef）**不校验**
  "被调用类是否真的声明了该方法"，只校验寄存器数/类型流等。⇒ 属门禁空白区。
- **修复**：更正类名（源码 `r5c045_fix.py` 中把 `IMG` 拆成 `IMG`=`…/Image;` 与 `IMGS`=`…/Images;`，
  并加 3 条后置断言：draw 目标必须是 `Image`、全文件不得出现 `Images;->draw`、pix 必须取自 `Images`）。
- **新常驻门禁㉘**：`toolchain/act/check_invoke_target.py` —— 逐条 invoke 校验目标类（含父类链）**真的声明了该方法**；
  父类不在树内（java/lang/Thread、libGDX 等）⇒ 记为"无法判定"跳过；第三人 `com/**` 既有噪声记入忽略。
  **负样本（坏产物）命中 1 条**（正是 9033 行）；**正样本 0 条**。→ 已按铁律⑥"新门禁先跑负样本"执行。
- **另一个坑（install.sh 假阳性）**：装机第 4 步"设备侧核 dex"在 Shizuku `cmd` 服务瞬时故障时会打印
  **空输入的 md5 `d41d8cd9…`** 却仍报"✅ 设备 dex 与本地一致"⇒ 该步不可信。
  本次已用独立命令复核：`cmd package path` → `md5sum base.apk` = `0afa275880783e2030201eb715b26c22`、
  `unzip -p base.apk classes.dex | md5sum` = `80b773703122e62bd36bfc26fa1fc0f3`（均与本地一致）。
- **最终状态**：r5c045（修复后）已装机；装机后 **启动自检无 VerifyError/FATAL，进程存活 65s+**。
  设计逻辑与本表 md5 均已更正为修复后产物：dex `80b77370…` / apk `0afa2758…`。

## 51. 【归档 v3】导弹动画「世界域改造」（r5c045，已验收）（2026-09-25 13:27）
- 玩家视角：**导弹不再粘在屏幕上**——拖地图/缩放时它和飞机、省份一起走。
- 链：定位（§46）→ 用户选 B → 施工前置审计（§48）→ 施工 → **事故：VerifyError 闪退**（§50）→ 修复 + 新门禁㉘ → 交付（§49）→ **用户实测通过** → 归档。
- 元教训：invoke 类名字符串是代码（`Image` vs `Images`）｜新门禁必须先跑负样本｜static 方法 `p0=v14/p1=v15` 别名坑｜install.sh 第 4 步假阳性｜"过八件套 ≠ ART 接受"。
- 全文：**`r6s5/归档_v3_导弹世界域_r5c045.md`**。产物 dex `80b77370…` / apk `0afa2758…`。

## 52. 【调研】P2「AI 派发闸门细化」（只读，未改码）（2026-09-25 13:27）
- **现状**：AI 派发**只有一道 10% 概率门**（每回合每机场一次）；无上限、无去重、无换靶、无避硬目标。
- **节拍**：`GameThread_Turns` → `AirForceManager.updateAll()`（7340）→ `update(civID)`（7083）→ 遍历机场 → `executeAIAssignmentForAirport`（1021）。
- **拟补 5 道闸**（判定顺序：概率门 → 上限门 → 选靶（换靶/避硬）→ 去重门 → 建任务）：
  1) 去重：`(civID, type=STRATEGIC_BOMBING, targetProvinceID)` 已在飞则跳过 —— 落点 `executeAIAssignmentForAirport` 建任务前；
  2) 上限：每文明在飞战略轰炸任务 ≤ **K（拟 2）** —— 同处；
  3) 换靶：选靶时跳过"已被同型任务瞄准"的省 —— 落点 `aiPickVisibleTarget` 候选循环（8043 前）；
  4) 避硬目标：跳过有**防空建筑**的省 —— 同处；**前置**：防空建筑 id 在原始资源里（`/tmp/Buildings_new.json` 无 `antiAir`，需从 apk assets 取）；
  5) 视野门口径复核：`nA4v vis=` 恒定 218 的定性。
- **已排除**：`p0V` 标签错位——`p0V(a,b)` 内 `cand=a/vis=b`，全树唯一调用点 `aiPickVisibleTarget:8053` 传 `(v2,v4)`，口径正确 ⇒ 需实测定性。
- 风险：闸门叠乘可能把空袭频率压低 ⇒ 建议**先 dry-run（只统计不拦截）跑一轮**。
- 全文：**`r6s5/调研_P2派发闸门细化_v1.md`**。施工批建议号 **r5c046**（必附设计逻辑）。

## 53. 【调研】ICBM 空军 AI 全套参照（只读）+ 据此调整后续步骤（2026-09-25 13:44）
- **对象**：`/sdcard/GLG/历史23/ICBM Escalation Endless October PROPER`（完整版）。
- **核心发现**：ICBM 的空军派发**不是概率门**，而是四层数据驱动系统 ——
  **战略层**（`AI/StrategyConquest.txt`：科技门 `MinRequired`、核常规投入比 `PreferNuclear`、入侵编组 `Minimal "Airport" x1`、按 Effort 阶梯补兵、失败自动加码）
  **→ 编组层**（`AI/GroupsConquest.txt`：5 个空军组，各有 `PlacementType`/`DistanceFrom`/`DistanceType(radar|flight|weapon)`/`extra missile`/`Return when`）
  **→ 目标层（派发闸门本体）**：`Target` + `Priority`(默认1) + **`Fade`**（每次被瞄准后优先级乘数，单位 0.02 / 城市 0.4）+ **`MaxTargets`**（同时目标数，默认 1；空军组普遍 3）+ **`PriorityDivider`**（候选 ≥ 现目标 50 倍才换靶）+ **`Avoid`**（绝对不打的单位类型）+ `MaxDist` + `Immediate`/`Defence`
  **→ 单位层**（`Units/Units.txt`：`Range`/`Speed`/**`MaxAutoEngageRange`**/`Slave`/`AutoReturn`）。
- **难度层**：`AI/limits.txt` —— 每难度一行阈值（`StartWar` 0.15/0.125/0.10/0.075，`KillAll…`）⇒ 难度改**阈值**而非数值作弊。
- **对我们的三条修正**：
  1. **"去重"改用 Fade 式降权**（不硬拦）⇒ P2 拆 **P2a（无记忆：优先级表 + 在飞上限 + 避防空）** 与 **P2b（有记忆：Fade + 换靶阈值；需先查存档面）**。
  2. **优先级表按机型/任务分表**（ICBM：战略组怕 SAM、SEAD 组专打 SAM、战术组首打敌机场）。
  3. **`MaxAutoEngageRange` 按机型定位重排**（截击≈全航程 3000/3000，战斗≈半航程 1200/2400）⇒ 我们截击 500 / 战斗 400 的表应在 **P3** 按此逻辑复核。
- **调整后的后续步骤**：
  `P2a（r5c046：优先级加权选靶 + 在飞上限 K + 避防空/避硬目标）`
  `→ P2b（r5c047：Fade 衰减 + PriorityDivider 换靶；前置＝存档面调研）`
  `→ P3（空战按机型分工：战略/战术/SEAD/专精，并重排自动交战半径）`
  `→ P4（难度照 limits.txt：每难度一行阈值表）`
  `→ P5（清探针）`。
- 全文：**`r6s5/ICBM空军AI全调研_v1.md`**；P2 方案已按 ICBM 修订为 v2（见 `调研_P2派发闸门细化_v1.md` §九）。

## 54. 【重定基线】把"自动打机"接给 AI：口径对齐 + 步骤重排（2026-09-25 14:01）
> 用户口径：**不照抄 ICBM；我们之前做过玩家侧的自动打机，现在要把它接入 AI；要有本作特色。**
> 全文：**`r6s5/调研_自动打击与自动拦截_现状与AI接入_v1.md`**

### 54.1 名词对齐（先定名，再谈设计）
| 口径 | 是什么 | 现状（本树取证） |
|---|---|---|
| **A. 引擎「机场模式驱动自动派发」** | `Airport$Mode ∈ {{OFFENSIVE, PATROL, AI}}`；PATROL→`tryPatrolForAirport`（AFM:2580）、AI→`executeAIAssignmentForAirport`（AFM:1021）；OFFENSIVE 无消费端（手动） | **AI 侧已接通**：r5c026 判据改 `mode==AI 或 civID!=玩家`（2900-2912）＋`strikeTick_A1` 玩家门反转（7053）＋P1b 造机（8068）。实测 AI 已炸到玩家（§26.6） |
| **B. MOD 自建「自动打击」** | 曾是完整设计（`pickStrikeTarget`/`strikeScore`/`roveTick`/设置面板/建筑记忆），2026-09-20 被**整层取消并回滚**（见 `B3-A1自动打击接活_具体方案书v1.md` 附-1） | **当前树内 0 命中**（六个方法名全无）⇒ 只剩纸面设计；其 附-11.8 登记「**AI 自动打击**」为**必须补**（用户："以后必须要"） |
| **C. 自动拦截** | 玩家侧 `FOW.detectEnemyMissions → dispatchAutoIntercept`（AFM:3424）；AI 侧 `updateAIAutoIntercept`（AFM:3043，`updateMissions`7535 调用，500ms 节流） | **两侧都在**（r5c043/r5c044 已修判定与去重） |

### 54.2 真正的缺口
不是"AI 不会派发"，而是**AI 打得笨**：概率门 10% + **均匀随机**选靶（`aiPickVisibleTarget` 7999-8066），缺
①目标价值分层 ②同时目标上限 ③目标记忆/衰减 ④"打空/情报"表现 ⑤玩家/AI 参数分层（按任务类型与难度）。

### 54.3 ICBM 只取骨架，形态本作化
取：`Priority`／`Fade`／`MaxTargets`／`Avoid`／`DistanceType(radar|flight|weapon)`／`MaxAutoEngageRange`／`limits.txt 每难度一行`。
换：**编译期常量表**（不引文件读取）｜**一条链两套权限**（玩家与 AI 共用派发/结算/拦截）｜**按 MissionType 分表**｜**记忆轻量化**（复用 `HashSet` 式记事本，不新增存档字段）。

### 54.4 重排后的步骤
`r5c046（P2a 选靶智能化：加权随机 + 在飞上限 K + 探针）`
`→ r5c047（P2b 目标记忆 + 回合窗口衰减，不落档）`
`→ r5c048（P3a 拦截机型定位重排：截击≈全航程、战斗≈半航程）`
`→ r5c049（P3b AI 侧复用 a1bBlind/a1bTold 的"打空/情报"表现）`
`→ r5c050（P4 难度表：每难度一行参数，接 difficultyID）`
`→ r5c051（P5 清探针 + 去重表清理点 + 收尾）`
前置小调研：防空建筑 id（apk assets）／`nA4v` 恒定定性 ／`SaveGameManager$Save_Airforce` 字段面。

### 54.5 待拍板
1. "自动打机"口径＝A（我的判读，做 §54.4）还是 B（先重建玩家侧 MOD 自动打击再谈 AI）？
2. 上限 K＝3（照 ICBM）或 2？
3. 省权重取哪些量（建议 经济＋人口＋驻军＋是否含机场/雷达，**按 MissionType 分表**）。


### 54.6 【定案】省权重 / 闸门 / 判据（用户 2026-09-25 14:17 拍板）
- **K = 3**（每文明 × 每任务类型）；**每目标在飞 ≤ 2**（同省轰炸师上限，历史 `isBomberSlotFull` 口径）——**两个闸门都要**。
- **口径 = A**（引擎「机场模式驱动派发」补智能；不重建 MOD 的按钮/设置面板）。
- **省权重必含**：经济、人口、驻军；**轰炸机与攻击机算分不同**；**有军事建筑的省优先**。**判定顺序**：归属/交战 → 射程内 → **军事建筑置顶** → 经济/人口（攻击机改看驻军）→ 同档随机 → 过两道闸门（K、每目标 2）。
- **军事建筑判据（三度修正后的定论，来自历史专档 R4c178 系列）**：
  - ⛔ **不要**用"运行时查表读 `GroupID`"——实测运行时 `BuildingsManager.buildings` 87 条且 `GroupID = -1`，**永远 false**（这就是当年 `mil=1` 恒 0 的真因）；
  - ✅ 用 **索引集合** `{{15,16,17,18,19,34,35,36,37}}`（来源＝游戏 `Buildings.json` 中 `GroupID==1` 的条目）**∨** 加载期按**名称白名单**收集的 id；名称匹配范式＝引擎自己的 `loadBuildings()`（用本地化名 `"空军基地"` 认出 `AIRPORT_BUILDING_ID`，`BuildingsManager.smali:344-351`）。
  - 取"该省有哪些建筑"的现成通道：`Province.buildings`（`List<ProvinceConstructedBuilding>`）+ `getBuilding()`；现成样板 `AirForceManager.hasAirportBuilding(I)Z`（**AFM:4902**）。
- **历史血案（必须回避）**：`strikeScore` 的 `if-nez v1, :ss_econ` 极性写反 ⇒ 军事省拿最大分（永不入选）、非军事省必胜 ⇒ 轰炸机永远挑"最近且无军事建筑"的省（R4c179）。**新判据必须回放真值表 + 配对照探针。**
- **注意**：这套（`isMilIdx`/`strikeScore`/`pickStrikeTarget`/`isBomberSlotFull`）在 R4 流做过，但**已随 2026-09-20 的整层取消与回滚不在当前树**（本树 grep 0 命中；现存仅 `hasAirportBuilding`）⇒ **按本作特色重建在 AI 侧**。
- 探针：`nP2s` / `nP2cap` / `nP2slot` / `nP2mil`；验收硬指标＝**`nAS pk … mil=1` 必须出现**。


---

## 55. 【重定基线 2】r5c046 全面调研：智能线已在树内，问题在"没开"（2026-09-25 14:29）
> 全文：**`r6s5/调研_r5c046全面调研_v1.md`**（含全部行号证据）
> 前提：基线 r5c045（已验收）；本轮**未改一行 smali**。

### 55.1 颠覆性结论（推翻 §54.2 的一部分假设）
- AI 派发**有两条并行线**（`update(I)` 内每回合都跑）：
  - **线 L（老/笨）**：`executeAIAssignment(civID)` 2851 -> `executeAIAssignmentForAirport` 1021
    （概率门 10% ＋ `aiPickVisibleTarget` 7999 **均匀随机**选靶）。**今天唯一真在跑**。
  - **线 S（战略轰炸智能）**：`strikeTick_A1` 7053 -> `a1Scan` 6267 -> `a1Dispatch` 6019
    （`a1HasMil` 军建硬门 ＋ `a1Inflight` 每目标 ≤2 ＋ `DiplomacyManager.isAtWar` 精确交战）。
  - **线 A（攻击机自动打击）**：`strikeTick_A1` -> `a1bScan` 7006 -> `a1bPick` 6650
    （`isEnemyArmyInProvince` 硬门 ＋ `a1Gsee` 记忆戳（6 回合新鲜窗）＋ 在飞↑/距离↑/同档随机）
    ＋ `a1bDispatch` 6839（`createAttackArmy`，记 `a1bBlind`/`a1bAuto`）＋ `a1bRetarget` 6500（半程重瞄）。
- **两条智能线当前"谁都跑不到"**：
  - `Airport.autoStrikeOff` 构造默认 **true＝关**（`Airport.smali:151-153`），线 S 消费于 6338、线 A 消费于 7034；
    全树只有三个写点（构造器、读档 `strikePaused`、按钮 `InGame_AirForceOptions$BtnMission:131-134`）。
  - `strikeTick_A1` 7062 **显式跳过玩家文明**。
  ⇒ AI 机场没人按按钮 ⇒ 线 S/A 对 AI 恒不生效；玩家文明被 7062 排除。
  ⇒ **"AI 打得笨"的真根因＝智能线没开，只剩 10% 随机线在跑**。
- 附带修正：`mil=1` 历史恒 0 **不是判据错**，而是**那整条线没在执行**。
  `BuildingsManager$Buildings->GroupID` 确存在且全树 9 处读取（含 `a1HasMil:6197`）。
- 军事建筑索引集**已用现役 apk 复核**：`GroupID==1` 的 9 条 = **{15,16,17,18,19,34,35,36,37}**（
  城墙系/兵营系/军械库系/兵工厂/军事基地 ＋ 空军基地/雷达/反导阵地/中层反导雷达）；
  后 4 个即 `BuildingsManager` 的 4 个静态 id ⇒ **不硬编码**，直接读静态字段。

### 55.2 r5c046（P2a）重定后的范围
1. **【解绑】** 线 S/A 的 `autoStrikeOff` 门改为"按文明"：玩家文明尊重按钮，**AI 文明一律视为开**
   （`a1Scan:6337-6339`、`a1bScan:7033-7035` 各一处条件）。
2. **【K=3】** 新 helper（`civID`＋`MissionType`，排除 COMPLETED/ABORTED）＋ 两条线**文明级入口**判 `>=3` 返回；探针 `nP2cap`。
3. **【评分】** 轰炸线：军建**硬门 -> 置顶档**，次档 `getEconomy()`/`getPopulationSize()`，**同档随机**（照 `a1bPick` 范式）；
   攻击线：保留"打陆军"硬门，档内按 `getArmyRegimentSize_InProvince()`（驻军规模）排序。
4. **【线 L 去重】** AI 轰炸派发权收归线 S（概率门置 0 或加"AI 转交"判）；**和平期 FIGHTER 巡逻分支不动**。
5. **【探针】** `nP2cap`/`nP2mil`/`nP2s`。
6. **不做**：Fade（P2b=r5c047）／拦截机型重排（P3a=r5c048）／难度表（P4=r5c050）／清探针（P5=r5c051）。

### 55.3 待拍板（三问）
1. **线 L 是否关闭**（AI 空袭权收归线 S）？——若不关，K 与评分会被 10% 随机线绕过。
2. **K=3 是否同时约束攻击机线**（该线 R5c019 明确取消了"每省 ≤2"）？
3. **攻击机"驻军规模"**用 `getArmyRegimentSize_InProvince()`（省归属国驻军）即可，还是要另做"敌方团数"统计？

### 55.4 风险
- 智能线启用后 AI 空袭量会从"每机场 10%"跳到"每文明 ≤K 条轰炸＋攻击机线" ⇒ 建议先 dry-run／探针回填。
- "只打军建省"若不改成置顶档，战区军建稀少时 AI 出击可能归零。
- `a1Known/a1Gsee/a1b*` 均为运行态静态、不落档 ✔；`autoStrikeOff` 落档字段 `strikePaused` 不动 ⇒ 零存档风险。


---

## 56. 【定案 2】r5c046 三项口径 + 施工点取证（2026-09-25 14:36）
> 全文：**`r6s5/调研_r5c046专项_v2.md`**；本轮**未改一行 smali**。
### 56.1 口径（用户拍板）
1. **线 L 关闭**（AI 空袭权收归线 S）。
2. **K=3 同时约束攻击机线**（按 `civID × MissionType`）。
3. **驻军规模 ＝ 师的数量**（`Province.getArmySize()`＝`iArmiesSize`＝`lArmies.size()`）；**不用团数**；取数集中在一处 helper，便于将来改革体制。
### 56.2 取证要点
- **关线 L 的爆炸半径**：`createStrategicBombing` 三处调用＝线 L 战时(1071)／线 S(6095)／**玩家手动**(812, `createMissionForClick` 615-832, 入口 4699)；
  `createPatrol` 六处＝线 L 和平(1149, **AI 巡逻**)／`tryPatrolForAirport`(2629, **玩家自动巡逻**)／手动(677/727/789)。
  ⇒ **玩家手动与玩家巡逻都不经过线 L**；但 **AI 巡逻在线 L 的和平分支** ⇒ **只关战时分支**（不能靠概率置 0，概率门在方法最前）。
- **节拍**：`GameThread_Turns:1331-1340` ⇒ `updateAll()` **每回合一次**，`update(I)` 每文明一次 ⇒ K/每目标＝每回合口径。
- **师数**：`iArmiesSize` 10 处写入全在 `lArmies` 的 add/remove/clear/load 路径 ⇒ 与 `lArmies.size()` 一致。
### 56.3 施工设计（写码前定稿，仍不含代码）
1. **关线 L**：`executeAIAssignmentForAirport` 战时分支入口（`isAtWar` 真之后、选靶之前）直接返回 ＋ 轻探针。
2. **K=3**：新 helper `a1CivInflight(civID, MissionType.ordinal())`（排除 COMPLETED/ABORTED）＋`a1Scan`/`a1bScan` **文明级入口**各判 `>=3 ⇒ return`；探针 `nP2cap`。
3. **轰炸线**：军建**硬门 → 置顶档**；同档内按 `getEconomy()` 分（人口是否同批上待定）；**每机场每回合只派 1 次**（选最优，静态暂存 `a1PkTier/a1PkScore/a1PkN/a1PkPid`，照 `a1bPk*` 范式）；保留 `a1Known` 记忆、精确交战门、`a1Inflight<2`。
4. **攻击线**：主键改 **师数 desc**（`a1DivCount`→`getArmySize()`），次键在飞↑，再次距离 band 随机；保留 `isEnemyArmyInProvince` 硬门与 `a1Gsee` 记忆戳。
5. **探针**：`nP2cap`/`nP2mil`/`nP2s`（沿用 `e5i`＋`nA1/nA1b` 风格）。
### 56.4 验收
`mil=1` 出现（历史恒 0）｜`nP2cap` 有计数｜AI 有轰炸落地且强度可控｜玩家手动出击照常（含"先宣战"提示）｜AI 和平期巡逻不归零｜无闪退。
### 56.5 待确认小口径
①"每机场每回合只派 1 次"是否接受 ②人口是否同批上（或留到 P3）。


---

## 57. 【调研 3】难度系统 + 派机频率旋钮（2026-09-25 14:42）
> 全文：**`r6s5/调研_r5c046难度与频率_v3.md`**；未改一行 smali。
### 57.1 难度系统（可用）
- `Game.difficultyID:I`（静态，`Game.smali:144`），默认＝`GameValues.difficulty.NORMAL_ID`（`GameValues:3026-3030`）；
  表＝`GameValues.difficulty:GameValue_Difficulty`，文件＝`assets/game/gameValues/GV_Difficulty.json`；
  新游戏写点 `NewGame_Settings$2/$3/$4`、读档 `LoadSavedGameManager:11241`。
- **6 档**：0 VeryEasy / 1 Easy / **2 Normal（NORMAL_ID）** / 3 Hard / 4 VeryHard / 5 Legendary。
- 引擎既有语义＝`difficultyID >= NORMAL_ID ⇒ AI 更凶`（`AI_Manager:1250`、`AI_Player:521`、`CoalitionManager:789`）⇒ 与本批"难度↑⇒频率↑"一致。
### 57.2 意外收获：`GV_Air.json` ＋ `GameValues$GameValue_Air` **已加载但零消费**
- 含 `AIR_AI_BOMB_CHANCE_AT_WAR=0.33`、`AIR_AI_PATROL_CHANCE_AT_WAR=0.5`、`AIR_AI_AUTO_PATROL_CHANCE=0.55`、
  `AIR_AI_INTERCEPT_FIRST_CHANCE=0.7`、`AIR_DAMAGE_ECONOMY/POPULATION/ARMY_MULT`、`AIR_COMBAT_*`、`AIR_BASE_CAPACITY_PER_LEVEL=20` 等 15 项。
- 全部键**无消费端**（grep 只在类自身出现）⇒ 现成"设计者意图箱"，可作 P3/P4 的旋钮来源。
- ⚠ `GameValue_Air` 构造器无默认值 ⇒ 读取必须兜底（`<=0` 回退常量）。
### 57.3 频率旋钮（待选型）
- **A 计数式（推荐主用）**：`FRQ=[1,1,1,2,2,3]`（VeryEasy..Legendary）＝每文明每回合新增轰炸上限；`FRQ ≤ K=3` ⇒ 天然防齐射。
- **B 概率式**：`P = 0.33 × MULT[0.5,0.75,1,1.25,1.5,2.0]`＝{0.17,0.25,0.33,0.41,0.50,0.66}（复用 GV_Air 旋钮）。
- **C 组合（建议）**：FRQ 当天花板 ＋ P 当摇骰 ＋ K=3 兜并发。
### 57.4 探针
`nP2dif` / `nP2frq` / `nP2cap` / `nP2mil` / `nP2s`。
### 57.5 待确认
①频率方案 A/B/C ②轰炸线"经济:人口"权重（建议先 1:1，P4 再调）。


---

## 58. 【排雷】r5c046 全量极性/方向审计（2026-09-25 14:46）
> 全文：**`r6s5/调研_r5c046排雷_v4.md`**；未改一行 smali。
### 58.1 致命雷
- **R1 视野门方向**：`a1Scan`（`6380-6411`）与 `a1bPick`（`6707-6735`）的实际谓词都要求 **fog==true（玩家看不见）**才写记忆/盖戳；
  可见省因 `a1Known` 字节=0 被永久跳过 ⇒ **AI 只打"看不见"的省**，候选池被压小。（历史快照同码，非本轮改坏。）
  ⇒ 待拍板：A 保持 ／ **B 可见即刷新（建议，各 1 条指令）** ／ C 去掉视野门。
  （并修正 §55 的一处记述：v1 写成"fog 为真 ⇒ 跳过记忆"，实际相反。）
- **R2 `a1Scan` 分配块顺序**：`a1Known/a1Gsee` 在 `a1Scan`(6278-6303) 里分配，`a1bPick` 只做守卫（不匹配即 `:bp_none` 返回）
  ⇒ **K/FRQ 门必须插在分配块之后**，否则攻击机线静默失效。
- **R3 关线 L 的适用面**：玩家也可把机场设为 `mode=AI`（`InGame_AirForceOptions$BtnMission:255`）
  ⇒ 无条件关会连带关掉玩家的"AI 模式"；建议**只关 AI 文明**（`civID != 玩家civ`）。
### 58.2 高危雷（真值表＋探针验收）
- R4 军建置顶档写反 ⇒ 变成"只打无军建省"（历史 `strikeScore` 同款）｜R5 K 计数谓词写反 ⇒ 恒 0 或恒 ≥3｜
  R6 FRQ 未绑 `TURN_ID` ⇒ 首回合后锁死｜R7 经济(float)/人口(int) 量纲不同，"1:1" 需换算。
### 58.3 中危雷
R8 难度数组越界（必须 clamp）｜R9 `GameValue_Air` 可能为 0（兜底）｜R10 `a1Known` 6=有/4=无（别把 4 当有）｜
R11 `nA4v vis=218` 悬案随线 L 关闭降级休眠｜R12 int 截断｜R13 "每机场只派 1 次"后旧探针语义漂移。
### 58.4 验收
`nP2dif`/`nP2frq`/`nP2cap`/`nP2mil`/`nP2s` 五探针；`nP2mil` 必须出现 `mil=1`；传奇难度新增数 > 极简难度；玩家手动出击与 AI 巡逻不回归零；无闪退。
### 58.5 待拍板
①R1 视野门方向 ②R3 关线 L 适用面 ③R7 量纲换算做法。


---

## 59. 【施工定稿】r5c046 锚点/寄存器/真值表（2026-09-25 14:55）
> 全文：**`r6s5/调研_r5c046施工定稿_v5.md`**；未改一行 smali。
### 59.1 终版口径
关线 L **只关 AI 文明**（含观战无玩家）｜视野门 **B：可见即刷新**（`a1Scan:6384`、`a1bPick:6710` 各 `if-eqz→if-nez`）｜
K=3 按 `civ × 任务类型`（**枚举对象比较，不用 ordinal**）｜频率 **方案 C**：`FRQ=[1,1,1,2,2,3]` ＋ `P=0.33×[0.5,0.75,1.0,1.25,1.5,2.0]`（`<=0` 兜底）｜
轰炸线：军建置顶档 ＋ 经济:人口 1:1 ＋ 同档随机 ＋ 每机场每回合一次｜攻击线：主键**师数 desc**。
### 59.2 锚点（唯一匹配串）
E1 `if-eqz v0, :cond_3c`(1048) 之后插入关闭门｜E2 `:sc_have`(6304) 后插 K=3｜E3 `a1bScan` 7016 后插 K=3(ATTACK_ARMY)｜
E4 `6384 if-eqz v13, :sc_sel`→`if-nez`｜E5 `6710 if-eqz v10, :bp_invis`→`if-nez`｜E6 `a1bPick` 比较改 `if-gt` 师数｜
E7 `a1Scan` 6337-6446 改"每机场选最优一次"＋`6356` 改指 `:sc_pick`｜E8 FRQ/P 初始化（含 clamp 与 `TURN_ID` 绑定）。
### 59.3 新增字段/helper
`a1PkTier/a1PkScore/a1PkN/a1PkPid/a1PkP/a1FrqTurn/a1FrqN/a1bDivBest` ＋
`a1CivInflight(I,MissionType)I`／`a1DivCount(I)I`／`a1FrqFor()I`／`a1ProbFor()F`。
### 59.4 R7 量纲（我方定）
`score = (int)(getEconomy()*10) + getPopulationTotal()/100`，负值归零；验收时汇报 raw 值并按需给"只改两常量"的微调。
### 59.5 探针
`nP2dif`/`nP2frq`/`nP2cap`/`nP2mil`/`nP2s` ＋ `nA2L`（线 L 关闭计数）。
### 59.6 开工顺序
备份 → E1 → E2/E3 → E4/E5 → E8 → E7 → E6 → 探针 → 门禁（arity/八件套/㉔/㉘ 含负样本）→ 装机 → 抓样 → 归档（附【设计逻辑】）。


---

## 60. 【施工·已装机】r5c046 P2a 交付（2026-09-25 15:07）
> 设计逻辑全文：**`r6s5/设计逻辑_r5c046.md`**（11 项）。
### 60.1 产物与核验
- 补丁：`r5c046_fix.py`（14 处改动，全部"锚点唯一"断言通过；自审时**修正了 5 处极性/方向错误**）
- 备份：`AirForceManager.smali.pre_r5c046`（基线 md5 `872caeb56c3f6a84617e574981a6a34a`）
- dex：`/tmp/r5c046_classes.dex`（**1eaf9ccfdebe5e3e559db6cda5e9d04d**，7357232 B，`result=true`）
- apk：`build_apk/dbg_signed77_v119_r5c046.apk`（**2435034e2bea4e0cbe1d407daa4ce75d**，738377701 B）
- 门禁：arity `BAD=0`（3 条既有 WARN）｜㉘ invoke-target `OK 0 条`｜**方向门禁 `方向可疑=0`**（736 条跳转）｜悬空引用 `真悬空=0`
- 装机：`Success`；**独立复核**（不依赖 install.sh 第 4 步，后者为已知假阳性）：
  设备 apk md5 = `2435034e…` ✔ ｜ 设备内 dex md5 = `1eaf9ccf…` ✔ ｜ Earth3 = 18510 ✔
### 60.2 本批规则（摘要，详见设计逻辑）
关旧随机线（只关 AI 文明）｜K=3（两线，按文明×任务类型）｜FRQ=[1,1,1,2,2,3] ＋ P=0.33×[0.5..2.0]｜
轰炸线：军建置顶档 ＋ 经济:人口 1:1 ＋ 同档随机 ＋ 每机场每回合一次｜攻击线：师数 desc（`getArmySize`）｜视野门 B（可见即刷新）。
### 60.3 抓样看什么
`nA2L`（线 L 关停计数）/`nP2dif`（难度档）/`nP2cap`（K 拦）/`nP2frq`（每回合新增）/`nP2mil`（军建档命中，**历史恒 0，本批应出现**）/`nP2s pid/tier/score`。
### 60.4 风险
强度跃迁（可只改两张表）｜`score` 量纲用初版常数（抓样后回填）｜旧 `nA4v` 探针休眠（保留代码）。


---

## 61. 【核实·修订】设计逻辑 r5c046 v2（2026-09-25 15:24）
- **核实结论**：**14 处代码改动逐条与设计一致，未发现 bug**（标签各 1 处定义；6 个探针齐；E1 位于战时分支；`:sc_pick` 可达；档/分/蓄水池三处比较方向正确）。
- **文档修订 6 处（D1–D6）**：①FRQ/P 只作用于轰炸线（v1 误写成两类共用）②补精确候选过滤链 ③补"攻击机半程重瞄未纳入师数主键"为已知遗留 ④补 `a1bNvis` 语义变化 ⑤补"已记录位 0x2→0x4" ⑥补"K/FRQ 必须晚于数组分配块"的顺序约束。
- 全文：**`r6s5/设计逻辑_r5c046.md`（v2）**；**代码未改**（无需改）。
- 待你定的两项：a) 攻击机**重瞄**是否也改成"师数优先"（本批未纳，一句话即可）；b) 其余按 §11 待办推进。


---

## 62. 【决策 + 验收方案】r5c046（2026-09-25 15:26）
### 62.1 决策（用户：怎么好弄怎么来）
- **攻击机"半程重瞄"（`a1bRetarget`）保持原样**（仍用"在飞↑ / 距离↑ / 同档随机"），**本批不改**：它在"扑空后"才触发、影响面小，纳入"师数主键"会多改一处高风险比较；留待 P2b/P3 一起做。
### 62.2 验收流程（已落盘 `r6s5/验收清单_r5c046.md`）
1. **你**：进游戏打一场有 AI 参战的仗，跑 ≥6 回合（我**不主动拉起**游戏）；
2. **你**：喊「抓」；
3. **我**：`capture.sh` 增量抓样（只读；轮转自愈）→ 逐条判读 7 项（`nP2mil` 出现 / `nP2cap` 有计数 / `nP2dif` 对档 / `nP2frq` ≤ 上限且高难度更高 / `nP2s tier` 多为 0 且 score 非最低 / 旧链不回归 / 无闪退）→ 输出**通过/不通过/待观察**；
4. 通过 ⇒ 登记验收（交接文档 ✅ ＋ 归档档 v4 ＋ 本节之后 §63）；不通过 ⇒ 回归清单 + 小批次 `r5c046a`。
### 62.3 回滚
`AirForceManager.smali.pre_r5c046`（`872caeb5…`）或重装 `dbg_signed77_v119_r5c045.apk`。


---

## 63. 【崩溃修复】r5c046b：ART VerifyError（寄存器类型冲突）（2026-09-25 15:44）
### 63.1 症状
装机后一进游戏即闪退（两次不同 PID 同样崩）：
```
java.lang.VerifyError: Verifier rejected class ...AirForceManager:
  void ...a1Scan(int) failed to verify: [0x83] register v3 has type Conflict
  but expected Precise Reference: AirUnit$AirType
```
### 63.2 根因（症状→原因）
- `a1Scan` 的**机场循环体内**，v3 原本是 `AirUnit$AirType`（引用，用于 `getProvincesInRange`）；
  本批的打分代码把 **score（float→int）写进了 v3**。
- 循环**回边**回到下一圈机场时，v3 的两种类型在合并点冲突 ⇒ ART verifier 拒绝整个类 ⇒ 类加载即崩。
- 同类隐患：v7（`a1Known` 数组引用）被我塞了常量 `0x64`（ART 实际只报了 v3）。
### 63.3 修法（r5c046b）
- **不用**"提升 `.registers`"——本工具链 **RunSmali 硬限 16 寄存器**（v0..v15），语句 `Invalid register: v16`。
- 改为**借用方法内已死的 int 寄存器**：`v8`（只被赋 `TURN_ID`、之后**从未被读**）存 score；`v14` 存常量/计数；
  `v5`（每轮先赋值后读）存 Random 与探针字符串；`tier` 仍用 v13；`/100` 改 `div-int/lit8 v14, v14, 0x64`（省一个寄存器）。
- **结果**：`a1Scan` 内 v3 只作对象、v7 只作数组，无数值写。
### 63.4 产物与核验
- 补丁：`r5c046a_fix.py`（首修，误用提寄存器，汇编被拒）→ `r5c046b_fix.py`（终修）
- dex：`/tmp/r5c046b_classes.dex` = **17d7dbe0328f43c9aa9fbd7735a24c4b**（7357228 B，`result=true`）
- apk：`build_apk/dbg_signed77_v119_r5c046b.apk` = **58eba394daeb3bd9e615320eb78288c8**
- 门禁：arity `BAD=0`｜㉘ `OK`｜方向可疑 `0`｜真悬空 `0`｜**㉙ 新增：坏文件独有 v3/v7、新文件零新增**
- 装机：Success；**独立复核**：设备 apk md5 ✔／设备内 dex md5 ✔／Earth3=18510 ✔；抓样基线已重置
### 63.5 新增门禁㉙（`toolchain/act/check_regtype.py`）
- 判据：同一方法内，某寄存器**先被当对象写、后（跨标签合并点）被数值写** ⇒ WARN（ART VerifyError 高危）。
- **用法是"对比式"**：同时跑「旧文件/坏文件」与「新文件」，只把**新增**的报错当失败（存量 35 处为历史无害模式）。
- **已做负样本验证**：坏文件独有 `a1Scan v3`、`a1Scan v7` 两条，新文件零新增 ⇒ 门禁确实能抓到本次这类错。
### 63.6 新铁律（下批起强制）
1. **16 寄存器硬限**：RunSmali 不允许 `.registers > 16`；选最优/评分等暂存**要么走静态，要么借用"方法内已死的 int 寄存器"**。
2. **禁止复用"引用型"寄存器做数值**：尤其**循环体内**被用作对象（`AirType`/数组/`String`）的寄存器，绝不能再写 int/float（回边合并必炸）。
3. 新增分支/寄存器前，先跑 **㉙ 对比式**（旧 vs 新），再做 arity/㉘/方向/悬空，然后才装机。


---

## 64. 【抓样判读 + 全量复读】"AI 没起飞"的 9 处修正（r5c046 → r5c046d）（2026-09-25 16:08）
### 64.1 样本 `r6s5/r5c046b_s1.txt`（18.8 MB）判读
| 探针 | 计数 | 说明 |
|---|---|---|
| `nP2dif` | **107** | 智能线**入口有跑**（每 AI 文明每回合一次） |
| `nA1e p0=` | 107 | 文明级快照有打 |
| `nA2L` | **109** | 线 L 战时轰炸被关 109 次（AI 文明）✔ 生效 |
| `nA4d` | 0 | 线 L 再也没走到战时探针 ✔ 与上一条一致 |
| `nA1b ap=` | 752 | 攻击机线在跑（但没派出去） |
| `nP2cap` / `nP2frq` / `nP2mil` / `nP2s *` | **全 0** | **一个候选都没选中、一次都没派发** |

⇒ 症状精确等于"**智能线进入了、但每个机场都被跳过**"。
### 64.2 复读发现的 9 处问题（全部修正，r5c046d）
| # | 位置 | 错误（写反/漏做） | 正确 | 后果 |
|---|---|---|---|---|
| **F1** | `a1Scan`/`a1bScan` 的 `autoStrikeOff` 门 | **解绑漏做**（AI 机场默认＝关 ⇒ 全被跳过） | 开关只对"玩家自己的机场"生效，AI 视为已开 | **主因**：零候选、零派发 |
| F2 | `a1ProbFor` 兜底 | `if-gtz` ⇒ 值为 0 时**不回退**，P=0 | `if-lez`（≤0 才回退 0.33） | 载入失败即"永不尝试" |
| F3 | `a1Scan` FRQ 门 | `if-ge`（预算满才派发） | `if-lt`（预算未满才派发） | 一上来就"预算耗尽"直接 return |
| F4 | `a1Scan` 开关解绑判据 | `if-ne`（AI 才去看开关） | `if-eq`（玩家本国才看） | 把玩家/AI 判反 |
| F5 | `a1bScan` 开关解绑判据 | 同上 | 同上 | 同上 |
| F6 | `a1bDivCmp` | `if-gtz`（师数多 ⇒ 返回 -1 更差） | `if-lez`（多 ⇒ +1 更好） | 攻击机专挑**师数最少**的省 |
| F7 | `a1ProbFor` 难度系数表 | 5× `if-ne`（档位错配） | 5× `if-eq` | 难度系数张冠李戴 |
| F8 | `a1FrqFor` | `if-lt`（低难度走高档） | `if-ge`（<3 ⇒ 1 次） | FRQ 表全错 |
| F9 | `a1FrqFor` | `if-ne`（非 5 档给 3 次） | `if-eq`（==5 才给 3 次） | 同上 |
### 64.3 真值校验（修正后）
- `FRQ[0..5]` = `[1,1,1,2,2,3]` ✔（difficulty<0→0；>5→5；<3→1；3,4→2；5→3）
- `P = 0.33 × [0.5,0.75,1.0,1.25,1.5,2.0]` ✔（air 为空或字段≤0 ⇒ 0.33 兜底）
- `a1bDivCmp`：候选师数 > 现值 ⇒ **+1（更好）**；相等 ⇒ 0；更少 ⇒ -1 ✔
### 64.4 产物
- dex `089f50bc5bd8e563be8922228c55eb1b`（7357276 B，`result=true`）｜apk `0047b29287828198a3b318cd2ac139a0`
- 门禁：arity `BAD=0`｜㉘ `OK`｜方向可疑 `0`（740 条跳转）｜真悬空 `0`｜㉙ 无新增
- 装机 `Success`；独立复核：设备 apk md5 ✔／设备内 dex md5 ✔／Earth3=18510 ✔；抓样基线已重置
### 64.5 新增铁律（本轮血泪）
1. **每写一处比较，先写"真值表"**（输入 → 跳/不跳 → 期望行为），再落指令；本轮 9 处里有 8 处是"方向/取值写反"。
2. **`if-*` 词义固化**：`if-eqz`==0 跳、`if-nez`!=0 跳、`if-ltz`<0 跳、`if-gez`≥0 跳、`if-gtz`>0 跳、`if-lez`≤0 跳、`if-lt` a<b 跳、`if-ge` a≥b 跳、`if-eq/if-ne` 相等/不等跳。
3. **"解绑/放行"类改动必须成对检查两侧**（原代码与新判据都要读一遍），本次 F1 就是"计划里写了、写码时漏了"。
4. 抓样若出现"入口有计数、决策探针全 0"⇒ 优先怀疑**机场级/文明级过滤门**（开关、上限、视野）。


---

## 65. 【第 5 次修正 + 全逻辑审查】fog 语义钉死 / F10 / F12（r5c046e）（2026-09-25 16:30）
### 65.1 样本 `r5c046d_s2.txt` 判读（35 MB）
- `nP2dif`=66、`nA1e`=69、`nA2L`=73 ⇒ 入口在跑；
- **`nP2s`/`nP2frq`/`nP2mil` 仍全 0**；但 **`nA1 ap=… tgt=-1 k=2` × 7044** ⇒ **派发器被以"目标=-1"调用**（每条扫描一次，然后在 107 个机场里逐个判"不在航程"）。
### 65.2 钉死引擎语义：`fogDrawArmy == true` = **可见**
证据（`PlayerFogOfWar.setFogOfWar_ExtraCheck`，行 249-252）：
```
if-nez p2, :cond_17      # p2==0（＝取消迷雾）
:cond_17  const/4 v1, 0x1 # ⇒ setFogDrawArmy(true)
else      const/4 v1, 0x0 # p2!=0（＝处于迷雾）⇒ false
```
⇒ `true=可见（要画军队）`、`false=被迷雾遮住`。**原判据 `if-eqz`（不可见→用旧记忆；可见→刷新记忆）本来就是对的。**
### 65.3 本批修正（3 类）
| # | 位置 | 错误 | 正确 |
|---|---|---|---|
| **F11a/F11b** | `a1Scan` / `a1bPick` 的雾判据 | 我在 r5c046 按**错误语义**把 `if-eqz` 翻成 `if-nez` ⇒ 可见省永不写记忆 ⇒ `&0x4` 门全拒 ⇒ 候选池恒空 | **撤回**，恢复 `if-eqz` |
| **F10** | `a1Scan` 的 `:sc_pick` 守卫 | `if-gez`（≥0 才跳）⇒ 真实候选被跳过、**-1 反而去派发** | `if-ltz`（只有 pid<0 才跳过） |
| **F12** | `a1Scan` 的 P 骰 | `if-ltz` ⇒ 变成"rnd≥P 才尝试"（概率反置） | `if-gez`（rnd≥P 才跳过） |
### 65.4 产物
- dex `17ae24d18f3ed47c6c8e44f55d336d04`（`result=true`）｜apk `eecf0ca13ed6cd6659bd0e02840832b5`
- 门禁：arity `BAD=0`｜㉘ `OK`｜方向可疑 `0`（740 跳转）｜真悬空 `0`｜㉙ 35（存量，无新增）
- 装机 `Success`；独立复核：设备 apk md5 ✔／设备内 dex md5 ✔／Earth3=18510 ✔；基线已重置
### 65.5 全逻辑审查清单（终稿，逐条已核）
**A 线 L 关闭**：`if-eqz player→关`｜`if-eq playerCiv,apCiv→保留`（其余关）✔；探针 `nA2L` ✔
**B 文明级**：K=3（轰炸/攻击机各一，`a1CivInflight(civ,类型对象)`，排除 COMPLETED/ABORTED）｜FRQ 计数绑 `TURN_ID`｜P 每次重算 ✔
**C 每机场**：开关**只对玩家本国生效**（AI 视为开）｜P 骰（rnd<P 才尝试）｜选中态重置 ✔
**D 候选过滤**：航程内 + pid 合法 + Province 非空｜`fog==false`⇒用旧记忆 / `true`⇒刷新 6/4｜`&0x4` 必须已记录｜目标国有效且交战｜`a1Inflight<2` ✔
**E 排序（每机场只派 1 次）**：tier（有军建=0 置顶）→ 同档比 `score=(int)(econ×10)+popTotal/100`（负值归零）→ 同档同分蓄水池随机（1/n）｜`nP2mil` 在 tier==0 时打 ✔
**F 派发**：pid<0 跳过｜FRQ 未满才派（否则 `nP2frq` + 中止本文明）｜成功才 FrqN++ 并打 `nP2s`/`nP2frq` ✔
**G 攻击机线**：K=3｜候选=航程内且确有敌军且情报新鲜（≤6 回合）｜主键**师数多者优先**（`a1bDivCmp`：>0 更好/0 同/<0 更差）｜次键在飞↑｜再次距离 band 随机 ✔
**H 参数表**：`FRQ=[1,1,1,2,2,3]`｜`MULT=[0.5,0.75,1,1.25,1.5,2.0]`｜`base=GV_Air.AIR_AI_BOMB_CHANCE_AT_WAR`（≤0 ⇒ 0.33）✔（均已真值校验）
**I 已知未纳入**：①`a1bDispatch` 的 `a1bBlind` 语义仍与 fog 真语义相反（"靠记忆"提示会反，P3b 修）②`a1bRetarget` 仍用旧键（在飞/距离）③老探针 `nA4v` 休眠
### 65.6 血案累计（本功能）：12 处
F1 开关解绑漏做｜F2 概率兜底｜F3 FRQ 门｜F4/F5 开关解绑判据｜F6 师数比较｜F7 系数表档位｜F8/F9 FRQ 表档位｜**F10 pid 守卫**｜**F11a/b 雾判据（误翻）**｜**F12 P 骰**。
⇒ 铁律追加：**"语义没钉死前不许改判据方向"**——本批最大教训是"按推测的语义去翻一条原本正确的门"。


---

## 66. 【第 6 次修正】3 处"归零钳位"方向反（独立审核发现）（r5c046f）（2026-09-25 17:07）
### 66.1 审核结论（采纳）
独立审核在 r5c046e 的 dex 上逐字节复核，确认：
- 我报的 F10/F11a/F11b/F12 **都改对了**；上轮报的 5 项（FRQ 上限、FRQ 阶梯、P 阶梯、P 基准、a1bDivCmp）也**全部修好**；
- 但**仍有 3 处同族错误**：把 `if-ltz` 误当 ">=0 才跳"，于是"负值归零"写成了"非负归零"。
### 66.2 三处（本批修，F13/F14/F15）
| # | 位置 | 错误 | 正确 | 后果 |
|---|---|---|---|---|
| F13 | `a1FrqFor`（difficultyID 归零） | `if-ltz v0, :ff_lo` | `if-gez v0, :ff_lo` | `difficultyID>=0`（任何实际对局）恒被归零 ⇒ **FRQ≡1** |
| F14 | `a1ProbFor`（difficultyID 归零） | `if-ltz v2, :pf_lo` | `if-gez v2, :pf_lo` | 同上 ⇒ **MULT≡0.5、P≡0.165（永远 VeryEasy 档）** |
| F15 | `a1Scan`（score 归零） | `if-ltz v8, :p2s_pos` | `if-gez v8, :p2s_pos` | `score` 几乎恒 ≥0 ⇒ 恒被归零 ⇒ 同档全部同分 ⇒ 退化成纯随机（"讲价值"失效） |
### 66.3 判读签名（抓样时的特征）
- `nP2dif` 显示真实难度（如 5），但行为是 VeryEasy 档 ⇒ 坐实 F13/F14；
- `nP2s score` 恒打印 0 ⇒ 坐实 F15。
### 66.4 新增门禁㉚ `toolchain/act/check_zeroclamp.py`
- 判据：紧接 `if-ltz vR, :L` 之后出现 `const/4 vR, 0x0` ⇒ 该形态表示"把**非负**归零" ⇒ **FAIL**；`if-gez` 同形态 ⇒ OK。
- **已做负样本验证**：坏文件（r5c046e）精确报 **3 条**（对应 F13/F14/F15）；修后（r5c046f）**0 条**。
### 66.5 产物
- dex `c01608935890d8ad9f047ba06adfc9dd`（`result=true`）｜apk `a7713d553e88d947377cfec717493d91`
- 门禁：arity `BAD=0`｜㉘ `OK`｜方向可疑 `0`｜真悬空 `0`｜㉙ 35（存量）｜㉚ **0**
- 装机 `Success`；独立复核：设备 apk md5 ✔／设备内 dex md5 ✔／Earth3=18510 ✔；基线已重置
### 66.6 认知教训（写入铁律）
- **`if-ltz` = "<0 才跳"、`if-gez` = ">=0 才跳"** —— 我在同一季里把这两个词义反复弄错；凡"归零/钳位"必用 ㉚ 自检。
- 本轮 15 处血案中，**有 6 处属于"归零/跳过"这类成对语义**（F13/F14/F15 + 早前 F3/F10/F12），已全部被专项门禁覆盖。
- "逐条已核过"不等于核过：**必须用能与否证对齐的形态判据**（㉙/㉚ 这类模式门禁），而不是靠复读时的语义推测。


---

## 67. 【第 7 次修正】把"记忆/时间戳"从雾标志解绑（G1/G2）+ 装机假阳性（r5c046g）（2026-09-25 17:25）
### 67.1 样本 `r5c046f_s3.txt`（8.7 MB）判读
`nP2dif`=78、`nA2L`=89 ⇒ 入口在跑；但 `nP2s`/`nP2frq`/`nP2mil`/`nA1 ap=` **全 0**
⇒ **候选累加为空**：既没选中候选，也没调用派发器（守卫修好后 pid=-1 不再乱调）。
### 67.2 根因（结构性，与雾语义哪一边无关）
- `a1Scan`：`getFogDrawArmy()` 只在**一个**取值上写 `a1Known`（6/4），另一个取值直接跳去用旧值；实测候选省恒为后者 ⇒ **从未写过** ⇒ 随后 `&0x4`（已记录）门把**全部候选**拒掉。
- `a1bPick`：时间戳只在其中一个分支盖 ⇒ 候选全部"无戳" ⇒ 后续 `if-ltz`（无戳即跳过）把全部候选拒掉。
### 67.3 修法（与雾语义无关）
| # | 位置 | 改动 |
|---|---|---|
| **G1** | `a1Scan` | **删掉"跳过写入"的那条分支** ⇒ 每个候选都刷新记忆（6/4）；雾从此**只影响"是否用旧情报"**，不再决定"能不能记住" |
| **G2** | `a1bPick` | `:bp_invis` 分支**也盖时间戳** ⇒ 两个分支都盖 |
| **G3** | `a1Scan :sc_pick` | 新增探针 **`nP2pick`**（每机场打印选中 pid；-1=没选到）⇒ 下轮可直接分辨"没候选"还是"派发失败" |
### 67.4 产物
- dex `f2f35e8a2fd30c49c682882c2e06635a`（`result=true`）｜apk `57536e58f156a635f9e64d051773707d`
- 门禁：arity `BAD=0`｜㉘ `OK`｜方向可疑 `0`｜真悬空 `0`｜㉚ `OK`
- 装机 `Success`；**独立复核**：设备 apk md5 ✔／设备内 dex md5 ✔／Earth3=18510 ✔；基线已重置
### 67.5 【流程发现·重要】`install.sh` 会假报"装机完成"
- 第一次 `install.sh r5c046g --yes` 打印了 `✅ 装机完成`，但**设备上仍是上一版**（apk `a7713d55…`／dex `c0160893…`＝r5c046f）；
- 原因：设备侧 `cmd`/`activity` 在安装窗口期多次 `Failure calling service … Failed transaction`，第 4 步核验与第 5 步 force-stop 都失败，脚本仍判过；
- ⇒ **新增铁律：装机后必须用外部独立命令核 `pm path → md5sum apk → unzip classes.dex | md5sum` 三者对齐，才允许交付**；脚本自报不采信。
- 处理：重跑 install，独立复核通过后才交付。


---

## 68. 【审核处置】F-B 反证 + F-A/F-C 口径同步（2026-09-25 17:52）
### 68.1 F-B（"军事建筑降级"）—— **反证：实现是对的，属误读**
审核认为 tier 取的是 `a1Known` 原始字节（6=军建 / 4=无军建）且"更小者胜"⇒ 军建反而劣后。**从已装机的 dex 反汇编核对（`/tmp/revg`）**：
```
aget-byte v13, a1Known[pid]
and-int/lit8 v13, v13, 0x2
if-eqz v13, :cond_ed      # 无 0x2 ⇒ 无军建
const/4 v13, 0x0          # 有军建 ⇒ tier = 0
goto :goto_ee
:cond_ed
const/4 v13, 0x1          # tier = 1
:goto_ee
...
sget v14, a1PkTier(best)
if-gez v14, :cond_124     # best 未设(-1) ⇒ 采纳
if-lt v13(新), v14(优), :cond_127   # 新档更小 ⇒ 采纳
if-eq v13, v14, :cond_10b           # 同档 ⇒ 比 score
goto :goto_13d                      # 新档更大 ⇒ 保留旧
```
⇒ **tier ∈ {0,1}（0=有军建）且"小者胜" ⇒ 军事建筑优先，行为正确**。
（误读来源：把 911-920 的**记忆写入块**（写 6/4 到 `a1Known`）当成了 tier 赋值；两者在同一循环内但职责不同。）
⇒ 因此 §9「`nP2s tier` 多为 0」**成立**；审核所说"tier 只可能 4/6"不成立。
### 68.2 F-A（"写后即测"使记忆门恒真）—— **采纳，属文档/口径漂移（G1 的有意后果）**
- 事实：G1 之后记忆写入无条件（6/4 都含 0x4），紧随其后的 `&0x4` 门**不可能失败** ⇒ 候选资格实际等价于"**在航程内即视为已记录**"，雾标志**不参与候选**（只在 P3b 用于"打空/情报"表现）。
- 影响面：`a1Known`/`a1Gsee` 全树仅 AFM 自用（各 8/6 处）⇒ **无外部消费者**，语义变更封闭。
- 攻击线同理：G2 无条件下戳（=now）⇒ "≤6 回合新鲜"门不生效；候选取决于"确有敌军驻扎"。
- 处置：**不改代码**（G1/G2 正是为救回恒空候选池），**改文档**——见设计逻辑「附三」。
- 遗留死代码：`a1Scan` 里的 `getFogDrawArmy()` 读取已无消费者 ⇒ 列入 P5 清理项（与清探针同批）。
### 68.3 F-C（a1Dispatch 自行重选发射机场）—— **采纳，属口径漂移**
- 事实：`a1Scan` 只传 `(a1PkPid, civ)`；`a1Dispatch` 从该国机场列表**表头开始**找第一个"有空闲师且航程含该目标"的机场发射。
- 后果：①P 骰（每机场）可被绕过；②"每机场每回合只派 1 次"**不是代码级保证**；真正的上限是 **每文明每回合 ≤ FRQ 条**（`a1FrqN` 计数）。
- 处置：本批**改口径措辞**（见「附三」）；若要严格"发射机场＝选靶机场"，需改 `a1Dispatch` 签名（加机场参数，唯一调用点 1 处）⇒ 列入 **P2b 待办**（附成本评估）。
### 68.4 本轮结论
- 代码：**无新增缺陷**（F-B 反证为误读；F-A/F-C 是"文档 vs 实装"的表述差，非行为错误）。
- 文档：已同步（设计逻辑「附三」+ 本节）。
- 交付物不变：设备仍为 **r5c046g**（apk `57536e58…` / dex `f2f35e8a…`），无需重新装机。


---

## 69. 【第 8 次修正】r5c046i —— 选靶接通（2 处致命反向 + 1 处目标错位 + 1 探针）
### 69.1 抓样（样本 `r5c046g_s4.txt`，11.2 MB，基线 122715722）
| 探针 | 值 | 判读 |
|---|---|---|
| `nP2dif` / `nA2L` | 62 / 61 | 两条智能线入口在跑、线 L 关停生效 |
| `nP2pick` | **245 次，全部 a=-1** | **每个机场都没选到目标（候选池空/全被丢）** |
| `nP2s` / `nP2frq` / `nP2mil` / `nP2cap` | 0 / 0 / 0 / 0 | 未发生任何派发 |
| `nA1 ap=` | 0 | 派发器从未被调用（F10 守卫生效的反面证据：没候选就不乱调） |
| `nA1b ap=` | 5873 | 攻击线在跑（`a1bPick`/`a1bDiag` 日志），但同样无任务 |
### 69.2 根因（两处"未设门/主键"极性反了）
1. **`a1Scan` 档比较**：`sget a1PkTier(best)` 后写 `if-gez v14, :p2s_first`。
   `if-gez` = "**≥0 才跳**"，而 `:p2s_first` 是"首个候选采纳块" ⇒ **best=-1（未设）时不跳**，
   落到 `if-lt 新, -1`（永假）/`if-eq 新, -1`（永假）⇒ `goto :sc_in_next` 丢弃 ⇒ **胜利者永远不存在**。
   正确：`if-ltz`（<0 才跳）。
2. **`a1bPick` 师数主键**：`a1bDivCmp` 后写 `if-ltz v12, :p2d_ge`。
   `if-ltz` = "<0 才跳" ⇒ **只有"师数更少"才继续评估**，"更多/相等"全被 `goto :bp_loop` 丢弃 ⇒ 恒返回 -1。
   正确：`if-gez`（≥0 才继续）。
3. **`a1Scan` 同档分数**：`d = 新分 - 最优分` 的三个分支被写成"d<0 ⇒ 进随机池、d==0 ⇒ 丢弃"（目标互换）。
   正确：`d>0 ⇒ 采纳`（已有）、`d==0 ⇒ 随机池`、`d<0 ⇒ 丢弃`。
### 69.3 Dalvik 极性词典（**校正版，取代 §58 旧表**）
`if-eqz`==0 / `if-nez`!=0 / `if-ltz` **<0** / `if-gez` **>=0** / `if-gtz`>0 / `if-lez`<=0；
双操作数同族：`if-eq`==、`if-ne`!=、`if-lt`<、`if-ge`>=、`if-gt`>、`if-le`<=。
> ⚠️ 血案 13：r5c046f 的 3 处"归零钳位"修正**结论正确但依据错误**（当时误以为 `if-ltz` 是"≥0 才跳"）；
> 本次 `best` 门需要"<0 才跳"，照错误记忆写成 `if-gez`，导致两条线全线哑火。
> 经验规则：**"未设(-1)才做" ⇒ `if-ltz`；"负值归零" ⇒ `if-gez`**。
### 69.4 变更与产物
- 补丁 `r5c046i_fix.py`（4 处编辑，逐条锚点唯一）；坏样本 `AirForceManager.smali.pre_r5c046g`（/tmp/AFM_bad_r5c046g.smali）
- **新增门禁㉛** `toolchain/act/check_bestgate.py`：判据 = ①`a1PkTier` 读取后必须 `if-ltz :p2s_first`
  ②`:p2s_le` 后必须 `if-ltz :sc_in_next` ③`a1bDivCmp` 后必须 `if-gez v12, :p2d_ge`。
  **负样本验证**：修前 3 处命中（6835/6855/7283），修后 0 处。
- 其他门禁：`arity BAD=0`（WARN 3 为历史项）／㉚ zeroclamp OK／㉙ regtype 35→35（仅行号偏移，无新增）
- 产物：dex `6f9d12cad54921be6cf5dc3f0fba0377` ／ apk `2654e13a4963e427b611a5058e5950b7`
- 装机：`install.sh r5c046i --yes` 报成功，**外部独立核验**（设备 apk `2654e13a…` ✔ / dex `6f9d12ca…` ✔ / Earth3=18510 ✔）；抓样基线重置为 `133875338`
### 69.5 复用的 Dalvik 语义取证方法（写进流程）
判断助记语义不靠记忆：**拿 stock 代码校准** —— 例如 `getProvincesInRange` 内
`cmpl-float v6, dist, range` + `if-lez v6, :cond_58`（把范围内的省加进集合）⇒ 证明 `if-lez` = "≤0 跳"；
`getAircraftRange` 内 `if-gtz v1, :cond_1b`（>0 时用半径、否则兜底）⇒ 证明 `if-gtz` = ">0 跳"。


---

## 70. 【验收通过】r5c046i 抓样 —— 敌军飞机真的起飞了
> 样本 `r5c046i_s5.txt`（74.6 MB，基线 133875338 → 208478115）｜ 用户肉眼确认："现在敌军飞机真会飞了"

### 70.1 环环点亮的探针
| 环节 | 探针 | 本版观测 | 判定 |
|---|---|---|---|
| 航程集合 | `nP2set` | 601 次，876–894（均值 884） | ✅ 非空 |
| 选靶 | `nP2pick` | 600 次，**负值 0 次**（600/600 选中） | ✅ 选得出目标 |
| 档位 | `nP2s tier` | 0 × 48 ／ 1 × 136（**∈{0,1}**） | ✅ 军事建筑优先口径成立（印证 F-B 反证） |
| 分数 | `nP2s score` | 3 – 20460（均值 5989，n=185） | ✅ 同档内可比 |
| FRQ 记账 | `nP2frq` | 357×`1` ＋ 1×撕裂值 | ✅ 预算生效（难度 2 ⇒ FRQ=1） |
| 派发 | `nA1 ap=` k=0 | 184 次（成功建任务） | ✅ 派发器在跑 |
| 派发探针 | `nP2s pid` | 185 次 | ✅ 与 k=0 对齐（±1 为样本边界） |
| 上限门 | `nP2cap` | 0 | ⏸ 未触发（在飞从未达 K=3，正常） |
| 攻击机线 | `nA1b ap=` k=0 | 48 次（成功建任务）；k=1 2317（无机可用）/k=2 1979（目标超航程） | ✅ 攻击机也真的起飞 |
| 肉眼 | — | **AI 轰炸机/攻击机出现并飞向敌省** | ✅ |

### 70.2 唯一的异常读数（判为日志撕裂，非代码缺陷）
`nP2frq a=186580985`（0xB1EFFF9）仅 1/358 次，且紧邻非 AIRDBG 的游戏自身输出（`afd:enter: e`）。
本批该探针只写 `a1FrqN`（仅"按回合清 0 / +1"两种写入），**不可能到 1.8e8**；
同一采样里其余 357 次全为 `1` 且 FRQ 门行为正确 ⇒ 判定为**增量读取窗口期的行撕裂**（样本含 113 万行非 AIRDBG 日志、107 万行 AIRDBG，写入线程交错）。**不改代码**。

### 70.3 结论
- **P2a 的功能目标（AI 会用空军、且"看得见的出动"）达成**，r5c046i 转 ✅ 现役基线。
- 待办顺位：①**R7 量纲回填**（`score=(int)(经济×10)+人口/100`：现观测 3–20460，若想拉开/压缩档内差距，只改这两个常量，出 `r5c046k` 小批）
  ②**P2b**（F-C 严格化：`a1Dispatch` 自选机场 → 改为由 `a1Scan` 指定机场；并让"每机场每回合至多一次"真正成立）
  ③**P5 清理**：`a1Scan` 内已死的 `getFogDrawArmy()` 读取（消除冗余）。


---

## 71. 【P2b 全面调研】发射基地钉死（F-C 严格化）—— 只调研不施工
### 71.1 结论摘要
`a1Dispatch`/`a1bDispatch` 各自**重遍历文明机场列表、取第一个合格者发射** ⇒ 与"被评估机场"脱钩。
实证（样本 s5）：攻击线 48 次派发中 **26 次（54.2%）发射机场 ≠ 被评估机场**，且**26/26 都是"被评估机场无闲置师被跳过"**。
⇒ **只做硬绑定会丢一半产出，必须配"机场预筛"**（只让有闲置师的基地进入掷骰/评估）。
影响面：全样本只有 **civ73** 在出动，它拥有 **11 个机场**（divKey 反解）⇒ 11 选 1，不同源是常态。
### 71.2 机制选型（推荐 B：静态字段）
- `a1bDispatch` 已是 `.registers 16`（工具链硬上限）⇒ **不能加形参**；两线统一走静态字段 `a1PkApPid`/`a1bApPid`，零 arity 变更、零调用点改动。
- 植入锚点（唯一命中）：字段区 64–75；`a1Scan` 6658 后（写字段+预筛，v5 恒引用型）；`a1Dispatch` 6083 后（比对 v7↔字段）；`a1bScan` 7602 后；`a1bDispatch` 7408 后（v8）；探针 `nP2ap` 于 6951 前后。
### 71.3 建议三件套
P2b-1 机场预筛（`pickIdleDivKey != null` 才评估）｜P2b-2 硬绑定（派发器只认被评估机场）⇒ "每机场每回合≤1"成为结构性事实｜P2b-3 探针 `nP2ap` + 门禁㉜ `check_airport_bind.py`（负样本=当前基线全命中）。
### 71.4 验收（可证伪）
攻击线配对一致率 **100%**；`nP2ap` vs `nA1 ap=` 一致率 100%；同 (回合,机场) 出动 ≤1；产出不显著下降；`k=1` 空转趋近 0；肉眼"从哪里有兵就从哪里起飞"。
### 71.5 待裁决
①机制 B 还是 A？②是否加预筛？（建议加）③攻击线一起做？（建议一起）④掷骰稀释（~98.8%）本批不动、另开"难度手感"批（建议）。
> 详细调研（含全部取证表）见 `r6s5/调研_r5c046_P2b调研_v1.md`。


---

## 72. 【调研·新需求】敌方航线不可见 + P2b 口径锁定
### 72.1 P2b 口径锁定（用户裁决）
方案 B（静态字段 `a1PkApPid`/`a1bApPid`）＋ 机场预筛（P2b-1）＋ 两条线一起做；掷骰稀释（F-C-5）本批不动。
### 72.2 渲染管线事实
敌方任务**唯一总闸门 = `ProvinceDrawArmy.myOrDetectedMission`**：可见 ⇔ 我的 ∨ 已侦测(`PlayerFogOfWar.airDetSeen`) ∨ **目标省属于玩家**。
两个受它守卫的绘制层：`drawAirForceMissions`(1919，含 FX/飞机图标/**航线连线**) 与 `drawAircraftRadar`(2956，雷达光点)。
**航线**＝全树唯一的 `drawLinePts` 调用点（2157），端点由 `sourceAirport.provinceID` 与 `targetProvinceID` 求出，按 `flightProgress`/`state` 组合，颜色区分去程/RETURNING。
菜单侧（`InGame_AirForceQuick`/`InGame_ProvinceArmy`）按玩家自己的 `airhq_*` key 取任务 ⇒ 不泄露敌方。
### 72.3 侦测与拦截是两条链
侦测：`PlayerFogOfWar` 对 EN_ROUTE/EXECUTING 任务按"玩家机场/雷达范围"判定 ⇒ `airDetSeen.add` + `dispatchAutoIntercept`（自动拦截）+ 日志 `inDE_E`/`nDR_DET …src=radar`。
样本实证：`inDE_E` 2162、`nDR_DET` 793、`radar` 793 ⇒ 侦测在工作；**隐藏绘制不影响拦截**。
### 72.4 方案
S1 只隐藏敌方**连线**（推荐，纯绘零副作用，插入点=2157 前，用已死 v2，无需提高 .registers）｜S2 连线+尾迹｜S3 改为"仅侦测可见"（删"目标属玩家⇒可见"，会取消免费预警）｜S4 敌方全隐（不建议）。
### 72.5 待裁决
①S1/S2/S3 选择；②连线颜色是否区分隐藏；③是否保留"目标属玩家⇒预警"；④PATROL 是否一并隐藏（建议一并，按 civID 判定）。
> 详见 `r6s5/调研_r5c046_敌方航线不可见_v1.md`。


---

## 73. 【施工前体检】P2b + S1 逻辑与寄存器核查（不写码）
### 73.1 锚点唯一性
7 个锚点全部**实测 1 次命中**（含空行差异：`a1Scan` 锚点**有空行**、`a1bScan`/`a1bDispatch` **无空行**）。
### 73.2 寄存器画像（关键结论）
- `a1Scan`：**v8 为纯 int 家族（引用写 0）** ⇒ 机场 id 与预筛布尔都用 v8；`v3` 已是 BOMBER 可复用；**无需提高 .registers(16)**。
- `a1bScan`：**v5/v6/v8 全程未被使用** ⇒ v8 存布尔、v5 存 ATTACKER 引用；**无需提高 .registers(16)**。
- `a1Dispatch`(14) / `a1bDispatch`(16)：用既有 int 暂存 v7/v11、v7/v8 比较，**无需提高**。
- `ProvinceDrawArmy.drawAirForceMissions`(16)：`v1`＝AirMission（1947 起未再写）；**v2 在 2143–2159 之间是死的** ⇒ 用它存布尔；**无需提高**。
- 新 helper `a1AirOk`：`.registers 4`。
### 73.3 5 处最易写反的极性（逐条钉死）
预筛 `if-eqz`（无闲置师⇒跳）｜绑定 `if-ne`（非指定机场⇒跳）｜helper `if-eqz`（key 为 null⇒返 0）｜航线守卫 `if-eqz`（**不是我的**⇒跳画线）｜既有㉛类 `if-ltz`/`if-gez` 不动。
### 73.4 编辑清单与验证
E1–E8（字段/helper/a1Scan 头/探针/a1Dispatch 头/a1bScan 头/a1bDispatch 头/航线守卫）＋ **新增门禁㉜㉝**（负样本＝当前基线应报 6 + 1 处）＋ 回归㉙㉚㉛/arity/dangling。
抓样预期：`k=1` 空转→≈0；`nP2ap`↔`nA1 ap=` 100%；攻击线 k=9↔k=0 的 ap 100% 一致；产出不塌；敌方无连线而我方有连线。
> 详见 `r6s5/调研_r5c046_施工前体检_v1.md`。


---

## 74. 【施工·已装机】r5c046j —— P2b（发射基地钉死+预筛）+ S1（敌方航线不可见）
### 74.1 施工（严格按 §73 定稿，未临场变更）
E1 字段｜E2 helper `a1AirOk`（`.registers 4`）｜E3 `a1Scan` 写字段+预筛｜E4 探针 `nP2ap`｜E5 `a1Dispatch` 绑定｜E6 `a1bScan` 写字段+预筛｜E7 `a1bDispatch` 绑定｜E8 `ProvinceDrawArmy` 航线守卫。
补丁 `r5c046j_fix.py`（8 编辑，锚点唯一；期间修正过一次锚点缩进后重跑）。回滚点：`AirForceManager.smali.pre_r5c046p2b`、`ProvinceDrawArmy.smali.pre_r5c046p2b`。
### 74.2 门禁（含负样本）
| 门禁 | 负样本（改前） | 修后 |
|---|---|---|
| ㉜ `check_airport_bind.py` | 13 处 | **0** |
| ㉝ `check_route_hide.py` | 3 处 | **0** |
| ㉙ regtype | AFM 35 / PDA 21 | 35 / 21（无新增） |
| ㉚ zeroclamp / ㉛ bestgate | — | OK / 0 |
| arity / invoke-target | — | BAD 0 / OK |
### 74.3 产物与装机
dex `66d2c1ccfe9b9a2fee61a6a0843b18f8`；apk `292d1dba239b0dddd7a1646c88c2fb5a`（Earth3 18510）。
装机后**外部独立核验**：设备 apk `292d1dba…` ✔ / dex `66d2c1cc…` ✔ / Earth3=18510 ✔；抓样基线 `208478115`。
### 74.4 待验收（用户实测抓样）
`nP2ap`↔`nA1 ap=` 100%｜攻击线 `k=9`↔`k=0` ap 100%（改前 45.8%）｜`k=1`→≈0（改前 3457）｜产出不塌｜同(回合,机场)≤1｜**肉眼：敌方无航线、我方有航线**。
### 74.5 新流程入世界书
《强制规则：每次写 MOD 代码必须先完成三轮调研（含寄存器分配）》——第一轮全量 → 第二轮拓展 → 第三轮全量拓展定稿；寄存器默认用户指定，AI 可据实测画像改配并说明理由。


---

## 75. 【验收通过】r5c046j 抓样 —— 同源 100%、空转归零、敌方航线不可见
> 样本 `r5c046j_s6.txt`（44.5 MB，基线 208478115 → 252944973）｜ dex `66d2c1cc…` / apk `292d1dba…`

### 75.1 探针判读
| 环节 | 探针 | 本版观测 | 对比 r5c046i | 判定 |
|---|---|---|---|---|
| 轰炸线入口 | `nP2dif` | 120 | 252（样本量不同） | ✅ |
| 机场预筛后仍进入评估 | `nP2ap` | 98 | — | ✅ 新增 |
| 航程集合 | `nP2set` | 98（876–8913） | 601（876–894） | ✅ 非空 |
| 选靶 | `nP2pick` | 97 | 600（全为负值→改后不再出现 -1） | ✅ |
| 派发成功 | `nA1 ap=` **k=0** | **72** | 184（74.6 MB） | ✅ 按样本量折算持平 |
| **`k=1`（该机场无闲置师）空转** | `nA1 …k=1` | **0** | **3457** | ✅✅ **预筛生效，空转归零** |
| 派发器其它码 | `k=4`（每目标在飞≥2） | 299 | 2449 | ✅ 同源日志 |
| **轰炸同源率** | `nP2ap` ↔ `nA1 ap=` | **72/72 = 100.0%** | 无法测（无 nP2ap） | ✅✅ |
| 攻击线成功 | `nA1b …k=0` | 21 | 48（74.6 MB） | ✅ 折算持平 |
| **攻击线同源率** | `k=9 ap` ↔ `k=0 ap` | **21/21 = 100.0%** | **22/48 = 45.8%** | ✅✅ 钉死生效 |
| 攻击线空转 | `k=1`/`k=2` | **0 / 0** | 2317 / 1979 | ✅✅ |
| K 上限 | `nP2cap` | 0 | 0 | ⏸ 未触发 |
| 军建档命中 | `nP2mil` | 77 | 83 | ✅ 排序在工作 |
### 75.2 已装机 dex 反汇编复核（唯一真值）
`baksmali` 反汇编设备上的 `classes.dex`（md5 `66d2c1cc…`）逐字确认：
- S1 守卫：`isMyMission(…)` → `move-result v2` → `if-eqz v2, :cond_eb` →(跳过)`drawLinePts(…)`，标签在画线之后 ⇒ **非玩家任务不画航线**，极性正确。
- P2b：字段 `a1PkApPid`/`a1bApPid`、helper `a1AirOk`、`a1Scan` 写字段+预筛（`if-eqz v8, :cond_19c`）、`a1Dispatch` 绑定（`if-ne v7, v11, :cond_67`）、`a1bScan` 写字段+预筛（`if-eqz v8, :cond_65`）、`a1bDispatch` 绑定（`if-ne v7, v8, :cond_80`）、探针 `nP2ap` —— **全部在位且极性正确**。
### 75.3 结论
P2b 的目标（同源 + 不空转 + 每机场每回合≤1）与 S1 的目标（敌方航线不可见）**均已达成**；r5c046j 转 ✅ 现役基线。
残余可调项（下一批可选）：①难度手感批（掷骰稀释 F-C-5：11 机场下 P 骰几乎恒真，可改"每文明一次掷骰"，需与 P/FRQ 联动）；②P5 清理（`a1Scan` 内已死的 `getFogDrawArmy()` 读取）；③攻击线是否加"每文明每回合上限"（现仅有 K=3）。


---

## 76. 【第一轮全量调研】"轰炸机打伤战斗机/截击机" —— 只调研不施工
### 76.1 结论
全树只有 **一条活着的空战伤害路径**：`AirMission.airCombatTick()`（仅 INTERCEPT 任务触发，`update()`@4757 调用）。
其"还击"项 `v11 = Σ(目标任务**所有**存活飞机.airAttack)×0.5×系数` **完全不筛对空能力** ⇒ 轰炸机(AirAttack2)/攻击机(10) 照样还击。
另三条路径均不成立：`AirForceManager.airCombatOne` 被作者 `return-void` 短路（防空"后续做"）；地面轰炸 `applyArmyDamage` 已有 `airhq` 守卫（R5b004）**跳过空军师**；`missileTick` 不引用 `AirUnit`。
### 76.2 数据层本来就有答案
`AirUnit.canAttackAir:Z`（资产 `CanAttackAir`）：INTERCEPTOR/FIGHTER=true，**BOMBER/ATTACKER=false**。
而 `canAttackAir()` **全树从未被调用**（只有 `canAttackGround()` 被用）⇒ 这是"设计存在、结算漏接"。
### 76.3 修法
F1（推荐）：两处求和只累加 `canAttackAir==true` 的飞机｜F2：改 assets（需全量重打包，不推荐）｜F3：只过滤目标侧（语义不完整）。
### 76.4 验收
`nAC hit … e=` 应只剩护航战斗机/截击机贡献（纯轰炸 ⇒ e=0）；`my` 侧不变；战斗机/截击机互打与战斗机打轰炸机照旧。
### 76.5 另：AI 不造战斗机/截击机（线索）
四机型数据齐全（Cost/Time/Tech 都有）⇒ 问题在 AI 建造决策；线索集中 `Airport` 生产队列、`AirForceManager.updateAIBuildUp`、`AI_Build` 评分体系。该项留下批单开。


---

## 77. 【第二轮·拓展调研】轰炸机打飞机：上下游与副作用
- 调用链：`AirMission.update()`@4757 → `trackTarget()` → `airCombatTick()` → `missileTick()`；`airCombatTick` **仅 INTERCEPT 任务**运行，受 `gunLastHours` 每回合一次节流；交战双方都是战斗机/截击机。
- 伤害落地 `applyAirDamage`：按 `aliveAircraft` 逐个扣 `hp`、≤0 则 `recordLoss`+`recordKill`（`nAC kill`），收尾 `recordDamage`+`recalcPool`；**damage<=0 是空操作**。
- 护航：`createStrategicBombing`／`createAttackArmy` 均挂 FIGHTER/INTERCEPTOR 护航，`escortLimit` 上限 5 ⇒ 修完后"还击"只来自**护航机 + 攻击机自身**。
- ★陷阱：交换前有两道门（`v10<=0` 与 `v11<=0` 都取消整场）⇒ **必须同时放宽 v11 门**，否则纯轰炸任务变成"打不动的靶子"。
- 历史：`airCombatTick` 是高频改动方法（r4c162→r4c176→r5c025→现行），须最小改动＋门禁。

## 78. 【第三轮·全量拓展定稿】F1 施工定稿
- 编辑 4 处（锚点均唯一）：H1 新增 `a1ShootAir(AirUnit)Z`（`.registers 3`，判据 `type != BOMBER`）｜L1 我方火力循环加守卫（`if-eqz v12, :act_m1x`）｜L2 敌方火力循环同构（`:act_e1x`）｜G1 **删除** `cmpl-float v1, v11, v0`＋`if-lez v1, :act_ret`。
- 极性：`if-eqz`＝等于0才跳（返回0＝是轰炸机⇒跳过）；helper 用 `if-eq` 判 BOMBER。**写反会导致"只有轰炸机开火"**。
- 寄存器：`airCombatTick`(16 上限) 借 **v12**（纯基本型，循环内已死），**不提高 .registers**。
- 验收：纯轰炸 ⇒ `nAC hit my>0 e=0.0` 且有 `nAC kill`；攻击机任务 ⇒ `e>0`；`my` 侧不变。
- 门禁：新增 ㉞ `check_airshoot.py`（负样本应报 5 处）；回归 ㉙㉚㉛㉜㉝/arity/invoke-target。


---

## 79. 【施工·已装机】r5c046m —— F1：轰炸机不再参与空战射击
### 79.1 施工
严格按 §78 定稿：H1 新增 `a1ShootAir(AirUnit)Z`（`.registers 3`，判据 `type != BOMBER`）｜L1 我方火力循环加守卫（`if-eqz v12, :act_m1x`）｜L2 敌方火力循环同构（`:act_e1x`）｜G1 删除 `cmpl-float v1, v11, v0`＋`if-lez v1, :act_ret`。
补丁 `r5c046m_fix.py`（4 编辑，锚点唯一）；回滚点 `AirMission.smali.pre_r5c046m`。
### 79.2 门禁（含负样本）
| 门禁 | 负样本 | 修后 |
|---|---|---|
| **㉞ `check_airshoot.py`** | 5 处 | **0** |
| ㉙ regtype（AirMission） | 29 | 29（无新增） |
| ㉛/㉜/㉝ | — | 0 / 0 / 0 |
| arity / invoke-target | — | BAD 0 / OK |
### 79.3 产物与装机
dex `917ff2d99acecd887f0e0e1ae03d3e03`；apk `a3c7c1345517a5f52885fdbeb1750f45`（Earth3 18510）。
**外部独立核验**：设备 apk `a3c7c134…` ✔ / dex `917ff2d9…` ✔ / Earth3=18510 ✔；抓样基线 `879188420`。
### 79.4 待验收（用户实测抓样）
①纯轰炸被拦截 ⇒ `nAC hit my>0 e=0.0` 且出现 `nAC kill`；②攻击机任务被拦截 ⇒ `e>0`；③我方 `my` 与改前同量级。
> 注：空战较稀有，可能需要多打几回合才会出现 `nAC` 事件；若样本中没有 `nAC`，可先看 `nKOnAC`（击落）与战机/轰炸机的存亡变化。

---

## 80. r5c046n（暂定）：玩家侧自动打击「接活」= 让 `autoStrikeOff` 成为真实开关（口径 B）

### 80.1 问题（用户提问 → 定位）
用户："为什么以前还有用的玩家侧自动打击，现在没有用了？"
**字节级定位**：每回合自动指派入口 `executeAIAssignment(civ)`（[AFM:8166]，由 `update(civ)` [9941] 每回合每文明调用、含玩家）内有一道**机场级门**（[AFM:8240-8266]）。基线 r5c046m 的两条判据为
`if-ltz v4, :cond_65`（有玩家⇒跳过）＋ `if-ne v3, v4, :cond_62`（机场 civ≠玩家 civ⇒派发）。
对照 **base_v119.apk（r5c026 代）**：`if-gez v4, :cond_33` ＋ `if-eq v3, v4, :cond_30`（机场 civ==玩家 civ⇒派发）。
⇒ 两处判据在 **r5c026 那批"为开 AI 而做的判据改造"**时**同时被取反**（用户自述改造内容见 `调研_自动打击与自动拦截_现状与AI接入_v1.md`），此后在 **r5c037（归档最早）～r5c046m 逐字冻结**。
⇒ 后果：玩家机场（非 AI 模式）**再也不会**被自动指派；而「自动打击」按钮会把 mode 设成 `OFFENSIVE`（无消费端）⇒ 开关按了反而把机场"踢出"唯一可用路径 ⇒ 体感"开关失效"。
⇒ 现场实证（r5c046m 场次，key 日志 byte 879188421 起 107MB）：`nA4d=0`、`nA2L=256`、`nA2m=66255`。

### 80.2 口径 B（用户 2026-09-26 拍板）
不动 mode、不动 UI、不新增字段：在**同一道门**上追加"玩家机场 + `autoStrikeOff==0` ⇒ 放行"，使开关真正生效（与作者在 `a1Scan:872` 的用法、`Airport.<init>` 默认 1、按钮 `xor 0x1` 三者语义一致）。

### 80.3 三轮调研（已落盘）
| 轮 | 文件 | 内容 |
|---|---|---|
| 一 · 全量 | `r6s5/调研_r5c046n_玩家自动打击接活_v1全量.md` | 入口链（GameThread_Turns→updateAll→update→executeAIAssignment）、门与下游七道闸门、`Mode`/`autoStrikeOff` 全生命周期、语义钉子、base↔m 真值表 |
| 二 · 拓展 | `r6s5/调研_r5c046n_玩家自动打击接活_v2拓展.md` | 触发频率、相邻系统（巡逻链/UI五键/存档/a1新线/拦截两链）、历史血案时间线、六条不变量、失败模式与回退 |
| 三 · 定稿 | `r6s5/调研_r5c046n_玩家自动打击接活_v3定稿.md` | 锚点（命中=1）、施工文本 B→B'、真值表与极性、寄存器分配（借 v3，`.registers 7` 不动）、回滚点、六条可证伪验收、门禁㊱与负样本、11 项设计逻辑 |

### 80.4 施工规格（摘要）
文件：**仅 `AirForceManager.smali`**；回滚点 `AirForceManager.smali.pre_r5c046n`。
| 项 | 内容 |
|---|---|
| E1 | `if-ltz v4, :cond_65` → `if-gez v4, :cond_62`（无玩家⇒仍派发） |
| E2 | `if-ne v3, v4, :cond_62` → `if-ne v3, v4, :cond_65`（非玩家机场⇒跳过） |
| E3 | 删 `goto :goto_65`，插入 `iget-boolean v3, v2, LAirport;->autoStrikeOff:Z` ＋ `if-nez v3, :cond_65`（开关关⇒跳过） |
| 不改 | 内层 `nA2L` 门、10% 骰、`isAtWar`、选靶、`createStrategicBombing`、`Mode`、UI、存档、`a1Scan/a1bScan`、`strikeTick_A1`、任何 `.registers` |
净 +3 code units，无跳转拓宽。

### 80.5 门禁与负样本
**㊱ `check_execaiassign_gate.py`（新增）**：断言 `executeAIAssignment(I)V` 内 ①模式门存在 ②`if-gez v4, :<lbl>` 存在 ③`iget-boolean …autoStrikeOff:Z` + 紧随 `if-nez` ④防御性：`executeAIAssignmentForAirport` 内 `nA2L` 与内层玩家门仍在。
负样本＝当前 **r5c046m ⇒ 1 FAIL**；正样本＝补丁后 **0 FAIL**。另跑结构门禁（净 0）+ 标签归一化 diff（仅 +3/−1）+ 汇编自检。

### 80.6 待验收（可证伪）
①打开开关后该省出现 `nA2m/nA2b/nA2u`；②交战时出现 `nA4d`→`nA4v cand=/vis=`→`nA4e k=0`；③`nA2L` 保持旧量级（本场 256）＝AI 侧未被误伤；④未按开关的机场行为与 r5c046m 完全一致；⑤再按一次开关后立即停止新增派发。

### 80.7 文档订正 / 待办
- `调研_自动打击与自动拦截_现状与AI接入_v1.md` 中"**OFFENSIVE 没有任何消费端**"一句，在本版落地后应改写为：「OFFENSIVE 之下由 `autoStrikeOff` 决定：`==0` 参与自动指派（本版新增消费端），`!=0` 为手动」。
- 待办：开关状态的 UI 反馈（信息条"自动打击：开/关"）；`nA*` 探针清理；`strike_config.json`（孤儿资产）确认是否彻底废弃。
- 教训（建议入铁律）：㊽「为开 A 侧而改判据，必须同时写明 B 侧新入口，否则 B 侧静默死亡」；㊾「同链两判据同时取反＝整段真假对调，排查要看整段真值表」。

### 80.8 施工与交付（2026-09-26 已完成编码+静态全链，待装机验收）
**产物**：dex `9aa1396defb3a6a1bdba44b61c31888d`（7357648 B）／apk `d7c8a279142e511ae0a10b1e6cb4d2b8`（738369509 B）
**归档**：`build_apk/dbg_signed77_v119_r5c046n.apk`｜**回滚基线**：r5c046m（dex `917ff2d9…`／apk `a3c7c134…`）
**新增脚本**：`r5c046n_fix.py`（标签无关锚点：由被匹配代码推导跳过/派发标签，命中≠1 拒绝写入）｜`check_execaiassign_gate.py`（门禁㊱）｜`verify_r5c046n.py`（结构门禁＋标签抹平 delta）｜`mkzip_replace_dex.py`（raw-copy 换 dex，与现行装配流程一致）

**施工路径说明**：本批**未使用** `/tmp/w3a/smali`（其 `AirForceManager.smali` 为历史标签集，锚点形态与出货 dex 不一致，脚本会安全失败）；改为按现行流程 **从 r5c046m 出货 dex 新鲜 baksmali → 打补丁 → `RunSmali` 汇编**，保证"m ＋ 恰好 3 处编辑"。

**静态全链结果**
| 项 | 结果 |
|---|---|
| 门禁㊱ | 负样本 r5c046m = **2 FAIL**（㊱-2 仍 if-ltz、㊱-3 无 autoStrikeOff）；正样本 r5c046n = **0 FAIL** |
| 结构门禁 | m 0 BAD／n 0 BAD，**新增问题 0**（越界/p 区/move-result 形态与紧贴/尾部标签） |
| 标签抹平 delta | **+3 / −2**：`+if-gez v4,:派发`、`+iget-boolean v3,v2,autoStrikeOff`、`+if-nez v3,:跳过`；`−if-ltz v4,:跳过`、`−goto :跳过` ⇒ 与 §80.4 规格逐条一致 |
| 汇编 | `RunSmali`：smali files 5520，**`result=true`**（按教训：必须校验该行，不能只看退出码） |
| 装配 | raw-copy 42244 条目 + 替换 classes.dex + 剔签名 + `zipalign -f4` + `apksigner` |
| 签名指纹 | `d6d886f1…9d10` ✅ 与项目要求一致（与 v79 同） |
| 包内 dex == 工程件 | `9aa1396d…` ✅ 双端一致（`unzip -p … classes.dex | md5sum`） |

**装机后强制的设备侧三对齐**（铁律【75】：install.sh 自报不采信）
`cmd package path age.of.history3.qiamxi.zhiri` → `md5sum base.apk` 应＝`d7c8a279…`；`unzip -p base.apk classes.dex | md5sum` 应＝`9aa1396d…`；`assets/map/EarthM/...` 条目数应＝18510；三者齐才允许开档抓样。

**待验收（五条，见 §80.6）**：①开关打开后该省出现 `nA2m/nA2b/nA2u`；②交战出现 `nA4d`→`nA4v cand=/vis=`→`nA4e k=0`；③`nA2L` 保持旧量级（上批 256）＝AI 侧未误伤；④未按开关的机场行为与 m 一致；⑤再按一次开关即停。

---

## 81. r5c046o（A+B）：自动打击开关"可观测" + 面板未选中机场不再静默落到第 0 个

### 81.1 r5c046n 装机验收判读（结论：机制正确，问题在"看不出作用于谁"）
场次切片 522,762 行：`nA2m civ=73`（全是你）、`mode=` 全 =1（`OFFENSIVE`；枚举 `PATROL=0/OFFENSIVE=1/AI=2`）、`nA4d`=14 次战时支、`nA4e k=`：**0:10**（成功）｜1:1117（骰没过）｜5:63（无闲置轰炸师）｜6:16；`k=0` **全部落在后 1/3**，且**最后一次之后 12% 的切片里 `nA2m/nA4d/nA4e` 全为 0** ⇒ **开关真正全关之后，整条链完全安静**。
根因（UI 侧）：`iActiveID` 初值 **-1**（`InGame_AirForceOptions.<clinit>`），而 `BtnMission` 的 4 处读点都是"`<0`⇒0、`≥size`⇒0"的**静默钳位**（原版设计）⇒ **未点选机场时，按钮既改的是第 0 个机场、显示的也是第 0 个机场的状态**（`getTextToDraw` 同一套钳位）⇒ 用户以为在配置眼前的机场。

### 81.2 本批内容（A+B；C 之后再说、D 下批做）
| 项 | 文件 | 内容 |
|---|---|---|
| **A** | `AirDbgLog.smali` | `p0Air` dump 追加 ` strike=`（= `Airport.autoStrikeOff:Z`）⇒ `nA2m/nA3b` 每次都能读出该机场开关（关＝1／开＝0） |
| **B-1** | `BtnMission.smali` | `actionElement` 钳位 → **未选中即 `:nosel`**（删 2 条 `const/4`，目标标签改 `:nosel`） |
| **B-2** | 同上 | 机场解析后补探针 `afp:press ap=<provinceID>`（证明每次按键落在哪个机场） |
| **B-3** | 同上 | `getTextToDraw` 钳位 → `:noselTxt` |
| **B-4** | 同上 | `actionElement` 末尾追加 `:nosel` 块：Toast「请先选择机场」（`Game.menuManager.addToast_Error`，带 `if-eqz` 守卫）＋探针 `afp:noSel` ＋ `return-void` |
| **B-5** | 同上 | `getTextToDraw` 末尾追加 `:noselTxt` → 返回「未选中机场」 |
| 不改 | — | `AirForceManager/AirMission/Airport`、任何 `.registers`、存档、开关与派发语义、其它按钮类与 type3/4 支 |

### 81.3 三轮调研（已落盘）
`r6s5/调研_r5c046o_开关可观测与UI选项纠错_v1全量.md`（症状判读＋A/B 实现面＋锚点实测）｜`..._v2拓展.md`（上下游/频率/相邻系统/历史成因/不变量/失败模式）｜`..._v3定稿.md`（锚点逐字＋施工文本＋真值表＋寄存器表＋门禁㊲与负样本＋五条验收）

### 81.4 门禁与验收
**㊲ `check_r5c046o_probe.py`**：断言 ①`AirDbgLog` 有 `" strike="` 且有 `Airport;->autoStrikeOff:Z`；②`BtnMission` 有 `"请先选择机场"`＋`"afp:noSel"`；③有 `"未选中机场"`；④有 `"afp:press ap="`。负样本 r5c046n ⇒ **4 FAIL**；正样本 r5c046o ⇒ **0 FAIL**；㊱ 仍 0 FAIL；结构门禁净 0。
**验收**：①未选机场按按钮 ⇒ Toast+`afp:noSel` 且**无状态变化**；②此时按钮文本＝「未选中机场」；③点选机场后按按钮 ⇒ `afp:press ap=` 与所点机场一致；④` strike=` 与实际开关一致；⑤回归项全绿。

### 81.5 后续登记
- **C（全局"全开/全关"按钮）**：用户确认需要，**之后再开批**。
- **D（攻击机纳入自动派发）**：用户确认**下批做**——老路战时只找 `BOMBER`、和平只找 `FIGHTER`，`createAttackArmy` 仅有 `a1bDispatch`（AI 线）与 `createMissionForClick`（手动）两个入口 ⇒ 需在战时分支加"轰炸师优先、其次攻击师"（形状照抄 `a1bDispatch`），并讨论"关开关是否召回在飞任务"。
- 登记项：其它按钮类（Payload/Nuke/Build/Select）同款钳位、`BtnMission` type3/4 支、以及"未选中时自动选中当前打开省份的机场"（更顺手，另批评估）。

---

## 82. r5c046p：撤销 o-B ＋「自动打击」按钮重新接活（目标解析 ①→④ 兜底）

### 82.1 事故复盘（r5c046o 的 B 把按钮弄哑）
用户报"九个机场自动打击全关仍然出动 / 按钮没接活"。实测（o 装机后一场 23.6 MB / 145.6 万行）：
`afp:noSel` **9**、`afp:press ap=` **0**、` strike=` 9822 条**全 =1（关）**、`nA4e k= a=0` 60。
⇒ **B 把 9 次按键全部拦掉**（原逻辑一次未执行）；那 60 次派发与开关无关，是 `mode==AI` 的机场走"门①：`mode==AI ⇒ 派发`"。
根因：`iActiveID` 初值 **-1**（`InGame_AirForceOptions.<clinit>`）、**关屏复位 -1**（`MenuManager.setVisibleInGame_AirForce` [38655-38661]）、且引擎在 `iActiveID<0` 时显示"机场列表屏"——**任务按钮在该屏下依然可点**，原版兜底＝静默落到 `list[0]`。B 把兜底换成"提示+不动作" ⇒ 哑。

### 82.2 修法（用户口径：唯一要求＝按钮接活；取消"未选中"那套）
`BtnMission` 新增 `pickAirport()`：**①`iActiveID` → ②`selectedAirportProvinceID`→`getAirportByProvinceID`（AFM:8283）→ ③`Game.iActiveProvince`→同上 → ④`list[0]`**，永不返回 null（除无玩家/无机场）；
`actionElement` 与 `getTextToDraw` 都改用它 ⇒ 按钮永远能按、且以"你打开的那个机场"为准；**B 的提示/不动作/`afp:noSel`/「未选中机场」全部不复存在**。
探针：`afp:press ap=`（每次按键）、`afp:tgt fb=2/3/4`（走兜底时）、` strike=`（机场 dump，保留 o-A 成果）。

### 82.3 产物与核验
dex `1a5c3452ed53cdb008ee7c969c12b847`／apk `fab8c53c798ebbf96bdb2cc6690d2f09`（`build_apk/dbg_signed77_v119_r5c046p.apk`）；
设备三对齐 ①`fab8c53c…` ②`1a5c3452…` ③Earth=18510 ✅；抓样基线 **`1066891962`**；回滚基线 r5c046n。
门禁：㊳ 负样本（n）4 FAIL → 正样本（补丁树 & 装配后树）**0 / 0 FAIL**；㊱ 回归 0 FAIL；`AirForceManager.smali` `cmp` 逐字未变；全树仅 2 文件变化。

### 82.4 待验收（用户实测）
① 点机场 → 按「自动打击」⇒ `afp:press ap=<该省>` 且 ` strike=` 1→0、文本变「开」；
② 未点机场时按 ⇒ 仍能按（可有 `afp:tgt fb=`），**不再有任何"未选中"提示**；③ 战时打开开关 ⇒ 该机场 `nA4d`→`nA4e k=0`。

### 82.5 登记与教训
- 登记：C（全局全开/全关）；**D（攻击机纳入自动派发）下批**；其它按钮类与 quick 栏同款钳位；`mode==AI` 的机场"开关关不掉"是否要改（需用户定语义）。
- 教训：①门禁断言中文串须兼容 `\uXXXX`；②拼 smali 注意 `Lxxx;` 已含分号；③**改 UI 前先确认用户按的是哪一套 UI**（本批仅 `InGame_AirForceOptions$BtnMission`；quick 栏 `InGame_AirForceQuick` 未动）。

---

## 83. r5c046q：自动打击/自动巡逻「接活」（入口探针 ＋ 巡逻文本同源）

### 83.1 重大更正（推翻 §82 之前的错误结论）
攻击机**有**自动打击线：`AirForceManager.update(I)`(9942) 末尾 → `strikeTick_A1(I)`(10123) → **`a1Scan(p0)`(6730) ＋ `a1bScan(p0)`(6732)** → `a1bPick` → **`a1bDispatch`(1488) → `AirMission.createAttackArmy`(1532)**。计划书 §1743/2030/2190（`nA1b ap=` k=0 实测 48 次成功建任务）早已记录该线。
**两条线的"玩家门"**：
- 轰炸线 `a1Scan`：AFM **866-874** —— 若 `airport.civID == player.iCivID` 则必须 `autoStrikeOff == 0`（开关**开**）才继续；
- 攻击机线 `a1bScan`：AFM **2415-2455** —— 同款门；另有线级 K 门 `a1CivInflight(civ, ATTACK_ARMY) >= 3 ⇒ nP2cap` 退出。
⇒ 本场会话 ` strike= a=1` **3948 条全为 1（关）** ⇒ 两条线每次都把玩家机场跳过 ⇒ **"自动打击不派攻击机"＝开关没打开的下游症状**，与"按钮没反应"同一根因。**原登记的 D（在老路补攻击机派发）因此不需要做。**

### 83.2 本批内容（只改 1 个类）
| 项 | 内容 |
|---|---|
| Q1 | `BtnMission.actionElement` 第一条指令：`dKey("AIRDBG","afp:ent")`（入口探针，位于 `:try_start_0` 之前） |
| Q2 | null 静默 return → `if-eqz v0, :pn_ok` ＋ `afp:null` 探针 ＋ `return-void` |
| Q3 | `getTextToDraw` 巡逻分支整段 → `pickAirport()`（显示端与打击端同源） |

### 83.3 产物与核验
dex `b8c3b76e3012e63630d993c77bf2f004`／apk `9aecd17c13d924aed1f6ab9bdd2aeeb8`（`build_apk/dbg_signed77_v119_r5c046q.apk`）；设备三对齐 ①`9aecd17c…` ②`b8c3b76e…` ③Earth=18510 ✅；抓样基线 **`1161062071`**；回滚基线 r5c046p。
门禁㊴：负样本（p）**3 FAIL** → 正样本（补丁树）**0 FAIL** → **装配后树 0 FAIL**；㊱ 回归 0 FAIL；AFM `cmp` 逐字未变；全树仅 1 文件变化。

### 83.4 待验收（用户实测，判据互斥）
① 按一次「自动打击」⇒ 日志出现 **`afp:ent`** ⇒ 出现 `afp:press ap=<你点开的省>` ⇒ ` strike=` 翻 1↔0、文本同步；
② 若**没有** `afp:ent` ⇒ 点击未进本类 ⇒ 下一批查 `Menu.actionElement(I)` 的元素 id 归属（**需碰 `Menu`，要用户授权**）；
③ 开关打开＋战时 ⇒ `nA4d`→`nA4e k=0`、`nA1b ap=` k=0 出现（攻击机线恢复）。

### 83.5 教训（已入铁律【81】）
- **装配后标签会被重编号**（`:pn_end` → `:cond_10f`）⇒ 补丁锚点与门禁断言**不得依赖标签名**；
- **baksmali 树指令之间会插空行** ⇒ 相邻锚点必须允许 1 行空行；
- 引擎自带每帧异常 `ProvinceNamesManager:431`（`get(0)` on 空表，`RendererGame$3.drawWithoutScale`）——**与本工程无关，另案登记**。

---

## 84. r5c046r：按键全链探针 ＋ 取机场「永不哑」

### 84.1 上一批（q）的定位结论（硬证）
| 探针 | 实测 | 结论 |
|---|---|---|
| `AIRDBG: afp:ent` | **24** | 点击 **100% 进入** `BtnMission.actionElement`（o/p 批"未派发"的猜测被推翻） |
| `AIRDBG: afp:` | **24** | 每次按键 `pickAirport()` 都返回 **null** |
| `afp:press ap=` | 0 | 从未走到"拿到机场" |
| 同刻 `afp:tgt fb= a=4`（显示侧同一函数） | 2315 | 显示侧拿到非空（`list[0]`） |

### 84.2 q 版缺口与修法（本批）
q 版 `pickAirport` 在**取列表为空时立即 null**，之后才轮到"省反查"（省反查不依赖列表）⇒ 那一刻列表取回空 ⇒ 按钮永远哑。
本批把 `pickAirport` **整段重写为 `pickAirport(I who)`**：
- `size<=0` **不再短路**；顺序 ①`iActiveID`→列表 ②`selectedAirportProvinceID`→反查 ③`Game.iActiveProvince`→反查 ④`list[0]`（全失败才 null）；
- 失败出口带原因探针 `afp:n = who*10+{1 player空,2 AFM空,9 全失败}`；成功来源 `afp:src = who*10+src`（**仅按键侧记录**，who：1=按键 2=显示）；
- 新增 `afp:mt`（机型）、`afp:strike new=`（翻转结果）、`afp:done`（收尾）三个探针 ⇒ **按键全链一次打全**。

### 84.3 产物与核验
dex `dfd4e7cd7785968d3a02f91bf2d1a8e1`／apk `95b8bc047a5452d069fae3423d91d8fc`（`build_apk/dbg_signed77_v119_r5c046r.apk`）；设备三对齐 ①`95b8bc04…` ②`dfd4e7cd…` ③Earth=18510 ✅；抓样基线 **`1169328671`**；回滚基线 r5c046q。
门禁㊵：负样本（q）**5 FAIL** → 正样本（补丁树）**0 FAIL** → **装配后树 0 FAIL**；㊱ 回归 0 FAIL；AFM `cmp` 逐字未变；全树仅 1 文件变化。

### 84.4 待验收（一次按键即可判读）
`afp:ent` → `afp:src` → `afp:mt=1` → `afp:press ap=<省>` → `afp:strike new=` → `afp:done`；
若只出现 `afp:n=…` ⇒ 直接给出 null 原因并按原因修；若只有 `afp:ent` ⇒ 中途 return/异常（查 logcat）。

### 84.5 教训
- `const/4` 立即数范围 **-8..7**：探针码 9 必须用 `const/16`（首轮汇编被拒即此）；
- **"取列表失败"不能短路"省反查"**：两条取源相互独立，失败必须各自尝试（本轮 bug 的根因）。


---

## 85. 【第一轮全量调研】r 版三症状定位（玩家自动打击 / 按钮 / "套着 AI 逻辑"）
### 85.1 差异取证（m→r 只动 3 个类）
`AirDbgLog`（` strike=` 探针）｜`AirForceManager`（**仅 `executeAIAssignment` 一个方法**，即 n 批门）｜`BtnMission`（探针＋`pickAirport`）。
其余 5517 个类逐字未动；我方 m 批 `a1ShootAir`、P2b 绑定、航线守卫**全部在位** ⇒ **无"改坏别处"**。
（工具：`cmp_dex_trees.py` / `cmp_methods.py`，标签归一化比对，可穿透装配后的标签重编号。）
### 85.2 症状地图
| 用户症状 | 代码事实 | 状态 |
|---|---|---|
| 玩家自动打击没用 | 门：`mode==AI ⇒ 派发（无视开关）`；`玩家机场 且 autoStrikeOff==0 ⇒ 派发` | 需实测看 ` strike=`/`mode=` |
| 玩家轰炸机套 AI 逻辑 | 玩家机场走**共享 AI 指派例程** `executeAIAssignmentForAirport`（10% 骰 + `aiPickVisibleTarget` 随机可见目标）；智能线 `a1Scan/a1bScan` 在 `strikeTick_A1` **显式跳过玩家** | **确认成立**（是否为问题待裁决） |
| 两按钮没反应 | q 代 `pickAirport` 列表空即短路（q 实测 `afp:press`=0）；r 已重写为 4 级兜底 | 待 r 实测 |
### 85.3 新发现待修
① `missionType==2`（AI 接管）分支仍用旧钳位 ⇒ 未选中时误改 `list[0]`；② `actionElement` 顶部"无机场静默 return"无探针。
### 85.4 工程树风险（重要）
现行工程树 `/tmp/w3a/smali` **停在 m**，缺 n→r；继续用它会**静默回退** n→r。
**已建 r 基线树 `/tmp/w3a_r/smali`**（从 r dex 反汇编，5520 文件，关键点校验通过）⇒ 后续补丁改指此树。
### 85.5 待裁决
①`mode==AI` 是否无视开关？②玩家自动打击是否改用智能线？③"AI 接管"键是否统一 `pickAirport`？④是否立刻做 r 实测抓样？


---

## 86. 【第一轮全量调研】r 版按钮哑的真因＝极性写反（+ 两个问答）
### 86.1 真因（硬证）
`BtnMission.actionElement`：`if-eqz v0, :cond_2c`（应为 **`if-nez`**）⇒ **pickAirport 成功时反而打 `afp:` 并 `return-void`**；为 null 时才跳去用机场（NPE）。
r 场次日志：`afp:src a=13` × **39** → 紧跟 `afp:` × **39** → `afp:press/mt/strike/done` 全 **0**。
### 86.2 连带：玩家自动打击"没用"是同一根因
r 场次 1367 条机场 dump：` strike= a=` **全 1（关）**、`mode= a=` **全 1（OFFENSIVE）**、`nA4d` **0**。
`Airport.<init>` 默认 `mode=OFFENSIVE` + `autoStrikeOff=true` ⇒ 只能靠按钮打开；按钮坏 ⇒ 玩家机场永不派发。
### 86.3 两个问答
- **玩家用老线**：✅ 现状如此。智能线 `strikeTick_A1` 显式跳过玩家；玩家走 `executeAIAssignmentForAirport`（10% 骰 + `aiPickVisibleTarget` 随机可见目标）＝游戏自带的老线，**无需改**。
- **AI 接管选项**：代码有 `missionType==2 → Mode.AI + executeAIAssignment(玩家civ)` 分支（基础游戏自带），但 **4 个按钮传的是 0/1/3/4，无任何入口** ⇒ **游戏内没有这个可点选项**（死分支）。要做成真选项需新增入口。
### 86.4 修复方案（待批准）
**F1 必需**：`if-eqz v0, :cond_2c` → `if-nez v0, :cond_2c`（1 字极性，顺带消除 NPE）｜F2/F3 可选（AI 分支统一 pickAirport、空列表探针）。
**基线树**：一律用 `/tmp/w3a_r/smali`（旧树停在 m，用它会回退 n→r）。
**验收**：`afp:ent → afp:src → afp:press ap=<省> → afp:mt=1 → afp:strike new=<0/1>` ＋ ` strike=` 1↔0。


---

## 87. 【施工·已装机】r5c046s —— 修"自动打击/自动巡逻按钮哑"（1 字极性）
### 87.1 施工（严格按 r5c046t 定稿）
文件：`InGame_AirForceOptions$BtnMission.smali`（**仅此一个类**）；锚点 `if-eqz v0, :cond_2c`（实测唯一=1）→ **`if-nez v0, :cond_2c`**。
补丁 `r5c046s_fix.py`；回滚点 `/tmp/BtnMission.pre_r5c046s.smali`；**基线树 `/tmp/w3a_r/smali`**（r 基线，旧树停在 m 未用）。
### 87.2 门禁（含负样本）
| 门禁 | 负样本（r） | 修后 |
|---|---|---|
| **新增 ㊶ `check_btn_null_polarity.py`** | **2 FAIL** | **0 FAIL** |
| 汇编自检 | — | `result=true`（smali files 5520） |
### 87.3 产物与装机
- 汇编：`RunSmali /tmp/w3a_r/smali` ⇒ dex `77903cead378848518a88230f554ae61`
- 装配：`build_fast.sh r5c046s` ⇒ apk `6903fe1b68258a63772f0b5824f33e6a`（Earth3=18510）
- 装机：`install.sh r5c046s --yes`；**首次核验命中 `cmd` 服务瞬时故障（脚本误判"✅"，实为空 md5）⇒ 按铁律复检**，随后设备侧确认为新件。
- **设备三对齐 ✅**：apk `6903fe1b…`／dex `77903cea…`／Earth3=18510；抓样基线 `1180525977`。
### 87.4 待验收（用户实测，判据互斥）
一次按键应看到六连：`afp:ent → afp:src(12/13/14) → afp:press ap=<省> → afp:mt=1 → afp:strike new=<0/1>`；
机场 dump ` strike=` 1↔0 翻转；文本 `自动打击：开/关` 同步；开关开＋战时出现 `nA4d`→`nA4e k=0`。
### 87.5 流程铁律补录
- **铁律【82】**：修完"取数函数"必须**复核调用点极性**（q 修 pickAirport、r 却把调用点写反 ⇒ 缺陷跨批存活）。
- **铁律【83】**：装机脚本第4步读空（`cmd` 服务故障）仍判"✅"属**假阳性** ⇒ 一律以外部独立三对齐为准。


---

## 87. 【第一轮全量调研】r 版"谁在飞／为何只轰炸机／为何越迷雾"
### 87.1 r 场次硬数据（对齐现象归属）
`nA5t`=559 但 **`nA5b`=0**（**本场无战事**）⇒ 智能线**零活动**（`nP2*`、`nA1*` 全 0）；老线战时入口 `nA4d`=0、`nA2L`=0；` strike=` 1367 条**全 1（关）**、`mode=` 全 1（OFFENSIVE）；`nDR_DET`=0。
⇒ **该场次没有任何派发**；观察到的"起飞"不在采样窗口内（可能在飞旧任务／更早场次／另一条链）。
### 87.2 三条"不问开关"的升空路径
① **自动拦截**（侦测到敌机 ⇒ `dispatchAutoIntercept` ⇒ 你的截击机自动升空，**游戏自带**）② 手动出击 ③ 存档里已在飞的任务。
玩家"自动打击"派发**必须**开关开（门见 §87.4）。
### 87.3 "战时只有轰炸机"＝设计现状
老线战时只建 **BOMBER**（和平才 FIGHTER/巡逻）；智能线攻击机线需"机场有闲置 ATTACKER 师"（预筛）⇒ 没造攻击机 ⇒ 只有轰炸机起飞（与"AI 不造战斗机/截击机"同源）。
### 87.4 ★"越迷雾"硬证（我的回归）
`a1Scan`（r 版 940–985）：`getFogDrawArmy()` 读取后**下一行即被 `a1HasMil` 覆盖丢弃**；`a1Known` 无条件写；`&0x4` 门**恒真** ⇒ 可见性**完全不参与**候选判定。`a1bPick` 同（G2 两支都盖戳、F11 撤雾门）。
老线 `aiPickVisibleTarget`＝`rnd.nextInt(size)` 随机取，自身不看雾 ⇒ **两条线都"随机/越迷雾"**。
⇒ 结论：不是"接了 AI 逻辑"，而是**我们智能线的迷雾/记忆门被我在 r5c046g 为修"候选恒空"而解绑**（G1/G2/F11）——需按正确语义绑回。
### 87.5 玩家自动打击的门（r 版逐字）
`mode==AI ⇒ 派发（无视开关）`｜`playerCiv<0 ⇒ 派发`｜`玩家机场 且 autoStrikeOff==0 ⇒ 派发`｜其余跳过 ⇒ **线已接好**，只差开关能打开（按钮 F1）。
### 87.6 待裁决
①迷雾口径（a 玩家可见／b AI 记忆／c 二者并）②"谁在飞"＋战时实测 ③是否先打 F1（按钮）。
### 87.7 修复计划
F1 按钮 1 字极性（独立）｜F4 迷雾重绑（按口径；验收＝目标省 ∈ 可见集合且候选非空）｜F2/F3 可选。
**基线树＝`/tmp/w3a_r/smali`**；`assemble.sh` 的 `SMALI_TREE` 硬编码旧树 ⇒ 需直调 `RunSmali`。


---

## 88. 【第二/三轮调研·定稿】F1 按钮极性修正（1 字）
- 锚点：`InGame_AirForceOptions$BtnMission.smali` 内 **`if-eqz v0, :cond_2c`（命中=1）** → 改 **`if-nez v0, :cond_2c`**。
- 真值表：非空 ⇒ 跳到"干活"分支（切换）；null ⇒ 打 `afp:` 返回（不再 NPE）。
- 寄存器：`.registers 11` **不变**（只改助记）。
- 下游：切换 `autoStrikeOff` ⇒ 派发门 `玩家机场 ∧ switch==0` 放行 ⇒ 玩家机场按**老线**派发（战时 BOMBER）。
- 门禁㊶（负样本 r=1、正样本=0）；验收：`afp:ent→…→afp:press ap=→afp:mt a=1→afp:strike new=→afp:done` 且 ` strike=` 翻转。
- 基线树＝`/tmp/w3a_r/smali`（r 基线）；`assemble.sh` 的 `SMALI_TREE` 硬编码旧树 ⇒ **直调 `RunSmali`**。


---

## 89. 【三轮调研·定稿】F5 巡逻门 + F4 AI 自己视野
### 89.1 F5（用户：战斗机一造出来就自己巡逻、按钮管不住）
**根因**：老线和平分支（`executeAIAssignmentForAirport` 行5482）建巡逻**从不检查 `mode`**；只要"外层门（玩家机场 ∧ 自动打击开关=0）+ 10% 骰 + 未开战 + 有战斗机"就自建巡逻。6 个 `createPatrol` 点里只有 `tryPatrolForAirport` 有 `mode==PATROL` 门。
**修法**：在分支分叉点插入 `mode` 门——和平 ⇒ 仅 `mode==PATROL` 才巡逻；战时 ⇒ 仅 `mode!=PATROL` 才轰炸（`mode==AI` 行为不变）。锚点 `if-eqz v0, :cond_56`（唯一），借 v2/v3，`.registers 9` 不变。
### 89.2 F4（用户已同意"AI 走自己视野"）
**根因**：`a1Scan` 的 `getFogDrawArmy()` 读后即被覆盖、`a1Known` 无条件写、`&0x4` 恒真；`a1bPick` 雾读只用于计数/盖戳 ⇒ 智能线**无可见性门**（老线反而有 `aiVisRadarPass ∨ aiVisAirportPass`）。
**修法**：新增 helper `a1VisOk(Airport,pid,civ)Z`（＝老线同款 `aiVis*`，civ＝AI 自己），在 `a1Scan`（替换 `&0x4` 门）与 `a1bPick`（候选验收点前）各插一道门 ⇒ AI 只打它自己看得见的省。
### 89.3 门禁与验收
㊷ 巡逻门（负样本 s⇒1）；㊸ 视野门（负样本 s⇒3）；验收：默认无自动巡逻 → 按巡逻键才巡逻；AI 目标只落在其可见省。


---

## 90. 【施工·已装机】r5c046t —— 两个按钮真正生效（F5）+ AI 走自己视野（F4）
### 90.1 施工（严格按 §89 定稿）
H1 新 helper `a1VisOk(Airport,pid,civ)Z`（`.registers 8`）｜**F5** `executeAIAssignmentForAirport` 分叉点插 `mode` 门｜F4a `a1Scan` 换掉恒真 `&0x4` 门｜F4b `a1bPick` 插 `a1VisOk`。
补丁 `r5c046t_fix.py`（4 编辑，锚点唯一）；回滚点 `AirForceManager.smali.pre_r5c046t`。
### 90.2 门禁
| 门禁 | 负样本（装机 s） | 修后 |
|---|---|---|
| **㊷㊸ `check_r5c046t_gate.py`** | **6 处** | **0** |
| ㊶ btn-polarity | — | 0 |
| ㉙ regtype AFM | 35 | 37（2 条启发式） |
| arity / invoke-target | — | BAD 0 / OK |
| 语义等价抽查 | — | `a1ShootAir`/`a1PkApPid`/`isMyMission`/`autoStrikeOff` 全在位 ✔ |
### 90.3 产物与装机
dex `8451644e27162bc3ac114c92ab4791eb`；apk `a6ae82302a2cbd07007a3b9ab364e7e3`（Earth3 18510）。
**外部独立核验**：设备 apk `a6ae8230…` ✔ / dex `8451644e…` ✔ / Earth3=18510 ✔；抓样基线 `1185020445`。
### 90.4 待验收（用户实测）
①默认不动按钮 ⇒ 战斗机不再自己巡逻；②按「自动巡逻」⇒ 后续出现巡逻、再按 ⇒ 召回；③「自动打击」+ 战时 ⇒ 自动轰炸（目标∈可见敌省）；④AI 目标只落在 AI 可见省。


---

## 91. 【施工·已装机】r5c046u —— 修"开关门被短路"（③）+ 修 helper 取错寄存器（④）
### 91.1 根因（均以样本 + 逐字代码双向确认）
- **③**：`executeAIAssignment(I)V` 的派发门里 `if-gez v4, :cond_65`（=playerCiv≥0 直接跳"派发"）⇒ **只要有玩家，所有机场一律派发**，`autoStrikeOff` 与"是否玩家机场"检查被短路。样本：最后一次把打击键切到"关"在 143157 行，而 4 次 `nA4d` 全在其后。
- **④**：我上一批新增的 `a1VisOk` 里用 `Game.getProvince(p2)` 取省坐标，而 **p2 是文明 id**（应为 p1＝pid）⇒ 所有候选判"看不见"⇒ AI 静默。样本：`nP2pick a=-1` 205/205。
### 91.2 修法
G1：`if-gez v4, :cond_65` → `if-gez v4, :t_gchk` ＋ `goto :cond_65` ＋ `:t_gchk`（保持"无玩家⇒派发"；玩家机场按开关）。
G2：helper 内 `{p2}` → `{p1}`（调用点两处本来就正确）。
### 91.3 门禁
新增 **㊹（派发门结构）**、**㊺（helper 寄存器）**；负样本＝r5c046t。
### 91.4 待验收
打击键"关"＋战时 ⇒ 零出击；"开" ⇒ 恢复出击；AI 的 `nP2pick a≥0`／`nP2frq` 恢复；自动巡逻仍只由巡逻键控制。


---

## 92. 【施工·已装机】r5c046u 门禁与产物
### 92.1 门禁
| 门禁 | 负样本（r5c046t） | 修后 |
|---|---|---|
| **㊹ 派发门结构**（跳向派发点的分支恰 2 条：`if-eq`＋`goto`；禁 `if-gez … :派发`） | **命中短路模式** | **0** |
| **㊺ helper 取省寄存器**（必须 `getProvince(p1)`；禁 `{p2}`） | **2 处** | **0** |
| ㊷㊸（F5 巡逻门 + 视野门，上一批） | — | 0 |
| arity / invoke-target | — | BAD 0 / OK |
### 92.2 产物与装机
dex `afd0a88270da89cd8597347942af50c2`；apk `b8bf448d3bc0831ba23725ef0bed32a9`（Earth3 18510）。
**外部独立核验**：设备 apk `b8bf448d…` ✔ / dex `afd0a882…` ✔ / Earth3=18510 ✔；抓样基线 `1201935636`。
### 92.3 待验收
①打击键"关"＋战时 ⇒ 零出击；②"开" ⇒ 恢复出击；③AI `nP2pick a≥0`／`nP2s pid`／`nP2frq` 恢复且目标∈AI 自己视野；④巡逻仍只由巡逻键控制（回归）。


---

## 93. 【施工·已装机】r5c046v —— 机场面板解析顺序（开关"串机场"）
**根因**：`BtnMission.pickAirport(I)` 的候选顺序把 `AFM.selectedAirportProvinceID`（"被选中的机场"标记，会陈旧）排在 `Game.iActiveProvince`（当前打开的省份，实时）之前 ⇒ 打开 B 的面板时，按键写入与文本显示都落在**陈旧的那个机场**上，看起来"所有机场一起变"。
**修法**：两块互换（`iActiveID → iActiveProvince → selectedAirportProvinceID → list[0]`），来源码语义不变。
**门禁**：新增 ㊻（顺序断言）。
**验收**：在 A 上切换后打开 B ⇒ B 显示自己的状态；在 B 上按键只影响 B；`afp:src` 以 `a=13` 为主。


---

## 94. 【施工·已装机】r5c046v 产物与待办
### 94.1 产物
dex `7655ac9083f6216237b3d1c60ed50e5c`；apk `385373f88d158eb4ea48a224b0b0953d`（Earth3 18510）；装机三对齐通过；基线 `1224112857`。
门禁：新增 **㊻（pickAirport 顺序）**，负样本 1 → 修后 0；regtype BtnMission 4（不变）；arity BAD 0；invoke-target OK。
### 94.2 待验收（用户实测）
①在 A 上切换开关后打开 B ⇒ B 显示自身状态；②在 B 按键只影响 B；③`afp:src` 以 `a=13` 为主。
### 94.3 用户第二个问题（"轰炸机和攻击机还是不会出动"）——待确认口径
本轮样本证据：
| 线 | 成功建任务 | 失败原因分布 |
|---|---|---|
| 玩家老线（`nA4e k=`） | **k=0 ×10**（轰炸机出击成功） | k=1 ×139（10% 骰未过）｜**k=5 ×4（该机场无闲置轰炸师）** |
| AI 轰炸线（`nA1`） | **k=0 ×36** | k=4 ×138（任务建了但 `assignedAircraft` 空）｜k=3 ×1（无可打目标） |
| AI 攻击线（`nA1b`） | **k=0 ×41** | k=4 ×64｜k=3 ×5｜k=9/11–16（前置筛选） |
⇒ **两条线的"轰炸机"都能出击**；需要用户指明"是哪一侧、哪种机、完全不出去还是很少"。
另：**玩家侧的"攻击机"目前没有任何自动出击路径**（老线只有 ①战时轰炸机 ②和平巡逻机）——若要让玩家的攻击机也自动出动，属**新功能**，需另行设计与调研。


---

## 95. 【施工·已装机】r5c046w —— 两个按钮解耦（玩家轰炸机恢复）
**根因**：r5c046t 的 F5 门做成"互斥"（`mode==PATROL` 时战时**不轰炸**）⇒ 用户把「自动巡逻」开着时，**玩家的轰炸机被挡死**（样本：巡逻键在 615010 才打开，此后 0 次 `nA4d`；此前有 10 次 `k=0` 成功）。
**修法**：战时**一律继续**（轰炸由「自动打击」开关经外层门控制）；和平仍要求 `mode==PATROL` 才巡逻。⇒ 巡逻键只管巡逻、打击键只管轰炸，**互不干扰**。
**门禁**：新增 ㊼（断言"战时放行"＋"无互斥写法"）。
**待办（新功能，见 §96）**：**玩家的攻击机线**——目前玩家侧没有任何攻击机自动出击路径。


---

## 96. 【待设计】新功能：玩家侧「攻击机线」（打敌方部队）
**现状（代码事实）**：玩家侧**没有任何自动攻击机出击路径**。玩家老线只有两支：①战时**轰炸机**（`createStrategicBombing`）②和平**巡逻机**（需 FIGHTER）。攻击机线（`a1b*`：`a1bScan`/`a1bPick`/`a1bDispatch` → `createAttackArmy`）目前**只服务于非玩家文明**（`strikeTick_A1` 显式跳过玩家）。
**用户期望**：玩家的攻击机也应自动出击，**打击敌方部队**（＝打"敌军所在的省"）。
**需要拍板的 4 件事（定了我再走三轮调研 + 施工）**：
1. **目标口径**：只打"航程内、敌方部队所在的省"（`isEnemyArmyInProvince`），还是也包含"敌方机场/雷达"等军事目标？（建议：先只打有敌军部队的省）
2. **视野**：是否遵守**玩家自己的迷雾/雷达视野**（与轰炸一致，用 `aiVisRadarPass ∨ aiVisAirportPass`，civ＝玩家）？（建议：遵守，避免"越迷雾打"）
3. **总闸**：是否与「自动打击」共用一个开关？（建议：共用——"自动打击"＝轰炸机+攻击机都开；否则要再加一个按钮）
4. **节奏**：是否沿用 10% 骰 / 每机场每回合一次？（建议：先沿用，之后再与难度一起调）
**可选方案（若不想做新功能）**：把玩家的攻击机也交给"轰炸机那条线"统一处理（即战时用 `createStrategicBombing`，不区分机型）——但这就**不是**"攻击机打部队"的语义，不推荐。


---

## 97. 【考证·定稿】玩家「攻击机」自动出击：在哪个版本接入？（回答用户提问）
### 97.1 版本链条（逐条有档可查）
| 代 | 版本 | 内容 | 结局 |
|---|---|---|---|
| 一 | **R4c177**（B3-A1「自动打击接活」，文档 `r6s5/B3-A1自动打击接活_具体方案书v1.md`） | 玩家侧完整自动打击：`pickStrikeTarget`/`tryStrikeForAirport`/`strikeScore`/`roveTick`/配置面板/建筑记忆；**攻击机档＝`createAttackArmy(airport,-1,pid,divKey)`，打"有驻军的省"，视野门仅攻击机，6 回合新鲜度，同目标在飞 ≤2，35% 部队伤害** | **2026-09-20 被整层取消并删除**：整树回滚到 `build_inputs/w3a_smali_20260918.tar.gz`（R4c176b）→ Sig=152403 → 装机 **r5a001** |
| 二 | **r5c019** | AI 侧重建攻击机线 `a1b*`（→`createAttackArmy`），入口 `strikeTick_A1` **跳过玩家** | AI 专用 |
| 二·补 | **r5c025** | 在 `a1Scan`/`a1bScan` 内加入**玩家门**：玩家机场按 `autoStrikeOff`（「自动打击」开关）放行 | **门已写好但入口未开 ⇒ 死代码至今** |
| 三 | r5c046n–w | 玩家侧"自动打击"改用**老线**（开关＋轰炸机派发＋按钮＋巡逻解耦） | **只含轰炸机**，无攻击机 |
### 97.2 结论
- 用户口径「**做 AI 的上一步就是玩家自动打击**」✔正确；玩家攻击机**不是新功能**。
- 准确表述：**第一代（R4c177）被整层回滚**；**第二代（r5c025）把玩家门写进了智能线，但入口 `strikeTick_A1` 始终跳过玩家 ⇒ 从未生效**。我上一轮把它说成"新功能"是**错误**，此处更正（计划书 §96 相应部分以本节为准）。
### 97.3 最小接线（待批）
`strikeTick_A1`：玩家文明 ⇒ 只跑 `a1bClock`/`a1Snap`/`a1bScan`（**攻击机**），不跑 `a1Scan`（轰炸机仍旧走老线，w 批已解耦）；沿用现有玩家门（`autoStrikeOff`）、视野门（F4，civ＝玩家）、线级上限 `a1CivInflight(ATTACK_ARMY)<K`；不新增字段、不动 AI 侧。
验收：战时＋「自动打击」开 ⇒ `nA1b ap=` k=0 出现（你的攻击机起飞）；你的机场"有敌军且可见"的省才被打；轰炸机行为不变；AI 侧样本量不变。


---

## 98. 【路线①·第一轮调研】复原 B3-A1 最终版（R4c192~R4c205 自动打击十三批）
### 98.1 复原目标
R4c205 树状态＝`updateOffensives(civ)`（per-civ 共用链）＋`pickStrikeTarget`＋情报门/评分/选择器＋**rove 巡炸**＋配置驱动（`cfgReadAsset`）。
### 98.2 素材与缺口
- **有**：`docpack.tar`（124 件：r4c179–r4c205 脚本，含 `pickStrikeTarget`/`strikeScore`/`rove*`/`cfg*`/`noteProvinceBuildings` 等方法的 smali 原文）＋11 份该时期文档（含 1878 行 B3-A1 方案书、铁律速查里的 R4c197 巡炸定义与回滚记录）＋2 份当时现场日志。
- **缺**：`/tmp/w3a_bak_r4c205/smali_full/`（**在电脑端，可取回**）、`r4c177_patch.py`/`r4c177_fix1.py`/`r4c177d_fixjumps.py`（含 `tryStrikeForAirport`/`trackGroundTarget`/`hasStrikeInFlight`/`dbgStrike`/`dbgRt`）、UI 面板补丁。
### 98.3 机制规格（可直接施工级）
见本批调研档 §三（派发层七道关／选靶＋视野门／rove 巡炸／评分与情报／去重／探针／红线"零新字段"）。
### 98.4 移植风险面（6 条）
AI 链并存（→独立命名）、老线双发（→二选一）、按钮语义（→待拍板）、`update(civ)` 插入点、寄存器上限、配置来源。
### 98.5 待拍板 4 项
①范围（核心行为 vs 含配置+UI）②开关语义（按钮总闸 vs 原档默认开）③老线玩家轰炸是否关 ④**能否从电脑端取回 R4c205 整树备份**。


---

## 99. 【路线①·第二轮调研】移植接口面与极性铁证
- **命名**：待新增 13 个方法名在当前树**全部 0 命中** ⇒ 可沿用原名，与 AI 线不冲突。
- **前置件**：`getEnemyProvincesInRange`(5781 private 实例)、`hasActivePatrol`(5992)、`pickIdleDivKey`(6316 static)、`provinceDistance`(6369)、`getAirportsForCiv`(8384)；跨类只用 `DiplomacyManager.isAtWar(II)`（禁 `isAtWar(I)`）；插入锚点＝`update(civ)` 内 `updatePatrols` 调用（**10047**）。
- **★极性定案（绘制侧铁证）**：`getFogDrawArmy()==true` ⇒ `ProvinceDrawArmy$1`（真·绘制军队）；`false` ⇒ `$2`（drawArmy 纯 return）⇒ **true＝可见**；攻机视野门＝`false ⇒ 跳过`。
- **用户口径**：总闸＝`autoStrikeOff==0`（默认关）＋关闭老线玩家轰炸（防双发）。
- **相位**：A＝派发/选靶/视野/去重/探针（本批）；B＝评分/情报/巡炸；C＝配置驱动与 UI（不做）。


---

## 100. 【施工·已构建】r5c046z：修正电脑端 Phase A
### 100.1 全面检查结论（对设备现装版 e0de5c46/8629cee0）
只改了 AFM：新增 5 方法（`updateOffensivesP`/`tryStrikeForAirportP`/`pickStrikeTargetP`/`hasStrikeInFlightP`/`dbgStrikeP`）＋ 2 处插入（`update(civ)` 调 P 线；`executeAIAssignmentForAirport` 玩家短路）＋ 1 个空标签；`BtnMission` 与我方 w 版语义等同。**我方 t/u/v/w 修复全部在位**。
### 100.2 缺陷与修正
| 缺陷 | 性质 | 修正 |
|---|---|---|
| `pickStrikeTargetP` v3（int 常量↔float 汇合） | **VerifyError（必崩）** | 整方法重写 + float 渠道取初值 |
| 同方法 v4（Integer 对象↔float 汇合） | 潜在 VerifyError | 同上一并拆开 |
| `tryStrikeForAirportP` 关2 `if-eqz` | **反向门**（与总闸抵消 ⇒ 永不派发） | 改 `if-nez` |
| 关3 概率门 | 实际 80%（与 B3-A1 意图 20% 不符） | 改 `if-gez` ⇒ **20%** |
| `updateOffensivesP`/`hasStrikeInFlightP` 寄存器混用 | 侥幸过校验、脆弱 | 整方法重写（类型分区） |
| E2 跳猜标签 `:cond_ad` ＋ v5 类型汇合 | 脆弱/语义风险 | 自定义 `:z_war_go` + `return-void` |
### 100.3 门禁与产物
- 新增 **㊽ `check_r5c046z_gate.py`**（含㉙ 的"const 寄存器被当 float 操作数"盲区补丁）：负样本 **10** → 正样本 **0** ✔
- 回归：㉙ 37（既有启发式，不变）、㊷㊸ 0、㊶ 0、㊻ 0、arity BAD 0、invoke-target OK
- 产物：dex `b6d45e08e6fea309944fa3ff03d8c531`｜apk `ac9eb8e480d5df776083c17727d4c88f`（归档 `build_apk/dbg_signed77_v119_r5c046z.apk`，Earth3=18510）
- **装机状态**：安装被 vivo 确认框拦住（`INSTALL_FAILED_ABORTED: User rejected permissions`）⇒ 需人工点【继续】或用 `toolchain/autotap_install.sh`；apk 已就位于 `/data/local/tmp/r5c046z.apk`


## 101. r5c046z1：派发链两颗老雷 + E2 极性 + 按钮消歧（2026-09-27）

**触发**：用户实测「攻击机没有起飞」「按钮串机场仍在」。抓样 `r5c046z_s1.txt`（14.2 MB）：
`nAS`=0（P 线零派发）、`nA4d`=12、**`nA4e k=0`=4**（老线仍替玩家轰炸）、`nA5t`=275/`nA5b`=0（AI 未交战，正常）、
`afp:src`=14/13/13/13（按键全走兜底，`iActiveID` 无效）。

**根因（三处，全部为极性/方向）**
1. `tryStrikeForAirportP`：`hasActivePatrol` 门 `if-eqz` ⇒ **没有在飞任务反而 return** ⇒ 首次派发永不发生（主因，`nAS` 恒 0）。
2. `tryStrikeForAirportP`：`assignedAircraft.isEmpty()` 门 `if-eqz` ⇒ 有飞机反而不入列、空任务才收。
3. `executeAIAssignmentForAirport` E2：`if-eq v6, v4, :z_war_go` ⇒ 玩家机场**不短路**、非玩家机场被挡 ⇒ 老线继续替玩家轰炸。
> 1/2 与本项目 `巡逻v80` 已记名的 B2/B3 是**同一颗雷**（同引擎不同方法）。

**「串机场」机制（全树取证）**：`BtnMission` 是唯一读 `autoStrikeOff` 的类；解析顺序 = `iActiveID`（有效则静默返回）→ `Game.iActiveProvince` → **`selectedAirportProvinceID`（全树零写入=死字段）** → `list[0]`。多数进入路径（王宫菜单等）不点列表行 ⇒ `iActiveID` 恒 -1 ⇒ 按键永远落到兜底同一个机场 ⇒ 观感=所有机场一起变。
**修法**：兜底解析成功后**把下标写回 `iActiveID`**（面板锁定该机场，可见反馈；`.registers 8` 内借 v7，越界有守卫）。

**产物**：dex `a0127f3d0128a564507425e41163f3e1` / apk `d80ebae28395786fdb8fc246d1cffa6b`（738,377,701 B，`build_apk/dbg_signed77_v119_r5c046z1.apk`）。
**装机**：`Success`（三对齐：apk/dex/Earth3=18510 ✔，基线重置 `1238345269`）。
**门禁**：新增 **㊾**（`r5c046z1_all.py gate`）：hasActivePatrol 门极性 + isEmpty 门极性 + E2 必须 `if-ne` + pin 块四处 + `.registers≥8`；负样本 3/3 捕获；回归 ㉙ OK / ㊽ 0 / arity 134581·BAD 0 / invoke-target OK。
**回滚点**：`AirForceManager.smali.pre_r5c046z1`、`InGame_AirForceOptions$BtnMission.smali.pre_r5c046z1`。

## 102. 磁盘清理（2026-09-27）

手机报满：`/data` 218 G/223 G（剩 4.5 G）⇒ 上一批装机失败实为**空间不足导致 PackageInstaller 开不了会话**（`createSessionInternal` 异常）。
清理：AI 端 `/tmp` 中间产物 + 旧 dex + p 版残留 + `/tmp/pq` ≈ **20.3 G**；`/data/local/tmp` 旧装机副本/切片 ≈ 2.4 G；
`build_apk` 归档 n–v（保留 w/z/z1）≈ 6.3 G；散落副本 ≈ 0.7 G。**净释放 ≈ 28.9 G**，剩 33 G。
**新铁律候选**：磁盘满的表现是"装机失败/会话异常"，不是"写入报错"；每批构建后清 `/tmp/*_{work,aligned,signed}.apk`，归档只留最近 2–3 个。
详见 `r6s5/磁盘清理记录_20260927.md`。


## 103. r5c046z2：按只读审查诊断清单修 E1–E7（2026-09-27）

**输入**：`code_reviewer_tools` 子代理只读审查产出的诊断清单（E1–E9）。本批**逐条自证后**处置，未采信结论。
**处置**：E1 距离门 `if-ltz→if-gez`（z 批回归）；E2 去重门 `if-eqz→if-nez`；E3 `hasStrikeInFlightP` 返回 `if-eq→if-ne`；
E4 距离原点 `civID→provinceID`（`provinceDistance` 内部 `Game.lProvinces.get(a)` ⇒ 必须省索引，且无越界保护）；
E5 概率门 `if-gez→if-ltz` 定稿 **80% 尝试**；E6 机型白名单（ATTACKER/BOMBER）；E7 pin 命中 `if-ne→if-eq` ＋ `.registers 8→9`。
E8（`dbgStrikeP` 死方法）、E9（同址双标签）**登记不改**。
**产物**：dex `794f07f20d06675cf2a769b4067431bd` / apk `5d73697062d9738c428735ce5e45fab5`；装机 Success；三对齐 ✔；基线 `1238345269`。
**门禁**：新增 **㊿**（8 项 + 5 负样本全捕获）；㊽ 口径同步为 80%（原记事 20% 会与代码脱钩）；回归 ㉙/㊾/arity/invoke 全绿。
**教训**：①㊾-4 只查"pin 块齐备"未查**方向** ⇒ 绿灯放过 E7 ⇒ 新门禁一律"结构性 + 方向性"双查；
②概率/阈值这类**口径**改动必须同时改门禁，否则门禁与代码脱钩；
③`uiautomator dump` 高频轮询会自撞 `UiAutomationService`（logcat 崩溃为 uiautomator 自身，非游戏）。

## 104. 装机脚本与空间（同批附带）

- `/data/local/tmp` 只保留当前批次 apk；`build_apk` 只保留最近 3 个归档（w/z1/z2），避免再次触发"空间满⇒装机会话失败"。
- 三对齐判据固定为：apk md5 ＋ **apk 内 classes.dex md5** ＋ Earth3=18510 ＋ apk 字节数。


## 105. r5c046z3：P0 闪退（Float 对象误读）+「串机场」真修（2026-09-27）

**触发**：用户报"闪退了"＋"按钮串机场（自动打击与自动巡逻相同）"。

**① 闪退**：`java.lang.NoSuchFieldError: No static field POSITIVE_INFINITY of type Ljava/lang/Float;`
⇒ `Float.POSITIVE_INFINITY` 实为 `static final float`，r5c046z 批我按对象读（`sget-object …:Ljava/lang/Float;`）。
ART 校验按 smali 声明类型放过 ⇒ **只在运行到那行才炸**（好的一面：说明前面所有闸门已打开）。
修：`const v10,0x7f800000` + `Float.intBitsToFloat(I)F` + `move-result v3`。

**② 串机场**：样本 `r5c046z2_s1.txt` 7/7 次按键 `afp:src a=14`（兜底 list[0]）、`afp:st: sel=-1` 恒 -1
⇒ 本入口流下 `iActiveID` 无可靠来源（`MenuManager` 隐藏路径会清 -1）。
修：新增静态字段 `a1MemIdx`（点行写行下标，clinit 初值 -1）+ `BtnAirport` 在 `setVisible` 后再断言 `iActiveID`
+ `pickAirport` 解析链改为 `iActiveID → a1MemIdx(src=5) → selectedAirportProvinceID → iActiveProvince → list[0]`。

**产物**：dex `e2efa805676bf81f95c2d6ffdc997a3c` / apk `39dc10c524ddf867f8a3a8119dc75e1e`；装机 Success；三对齐 ✔；基线 `1263151053`。
**门禁**：新增 **51**（+Inf 渠道 / a1MemIdx 字段与初值 / 点行记忆与 setVisible 后断言 / 解析顺序 / 禁"对象读 Float"；负样本 3/3）；㊽ 同步接受 `intBitsToFloat`；回归 ㉙/㊾/㊿/arity/invoke 全绿。
**铁律新增**：`java.lang.*` 的 `POSITIVE_INFINITY/MAX_VALUE/…` 都是**基本类型常量**；smali 里 `sget-object …:Ljava/lang/X;` 读它们**能过校验、必炸运行**（比 VerifyError 更阴）⇒ 新门禁 51-1/51-5 永久拦截。
**待办**：若用户入口不经过"点行"，`a1MemIdx` 仍 -1 ⇒ 需做"每行独立按钮"（UI 级）才能彻底闭环。

## 106. 装机/空间纪律（沿用）

- `/data/local/tmp` 仅保留当前批次 apk（装机后即删）；`build_apk` 只保留最近 3 个归档（w/z2/z3，z1 已轮换出）。
- 三对齐判据：apk md5 ＋ apk 内 classes.dex md5 ＋ Earth3=18510 ＋ apk 字节数（738,377,701）。


## 107. Phase B 第一轮全量调研（评分/情报门/巡炸/配置）（2026-09-27）

**范围**：Phase A 已交付"能起飞 + 按最近距离派机"；Phase B 补 **评分/档位**（`strikeScore`）、**情报门**（`bomberIntelOk`/`hasMilitaryBuilding`/`milRaw`/`provinceHasAirport`）、**巡炸**（`rove*`）、（可选）**配置驱动**（`cfg*`）。

**素材结论**：`/tmp/docpack` 的 r4c179~r4c205 补丁脚本**含上述方法体的逐字 smali**，可"逐字复原 + 适配寄存器/字段"，不必从零重写。
- 情报门：`r4c185_event.py`（`afMilReal` 登记表 + `Province` 4 个建筑增删钩子）、`r4c188_airreg.py`（`afAirportProv`）、`r4c183_sticky.py`（`milRaw` 粘性）、`r4c180/181/193`（`bomberIntelOk` 各代）
- 评分：`r4c186_tier.py`（全文：tier1 机场省 `d*f`／tier2 军事省 `100000+d*f`／tier3 经济 `200000+1000/(1+eco)*f`；攻机纯距离）
- 选择方向血案：`r4c191_minsel.py`（保留**最小**分；与 r5c046z2/E1 同族错）
- 巡炸：`r4c197_rove.py`（10 个方法体 + 记忆修复）
- 配置：`r4c193/202/204`（`loadStrikeConfig`/`cfgReadText`/`cfgReadAsset`）

**碰撞检查**：Phase B 全部方法名在当前树 **0 命中**；唯一撞名 `registerAirport`（现树 2 处）⇒ 改名 `a1RegisterAirport`。

**待拍板**：①配置驱动要不要（建议先不要）②巡炸入口形态（建议内部自动，不加 UI）③档位是否照原样（建议照原样）。

**建议分批**：B1 情报门+评分 → B2 rove 巡炸 → B3（可选）配置驱动；每批独立三轮调研+门禁+验收。


## 108. Phase B 复原可行性实验（第二轮全量）（2026-09-27）

**实验**：①重放补丁链：底座 `w3a_smali_20260918.tar.gz`（R4c176b）解到 `/tmp/b3a1`，27 个补丁脚本改路径按批序重放 ⇒ **27/27 失败**（锚点缺失，依赖 r4c177/r4c178 那几批；其脚本不在素材里）。
②逐字素材：导出 **55 个方法体** 到 `r6s5/phaseB_verbatim/`（评分/情报门/双登记表/巡炸/配置全套）。
③归档 APK：**本机无任何 r4c1xx/r4c2xx 归档**（全盘只有 w/z1..z4），电脑端可能有。

**结论**：Phase B 的 **55 个方法体可逐字复原**；三个"骨架"方法（`updateOffensives`/`pickStrikeTarget`/`tryStrikeForAirport`）**源码已丢**，但有 ①等价物（Phase A 的 P 线三件，已验收可飞）②设计档完整门序真值表（见调研档 §2）⇒ 可"按规格行为一致"复原。

**台账**：交接文档 v2 的 16 行 B3-A1 批次台账（含每批 md5 与职责）已摘入调研档 §1，作为重建规格。

**两条路线**：A（推荐）把 Phase B 挂到现有 P 线；B（更"原样"）重建原名三件并删除 P 线（工作量/风险约 2~3 倍）。

**待电脑端检索**：任意 r4c186~r4c205 的 apk / r4c205 旧树（`/tmp/w3a_bak_r4c205/smali_full/`）⇒ 若找到可改走"逐字复原"。


## 109. Phase B（路线 A）三轮调研落盘 + B1 施工定稿（2026-09-27）

**决策**：用户选 **路线 A**（挂到现有 P 线，电脑端不可用、找不到归档）⇒ 不重建三个骨架方法。
**第一轮**：依赖核对全通过 —— `Province` 4 钩子/`BuildingsManager.AIRPORT_BUILDING_ID`（`aoc/kingdoms/lukasz/map`，默认 -0x1）/`Game.oR`/`FileManager.loadFile`/`AFM.provinceDistance` 均在；**AFM 无 `<clinit>`** ⇒ 登记表惰性初始化；`registerAirport` 撞名需改 `a1RegisterAirport`。
**第二轮**：三骨架行为规格（门序）从设计档抄回，作为"行为对齐"验收依据；6 条血案方向清单（r4c179/181/185/189/190/191）。
**第三轮定稿**：B1 施工项 5 条 + 寄存器（不新增）+ 门禁 **53/54** + 验收（`nSV`/`nSC`/`nAS`）。
**逐字件**：`r6s5/phaseB_verbatim2/`（54 件干净方法体）+ `_b1bodies.txt`（B1 拼装）。
