---
name: fmo-air-rewrite
description: FMO 空军重写总览（红警/ICBM 式）：把"基于陆军的逐省编队"改成"连续世界坐标的实体"。M1 已全部验收（位置真源/连续移动/脱离陆军/真实运动学 v103），M2 起做弹药实体化（类型表已建 v104）。含整体架构（AirMission/AirCraft/AirMotion/AirPos/AirDivStore/AirUx）、关键口径与历史坑索引、M2–M7 路线、闸门清单。动空军任何一块先读它，再按主题跳 fmo-air-motion / fmo-missile-types / fmo-air-rendering 等专题。
---

# 空军重写（红警 / ICBM 式）—— 总览

> 2026-10-26 立项；2026-10-27 **M1 全部真机验收**（v103）。
> 用户口径：不要逐省移动；飞机连续世界坐标、直接朝目标飞、点哪飞哪；
> 机动=真实转弯半径；航程=fuel；敌我识别圈/选中圈必须保留。
> 设计稿：`/sdcard/GLG/DSHA/空军重写_设计_v1.md`。

## 0. 现状

| 阶段 | 内容 | 状态 |
|---|---|---|
| M1a | `AirCraft` 轨迹内核（速度/转弯率/fuel）+ AirLab | ✅ |
| M1b | `AirPos` 连续位置表（+自适应平滑）、图标/圈/盘改读 | ✅ v95 |
| M1c | 脱离陆军：编队不进省，图标/圈/点选自绘（`AirDivStore`/`AirUx`） | ✅ v97 |
| M1d | 真实运动学：`AirMotion` 接管位置/朝向/时长；到点不停车、暂停冻结 | ✅ v103 |
| M2 | 弹药实体化：先建**导弹类型表**（v104），再建 `AirProjectile` 内核 | 🟡 类型表已完成 |
| M3–M7 | 实时拦截 / AGM / 核 / 生产操作 / AI+存档 | 待做 |

## 1. 架构（谁是谁）

**逻辑层（Java，除标注外都在 `src/java/aoc/kingdoms/lukasz/map/battles/`）**

| 文件 | 作用 |
|---|---|
| `AirCraft.java` | 纯数学：位置/朝向/速度/转弯率/fuel，`step(dtTurns, tx, ty)`（`TURN_SCALE` 调整体机动） |
| `AirMotion.java` | **每任务飞行状态机**：初始化/帧钟推进/目标切换/HIT 标记/暂停/进度回写/机头输出 |
| `AirPos.java` | 连续位置表：`record` + `fixX/fixY`（渲染/点选/雷达同源），自适应平滑 |
| `AirDivStore.java` | 空军编队注册表（M1c）：替代"进省军队列表"；`sweepGhosts` 清旧档 |
| `AirIcons.java` | 每帧算要画的图标（在飞+停机）、屏幕裁剪、点选命中、`dgAir*` 接力 |
| `MissileTypes.smali`（生成） | M2 导弹类型表（7 类参数）——见 `fmo-missile-types` |

**渲染/交互层（smali）**

| 位置 | 作用 |
|---|---|
| `ProvinceDrawArmy.drawAirDivisionAsPlane` | **飞机图标+识别圈+选中环**唯一绘制入口（内部 AirPos 修正坐标/机头） |
| `ProvinceDrawArmy.drawProvincesArmy` 尾部 | 挂 `AirUx.drawAll`（每帧一次，与旧省循环同位） |
| `AirUx.smali`（例外清单） | `drawAll` / `trySelect`（先 clear 再 add）/ `keepActive` / `reassert` |
| `AirRadarPlane` / `drawAircraftRadar` | 导弹红盘 / 任务蓝盘盘心（都读 AirPos） |

## 2. 关键口径（细节见专题技能）

| 项 | 口径 | 专题 |
|---|---|---|
| 速度 | `px/回合 = Speed × 0.05`（800→40，邻省 39≈1 回合） | `fmo-air-motion` |
| 转向 | `ω=(40+100×agility^1.5)×TURN_SCALE` 度/回合（TURN_SCALE=0.70） | 同上 |
| 时间 | 帧钟：`dtTurns = dtMs / AirMissileCore.speedDiv()`；1 回合=2 小时 | 同上 |
| fuel | `data/aircraft_models.json`，已 ×1.25（10/12/15/30）；**尚未参与飞行**（M6） | 同上 |
| 坐标 | Real ≠ 世界；世界 = `getCenterX()`（=Real×iMapScale）+ shift | 同上 |
| 机头 | 素材朝左 + libgdx 逆时针 ⇒ 旋转 = `180 − heading` | 同上 |
| 暂停 | 必须自查 `GameThread.play`（RealTimeSim 绕过 update 门） | 同上 |
| 到点 | `HIT` 标记与状态机无关：接近目标即改朝基地，**不停车/不通场/不绕圈** | 同上 |
| 选中 | 先 `clearActiveArmy` 再 add（`getActiveDivKey` 只读 `[0]`）；每帧 `reassert` 兜底 | 本文 §3 |
| 导弹类型 | 中段雷达只探测不发射；反导阵地只拦核弹头；防空(SAM)拦飞机 | `fmo-missile-types` |

