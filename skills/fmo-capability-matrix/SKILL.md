---
name: fmo-capability-matrix
description: FMO 机型七项能力开关（对空机炮/对地机炮/空空/空地/战术核弹/常规空射弹道/核空射弹道）：数据位置 capabilities{}、严格判定口径、派生规则、B11/B20/B32/B36 闸门、改一勾要走的数据→生成器→stage→出包顺序，以及核弹定义、尾炮、吊舱炮、纸面机这些反复出错的判定坑。任何要改"某架飞机能不能打某种弹"的批次都先读它。
---

# FMO 机型能力开关（capabilities）

> **2026-10-27 更新（M2 类型表）**：七项能力 → 导弹类型是**一对一**（生成器/B47 强制）：
> `CanAAMissile→AAM`、`CanAGMissile→AGM`、`CanTacticalNuke→TAC_NUKE`、`CanALBM→ALBM`、`CanALBMNuke→ALBM_NUKE`；
> 两个机炮能力不映射导弹。详见 `fmo-missile-types`。
> 另：`Agility` 已从"伤害乘数"变成"真实转弯半径"输入（`AirCraft.turnRateFor × TURN_SCALE`），改 Agility 前看 `fmo-air-motion`。

真源：`data/aircraft_models.json` **每个机型**的 `capabilities{}`（不是类型配置 `data/aircraft_types.source.json`，那份别动）。
64 条全部 materialize；缺项按类型缺省，非布尔/未知键生成器直接报错。

```json
"capabilities": {
  "CanAAGun": true, "CanAGGun": false,
  "CanAAMissile": true, "CanAGMissile": true,
  "CanTacticalNuke": false, "CanALBM": false, "CanALBMNuke": false
}
```

## 1. 七项口径（写死的判定标准，别临时发挥）

| 字段 | 含义 | 判定要点 |
|---|---|---|
| `CanAAGun` | 对空机炮 | **内装**航炮且用于空战；轰炸机尾炮算"有炮"但见 §5；机炮吊舱/弹舱 gun container **不算** |
| `CanAGGun` | 对地机炮 | 该炮被实际/认证用于对地扫射（A-10/苏-25/强-5 这类） |
| `CanAAMissile` | 空空导弹 | 能挂能射任何 AAM；火箭弹/炸弹不算 |
| `CanAGMissile` | 空地导弹 | 制导对地/反舰/反辐射导弹；**炸弹、火箭弹、制导炸弹不算** |
| `CanTacticalNuke` | 战术核弹 | **v72 定稿口径 = 具备战术核打击能力**（核炸弹/核巡航/核弹道都算；参照米格-31K 的匕首）。与 `CanALBMNuke` 故意重叠，后者是弹道子集 |
| `CanALBM` | 常规空射弹道导弹 | 弹道式空射弹（匕首常规型这类）；高超声速滑翔弹不算 |
| `CanALBMNuke` | 核空射弹道导弹 | 同上，核弹头型 |

## 2. 派生（内部兼容字段，不可手填）

```
对空 = (CanAAGun or CanAAMissile) and not Drone and Type != BOMBER
对地 = CanAGMissile or CanAGGun
```

- 这两个结果写进 `AircraftTypes.json` 的 `CanAttackAir/CanAttackGround`，供 `applyType` 老逻辑用；
- **不要再往 `stats{}` 里写 `CanAttackAir/CanAttackGround`**，B32 会报"旧字段回到数据模型"；
- 轰炸机尾炮 `CanAAGun=true` 也不会获得对空资格：v72 起派生里排除了 BOMBER（H-6/Tu-22M 的尾炮只是防御火力）。

## 3. 数据链与改动顺序

