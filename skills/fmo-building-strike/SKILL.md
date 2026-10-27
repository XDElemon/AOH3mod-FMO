---
name: fmo-building-strike
description: FMO S8 建筑摧毁（v90）：空袭/打击拆该省 1 栋建筑。含建筑配置的真实索引空间（building=配置下标 0–37 常规 / 38–86 资源；buildingID=同配置内升级档）、唯一建筑（UniqueCapitalBuilding / GroupID=3）、destroyBuilding 的连带刷新清单、AirMission.executeAttack 的轮数与唯一挂点、`attackRoundsExecuted==0` 去重口径、价值加权选目标、反射读 BuildingsManager$Buildings 的理由与坑、B42 离线回归闸门。任何要动"打击拆建筑/建筑耐久/目标选择"的批次都先读它。
---

# S8 建筑摧毁（v90）

> **2026-10-27 更新**：飞机移动已换成真实运动学（`AirMotion`），但本批 S8 的挂点
> （`AirMission.executeAttack` → `AirBuildingStrike`）和结算口径没变；打击照旧在进入目标省后触发。

> 起：2026-10-26。用户口径：**每次打击拆 1 栋、排除唯一建筑、价值+随机、先接现有空袭、先不做爆炸表现**。
> 包：`/sdcard/Download/fmo_baseline/fmo_v90_air.apk`（md5 `8d9dba5a…`，模板 v89）。

## 1. 数据模型（别把两个维度搞混）

| 概念 | 含义 | 合法范围 |
|---|---|---|
| `building` | **Buildings.json 的数组下标**（loadBuildings 从 0 递增 append，无排序） | 0–37 常规；38–86 资源（`BuildingsResources.json`） |
| `buildingID` | **同一条配置内的升级档**（`Name[]`/`CostGold[]` 的下标） | `0 .. Name.length-1`（最多 4 档） |
| 实例身份 | `(building, buildingID)` 二元组；**每省最多一对**，`buildingID` 不是全局唯一 | — |

- 配置：`assets/game/buildings/Buildings.json`（38 条）→ `BuildingsManager.buildings`（`List`，元素是 `BuildingsManager$Buildings`）。
- 取值的正确姿势：`BuildingsManager.buildings.get(building).CostGold[buildingID]`。
- `BuildingsManager.buildingsSize = 38`；`buildingsResourceStartID = 38`；`buildingsResourceSize = 87`（**是总长不是资源条数**，别当循环上界）。
- 奇观不在 `buildings` 表（走 `wonderID`），所以拆不到，不用特判。

**唯一建筑**：`UniqueCapitalBuilding=true` 的 7 条（idx 0–6：TaxOfficeHeadquarters / RoyalPalace / WarAcademy /
GrandLibrary / NationalMuseum / MerchantQuarter / StockExchange），当前数据 `GroupID=3` 与它 1:1。
判可拆要**两条都查**（数据将来可能不同步）。

## 2. 空袭结算流程与唯一挂点

```
AA_Game.render()                         # 每渲染帧
  └─ AirForceManager.updateMissions()
       └─ for mission: AirMission.update()
            └─ EXECUTING 分支(:pswitch_1a9) → executeAttack()   ← 全树唯一调用点
                 ├─ ATTACK_ARMY 分支：applyArmyDamage + AirStrikeRefresh.afterStrike(:4049)
                 ├─ STRATEGIC_BOMBING 分支：applyArmyDamage + afterStrike(:4085)
                 └─ 汇合点 :cond_12b/:goto_12b
                      recordDamage(F)
                      ▶ AirBuildingStrike.onStrikeApplied(this)      ← S8 钩子（v90）
                      attackRoundsExecuted++
```

- **轮数**：`STRATEGIC_BOMBING` `maxAttackRounds=1`（整任务 1 轮）；`ATTACK_ARMY` `=16`，
  实际受"弹用完就返航"限制为 **4~5 轮**。⇒ **不能在两条伤害分支里挂钩**（一轮拆一栋）。
- **去重**：Java 侧 `m.attackRoundsExecuted == 0` ⇒ 一波次最多 1 栋。该字段**入档**、读档安全；
  AI 换目标会归零 = 新波次（符合"每次打击拆一栋"）。
- 挂点处**不要传省对象**：汇合点的省局部变量可能是 null（早退路径），
  Java 用 `mission.targetProvinceID` 现取，且必须先判 `0 <= id < Game.getProvincesSize()`。
