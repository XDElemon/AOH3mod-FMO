---
name: fmo-air-tech-tree
description: FMO 空军机型表与科技树：64 槽位编码（aid/key/imageId/packed）、科技 ID 固定化与过继/占位、国家树归属 AirGroupTags、编制名与图标、radarDetect/isDrone 等字段口径、代差数值标定、增删改机型的操作顺序与对应闸门、存档兼容与已知遗留。任何要动机型表/科技/编制/数值的批次都先读它。
---

# FMO 空军机型表与科技树

数据层唯一真源在 `data/`，smali 与 assets 都是**生成产物**（文件头带 `# 由 tools/… 生成`）。改数据 → 跑生成器 → 过闸门，不许手改产物。

## 0. 槽位编码（背下来，所有工具都按它对齐）

```
64 槽 = 4 代(3..6) × 4 国 × 4 型
country : CN=0 EU=1 RU=2 US=3
type    : FIGHTER=0 INTERCEPTOR=1 ATTACKER=2 BOMBER=3
key     = country*4 + type                  # 0..15
aid     = (gen-3)*16 + key                  # 0..63（编制下标就是它）
imageId = 70 + aid                          # 70..133（ArmyManager.armyImages 下标）
packed  = (key<<16) | (techId<<8) | imageId  # 塞进 AirModelTables.INFO
gen     = ((imageId-70)>>4) + 3
```

`data/aircraft_models.json` 的 `models[]` 每条：`key / modelCode / country / type / gen / techId / imageId / packed`，可选 `nameCN`。
当前 64/64 满编（每代为 16 条），`counts` 字段应与实际一致。

## 1. 两个「科技 ID」不要混

| 字段 | 含义 | 用途 |
|---|---|---|
| `models[].techId`（3→33 / 4→37 / 5→52 / 6→44） | **占位标签**，都是陆地科技 | 只进 `packed`；**绝不能拿它判"是否解锁"**（研究 44 号陆战科技就会冒出六代机） |
| `data/air_tech_ids.json` 的 ID（99 起） | 空军科技树节点 ID | 编制 `RequiredTechID`、科技树节点、解锁判定（`AirTechCiv.aidTechOf`） |

解锁判定在 `src/java/.../AirModelPick.java`：从六代往下找「该槽位的空军科技已研究且**科技代 == 槽位代**」的机型，三代兜底（开局由 `AirTechGrant` 授予）。跨代复用型号（同型号占两代槽位）不能因前一代已研究就放出后一代。

## 2. 科技 ID 固定化（v38）

`data/air_tech_ids.json`：`baseID=99`、`nextID`（水位线）、`ids{modelCode:techID}`、`aliases{旧:新}`、`retired{已删:techID}`。规则见 `tools/air_tech_ids.py`，分配顺序：

1. **改名继承**：新名在机型表、旧名在 `ids` ⇒ 把旧 ID 过继给新名（旧存档仍解锁同一机型，例：`MIRAGE4 → MIRAGEIV`）。
2. **复活**：`retired` 里的代号又出现 ⇒ 取回原 ID。
3. **追加**：全新机型 ⇒ `nextID++`，只影响它自己。
4. **退役**：机型被删 ⇒ ID 移入 `retired`，**在那个 ID 上放一个空占位节点**（`mask=0`，任何国家不可研究、面板不出可点节点）。

为什么必须占位：`TechnologyTree.lTechnology` 是 List，`loadTechnology()` 按 JSON **文件顺序**逐个 `add()`，全程 `get(ID)` ⇒ **ID 必须等于列表下标且连续无洞**。有洞 = 后面全体错位（比旧存档平移更糟）。

⇒ 增删任何机型后，都要重跑 `gen_air_techs.py` 让它维护 `ids/aliases/retired/nextID`，**不要手改这些数字**。

## 3. 国家树归属（AirGroupTags）

`data/air_tags.json`：文明 tag 前 3 字母 → 组（0=CN 1=EU 2=RU 3=US）。
- CN 组：`chi/chn/pak`（含巴基斯坦）
- US 组：`aus/can/isr/jap/kor/sau/tai/tur/usa`（含台/日韩澳/加/以/沙特/土）
- EU 组：45 个前缀（`eng/fra/ger/…`）
- **未列出的一律落俄国组**（`defaultGroup=3`，兜底）

生成：`tools/gen_air_tags.py` → `src/java/.../AirGroupTags.java`（`AirForceManager.artGroupOf` 的归属表）。

## 4. 编制与图标

