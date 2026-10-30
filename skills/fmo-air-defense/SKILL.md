---
name: fmo-air-defense
description: FMO 防空阵地（游戏内叫「反导阵地」）全链路：建筑识别、开火节奏、参数真源（Buildings.json → AirDefCfg → AirDefCfgRt）、SAM 运动学、百分比伤害 + 斩杀线、蓝盘/红盘半径与实际探测一致性、B37/B49/B54/B55/B56 闸门。任何要动防空射程/探测/装填/命中/伤害/开火频率，或排查「阵地不开火、打不中、看不见、圈对不上」的批次先读它。
---

# FMO 防空（反导阵地）— 2026-10-30 v139 验收

> 结论先行：防空在游戏里的建筑叫 **「反导阵地」**（不是"防空阵地"）；`AAA_BUILDING_ID` 是按**名字**认出来的。
> 射程/探测/装填/命中/伤害全部有真源，**但配置链会静默走兜底**——这条坑见 §8。

## 1. 谁是谁

| 概念 | 实现 | 备注 |
|---|---|---|
| 阵地建筑 | `Buildings.json` 的 `Name: ["反导阵地"]` | `BuildingsManager` 按名字 `"反导阵地"` 存进 `AAA_BUILDING_ID`；改名字=整条链断 |
| 雷达建筑 | `Name: ["雷达"]` → `RADAR_BUILDING_ID` | 有它：交战半径取 bonus、蓝盘取雷达档 |
| 中层反导雷达 | `Name: ["中层反导雷达"]` → `LONGRADAR_BUILDING_ID` | 只探测不发射（`canFire=false`，B47/B49 双闸） |
| 开火逻辑 | `AirDefense`（smali，项目自有） | `tickTurn/tickAll/fireProvince/eligible/inRange/adHitChance` |
| 运行时取参 | `AirDefCfgRt`（Java） | 四个入口：`engageReal/detectReal/hitChance/shotsDue/discScale` |
| 生成物 | `AirDefCfg.smali`（`tools/gen_air_defense.py`） | 数组常量 + 访问器，**不许手改** |

## 2. 参数真源与链路（v131 起）

```
assets_r6t007/game/buildings/Buildings.json     ← 唯一真源（三个建筑块上的附加字段）
        │  python3 tools/gen_air_defense.py
        ├─→ src/smali/.../AirDefCfg.smali        （数组 + 访问器）
        ├─→ build/assets/game/buildings/Buildings.json   （进包那份，必须与源逐字节一致）
        ├─→ build/assets/game/AirDefense/AirDefense.json （可读镜像）
        └─→ data/air_defense.json                （**生成镜像**，别手改）
```

进包方式：`/tmp/stage_v89/assets/game/buildings/Buildings.json` 覆盖模板里的同名文件（stage 只增改不删）。

## 3. 字段与语义（`反导阵地` 块）

| 字段 | 现值 | 语义 | 被谁读 |
|---|---|---|---|
| `EngageRangeReal` | 100 | 交战半径（红盘 + 开火判定） | `AirDefense.inRange` → `AirDefCfgRt.engageReal` |
| `EngageRangeBonusReal` | 130 | 本省有雷达时的交战半径 | 同上（取较大值） |
| `DetectRangeReal` | 500 | **实际探测半径 = 蓝盘屏幕半径**（zoom=1） | `PlayerFogOfWar`（硬编码同值）+ `AirRadarBld` |
| `ReloadHours` | 1.0 | 装填间隔（游戏小时；1 回合=2 小时） | `AirDefCfgRt.shotsDue` |
| `HitChance` | 0.8 | 单发命中率 0~1 | `AirDefense.adHitChance` |
| `MissileSpeed` | 90 | SAM 弹速（世界 px/回合） | `AirProjectileCore.spawnSam` |
| `DiscScale` | 1.0 | 蓝盘绘制倍数（**默认 1，圈=探测值**；只留给美术放大） | `AirRadarBld` |

雷达块：`DetectRangeReal=850`；中层反导雷达块：`EngageRangeReal=200`、`DetectRangeReal=2500`。

## 4. 开火流程（真实节奏）

```
每回合一次：GameThread_Turns → AirForceManager.updateAll → AirDefense.tickTurn
   （tickTurn 用 TURN_ID 去重；1 回合 = 2 小时）
   └ tickAll：遍历所有省 → airDefenseAt(省)（数"反导阵地"建筑）
        └ AirDefCfgRt.shotsDue(省, 阵地数)：按 reloadHours 攒齐射，上限 4 倍
        └ fireProvince(civ, 省, 发数)：
             countTargets → eligible(敌方 + 交战状态 + 有活机 + inRange)
             每发 80% 命中（adHitChance）→ spawnSam（可见的新表弹）+ 旧字段登记
```

