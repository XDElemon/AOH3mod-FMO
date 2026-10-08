# 调研 · AD-1′（开火重启）第三轮（定稿）：锚点 / 真值表 / 寄存器 / 门禁

批次 **r6d171** ｜ 状态：**定稿，可开工**

---

## 0. 本批产物

| # | 动作 | 文件 |
|---|---|---|
| 1 | **放回留档类**（929 行，r6d142 版，含记账伤害） | `aoc/kingdoms/lukasz/map/battles/AirDefense.smali` |
| 2 | 该类**新增字段** `lastTurn:I` | 同上 |
| 3 | 该类**新增两方法** `tickTurn()V`（守卫+兜底）、`tickAll()V`（全局省份遍历） | 同上 |
| 4 | **注入 1 行**到 `AirForceManager.updateAll()` 尾部 | `AirForceManager.smali` |
| 5 | 新增门禁 `check_r6d171.py`（含守卫极性断言 + 负样本） | `toolchain/act/` |

---

## 1. 锚点（逐字，实测命中数 = 1）

**锚点 B（本批唯一注入点）**——`AirForceManager.updateAll()` 尾部：
```
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dumpMissions()V

    return-void
```
- 该两行组合：**全文件命中 = 1 ｜ `updateAll` 区块内命中 = 1**（`_anchor_check_r6d171.py` 实测）
- 插入方式（在两行之间插 2 行）：
```
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dumpMissions()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->tickTurn()V

    return-void
```
- **为什么选尾部**：`updateAll` 开头的读档恢复（`syncAllFromProvinces` / `loadSave_Airforce`）与各 sync 都已完成 ⇒ 不会在"状态未恢复"时开火。
- `.registers 4` **不改**（`tickTurn()` 无参、无返回值）。
- 诊断注入（`AirDefDiag;->scanAll()`，在**开头**）保持不变 ⇒ 日志顺序为"先诊断读数、后开火"。

---

## 2. 真值表（本批新增/复用）

### 2.1 守卫（新写，最容易写反）
| 意图 | 写法 | 说明 |
|---|---|---|
| 同一回合已经结算过 ⇒ 直接返回 | `sget v0, Game_Calendar;->TURN_ID:I`｜`sget v1, AirDefense;->lastTurn:I`｜**`if-eq v0, v1, :same`**（相等⇒跳走）⇒ `:same` 处 `return-void` | `if-eq` = **相等才跳** |
| 否则记账并开火 | `sput v0, AirDefense;->lastTurn:I` 后调 `tickAll()` | — |

### 2.2 全局省份遍历（新写）
| 判定 | 写法 | 语义 |
|---|---|---|
| 省份总数 ≤0 ⇒ 收工 | `if-lez v0, :end` | v0 = `Game.iProvincesSize` |
| 循环条件 | `if-ge v1, v0, :end` | 索引 ≥ 总数 ⇒ 退出 |
| 省对象为空 ⇒ 跳过 | `if-eqz v2, :next` | 判 null |
| 该省阵地数 ≤0 ⇒ 跳过 | `if-lez v3, :next` | v3 = `airDefenseAt(pid)` |
| 有阵地 ⇒ 开火 | `fireProvince(ownerCiv, pid, v3)` | 用**省主人** civ 做敌我判定 |

### 2.3 复用留档判定链（r6d142 原样，不再改）
`eligible` = 敌方（`m.civID != civID`）+ `aliveAircraft` 非空 + `inRange`；`inRange` = 同省必中 或 两省中心距 ≤300px；命中 `rand < 0.5` ⇒ `applyMdDamage(m, 3.0)`；击落判据 `hp <= 0` ⇒ `recordLoss` + `recalcPool`。

---

## 3. 寄存器分配表（本批新增方法）

| 方法 | 签名 | `.registers` | 参数寄存器 | 局部寄存器 |
|---|---|---|---|---|
| `tickTurn` | `()V` | 6 | — | v0(TURN_ID, int)｜v1(lastTurn, int)｜v2(catch Throwable, 对象) |
| `tickAll` | `()V` | 8 | — | v0(省份总数,int)｜v1(i,int)｜v2(Province,对象)｜v3(阵地数,int)｜v4(civID,int)｜v5(返回值,int) |

- 新增字段：`private static lastTurn:I`（默认 0）。
- **类型纪律**：v2 只装对象（Province / Throwable），v0/v1/v3/v4/v5 只装 int，无跨类型复用。
- 旧的 `tick(I)`/`tickSafe(I)` 继续保留（不被调用）⇒ 其寄存器表不变。

---

## 4. 门禁（`check_r6d171.py`）

