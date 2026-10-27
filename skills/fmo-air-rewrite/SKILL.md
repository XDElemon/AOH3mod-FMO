---
name: fmo-air-rewrite
description: FMO 空军重写（红警/ICBM 式，v91–v95 已实现 M1）：把"基于陆军的逐省编队"改成"连续世界坐标的实体"。含 AirCraft 轨迹内核（速度/转向率/fuel）、AirPos 连续位置表与自适应平滑、飞机图标/选中圈/蓝红盘的正确改点、三个必踩的坑（死方法 drawAirMissionFlyingPlane、编队图标其实是陆军图元、外推导致前后抽搐）、AirLab 调参台用法、B44 闸门。任何要动飞机移动/图标/雷达盘跟随/拦截前置的批次都先读它。
---

# 空军重写（红警 / ICBM 式）

> 2026-10-26 立项。用户口径：**不要逐省移动（那是陆军的逻辑）**，飞机要连续世界坐标、
> 直接朝目标飞、点哪飞哪。M1（连续移动）已在 v95 真机验收。
> 设计稿：`/sdcard/GLG/DSHA/空军重写_设计_v1.md`；验收卡：`验收卡_M1b.md`。

## 1. 数值口径（定稿，改之前先看 B44/验收卡）

| 项 | 值 |
|---|---|
| 速度 | `px/回合 = Speed × 0.05`（800 → 40/回合；邻省 39 单位 ≈ 1 回合） |
| 转向 | `ω = 40 + 100 × agility^1.5` 度/回合（截击 19 / 战斗 22 / 攻击 36 / 轰炸 46 单位半径） |
| 燃料 | `fuel` = 滞空回合数（战斗 10 / 截击 8 / 攻击 12 / 轰炸 24） |
| 时间 | 1 回合 = 2 小时；**按回合记账，不许硬编码 24** |

实测地图：13,892 个省，省中心最近邻距离中位数 **39 Real 单位**（这就是"1 个省间距"）。

## 2. 代码结构

| 文件 | 作用 |
|---|---|
| `src/java/.../battles/AirCraft.java` | 纯数学轨迹内核：`step(dtTurns, tx, ty)`、`turnRateFor(agility)`、`sampleRoute()` |
| `src/java/.../battles/AirPos.java` | 连续位置表：`record(Object,int,int)` + `fixX/fixY`（渲染侧取坐标）+ 自适应平滑 |
| `AirMission.moveDivisionAlongFlight` | 逻辑层本来就在"源省中心→目标省中心"直线上按 `flightProgress` 插值，再用 `Game.setProvinceID_Point` 反查"当前省"；v91 起在这里 +1 条 `invoke-static AirPos.record` |
| `ProvinceDrawArmy.drawAirDivisionAsPlane` | **飞机图标 + 选中圈**真正画在这里；v93 起坐标改读 `AirPos` |
| `ProvinceDrawArmy.drawAirGunFx / drawAirMissileFx / drawAdMissileFx` | 弹迹起点（12 处 `fixX/fixY`） |
| `ProvinceDrawArmy.drawAircraftRadar` | 任务**蓝盘**盘心 |
| `AirRadarPlane.java` | 导弹射程**红盘**盘心 |

## 3. 三个必踩的坑（血泪，别再踩）

1. **`drawAirMissionFlyingPlane` 是死代码**：全树 0 调用者（grep 过），名字最像"画飞行中的飞机"，
   改它没用。真正的图标在 `drawAirDivisionAsPlane(sb, x, y, key)`。
2. **飞机图标是陆军编队图元**：任务把 `airhqDivision`（`ArmyDivision`）`addArmy` 到省，
   过省界 `removeArmy + addArmy` ⇒ 图标画在**省的军队槽位**上，这就是"逐省跳"的根源。
   `drawProvinceArmyWithFlag` 里用 key 前缀 `airhq_` 判断，交给 `drawAirDivisionAsPlane`。
3. **不要按速度外推位置**：位置是每 tick 一跳（相邻记录常是"隔 16ms 跳 10 单位"），
   按这个速度外推会冲出 200+ 单位、下一帧被拉回 ⇒ 屏幕上"沿航线前后抽搐"。
   用**指数平滑**，且 `tau` 要**按相邻记录间隔自适应**（`tau = interval × 0.35`，夹 12–120ms），
   否则 5 倍速（45ms 一跳 40 单位）追不上，表现为顿挫。

## 4. 改渲染坐标的正确姿势

- `AirPos.fixX/fixY(mission, original)`：**拿不到连续坐标就原样返回**，调用点不用加分支；
- **参数寄存器不许用 `move-result` 写**（lint 会判真机 VerifyError）：先 `move-result v3` 再 `move p1, v3`；
- 原版类每批新增行数 ≤40（`gate_java_first` 的 `--hook-max-lines`），钩子注释/空行也算，
  必要时空行去掉；
- 选中圈原版在方法**开头**用槽位坐标画，必须挪到坐标修正**之后**；
- 敌我识别圈/血条/旗标与图标同段绘制，**不要整段跳过**（用户明确要求保留圈）；
- 盘有两套：任务蓝盘在 `drawAircraftRadar`（smali）、导弹射程红盘在 `AirRadarPlane.java`，
  两处都要改，否则盘和图标脱节。

## 5. AirLab 调参台（改数值前先在这里试）

```bash
bash tools/airlab/run.sh          # 编译 AirCraft + AirLab，起 http://127.0.0.1:8765/
```