## 3. M1c 的两条"选中"血泪

1. **`getActiveDivKey()` 只读 `activeArmy[0]`**：选中前必须 `Game.clearActiveArmy()`，
   否则空军项落到 `[1]`，圈/面板对不上 ⇒ 观感"选中一帧就没了"。
2. **每帧会被 `drawProvincesArmy_Just` 清掉**（它按 `iArmyID<0` 删）：空军天然 -1，
   必须把 `removeActiveArmy(I)` 换成 `AirUx.keepActive`；再加 `AirUx.reassert` 每帧补选。

## 4. 历史坑索引（都已修，别再踩）

- `drawAirMissionFlyingPlane` 是死代码；真入口 `drawAirDivisionAsPlane`。
- 飞机图标曾是"陆军编队图标"（省槽位）⇒ 逐省跳的根源；M1c 已脱离。
- 按速度**外推**会抽搐；只能用 AirPos 自适应平滑。
- 两套盘（任务蓝盘 smali / 导弹红盘 Java）都要改，否则盘心脱节。
- Java **不能**直接调带 `SpriteBatch` 形参的 smali（桩是 Object，descriptor 不匹配）⇒ 用 `AirUx` 桥。
- `getCenterX_Real()` 是未缩放坐标；坐标真源必须用 `getCenterX()+getShiftX()`。
- 机头 `heading−180` 是镜像；正确 `180−heading`。
- 任务进度原来是固定计时器（`getSpeedScaleBase` 还夹 600~3000）⇒ 距离不影响时间；M1d 已改为按航程。
- 到点停顿不是渲染问题：v101/v102 依赖"EXECUTING→RETURNING"切换都复现；v103 用 `HIT` 标记解决。

## 5. 路线（M2–M7）

| 步 | 内容 | 验收 |
|---|---|---|
| **M2** | 弹药实体化：**类型表（已完成）** + `AirProjectile` 独立表 + 现有 A2A/AD 发射改 `spawn(type)`（双跑一版） | 多弹同飞、各追各的、类型参数生效 |
| M3 | 实时拦截 v1：防空阵地拦飞机、反导阵地拦核弹头（中段雷达**只探测**）；发射→追踪→几何接触/脱靶 | 敌机进红圈看到拦截弹起飞、命中或打空 |
| M4 | AGM 对地弹：发射→飞行→拆建筑（接 S8）；常规弹不被反导拦 | AGM 飞过去把楼拆了 |
| M5 | 核打击链路：核弹头实体→被 ABM 拦 / 落地爆炸（复用 `RendererAnimationNuke`） | 核弹被拦或看见爆炸 |
| M6 | 生产/出击循环 + 面板操作 + **燃油真正参与** | 红警式：造→出击→回来补弹 |
| M7 | AI 同一套 API + 存档扩展（在飞单位/弹药） | 读档空情还在；AI 自己组织出击 |

## 6. 闸门

`python3 tools/fmo.py gate` 4 道全绿；与空军相关的：

| 闸门 | 内容 |
|---|---|
| B41/B42 | 雷达盘裁剪 / 建筑摧毁（S8） |
| **B44** | AirPos（tools/gate_air_pos.py） |
| **B45** | 空军脱离陆军（tools/gate_air_detach.py）：注册表行为 + 静态不变量 + AirUx 真跑 |
| **B46** | 真实运动学（tools/gate_air_motion.py）：转弯/切线/距离计时/暂停/不停车 |
| **B47** | 导弹类型表（tools/gate_missile_types.py）：数据/生成物/口径/能力映射 |
| 其余 | B48（M2 弹道）待建 |

## 7. 文档索引

- `/sdcard/GLG/DSHA/验收卡_M1c.md`、`验收卡_M1d.md`
- `baseline/待办_空地导弹与战略打击_v1.md`（唯一进度表：S0–S8 + M1–M7）
- 专题技能：`fmo-air-motion`（运动学）、`fmo-missile-types`（导弹类型）、
  `fmo-air-rendering`/`fmo-disc-overlay`（盘）、`fmo-missile-system`（旧 A2A 系统，M2 后逐步退场）、
  `fmo-capability-matrix`（能力）、`fmo-air-tech-tree`（机型表）、`fmo-patch-pipeline`（出包）。