```bash
cd /tmp/fmo
# 1) 只改 data/aircraft_models.json 的 capabilities{}
python3 tools/gen_aircraft_models.py        # 校验 + 派生
python3 tools/gen_air_model_stats.py        # -> AirModelStats：[Z 表 + canXxx(I)Z
python3 tools/gen_air_oob.py                # -> build/assets/.../AircraftTypes.json
cp build/assets/game/AirUnit/AircraftTypes.json /tmp/stage_v47/assets/game/AirUnit/   # ★ stage 不会自动同步
# 2) 汇编 + 闸门 + 出包（见 fmo-patch-pipeline / fmo-build-integrity）
```

生成物：
- `AirModelStats`：`GUN`（读 `CanAAGun`）、`CANAGGUN`、`CANAAMISSILE`、`CANAGMISSILE`、`CANTACTICALNUKE`、`CANALBM`、`CANALBMNUKE` 七张 `[Z` 表；查询 `hasGun(I)Z`（越界 true）、`canAGGun/canAAMissile/...`（越界 false）。
- `AircraftTypes.json`：每行七项 + 派生的 `CanAttackAir/Ground`；DTO `AircraftTypeData` 必须有同名字段，否则 Gdx Json 整表加载失败。

## 4. 闸门对应

| 闸门 | 断言 |
|---|---|
| B11 | `GUN` 表 == 配置里的 `CanAAGun` 列；`hasGun` 越界回退 true |
| B20 | `AircraftTypeData` 七个 `Z` 字段都在（未知键会让整表废掉） |
| B32 | 数据里不许有旧 `CanAttackAir/Ground`；派生规则必须一字不差；`a1ShootAir` 必须委托 `canIntercept` |
| B36 | 64 条 × 七项 × 三处一致（数据 / AircraftTypes / AirModelStats） |

改判定口径 = 改 B32/B36 的断言，先造红样本（改一个机型 → 看红 → 复原）。

## 5. 判定坑（每条都真踩过）

1. **核弹定义**：v72 已定为"核打击能力"（含核巡航/核弹道），不要再按"只算核炸弹"改回去——否则 Rafale、Mirage 2000N、Tu-160、B-1B、Tu-22M 会整片翻转。
2. **同一型号多槽位**：F-14（F/I）、Rafale（F/A）、F-22（F/I）、Tempest（F/B）等 7 项必须一致，不能一处 true 一处 false。
3. **尾炮**：H-6、Tu-22M 的尾炮算 `CanAAGun` 会顺带获得"对空"资格；若只想要"防御火力"，应新增 `CanIntercept` 或在派生里排除 BOMBER，不要靠改数据绕。
4. **吊舱炮**：鹞式的 ADEN 吊舱、Su-75 的弹舱 gun container，按"内装"口径是 false；要放宽就统一放宽并在注里写。
5. **纸面机**：J36/J50/F47/X02S/CFA44/ASFX/Tempest/FCAS/PAKDA/MIG41/H20 按设计定位填，confidence 标 low；《皇牌空战》虚构机（X02S/CFA44/ASFX）按设定还是按现实原型，先问用户。
6. **无人机**：派生强制 `not Drone`，所以无人机勾 `CanAAGun` 也不会获得对空资格；别用这个绕。

## 6. 当前状态（v72）

- 默认值：机炮按类型（截击/战斗/攻击 true，轰炸 false）；`CanAGGun` 暂定攻击机 true、其余 false；空空 = 非轰炸且非无人机；空地 = 非截击；核/弹道全 false。
- v72 矩阵已定稿：对空炮 27 / 对地炮 13 / 空空 45 / 空地 49 / 核 30 / ALBM 8 / 核 ALBM 8；中国 16 条按"游戏强国"放宽（详见台账 §63）。
- 复核与决策记录：`/sdcard/GLG/DSHA/aircraft_capabilities_review_20261025.md`。
- 常规四类正在接（v73 起）；**核三字段（TN/ALBM/ALBMN）暂不接逻辑**——核战是独立大类，未设计，接半截会全部推翻。约定写在台账 §64，`data/aircraft_models.json` 顶部 note 也有提醒。
- 核字段目前只有数据值，改它不影响战果（除派生的对空/对地）。
