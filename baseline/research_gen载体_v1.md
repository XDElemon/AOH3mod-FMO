# 「代」的载体调研 v1（实证）

> 2026-10-18 ｜ 目的：搞清「代际」这个维度在运行时到底挂在哪，决定数值怎么按代生效。

## 一、结论先说

**当前版本，`AirUnit` 上没有存"这一架是哪一代/哪一型"。**
代际只在两个地方以"推断"的方式出现：

| 位置 | 做法 | 局限 |
|---|---|---|
| `AirModelTables.genOf(idx)` | 由机型下标反推：`((imageId-70)>>4)+3` | 需要先有"机型下标" |
| `AirMission.unitGenOf(unit)` | **直接 `return 3`**（桩） | 所有飞机都被当三代 |

## 二、为什么 `typeID` 不能直接查机型表（关键陷阱）

`AirUnit.typeID` 的赋值点在 `AircraftDataManager`：

```smali
iget v1, v0, AircraftDataManager$AircraftTypeData;->ID:I
iput v1, p0, AirUnit;->typeID:I
```

它来自 `game/AirUnit/AircraftTypes.json` 的 `ID`，取值 **1..4**（INTERCEPTOR/FIGHTER/BOMBER/ATTACKER 四型）。

而 `AirModelTables.INFO[]` 是 **51 条的机型表**，下标 **0..50**。

⇒ 拿 `typeID` 当 `INFO` 下标是**错位**的：1..4 会命中表头四行，得到完全无关的机型/代际。
**这条必须写进任何后续实现的前置检查，否则一接就是错数据，而且不报错。**

## 三、机型下标是怎么来的（`bestIdx`）

`AirForceManager` 里取图时：

```smali
invoke-static {v2}, AirForceManager;->artGroupOf(I)I          # civID -> 国家组
invoke-static {v2, v3, v1}, AirModelTables;->bestIdx(III)I    # (civ, 国组, 型) -> 机型下标
invoke-static {v4}, AirModelTables;->genOf(I)I                # 下标 -> 代
invoke-static {v4, v3, v1}, AirForceManager;->pickAirImage(III)I
```

⇒ 机型下标是**由 (civID, 国家组, 机型) 现算的**，算完只用于**取图**，没有写回 `AirUnit`。

## 四、两条可行路线（都不改存档格式 prior art 不明，二选一）

### 路线 A：运行时推断（零存档改动，风险低）

```smali
.method private static unitGenOf(AirUnit) I
    # idx = bestIdx(unit.civID, artGroupOf(unit.civID), typeIndex(unit.type))
    # gen = genOf(idx)，越界/失败 -> 3
```

- 优点：不动 `AirUnit` 字段、不动存档、改动集中在 `unitGenOf` 一个方法。
- 缺点：得到的是"该文明当前能派出的最好机型"的代，**不是这架飞机出厂时的代**；同一文明混编不同代时不准。

### 路线 B：出厂时落字段（准确，但要动存档）

- 给 `AirUnit` 加 `gen:I`（缺省 3），建造/生成时写入，`unitGenOf` 直读。
- 必须同步 `SaveGameManager$Save_AirUnit` 的序列化 + 旧档缺省回退。
- 成本：一个字段 + 两处序列化 + 旧档回归；但这是"代差靠数值"要长期成立的正解。

## 五、建议

先走 **A** 把链路打通（能立刻让 `missileCountForGen` 吃到真实代），
同时把 **B** 列入下一批（存档兼容方案仓库里已有 `飞机系统存档兼容方案_v2.1_GdxJson对齐版`，可直接参照）。

## 六、与数值的关系

代际一旦能取到，数值选择就有落点：
`atk/hp/radar` 按 `gen` 从 `data/aircraft_models.json`（或新增的 stats 表）取值，
而不是在伤害公式里乘系数 —— 符合用户「代差只用数值体现」的口径。

交换比标定见 `tools/sim_air_combat.py --calibrate`：
`交换比 = 0.4 × P_A/P_B`（P=atk×hp）⇒ 8:1 需 P×20，18:1 需 P×45，45:1 需 P×112.5。
