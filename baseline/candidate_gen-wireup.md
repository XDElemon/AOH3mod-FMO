# 候选批次 · r_cand_gen1：代际取真值（unitGenOf 接表）

> 分支 `candidate/gen-wireup`｜**未装机、未验收**｜基线仍是 `main`

## 一、改了什么

只改 **1 个方法**：`AirMission.unitGenOf(AirUnit)I`

| 改前 | 改后 |
|---|---|
| `return 3`（常量桩） | `genOf(bestIdx(civID, artGroupOf(civID), typeIdx))`，越界/空值回退 3 |

关键细节：
- `typeIdx = AirType.ordinal() ^ 1` —— 沿用取图处同一映射（枚举顺序 INTERCEPTOR0 FIGHTER1 BOMBER2 ATTACKER3 → 机型表 F0 I1 A2 B3）
- **不能**用 `AirUnit.typeID` 直查（那是 `AircraftTypes.json` 的 1..4，与机型表 0..50 错位）

## 二、为什么现在做这个

`missileCountForGen(gen)` 是引擎里**已经生效**的代际逻辑：

```
gen ≤ 2 -> 0 发 ｜ 3~4 -> 2 发 ｜ ≥5 -> 4 发
```

但 `unitGenOf` 返回常量 3 ⇒ **所有飞机永远 2 发**，代际在导弹这条线上完全没生效。
接通后，5/6 代机才会拿到 4 发。

## 三、验证（静态，已做）

| 项 | 结果 |
|---|---|
| 汇编 | 成功（5,530 类） |
| 结构指纹 | `c71a3d56…` 与基线一致（签名未变） |
| 方法体指纹 | `501672ce…` → `31713bbc…`（确实改了） |
| 变化范围 | **仅 1 个方法**（其余 30,654 个方法体指纹不变） |
| APK | `fmo_candidate_gen.apk`，776,916,354 B，Earth3 18,439 / AirUnitlmages 113 / airs_* 36 |
| 签名 | debug（apksigner 通过） |

## 四、未验证（必须在真机做）

1. 装机启动（PairIP 剥壳是否奏效）——**基线包本身也还没上过机**
2. 5/6 代机是否真的 4 发导弹（看任务里的 `missilePerPlane`）
3. `bestIdx` 在 `civID` 异常时是否安全（已加 `if-ltz` 兜底，但需实测）

## 五、回滚

```bash
git checkout main          # 回到基线，不带本改动
# 或直接装回 fmo_baseline.apk
```

## 六、风险

- 这条路线取的是「该文明当前能派出的最好机型」的代，**不是这架飞机出厂时的代**；同文明混编不同代时不准。
  正解是给 `AirUnit` 加 `gen` 字段（路线 B，需动存档），见 `research_gen载体_v1.md`。
