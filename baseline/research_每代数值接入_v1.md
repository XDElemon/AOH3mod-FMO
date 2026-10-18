# 每代数值怎么接进运行期（实证设计稿）

> 2026-10-18 ｜ 目的：把「代差靠数值」从数据表落到代码，且**不引入伤害乘子**。

## 一、现状：数值表只有 4 条，按机型枚举索引

```smali
# AircraftDataManager.applyType(AirUnit)
iget-object v1, p0, AirUnit;->type:AirUnit$AirType;
invoke-virtual {v1}, AirUnit$AirType;->ordinal()I
array-length v2, types
if-ge v1, v2, :cond_86
aget-object v0, types, v1            # 按 ordinal 取一条
```

`types[]` 的**长度 = 4**（`AircraftTypes.json` 只有 INTERCEPTOR / FIGHTER / BOMBER / ATTACKER 四条）。
⇒ 运行期根本没有"第几代"的入口，所以现在**无论填什么表，都只能有一套数值**。

配套事实（实测）：
- `maxHp = Defense × 2`（第 179-183 行）
- 空战只用 `airAttack` 与 `hp`，`defense/agility/ecm/stealth` 未被读取
- `AirMission.unitGenOf()` 当前返回常量 3（候选批次已改为按机型推断）

## 二、两条接入路线

### 路线 A（推荐）：4 条类型 × 每代数组

给 `AircraftTypeData` 增加**按代索引的数组字段**，JSON 里每个类型写 4~5 个数：

```java
int[] AirAttackByGen;   // 下标 = gen（3..6），缺省回退 [0]
int[] DefenseByGen;
int[] RadarRangeByGen;
```

`applyType` 里：

```smali
# gen = AirMission.unitGenOf(unit) 或 unit.gen（取决于代际路线 A/B）
# idx = gen - 3，夹在 0..len-1
array-length v3, AirAttackByGen
if-lt idx, v3 -> 回退用单值字段
aget v3, AirAttackByGen, idx
iput v3, unit->airAttack
```

- 优点：改动集中（一个内部类 + applyType），存档不受影响（数值是应用时算出来的）
- 缺点：`AirAttackByGen` 等数组要新增 3 个字段；JSON 结构变成"标量 + 数组"并存

### 路线 B：51/64 条机型表，按机型索引

把 `types[]` 扩成机型表（长度 51 或 64），`applyType` 先算机型下标再取一条。

- 优点：最贴近"每国每代每型一套数值"
- 缺点：要改索引来源（`unitGenOf` 那套 `bestIdx` 逻辑）、要处理"机型未知"的兜底、`types[]` 长度变化会让 `AircraftTypes.json` 结构大改

## 三、建议顺序

1. **先做代际载体**（路线 A 或 B，见 `research_gen载体_v1.md`）
2. **再走数值接入路线 A**：4 条类型 × 每代数组，`gen` 缺省 3，旧档不受影响
3. 最后才填数（`data/aircraft_stats.json` 已经能产出每代 atk/def）

## 四、风险清单

| 风险 | 说明 | 缓解 |
|---|---|---|
| `types[]` 为空 | 现有代码在 `types==null` 时走硬编码兜底（maxHp=30 等） | 新字段为空时同样回退标量字段 |
| gen 越界 | gen<3 或 >6 | 夹到 [0, len-1]，或回退标量 |
| 旧档 | 存档里没有 gen | 缺省 3，与现状一致 |
| AI 行为 | AI 造机走同一 `applyType` | 自然共享，无需额外处理 |

## 五、与"不用伤害乘子"的关系

本方案把**每一代的数值直接写进单位属性**（`airAttack`/`maxHp`/`radarRange`），
伤害公式保持 `hp -= airAttack × 0.2` 原样不动 —— 完全符合"代差只用数值体现"的口径。
唯一的额外收益是：雷达范围也随代提升，`radarRange` 决定拦截门槛（谁先进入交战）。