- `Game.getProvince(id)` 只是 `lProvinces.get(id)`，**没有越界检查**。

## 3. v90 的选择逻辑（AirBuildingStrike.java）

```java
onStrikeApplied(mission):
  if (!(mission instanceof AirMission)) return;
  if (m.attackRoundsExecuted != 0) return;            // 一波次最多 1 栋
  pid = m.targetProvinceID;  越界 return
  p = Game.getProvince(pid); null return
  if (p.getCivID() == m.civID) return;                 // 打到自己省不拆
  list = p.buildings;  size <= 1 return;               // 至少留一栋
  for 每栋:
      b = getBuilding(); lv = getBuildingID();
      可拆 = 0<=b<buildingsSize ∧ 0<=lv<Name.length
             ∧ !UniqueCapitalBuilding ∧ GroupID != 3
             ∧ b != AIRPORT_BUILDING_ID            // v1 排除机场
      score = value(b,lv) * (0.8 + 0.4*rand());
  取 score 最大的一栋 → p.destroyBuilding(b,lv) → AirStrikeRefresh.afterStrike(p)
```

价值：`CostGold + 0.10*ConstructionTime + 2*Economy + 4*IncomeProduction`（稀疏字段 null→0，无除法）。

## 4. `destroyBuilding(building, buildingID)` 已自带什么

`Province.smali:9051` 内部已做：`BonusesManager.updateBuildingBonuses`、`buildings.remove`、
`iBuildingsSize`、`updateBuildingLimit`、`updateProvinceIncome`、`unregisterAirport`（机场）、
`AirRadarSync`（雷达/反导三类对账，v77）、`noteProvinceBuildings`。

**调用方还要补**：`AirStrikeRefresh.afterStrike(p)`（刷省份价值 + 国家总收入脏标记）。
**没做**：UI 重建 —— 打击时若省份面板开着，**面板不会自动刷新**（手动拆除走 `InGame_Destroy.confirm`
那一套 rebuild，S8 没接）。验收时要"关掉面板再打开"看。

## 5. 为什么用反射读配置

`BuildingsManager$Buildings` 是 `$` 嵌套类，`tools/gen_java_stubs.py` 造不出合法 Java 类名
⇒ Java 源码不能直接引用它。运行时用 `cfg.get(b).getClass().getField("CostGold"/"ConstructionTime"/
"Economy"/"IncomeProduction"/"Name"/"GroupID"/"UniqueCapitalBuilding")` 读 public 字段
（dex 未混淆，字段名在 smali 里是字面量）。字段缓存在 static Field 里，只初始化一次；
反射失败 `fieldsOk=false` ⇒ 整批跳过（这次不拆，但不许崩）。

**不要**为这个去改原版 `BuildingsManager` 加方法（`gate_java_first` 会拦），
也**不要**读 `m.type`（`MissionType` 在桩里是 Object，运行期 `NoSuchFieldError`）。

## 6. 闸门 B42（tools/gate_bld_strike.py）

```bash
python3 tools/gate_bld_strike.py              # 7 组断言
python3 tools/gate_bld_strike.py 别的版本.java  # 红样本
python3 tools/fmo.py gate                     # B42 已挂进行为闸门
```

跑的是一份**真的** `AirBuildingStrike.java` + 可记录的桩（Province/AirMission/Game/
BuildingsManager/BldCfg 镜像 `$Buildings` 字段）。断言：
拆且只拆 1 栋、价值最高档全中、两条唯一判定各自生效、机场不拆、只剩 1 栋不动、
`attackRoundsExecuted!=0` 不再拆、越界/自己省不崩、拆完必补 afterStrike。

**红样本（已验证 4/4 咬住）**：去掉唯一判定 / 去掉机场排除 / 去掉轮次去重 / 去掉"留一栋"
各报一项失败。

## 7. 已知遗留 / 待验证

1. **机场被拆会留下孤儿**：`destroyBuilding` 会 `unregisterAirport` 删整个 `Airport` 对象
   （飞机/队列/等级），在飞任务仍持 `sourceAirport` 强引用。v1 直接排除机场，等真机验证。
2. **雷达/防空**：v77 的 `AirRadarSync` 已对账，静态看安全。
3. **UI 不自动刷新**（见 §4）。
4. **战争状态没判**：只判了"目标省不是自己"。停战/和平期若还能结算空袭，仍会拆。
5. 选目标是 `Math.random()`（每波不同），没有可复现性；要复现用 B42 的分布断言。