- 四个编制文件 `assets/game/units/Air{Fighter,Interceptor,Bomber,Attacker}.json` 各 16 条，下标 = `(gen-3)*4 + 组`，`ImageID = 70 + aid`，`RequiredTechID = 空军科技 ID`（三代也挂真科技），陆战数值全 0。
- 编制名 = `modelCode + nameCN + 种类后缀`，例：`J11战斗机`、`SU57截击机`、`TEMPEST暴风雨战斗机`、`Q5攻击机`、`H6轰炸机`。`nameCN` 只给纯字母型号加（15 个机型有），其余不加。
- 图标 200×118，主体取该机型地图贴图 `assets/game/AirUnit/AirUnitlmages/Gen{3..6}/{CN,EU,RU,US}/{FIGHTER,INTERCEPTOR,BOMBER,ATTACKER}.png`（300×200 带 alpha）。
- `numOfImages.txt` 由 `gen_air_roster_icons.py` 维护（64 张图标 ⇒ 134）。

## 5. 字段口径（v35 起的增删）

| 字段 | 口径 |
|---|---|
| `radarDetect` | 按代：550 / 900 / 1300 / 1800（三代起） |
| `isDrone` | NEURON×2、X47B、S70 为 true |
| `capabilities{}` | **v70/v71**：每个机型一块 `capabilities`，七项布尔：`CanAAGun`（对空机炮）/`CanAGGun`（对地机炮）/`CanAAMissile`（空空）/`CanAGMissile`（空地）/`CanTacticalNuke`（战术核弹）/`CanALBM`（常规空射弹道）/`CanALBMNuke`（核弹头空射弹道）。旧的 `CanAttackAir`/`CanAttackGround` 已从数据模型删除，改由生成器派生（对空=（对空机炮 or 空空）且非无人机；对地=空地 or 对地机炮），仅供 `applyType` 老逻辑使用 |
| `canAttackAir`（已删） | 不要再往 `stats{}` 里写；B32 会报"旧字段回到数据模型" |
| `cost / buildTime` | 按机型行取（修过"面板 1800、实扣 200"） |
| 已删除 | `ecm / maxFuel / fuelConsumption / currentTarget / MISSILEHOPS` |

面板字符串末尾附「雷达 / 无人机」两行（`AirPanelText.java`）。

## 6. 代差靠数值（禁手填各代数字）

`data/aircraft_stats.json` 是参数真源：曲线（`absolute`，P 相对 3 代 = 1 / 20 / 45 / 112.5）、拆比指数（atk 0.5、def 0.5）、3 代基数。

```
P = atk × hp            hp = 2 × defense（AircraftDataManager 实测）
交换比 = 0.4 × P_A / P_B（0.2/0.5 系数天然偏防守）
拆比：atk×mult^a、def×mult^d，必须 a+d=1，否则 P 偏离锚点（工具直接报错）
```

锚点（`tools/aircraft_stats.py` 会核对）：4 代打 3 代 **8.00:1**、5 代 **18.00:1**、6 代 **45.00:1**；同代 0.40。

## 7. 改机型的标准操作（顺序不能乱）

```bash
cd /tmp/fmo
# 1) 只改 data/aircraft_models.json（加/删/改名/换 techId/换 nameCN）
python3 tools/gen_aircraft_models.py           # 校验 + 派生（counts/槽位）
python3 tools/validate_aircraft_models.py      # V1–V7
# 2) 生成 smali / JSON
python3 tools/gen_airmodel_tables.py
python3 tools/gen_air_oob.py
python3 tools/gen_air_model_stats.py
python3 tools/gen_air_techs.py   /tmp/stage_vXX/assets/game/technologies/Technologies.json
python3 tools/gen_air_units.py   /tmp/stage_vXX/assets/game/units
python3 tools/gen_air_units.py
python3 tools/gen_air_roster_icons.py --all /tmp/stage_vXX --apk <上一版apk>
# 3) 闸门（改机型必看 B19/B20/B21/B22/B23）
python3 tools/fmo.py gate
git status --short    # 生成器跑完应当是 clean（若脏，说明手改过产物）
```

改名/删除的额外动作：
- **改名**：在 `air_tech_ids.json` 的 `aliases` 留过继（生成器会写），并在 `data/aircraft_models.json` 同步新代号；旧存档才能继续解锁同一机型。
- **删除**：确认 `retired` 里出现该代号、`nextID` 不变、科技 JSON 里那个 ID 变成 `mask=0` 占位；此时面板不应出现可点节点。

## 8. 对应闸门（红/绿都见过，别猜）