要点：
- **每回合都结算**，没有"每 N 回合"；想更慢就把 `ReloadHours` 调大（0=每回合一轮，旧行为）。
- 命中率是**发射判定**，打出去之后还要看 SAM 是否追得上（§5）。

## 5. SAM 运动学（v127–v129 定稿）

| 项 | 值 |
|---|---|
| 弹速 | 90（比最快的战斗机 94.5 略慢 ⇒ 快机能甩掉） |
| 转向 | 360°/回合 |
| 寿命 | `max(类型 0.8, 2.4×射程/速度 + 1.0)` 回合约 9 回合 |
| 瞄准 | 发射时算**前置量**（`AirProjectileCore.leadPoint`，迭代 2 次） |
| 结果 | 迎面/90°横穿能咬住；尾追与 94 速横穿**按物理逃逸**（B54 锁死这个预期） |

## 6. 伤害（v128 起，旧路径已退场）

- 命中时由 `AirDamage.samHit` → `samStrike` 结算：**每发扣 maxHp × 50%**；
- **斩杀线**：命中那一刻目标血 `≤ maxHp × 60%` ⇒ 一发击毁（含 0.001 浮点容差）；
- 击杀走原版口径：`recordLoss` + `recalcPool`；
- **旧 `AirDefense.scheduleHit` 已删**（不再"按时间自动结算"），打空就真没伤害；
- 日志：`nDM sam tgt=… v=…`、斩杀 `nDM ex tgt=… max=… was=…`。

## 7. 盘与探测（单位是踩了三轮才对齐的）

| 盘 | 半径公式 | 说明 |
|---|---|---|
| 蓝盘（建筑） | `DetectRangeReal × DiscScale × zoom` | Earth3 `iMapScale=1`，别乘它；`DiscScale` 默认 1 |
| 红盘（交战） | `EngageRangeReal × iMapScale × zoom` | 红盘一直是对的（有雷达取 bonus） |
| 实际探测 | `PlayerFogOfWar.detectEnemyMissions` 里三个**硬编码常量**（0x1f4/0x352/0x9c4） | 必须与 `DetectRangeReal` 同值，B49 会查 |

> 历史坑：蓝盘曾经少乘 iMapScale（以为要乘，实际 Earth3=1）、又曾经只用固定倍数硬放大（DiscScale=8），
> 结果和探测范围永远对不上。现在口径是**一个数说了算**：`DetectRangeReal` = 探测半径 = 蓝盘半径。

## 8. 坑（每条都真出过事）

1. **配置链会静默走兜底**：`AirDefCfgRt` 里所有读取都 `try/catch`，失败就回默认值。真机日志 `nBld p=.. r=300 s=1.0` 就是"读配置失败"的铁证；`nCfg ERR <异常>` 会写出原因。别只看画面，先看这两行。
2. **生成的 `Buildings.json` 字段必须在数据类里有同名 `.field`**：本作 gdx `Json.ignoreUnknownFields = false`，多一个键 = 整份建筑配置解析失败 = 建筑列表空白（v131 真机事故）。见 `fmo-asset-config`。
3. **`RadarConfig.json` 基本是死配置**：只有 `ProvinceDrawArmy.drawAirForceRadarIcons`（雷达图标）读它；真正的空中探测在 `PlayerFogOfWar`，硬编码。别再拿它当探测真源。
4. **日志预算**：`AirProjectileCore` 通用预算 240 条，长时间对局早被 AAM 耗光；防空日志用独立预算（`samLog`/`samLogBudget`）。
5. **旧路径已退场**：`scheduleHit`/`applyMdDamage` 不再被防空调用；别再"顺手"把伤害接回去。
6. **存档**：防空装填计时在内存里（`AirDefCfgRt.LAST_HOUR`），读档清空——设计如此，别当 bug。

## 9. 闸门与调参

| 闸门 | 管什么 |
|---|---|
| B37 | 交战半径：无雷达 100 / 有雷达 130（真跑 `inRange`） |
| B49 | 配置数据/生成物/进包一致 + 类字段齐全 + 迷雾常量与配置同值 |
| B54 | SAM 拦截：迎面/横穿命中、尾追逃逸；红样本 3 组 |
| B55 | 百分比伤害 + 斩杀线；红样本 3 组 |
| B56 | `AirDefCfgRt` 四入口：红盘/蓝盘/命中率/装填节奏 |

调参标准动作（只改一个文件）：

```bash
# 改 assets_r6t007/game/buildings/Buildings.json 里三个建筑块的字段
python3 tools/gen_air_defense.py          # 刷 AirDefCfg + 进包 Buildings.json + 镜像
cp build/assets/game/buildings/Buildings.json /tmp/stage_v89/assets/game/buildings/
python3 tools/fmo.py gate                 # 4/4 绿
# 出包（模板=上一版 APK，18 分钟量级，FUSE 写 841MB）
```
