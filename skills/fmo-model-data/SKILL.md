---
name: fmo-model-data
description: FMO 机型数值与建造选型（v107–v108 验收）：64 架逐机型 stats（Speed/MissileSpeed/MissileCount/MissileRange）由 tools/design_air_stats.py 的四国规则生成；建造走 AirBuildPick，保证"面板显示哪一架、出厂就是哪一架"。含四国系数表、CN 加码口径、atk 封顶与"两发打死"校验、B50/B51 闸门、面板导弹行、以及"造出来永远是 J11"的历史坑。
---

# 机型数值与建造选型

> v107（逐机型数值）+ v108（建造选型）真机验收。改数值 / 改建造 / 加机型先读这里。
> 数值真源只有一个：`data/aircraft_models.json` 的 `stats{}`；产物是 `AirModelStats` + `AircraftTypes.json`。

## 1. 数值三级结构

| 层 | 在哪 | 谁读 |
|---|---|---|
| 代基线 | `tools/gen_aircraft_models.py` 的 `GEN`（每代 speed/mspeed/mrange/mcount/mrr） | 生成器默认值 |
| 类型系数 | 同文件 `TYPE_MOD`（攻击/防御/敏捷/航程/载荷） | 生成器默认值 |
| **逐机型** | `data/aircraft_models.json` 的 `stats{}`（v107 起 **64 架全写**） | 覆盖前两层 |

`tools/design_air_stats.py` 按四国规则**生成** stats：
```bash
python3 tools/design_air_stats.py --dry     # 打印 64 行评审表（不写入）
python3 tools/design_air_stats.py           # 写入
python3 tools/design_air_stats.py --check   # B33 用
```

## 2. 四国系数（2026-10-27 定稿；CN 为 B+ 档）

| 国 | atk | def | 敏捷 | 隐身 | 探测 | 导弹射程 | 载荷 | 造价 | 工期 | 机速 | 弹速 |
|---|---|---|---|---|---|---|---|---|---|---|---|
| **CN** | +12%* | **+20%** | +12% | +0.05 | +22% | **+25%** | **+2** | **−15%** | −1 | +6% | +5% |
| US | +5% | ±0 | +5% | **+0.08** | **+25%** | +20% | ±0 | +15% | ±0 | +3% | **+6%** |
| RU | +10% | ±0 | +2% | +0.01 | +5% | +10% | +1 | −15% | ±0 | ±0 | +3% |
| EU | ±0 | +5% | +10% | +0.05 | +18% | +18% | ±0 | +10% | +1 | +5% | +4% |

\* atk 受 **"两发打死/不秒杀"** 上限锁定（四代 150 / 五代 500 / 六代 3000 = 5×上一代最小 hp），
`gen_aircraft_models.validate()` 会直接报错。**降别国 def 会打穿低代最小 hp 并触发该错误**（RU 曾试 def−5% 被拦）。

机速 = 代基准 × 类型系数（截击 1.15 / 战斗 1.08 / 攻击 0.95 / 轰炸 0.85）× 国别系数，取 5 的倍数。
弹速 = 代基准 × 国别系数；载弹 = 代基准（截击 +1）。

## 3. 改数值的标准顺序

```bash
# 1) 改 data/aircraft_models.json 的 stats{}（推荐改 design_air_stats.py 的 RULES 再生成，别手填 64 行）
python3 tools/design_air_stats.py
# 2) 三件套重新生成（顺序不能乱）
python3 tools/gen_aircraft_models.py     # 校验 + 派生
python3 tools/gen_air_model_stats.py     # → AirModelStats.smali（64×18 列）
python3 tools/gen_air_oob.py             # → build/assets/.../AircraftTypes.json
# 3) 出包前把编制表同步进 stage（否则包里是旧数据！）
cp build/assets/game/AirUnit/AircraftTypes.json /tmp/stage_v89/assets/game/AirUnit/
# 4) 闸门 + 出包
python3 tools/fmo.py gate
```

## 4. 建造选型（v108）

**历史坑**：面板能翻到 64 架，但 `Airport.startBuild(AirType)` 只存 4 个类型，出厂时 `stampAirUnit` 又**重算一次**
best aid ⇒ 面板显示 J36、造出来是 J11（真机日志六条全是 `aid=0`）。用户原话："建造系统根本没有接入其他飞机"。

修法：`AirBuildPick`（Java）
- **点建造时** `noteClick(typeOrdinal)`：按面板同一算法算出"现在显示哪一架"，压进 FIFO（按 文明+类型 分桶）；
- **出厂时** `stampAirUnit → takeOrPick(civ, type)`：优先取记录；没有（AI/开局/老档）回落 `AirModelPick`；
- 读档 `loadSave_Airforce` 调 `clear()`。

规矩：**面板显示 = 出厂**由构造保证，不依赖两处算法同步；科技硬门暂未做（选型即所造）。

## 5. 面板

`AirPanelText.missileLine(modelAid)` → hover 多一行：
`导弹：速度 88 · 射程 165 · 载弹 2 · 近炸 24｜空地：有｜机炮：同省`，无空空弹的机型显示"无空空弹"。
（B23 有先例：Java 拼串 + smali 一条 invoke；两个面板 `BtnBuild`/`BtnSelect` 都要接。）

## 6. 闸门

| 闸门 | 内容 |
|---|---|
| **B33** | 设计表与数据一致（`design_air_stats.py --check`）；64 架都必须有 `stats{}` |
| **B20** | 探测/无人机字段、面板 64 行 |
| **B32** | 对空/对地 = 七项能力派生 |
| **B36** | 七项能力开关完备 |
| **B50** | 逐机型数值分得开：Speed ≥24 档、同代同类型四国不撞车、进包表==stats、面板接线 |
| **B51** | 建造选型：FIFO/分桶/clear 行为 + 三处接线静态检查 |

## 7. 坑

1. **`stats{}` 缺失的字段回落到代/类型默认** —— 以为改了某架，其实没写进去。
2. **改完不 `cp` 到 stage**：闸门查 `build/` 全绿，包里还是旧表（本项目最老的坑）。
3. **atk 封顶校验**：任何"降 def"的国别规则都会打穿下一代的 atk 上限，先跑 `gen_aircraft_models.py` 看报错。
4. **机速是面板上唯一肉眼可比的**：同代四国必须不同（B50 钉住）；导弹速度/射程只有新面板行和组织日志能看出。
