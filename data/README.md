# 数据层（唯一真源）

| 文件 | 作用 |
|---|---|
| `aircraft_models.json` | **机型表真源**（51 条）。改数据只改这里。 |
| `tech_ids.json` | 从 `Technologies.json` 抽出的科技节点 ID 集（校验 techId 用，0..98） |

## 编码（已实证 51/51 命中）

```
key    = country*4 + type      CN=0 EU=1 RU=2 US=3 ｜ FIGHTER=0 INTERCEPTOR=1 ATTACKER=2 BOMBER=3
imageId= 70 + (gen-3)*16 + key
packed = (key<<16) | (techId<<8) | imageId
gen    = ((imageId-70)>>4) + 3
```

## 工作流

```bash
# 1) 改 data/aircraft_models.json
# 2) 生成 smali（覆盖 src/.../AirModelTables.smali 的 <clinit>）
python3 tools/gen_airmodel_tables.py
# 3) 校验（图片存在 / 代际与目录一致 / 科技 id 存在 / 键唯一 / 覆盖率）
python3 tools/validate_aircraft_models.py --apk /tmp/base/fmo_baseline.apk
# 4) 自检：JSON 应能逐字节还原当前 smali
python3 tools/gen_airmodel_tables.py --check
```

## 当前覆盖

51 / 64 槽位，缺 13 个（`validate` 的 V7 会列出来）：
CN/Gen5/FIGHTER、EU/Gen4/{FIGHTER,INTERCEPTOR,BOMBER}、EU/Gen5/BOMBER、RU/Gen4/{INTERCEPTOR,BOMBER}、
RU/Gen5/FIGHTER、RU/Gen6/INTERCEPTOR、US/Gen5/{FIGHTER,BOMBER}、US/Gen6/{ATTACKER,BOMBER}

## 数值标定（代差靠数值）

`tools/sim_air_combat.py --calibrate`：

| 目标交换比 | 需要 P 倍率（P=atk×hp） | 均衡拆法 |
|---|---|---|
| 8:1（−1 代） | ×20 | atk×4.47 hp×4.47 |
| 18:1（−2 代） | ×45 | atk×6.71 hp×6.71 |
| 45:1（−3 代） | ×112.5 | atk×10.61 hp×10.61 |

依据：交换比 = **0.4 × P_A/P_B**（0.2/0.5 系数天然偏防守方）。

## 数值层（参数化，禁止手填各代数字）

| 文件 | 作用 |
|---|---|
| `data/aircraft_stats.json` | **参数真源**：曲线（absolute/per_gen）、P 倍率表、atk/def 拆比指数、3 代基数 |
| `data/aircraft_stats.derived.json` | 推导产物（`--emit` 生成，勿手改） |

```bash
python3 tools/aircraft_stats.py            # 打印派生表 + 交换比矩阵 + 锚点核对
python3 tools/aircraft_stats.py --emit     # 写 derived.json
```

当前参数（待拍板）：`absolute`，P_mult = 1 / 20 / 45 / 112.5（相对 3 代），拆比 atk^0.5 × def^0.5。

派生结果：4 代打 3 代 **8.00:1**、5 代打 3 代 **18.00:1**、6 代打 3 代 **45.00:1**（同代 0.40:1，防守方占优）。

> 注意：P = atk × hp，而 **hp = 2 × defense**（`AircraftDataManager` 实测），
> 所以拆比指数必须满足 `a + d = 1`，否则 P 会偏离锚点（工具会直接报错拒绝）。
