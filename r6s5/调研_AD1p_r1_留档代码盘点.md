# 调研 · AD-1′（开火重启）第一轮：留档代码盘点 + 要动的每一处

批次 r6d171 ｜ 2026-10-03 ｜ 基底：r6d170（已装、零行为诊断版）

---

## 1. 素材

| 项 | 位置 | 状态 |
|---|---|---|
| r6d142 版防空代码（含记账伤害） | `r6s5/ad_disabled/AirDefense.smali`（929 行） | 留档，**仿真器 `ad_sim_v6.py` 14 组用例全过** |
| 规格 | `r6s5/定稿_AD1_防空阵地自动开火_v6_重写版.md` | 判定链/参数/寄存器表齐全 |
| 当前树 | `/tmp/w3a/smali` | **无 `AirDefense.smali`**（已核实）；有 `AirDefDiag.smali`（r6d169/170 诊断） |

## 2. 留档类的清单（逐字核实）

类：`Laoc/kingdoms/lukasz/map/battles/AirDefense`（`.super Ljava/lang/Object;`），字段只有 `private static rnd:Ljava/util/Random;`

| 方法 | 签名 | 作用 |
|---|---|---|
| `adHitChance` | `(II)F` | 命中率 0.5（空位：将来接代差） |
| `adDamagePerHit` | `(II)F` | 每发伤害 3.0（空位） |
| `rng` | `()Ljava/util/Random;` | 懒初始化随机源 |
| `logT` / `logX` / `logAD` / `logADA` | `I` / `Throwable` / `IIIII` / `IIIII` | dWrite 探针（nADT / nADX / nAD） |
| `airDefenseAt` | `(I)I` | 该省反导阵地数（`AAA_BUILDING_ID<0` ⇒ 0） |
| `inRange` | `(AirMission;Province)Z` | 同省必中 / 300px 省中心距 |
| `eligible` | `(AirMission;IProvince)Z` | 敌 + 有活飞机 + 在射程 |
| `countTargets` | `(I,Province)I` | 合格目标数 |
| `pickTarget` | `(I,Province,I)AirMission;` | 轮转选靶 |
| `applyMdDamage` | `(AirMission;F)I` | **伤害池倾泻 + 记账击落**，返回击落数 |
| `fireProvince` | `(III)I` | 入口：`p0=civID, p1=provinceID, p2=nad`（发射数） |
| `tick` | `(I)V` | 按国家遍历其省份并开火（**旧入口**） |
| `tickSafe` | `(I)V` | `logT` + try/catch(tick)（**旧入口的兜底壳**） |

## 3. 外部依赖（全部仍在树内、签名未变）

| 依赖 | 签名 | 来源 |
|---|---|---|
| `Game.getProvince(I)Province;` | 裸 `List.get` ⇒ 调用前须判界 | `Game` |
| `Game.iProvincesSize:I` | 省份总数 | `Game` |
| `Province.getCivID()I`、`getCenterX_Real()I`、`getCenterY_Real()I`、`buildings:List` | — | `Province` |
| `ProvinceConstructedBuilding.getBuilding()I` | — | — |
| `BuildingsManager.AAA_BUILDING_ID:I` | 反导阵地 | — |
| `AirMission.aliveAircraft:List`、`airDivisionAtProvinceID:I`、`civID:I` | — | — |
| **`AirMission.recordLoss(Laoc/kingdoms/lukasz/map/battles/AirUnit;)V`** | **public** ✓ | 记落（出编队/进损失/出机场） |
| **`AirMission.recalcPool()V`** | **public** ✓ | 重算任务血池 |
| `AirMission.applyAirDamage(AirMission;F)V` | **private** ⇒ **不可调用**，只复刻其口径 | — |
| `AirDbgLog.dWrite(Ljava/lang/String;)V` | 免闸免节流 | — |

## 4. 本批要做的最小改动（三处）

1. **把留档类放回树**（同路径同名）：`aoc/kingdoms/lukasz/map/battles/AirDefense.smali`
2. **给该类补两样**：
   - 字段 `lastTurn:I`（每回合只结算一次的守卫）
   - 方法 `tickTurn()V`（守卫 + 兜底）与 `tickAll()V`（**全局遍历所有省份**，替代旧的"按国家遍历"）
3. **注入 1 行**到 `AirForceManager.updateAll()` 开头（紧跟诊断行之后）：
   `invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->tickTurn()V`

> 旧的 `tick(I)` / `tickSafe(I)` **保留不删**（留档可对照），但**不再挂到任何地方**（不再按国家调用）——这样"没机场的国家永不 tick"的潜在缺陷一并消失。