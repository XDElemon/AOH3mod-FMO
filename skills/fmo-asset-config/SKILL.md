---
name: fmo-asset-config
description: FMO 往游戏自带资产配置里加字段/改数值的安全做法（本作 gdx Json 是严格模式）。覆盖 Buildings.json 的缩进格式、为什么必须在数据类补同名 .field、stage 覆盖进包、进包与源逐字节一致、生成器读真源、B49 的整合断言，以及「改完建筑列表空白」的定位与回滚。任何要动 Buildings.json / RadarConfig.json / gameValues / AI_Build 等资产配置的批次先读它。
---

# FMO 资产配置改动（Buildings.json 等）

> 2026-10-30 v131 真机事故：往 `Buildings.json` 里加自定义字段，**整个建筑列表变空白**。
> 根因：本作 libgdx `Json.ignoreUnknownFields = false`（严格），多一个未知键就抛异常，
> `loadBuildings()` 外层 catch 一吞，建筑表为空。修法见 §2。

## 1. 文件格式（别当 JSON 处理）

`assets/game/buildings/Buildings.json` 虽然叫 json，实际是**缩进格式**：

```
{
	Buildings:
	[
		{
			Name: ["反导阵地"],
			ImageID: [101],
			GroupID: 1,
			CostGold: [260],
			...
		},
	],
	Age_of_History: Buildings
}
```

- 键**不带引号**，值基本是**数组**（`[400]` = 每升级档一个值）；
- 允许尾逗号；UTF-8、无 BOM；
- Python 的 `json.load` 会直接报错——用 `gen_air_defense.py` 里的 `_blocks()/_block_name()/_num()`
  三个小工具（按 `{}` 切块 + 正则读键），别自己写第二套。

## 2. 加字段的硬规矩：数据类必须有同名字段

解析走 `Json.fromJson(ConfigBuildingsData.class, ...)` → 逐字段反射赋值。
**本版本 `ignoreUnknownFields` 默认 false**（反汇编 `classes2.dex` 里 `Json.<init>` 只设了
`usePrototypes`/`enumNames`，没设这个 ⇒ Java 默认 false），所以：

> JSON 里出现的每个键，都必须在 `BuildingsManager$Buildings` 里有同名 `.field`，否则整份配置解析失败。

加字段的标准动作（两个地方一起改）：

```
# 1) JSON：在建筑块里加  Key: [值],
# 2) 数据类：src/smali/aoc/kingdoms/lukasz/map/BuildingsManager$Buildings.smali
#    .field public Key:[I     （数组：整数用 [I、浮点用 [F、布尔用 [Z）
```

类型必须与 JSON 值匹配（`[100]`→`[I`，`[1.0]`→`[F`）。
B49 会检查两份都在（`BuildingsManager$Buildings` 缺字段直接红）。

## 3. 进包：stage 覆盖 + 逐字节一致

生成器把源文件原样写到 `build/assets/game/buildings/Buildings.json`，**必须再拷进 stage**：

```bash
cp build/assets/game/buildings/Buildings.json /tmp/stage_v89/assets/game/buildings/
```

出包时 stage 覆盖模板里的同名文件（stage 只增改、不删除；模板里原有文件会保留）。

出包后核对（两条都要过）：

```bash
md5sum assets_r6t007/game/buildings/Buildings.json
unzip -p fmo_vNNN_xxx.apk assets/game/buildings/Buildings.json | md5sum      # 必须相同
```

## 4. 真源与生成器（以防空为例）

`assets_r6t007/game/buildings/Buildings.json` → `python3 tools/gen_air_defense.py` 产出：

| 产物 | 用途 |
|---|---|
| `src/smali/.../AirDefCfg.smali` | 运行时数组 + 访问器（禁止手改） |
| `build/assets/game/buildings/Buildings.json` | **进包那份** |
| `build/assets/game/AirDefense/AirDefense.json` | 可读镜像 |
| `data/air_defense.json` | 生成镜像（B49 红样本用；**别再手改**） |

## 5. 排查：改完建筑列表空白

1. 先确认是不是这份文件的问题：把 `Buildings.json` 换回原版（模板里 `unzip -p` 取出来）打一版，列表回来即坐实；
2. 逐键比对：新加的键在 `BuildingsManager$Buildings` 有没有同名字段、类型对不对；
3. 兜底验证：`python3 tools/gate_air_defense.py` 里 B49 的整合断言会先拦一遍（字段齐全 / 字节一致 / 迷雾常量）；
4. 真机侧没有崩溃日志可看（`loadBuildings` 里 catch 把 `GdxRuntimeException` 吞了），只能靠"列表空"这个症状判断。

## 6. 其它配置文件的现状（别踩）

| 文件 | 现状 |
|---|---|
| `assets/game/buildings/Buildings.json` | **活**：建筑定义 + 我们的防空附加字段 |
| `assets/game/RadarConfig.json` | **基本死配置**：只有 `ProvinceDrawArmy.drawAirForceRadarIcons`（图标）读；真正的探测在 `PlayerFogOfWar` 硬编码 |
| `assets/game/gameValues/GV_Buildings.json` | 建筑数量/槽位上限，未见我们依赖 |
| `assets/game/gameValues/AI/AI_Build.json` | AI 建造权重，改动影响 AI 行为，慎动 |
| `assets/map/Earth3/Config.json` | 地图缩放：`DefaultMapScale=1`、`ExtraMapScale=4`；`iMapScale` 取 **DefaultMapScale**（Earth3 上 =1，很多换算坑源于误以为它=4） |

## 7. 一句话清单

- 加键 → 同步数据类字段 → 生成器 → 拷 stage → 闸门 → 出包 → **包内与源逐字节比对**；
- 任何"数据改了但游戏没变/全空"的怀疑，先查解析失败（严格模式），再查 stage 有没有带进去。
