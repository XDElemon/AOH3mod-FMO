---
name: fmo-air-motion
description: FMO 真实飞行运动学（M1d/v103 验收）：AirCraft 轨迹内核（速度/转弯率/fuel）、AirMotion 每任务状态机与帧钟换算、AirPos 连续坐标与平滑、三种坐标空间（Real/世界/屏幕）与 getCenterX_Real 的坑、机头 180−heading 的素材约定、暂停必须自查 GameThread.play（RealTimeSim 绕过 update 门）、到点"命中即掉头"不停车、AirLab 调参、B44/B46 闸门。任何要动飞机移动/转向/机头/暂停/到点行为或排查"飞太慢、不转弯、方向反、到点停住、暂停还在飞"的批次都先读它。
---

# FMO 真实飞行运动学（M1d，v103 验收）

> M1 的位置真源最终形态：**飞机不再按省插值，而是每帧由 AirCraft 在世界坐标里推进**。
> 旧口径（M1b 用计时器插值）已淘汰；`fmo-air-rewrite` 只留总览与历史，细节看本文。
> 闸门：B44（AirPos）、B46（运动学 6 组行为 + 6 红样本）。

## 1. 数据流（唯一真源链）

```
AirMission.update
  └─ moveDivisionAlongFlight（每 tick）
       ├─ AirMotion.step(mission)        # 1) 推进运动学、写 outX/outY + flightProgress
       ├─ AirPos.record(mission, outX, outY)   # 2) 连续坐标表
       └─ Game.setProvinceID_Point(...)   # 3) 派生出"当前省" airDivisionAtProvinceID
渲染/点选/雷达：
  ProvinceDrawArmy.drawAirDivisionAsPlane → AirPos.fixX/fixY
  AirIcons.prepare/pick → AirPos.fixX/fixY
  drawAircraftRadar / AirRadarPlane → AirPos.fixX/fixY
```
- `AirMotion` 只从 `moveDivisionAlongFlight` 进入；**不要**在绘制里推进（会跑两次帧）。
- 位置只认 `AirPos`；省字段只是派生量（雷达/防空/面板读它）。

## 2. 三种坐标空间（错一个就"飞机消失"）

| 空间 | 取值 | 用途 |
|---|---|---|
| **Real（未缩放）** | `Province.getCenterX_Real()` | 只做距离/像素换算类计算；**不能**当坐标真源 |
| **世界（AirPos 空间）** | `getCenterX()`（= Real × `MapBG.iMapScale`）**+ `getShiftX()`** | `AirPos`、`setProvinceID_Point`、`getAirDrawPosX` 的逆运算 |
| **屏幕** | `(world + mapCoords.pos) × mapScale` | 绘制/点选 |

- v98 翻车：`AirMotion` 目标点用了 `getCenterX_Real()` ⇒ 差一个 `iMapScale` 倍，飞机飞出屏幕。
  B46 有静态断言：**AirMotion 代码里出现 `getCenterX_Real/getCenterY_Real` 直接红**。
- 换算一律用 `AirMotion.worldCx/worldCy`，不要在别处自己乘。

## 3. 机头：素材机头朝左 + libgdx 逆时针

- 素材（FIGHTER/BOMBER/…）默认**机头朝左**；libgdx `SpriteBatch` 旋转逆时针为正。
- 正确：`旋转 = 180 − AirCraft.heading`（`AirMotion.headingOf`）。
  v99 曾用 `heading − 180`（镜像），表现"水平看着对、斜/上下反"，已修。
- 渲染侧只在 `drawAirDivisionAsPlane` 的 AirPos 修正之后覆盖 heading；旧 `calcHeading`
  仍留给停机/兼容路径，不要拿它算在飞目标。

## 4. AirCraft 常量与调参

| 常量 | 值 | 含义 |
|---|---|---|
| `SPEED_K` | 0.05 | `px/回合 = Speed × 0.05`（800 → 40/回合，邻省 39 ≈ 1 回合） |
| `TURN_BASE` / `TURN_AGILITY` / `TURN_EXP` | 40 / 100 / 1.5 | `ω = (40 + 100×agility^1.5) × TURN_SCALE` 度/回合 |
| `TURN_SCALE` | **0.70**（v103） | 全局机动系数；改"整体手感"只动这一个 |
| `ARRIVE_RADIUS` / `MAX_DT_TURNS` | 2 / 0.5 | 到达半径 / 单帧最大推进（防瞬移） |