**结构断言**
- S1：`AirDefense.smali` 存在，且含 `.method public static tickTurn()V`、`.method public static tickAll()V` 各 **1** 个；`.field private static lastTurn:I` 恰 **1** 个。
- S2：留档判定链完整：`fireProvince(III)I`、`applyMdDamage(AirMission;F)I`、`countTargets`、`pickTarget`、`eligible`、`inRange`、`airDefenseAt(I)I` 各 **1** 个定义。
- S3：`AirForceManager.updateAll()` 区块内 `AirDefense` 出现 **= 1**；全文件 **= 1**；且 `updateAll` 的 `.registers` 仍为 **4**。
- S4：**不得写** `isAlive` / `isShotDown` / `isInFlight`（负面断言：文件中出现 `iput*-boolean .*AirUnit;->is` 命中 **0**）。
- S5：**必须**调用 `recordLoss(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V` 与 `recalcPool()V`（各 ≥1）；**不得**调用 `applyAirDamage`（= 0，private）。
- S6：日志全走 `dWrite`；`dKey` = 0；`java/nio/file` = 0。

**极性断言（成对）**
- P1 守卫：`if-eq v0, v1, :same` 存在，且 `:same` 标签定义后紧跟 `return-void`；**禁止** `if-ne v0, v1, :same` 形态（那是"同回合也开火"）。
- P2 `lastTurn` 必须在 `tickAll()` **之前**写（`sput …lastTurn:I` 的下标 < `invoke-static {}, …->tickAll()V` 的下标）。
- P3 循环：`if-ge v1, v0, :end`、`if-lez v3, :next`、`if-eqz v2, :next` 三条齐备。
- P4 敌我：`fireProvince` 调用时第一参来自 `Province;->getCivID()`（检查 `invoke-virtual {v2}, …Province;->getCivID()I` 出现在 `fireProvince` 调用之前）。
- P5 击落判据（留档链）：`applyMdDamage` 内 `hp<=0` 分支 ⇒ 调 `recordLoss`（检查 `recordLoss` 出现在 `applyMdDamage` 方法域内）。

**负样本（必须能被抓）**：N1 守卫极性反转；N2 `lastTurn` 写到 `tickAll()` 之后；N3 删 `if-lez v3`；N4 把 `getCivID` 换成常量；N5 在 `applyMdDamage` 里插 `iput isAlive`；N6 用 `dKey` 替代 `dWrite`。

**行为级模拟器（沿用+扩展）**：`toolchain/act/sim_addiag.py`（aline 上限判据）继续跑；本批新增断言用「smali 控制流解释」校验 **守卫**：同一 TURN_ID 第二次调用必须 `RETURN`（不开火），不同 TURN_ID 必须走 `tickAll`（并做反转敏感性自检）。

---

## 5. 验收标准（可证伪）

**通过**（日志）：
1. 出现 `nAD p=… n=… t=… s=… h=… k=…` 行（AD-1 的开火日志，之前从未出现过）；
2. 同一回合**只出现一次**`nADT`/开火（守卫生效）——`nADT` 行数应 ≈ 回合数（不是 2×）；
3. `nADA`（诊断）里 `inR>0` 的省，对应回合应能看到 `h>0` 或 `k>0`（命中/击落）；
4. **无** `nADX`；无闪退；未出击（停在机场）的飞机 hp 不变。

**不通过**：`nAD` 仍 0 行；或每回合出现 2 次开火（守卫失效）；或出现 `nADX`；或击落后机场名册仍能查到该机。

---

## 6. 变更清单摘要

- 新增/放回 `AirDefense.smali`（留档版 + `lastTurn` 字段 + `tickTurn()`/`tickAll()`）。
- `AirForceManager.updateAll()` 尾部插 1 行 `AirDefense;->tickTurn()V`。
- 新增门禁 `check_r6d171.py` + 模拟器断言扩展。
- **不改**：`AirDefDiag`（诊断）、旧 AAA 段、`tick(I)`/`tickSafe(I)`（保留不挂）、其它任何类。

## 7. 风险与待办

- 风险：命中率 0.5 ⇒ 单回合可能 0 命中（正常节流）；`nAD` 只在"有阵地且射程内有敌机"时出现（本存档实测 82% 的回合 `inR>0`，所以应该能看到）。
- 待办：雷达参与开火 / 代际弹数与射程（AD-2）、统一打击入口+建筑耐久（AD-3）、修缮重建（AD-4）、联动（AD-5）、科技接入（AD-6）。
- 回退：装回 `r6d170`（上一版，零行为诊断）或 `r6d158`（已验证可玩）。