| 闸门 | 断言要点 |
|---|---|
| B15 | 科技国别过滤（每国只看自己的树） |
| B17 | 三代编制挂科技 + 开局授予 |
| B18 | 科技解锁机型 / 跨国前置 |
| B19 | 机型表改名、中文代号、同代选型 |
| B20 | 探测范围 / 无人机字段（从 `build/AircraftTypes.json` 对造价与字段） |
| B21 | 文明 tag → 树归属（含 `defaultGroup=3` 兜底） |
| B22 | 科技 ID 稳定性（删一个/加一个机型，其余 ID 必须不变；需要 staged `Technologies.json`） |
| B23 | MIRAGEIV 消歧 / 无人机一致性 / 面板雷达行 |
| selftest 3.5/7/8 | `AircraftTypes.json` 与机型表一致、`ImageID=70+aid`、`RequiredTechID=机型科技`、负样本能抓 |

## 9. 存档兼容

- **v37 及以后**：科技 ID 已固定，兼容（含 `MIRAGE4→MIRAGEIV` 的旧号过继）。
- **v36 及以前**：建议重开档（v37 的机型增删让 17 个科技 ID 平移过）。
- `Save_AirUnit / Save_Airport / Save_AirMission` 的 DTO **一律不动**；要动字段先确认序列化路径。

## 10. 已知遗留（动手前先看）

| 优先级 | 事项 | 说明 |
|---|---|---|
| 高 | **读档不跑 `applyType`** | `LoadSavedGameManager` 只 `applyModel`；`maxPayload/canAttack*/agility/stealth/combatRadius/groundAttack` 读档后仍是按类型占位。修法：load 后补一次 `applyType` |
| 中 | `AirNameForTypeP` 参数口径 | `$BtnBuild:151` / `$BtnSelect:206` 传原始 ordinal，主面板传 `ord^3`，仍不一致 |
| 中 | 旧存档 `modelAid<0` | 老档不会重新 `applyModel`，可能"显示新机型、数值没刷新" |
| 低 | `Airport.getBuildTime/getAircraftRange` | 仍按 `types[type.ordinal()]`，造价已改按 aid |
| 低 | 面板雷达/无人机两行 | 已加，位置在属性串末尾（排序/文案待打磨） |

## 11. 常见错误

| 现象 | 原因 |
|---|---|
| 面板显示六代机但数值是三代 | 拿 `models[].techId`（占位陆地科技）当解锁条件 |
| 研究完四代科技仍只出三代机 | 槽位代与科技代不匹配被 `AirModelPick` 跳过（跨代复用型号） |
| 科技树节点错位 / 旧档科技串台 | 改了 ID 或少了占位节点（ID 必须 = 列表下标连续） |
| 某国没有科技树 | `air_tags.json` 没登记该 tag ⇒ 落到俄国组（兜底行为，不是 bug） |
| 编制卡片全是战斗机图 | 没跑 `gen_air_roster_icons.py`（`ImageID` 还是占位 67） |
| 造价面板/实扣不一致 | 造价没按机型行取（`AircraftTypes.json` 里应有 aid 行） |


## 12. 每机型独立数值（v52 起）

真源仍是 `data/aircraft_models.json`，但每条机型可加**可选** `stats{}`（缺省=按代/按类型派生）：

```json
{ "key": "A_CN_J11_F", "modelCode": "J11", ...,
  "stats": { "RadarDetect": 700, "MissileRange": 150, "CostGold": 260 } }
```

字段白名单见 `tools/gen_aircraft_models.py` 的 `STATS_KEYS`（战斗项 + 造价/工期 + 面板项：
`GroundAttack/Agility/Stealth/CombatRadius/MaxPayload` 等）。
**六项能力不写在 `stats{}`**，写机型级独立块：

```json
{ "key": "A_CN_J11_F", ...,
  "capabilities": { "CanAAGun": true, "CanAGGun": false, "CanAAMissile": true, "CanAGMissile": true,
                    "CanTacticalNuke": false, "CanALBM": false, "CanALBMNuke": false },
  "stats": { ... } }
```

64 条机型已全部 materialize；B36 校验每条都有七项布尔值、且 `AircraftTypes.json` 与 `AirModelStats` 的 `[Z` 表一致。

**数据链已收敛为单一真源**（v52）：

```
data/aircraft_models.json (+stats)
        │ gen_aircraft_models.build()
        ├─ gen_air_model_stats.py → AirModelStats.smali（圆/战斗/造价读）
        └─ gen_air_oob.py         → AircraftTypes.json（面板/编制读）
```

⇒ 填完数值**必须按顺序重跑三条**，否则面板与圆会分叉：
`gen_aircraft_models.py` → `gen_air_model_stats.py` → `gen_air_oob.py` → `fmo.py gate`（B20 会逐 aid 对账 + 防回退）。

⚠️ `tools/gen_aircraft_types.py` 是危险残留：它会把 64 行表覆盖回 4 行（B20 会报"应为 64 行"），**不要跑**。