- Java 当后端算物理（和游戏同一份 `AirCraft`），页面只负责画 —— **浏览器跑不了 Java**；
- 点画布任意位置 = 设目标，飞机固定在画布中央（相机跟随）；左侧可改 Speed/Agility/Fuel；
- 顶部有**物理自检**：JS 跑 20 步与 Java `/api/sim` 对比，显示"✓ 与 Java 一致"才算数；
- `保存参数` 写 `tools/airlab/tuned.tsv`；`tools/airlab/extract_models.py` 从
  `data/aircraft_models.json` 抽带 `fuel` 的机型到 `models.tsv`。

## 6. 闸门 B44（tools/gate_air_pos.py）

真 `AirPos.java` + 桩（AirMission/Game/MapScale/MapCoords/AirDbgLog），6 组断言：
记录/取回、平滑收敛（不过冲、不受自适应 tau 影响）、世界→屏幕换算、未知任务/开关关闭/clear 后回退原值。
红样本：把 `worldOf` 改回"按速度外推"或删掉回退分支，断言会红。

## 7. 下一步（M1c → M7）

- **M1c 彻底脱离陆军**：不再 `addArmy`，编队只活在 `AirPos`/"当前省"派生量里；
- M2 弹药实体化（`msFx*/adFx*` 搬出 `AirMission` 字段）；
- M3 实时拦截（**反导阵地只拦核弹头 + 飞机**，可脱靶）；
- M4 AGM（接 S8 拆建筑）、M5 核弹头、M6 生产/出击、M7 AI/存档。

详细见 `baseline/待办_空地导弹与战略打击_v1.md` 的「空军重写」章。

## 8. M1c 已实现（v96）：空军不再进省军队列表

> 待真机验收。验收卡：`/sdcard/GLG/DSHA/验收卡_M1c.md`；台账「M1c 实现记录」。

**接线方式（一个入口搞定全部）**

| 位置 | 作用 |
|---|---|
| `Province.addArmy` 的 `airhq_` 分支 | 改道 `AirDivStore.put(province, division)` 后 `return-object`，**不进 `lArmies`**。sync/dedup/place/returnHome 全部自动生效 |
| `AirDivStore.java` | 注册表：`put/getArmy/keyId/removeArmy/byKey/provOf/size/keyAt/clear`；`keyId` 返回 0/-1 保持原 `if-ltz` 语义 |
| `AirIcons.java` | `prepare()` 每帧算在飞任务（`airDivisionAtProvinceID>=0`）+ 停机编队（注册表无在飞任务）的屏幕坐标（`getAirDrawPosX/Y` → `AirPos.fixX/fixY`），带屏幕裁剪；`pick(x,y)` 命中中心 `(x+20,y+20)`、半径 45×scale；`setDgFor(key)` 重设 `dgAir*` |
| `AirUx.smali`（例外清单） | `drawAll` 循环调 `drawAirDivisionAsPlane`；`trySelect` **先 `clearActiveArmy()`** 再建 `HoveredArmy{iArmyID=-1}`（`getActiveDivKey` 只读 `[0]`）；`keepActive` 保留空军选中；`reassert` 每帧补选；两者都写 `selectedAirportProvinceID=sourceAirport.provinceID` |
| `LoadSavedGameManager` | 读档 `at=-1`（防 RETURNING 首 tick 误判回基地）+ `AirPos.clear()` + `AirDivStore.clear()` + `sweepGhosts()`（显式清洗旧档省列表的 airhq） |

**M1c 的 4 个新坑**

1. **Java 不能直接调带 libgdx 形参的 smali**：桩把 `SpriteBatch` 退化成 `Object`，descriptor 不匹配 ⇒ 真机 `NoSuchMethodError`。用 `AirUx` 桥透传。
2. **选中会被每帧清掉**：`drawProvincesArmy_Just` 对 `iArmyID<0` 的 activeArmy 调 `removeActiveArmy`；空军天然 -1，必须换成 `AirUx.keepActive`。
   **再加两道保险**：①`trySelect` 必须先 `Game.clearActiveArmy()` 再 add（`getActiveDivKey()` 只读
   `activeArmy[0]`，否则选中项落到 `[1]`，圈/面板全对不上，表现是"选中一帧后消失"）；
   ②`AirUx.reassert()` 在 `drawAll` 开头补选（activeArmy 空且有 selKey 时只补列表、不重开菜单）。
   它的极性必须写成 **`if-eqz v0, :orig`**（startsWith==0 才跳去删）；写成 `if-nez` 会把空军当陆军删掉——表现为"选中一帧后消失"。
   这个 bug 是 B45 新增的 **Dalvik 真跑**抓到的，静态断言全绿也挡不住。
3. **下单门 `selectedAirportProvinceID`**：点选飞行任务必须设成 `sourceAirport.provinceID`，否则 `handleProvinceClick` 直接 return。
4. **命中别用省槽位**：用 `AirPos` 屏幕坐标 + 中心 `(x+20,y+20)`；**停机编队也要能点**
   （`pick` 扫 `AirDivStore`，坐标与 `prepare()` 同一套偏移，否则"停着的飞机点不中"）。
5. **点选失效能同时毁掉 A6/A10**：不能选中 → 不能下单 → 读档测试也无从谈起（v96 首验就是这卡住的）。

**闸门 B45**（`tools/gate_air_detach.py`）：真 `AirDivStore.java` 行为 + 10 组静态不变量
+ **AirIcons 行为 12 例**（真源码 + `tools/gate_air_icons/` 手写桩：过滤/裁剪/坐标/pick/setDgFor）
+ **AirUx 字节码真跑 9 例**（drawAll 调用约定 / keepActive 极性 / trySelect 三分支）+ 10 条红样本
（唯一入省口改道 / moveAlong 不动省军队 / 三个闸门已拆 / divLimit+pickIdle+sync 读注册表 /
渲染+选中+保活钩子 / 读档清表且 at 不 hard-set / 例外登记）。