- 转弯半径 ≈ `speedPxPerTurn / radians(ω)`；轰炸机半径可接近一个省间距。
- 调参：AirLab（`bash tools/airlab/run.sh`）跑**同一份 AirCraft**；改完 `tuned.tsv` → 机型数据 → 生成器。
- **fuel 尚未参与飞行消耗**（数据 `data/aircraft_models.json` 已 ×1.25 = 10/12/15/30），计划 M6；M1d 用兜底滞空。

## 5. AirMotion 的四个口径（都踩过）

1. **帧钟**：`dtTurns = 帧间隔ms / AirMissileCore.speedDiv()`（= 毫秒/回合），
   `dtMs` 夹在 0..120ms；与飞机/导弹共用同一时间尺度。
2. **暂停自查**：`AirMission.update` 有 `GameThread.play` 门，但 `RealTimeSim.updateFrame()`
   （渲染路径）**绕过它**调 `moveDivisionAlongFlight` ⇒ `AirMotion` 必须自查，暂停时原地冻结，
   并把 `LAST_MS` 推到当下（恢复不补跳）。
3. **状态门控**：反射读 `state.ordinal()`（PLANNING0/EN_ROUTE1/EXECUTING2/RETURNING3/COMPLETED4/ABORTED5），
   只有 1/2/3 推进；`state` 是嵌套枚举，Java 桩里是 Object，**不能直接读字段**。
4. **到点不停车**：`HIT` 标记与状态机无关 —— 接近目标中心（步长+8）就永久改朝基地；
   恰好停在目标点当帧补一步朝基地。**不要**依赖"EXECUTING→RETURNING"切换（v101/v102 两次翻车），
   也**不要**做通场/绕圈（用户明确否）。返航会有 1 个转弯半径内的过冲，属预期。

## 6. AirPos（B44）

- 512 槽、按 `missionID`、20s stale；`record(worldX,worldY)` 每 tick 写；`fixX/fixY(object,original)`
  拿不到就**原样返回**（调用点不加分支）。
- 内部是**自适应指数平滑**：`tau = 相邻记录间隔 × 0.35`，夹 12–120ms。
  **不要按速度外推**（外推会冲出几百单位再弹回 = 抽搐）。
- 读档要 `AirPos.clear()` + `AirMotion.clear()`（`LoadSavedGameManager` 已接）。

## 7. 闸门

| 闸门 | 脚本 | 内容 |
|---|---|---|
| **B44** | `tools/gate_air_pos.py` | 真 AirPos + 桩：记录/取回、平滑收敛、世界→屏幕、未知任务/开关/clear 回退 |
| **B46** | `tools/gate_air_motion.py` | 真 AirCraft+AirMotion+桩：换目标真的转弯、机头=切线、4 倍距离≈4 倍帧数、PLANNING/EXECUTING、AirPos 一致、暂停冻结、到点不停车；**6 红样本** |

## 8. 排查速查

| 现象 | 先看 |
|---|---|
| 飞机起飞后消失 | 坐标空间（是不是用了 `_Real`）；`AirMotion.worldCx/worldCy` |
| 机头方向不对 | 是否写成 `heading−180`；素材朝向 |
| 到点停住 | `HIT` 是否生效；是否又依赖了状态切换 |
| 暂停还在飞 | `isPaused()` / `GameThread.play`；`RealTimeSim` 路径 |
| 速度不随距离变 | `flightProgress` 是否还在被旧计时器覆盖；`getSpeedScaleBase` 的下限夹取 |
| 转弯太灵/太钝 | `AirCraft.TURN_SCALE`（全局）或机型 `Agility`（数据） |

## 附：v109/v110 两条硬口径（2026-10-28 真机事故）

1. **单帧位移上限 12px**（`AirMotion.MAX_STEP_PX`）：高倍速下 `dtTurns` 会被放大，`speed×dtTurns` 一帧可 20+px，
   两个省中心只差 39px ⇒ 两帧就"到点"，画面像"刚飞出去就回来了"。
   修法：按本机速度反推夹 `dtTurns = min(dtTurns, 12 / speedPxPerTurn)`。
2. **到家即收尾**：原版只在 `state==RETURNING && 当前省==基地省` 结算；飞机常停在隔壁省
   （日志 `at=6359 home=6360` 连刷几十帧）。现在 `hit && (EN_ROUTE|EXECUTING) && atHome` 时
   反射把 `state` 推到 `RETURNING`，并用 `progress=1` 兜底。
3. **HIT 生命周期**：`HIT` 只按 missionID 记、从不清；missionID 会复用（日志出现负数 mid）⇒
   `create()` 时必须 `HIT.remove(id)`，且要求"距出生点 ≥8px"才允许判定到点。
