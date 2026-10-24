---
name: fmo-air-rendering
description: FMO 雷达盘渲染（本项目最曲折的一块）：飞机盘与建筑盘共用同一离屏 FrameBuffer、整帧一次合成（α 常量 0x3d9fd659、屏上净 0.15）、屏锁像素投影不切、纬度压扁 ry=AirLat.r、Java↔smali 的 Object 桥、B24/B25/B26 三道闸门的精确口径、真机验收与历代翻车点。任何要动雷达盘/合成/投影/透明度的批次都先读它。
---

# FMO 雷达盘渲染

**最终形态（v45/v46，照抄别自己推）**：飞机盘和建筑盘都画进**同一张**离屏 FBO，FBO 内 α=1.0，`end()` 里整图**只合成一次**。

```
drawAircraftRadar(SpriteBatch)        # ProvinceDrawArmy.smali:4586，原版方法 +2 行钩子
  ├─ invoke-static {v14}, AirRadarBld;->drawAll(Object)V      # :4592  ← 唯一钩子
  │     ├─ 遍历 AirForceManager.radarProvinces（只要本国的省）
  │     ├─ 半径 = RadarDataManager.getRange(MIDCOURSE_ABM=2400 / RADAR=600 / ABM_SITE=300) × scale
  │     ├─ 盘心 = ProvinceDrawArmy.getAirDrawPosX/Y(pid, scale)      # 屏幕像素
  │     ├─ 压扁 ry = AirLat.r(rx, prov.getCenterY_Real())
  │     └─ RadarOverlay.drawDiscAny(sb, cx, cy, rx, ry)   # 每盘先 begin（幂等）再 drawDisc
  ├─ RadarOverlay.begin(v14)                 # :4658（此时已是 no-op）
  ├─ 逐任务 drawDisc(v14, 插值盘心X, 盘心Y, rx, ry)          # :4773 飞机盘，平滑跟随
  └─ RadarOverlay.end(v14)                   # :4780 整图合成一次
FBO 内：α=1.0，后画覆盖先画 ⇒ 重叠处饱和不变亮
```

调用方：`ProvinceDrawArmy:1517 → drawAircraftRadar`；`drawAirForce` **每帧被调 2 次** ⇒ 每帧合成 2 次 ⇒ 单次 α 必须按 `1-(1-a)²=0.15` 取，即 **a≈0.078**。

## 1. 关键常量（当前值，改之前先对闸门）

| 项 | 值 |
|---|---|
| 合成 α | `0x3d9fd659`（≈0.07805；2 次合成 ⇒ 屏上净 **0.15**） |
| 降级路径 α | `RadarDisc.draw` 同值 `0x3d9fd659`（否则 FBO 失效时亮度跳变） |
| FBO 内画盘 α | `0x3f800000`（1.0，不透明；半透明会 per-disc 叠亮） |
| AD 红层 α | `RadarBitmap.draw` 里 `0x3dcccccd`(0.1) —— 蓝层已全撤，只剩红层 |
| 合成矩形 | `draw(fbRegion, 0, -CFG.GAME_HEIGHT, CFG.GAME_WIDTH, CFG.GAME_HEIGHT)` ⇒ 变量是 (0, -H, W, H)，**1:1 像素，不许除 scale** |
| FBO 尺寸 | `CFG.GAME_WIDTH / CFG.GAME_HEIGHT`（`Gdx.graphics` 在 resize 后过期） |
| 全树 α 出现次数 | `0x3d9fd659` 恰好 **2 处**（合成 1 + 降级 1）—— B25 硬断言 |

## 2. 坐标与投影（先记住这 4 条，能省掉两天）

1. **`drawAirForce` 内部不设投影**（`ProvinceDrawArmy` 全类零 `setProjectionMatrix`）。进入时已是调用方 `Renderer.resetScale` 设好的**屏幕像素投影**。
2. 该投影：`camera.setToOrtho(false, GAME_WIDTH, -GAME_HEIGHT)` + `viewport.setWorldSize(W,H)` + `apply()` ⇒ 可视世界 `x∈[0,W]`、`y∈[-H,0]`，**y 向上，1 世界单位 = 1 物理像素**。
3. **不要自己切投影**：自己设 `setToOrtho2D` 会让 FBO 上下颠倒（`fbRegion` 在 `ensure` 里已 `flip(false,true)`）。
4. `getAirDrawPosX/Y` 返回**屏幕像素**（已乘 `mapScale`、已加地图平移）；`Image.draw` 内部 `y=-(sy+h)`，与 `RadarDisc.draw` 的 `y=-(cy+ry)` 同一约定 ⇒ 盘与飞机贴图天然重合。

## 3. 类职责

| 文件 | 角色 |
|---|---|
| `src/java/.../province/AirRadarBld.java` | **建筑盘入口（Java 真源）**：过滤本国省、取半径、算盘心/压扁、调桥。B26 检查它是否含 `getAirDrawPosX/Y`、`AirLat.r`、`civ` 过滤、`2400/600/300` |
| `src/smali/.../province/RadarOverlay.smali` | FBO owner：`begin`（幂等：`active==true` 直接 return）/ `drawDisc` / `end`（合成）/ `drawDiscAny`（Java 桥）。**手写 smali，已登记 `baseline/smali_exceptions.txt`** |
| `src/smali/.../province/RadarDisc.smali` | 逐盘降级绘制（FBO 不可用/单位盘没建出来时走），α 与合成层同值 |
| `src/smali/.../province/RadarBitmap.smali` | 原版建筑雷达整图烘焙类；**蓝层烘焙/绘制已全部撤掉**，只剩 AD 红层（`B24①②` 会查有没有残留） |
| `ProvinceDrawArmy.smali` | 原版类，只允许"接线级钩子"（+2 行），不许加分支/算术 |

`RadarOverlay.end()` 的顺序（错一步画面就歪）：

```
active==false → return            # 没成功开过 FBO 绝不能碰后缓冲
active=false                      # 先复位，异常也不会二次合成
sb.end() → fb.end()               # 关 FBO
Renderer.viewport.apply()         # ★ fb.end() 会把 glViewport 重置成整个 backbuffer
sb.begin()
setColor(1,1,1, 0x3d9fd659) → draw(fbRegion, 0, -GAME_HEIGHT, GAME_WIDTH, GAME_HEIGHT)
```

## 4. Java ↔ smali 的桥（`drawDiscAny`）

桩生成器 `tools/gen_java_stubs.py` 把树外类型统一退化成 `Object` ⇒ Java 侧**只能** invoke `(Ljava/lang/Object;IIII)V`。所以桥必须：

```smali
.method public static drawDiscAny(Ljava/lang/Object;IIII)V
    .registers 6
    move-object v0, p0                       # ★ 不许直接 check-cast p0
    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    invoke-static {v0}, RadarOverlay;->begin(SpriteBatch;)V
    invoke-static {v0, p1, p2, p3, p4}, RadarOverlay;->drawDisc(SpriteBatch;IIII)V
    return-void
.end method
```

- `.registers 6`（v0 局部 + p0..p4）：用 `.registers 5` 直接写 `check-cast p0` 会被 `lint_verifier` 判红，真机是 VerifyError。
- 顺序：**先补 smali 桥，再跑 `build_java.sh`**（桩生成器只认磁盘上已存在的 `.smali`）。

## 5. 闸门口径（改之前先读 `tools/gate_behavior.py` 的 `check_air_v42_*`）

| 断言 | 内容 |
|---|---|
| B24① | `RadarBitmap.refresh` 里不许再出现 `drawRadarEllipse`（建筑盘必须走同一 FBO） |
| B24② | `refresh` 里不许留蓝层烘盘颜色 `(0.2,0.2,1.0)` |
| B24③ | `drawAircraftRadar` 必须调 `AirRadarBld->drawAll` |
| B24④ | `RadarOverlay` 必须有 `drawDiscAny` 桥（Java 只有 Object 形参） |
| B24⑤ | 桥必须 `move-object` 中转，不许直接 `check-cast` 参数寄存器 |
| B25① | `RadarOverlay` 里 `0x3d9fd659` 恰好 1 处 |
| B25② | `RadarDisc` 降级 α 必须同值 |
| B25③ | FBO 内画盘必须 `0x3f800000`（不透明），否则叠亮 |
| B25④ | 全树 `0x3d9fd659` 恰好 2 处（合成 + 降级） |
| B26 | `AirRadarBld.java` 必须含 `getAirDrawPosX/getAirDrawPosY/AirLat.r/getCivID()!=myCiv/2400/600/300` |

改闸门本身也算改口径：先**人为弄红**（改代码 → 看断言报错 → 复原），再提交，否则闸门会退化。

## 6. 真机验收口径（不是"看着有圈就行"）

1. 飞机盘与建筑盘**一模一样**：同一条路径、同一张图、同一透明度；
2. 盘心 = 该空中任务当前所在省中心，半径 = 存活飞机最大 `radarDetect`；
3. 多个盘重叠处**不变亮**（后填覆盖先填）；
4. 建筑蓝盘与 AD 红盘照旧（红层 α 0.1）；
5. **不该出现**：盘整体消失、飞机盘比建筑盘深或浅、跟着飞机飞的圆环、盘随缩放漂移；
6. 某任务所有飞机 `radarDetect` 都是 0 ⇒ 不画盘（数据口径，不是 bug）。

## 7. 历代翻车点（每条都真出过事）

1. **合成坐标除了 scale**（v43c"盘被带偏"的真因）：FBO 尺寸是像素、批坐标是世界单位，但**合成是 1:1 像素搬运**，除 scale 会把整屏缩到左上角。
2. **自己设投影**：FBO 出来上下颠倒（`fbRegion.flip` 已经处理过一次）。
3. **`fb.end()` 重置 `glViewport`**：letterbox / 悬浮窗下合成四边形自己就错位，必须补 `Renderer.viewport.apply()`。
4. **FBO 尺寸用 `Gdx.graphics`**：resize 后是过期值 ⇒ 一律 `CFG.GAME_WIDTH/HEIGHT`。
5. **合成次数算错**：`drawAirForce` 每帧 2 次；按 1 次算 α 会让屏上亮度翻倍（0.078 vs 0.15）。
6. **FBO 内用半透明画盘**：per-disc 混合 ⇒ 重叠越叠越白（v39/v40 的老毛病）。
7. **`begin` 没有幂等守卫**：飞机任务为空时 FBO 根本没开，建筑盘就画不进去 ⇒ 把 begin 折进 `drawDiscAny`，靠幂等守卫摊薄成本。
8. **中段插 smali 前不确认寄存器已定义**（v43 的 `sput` 插在 `v15` 赋值前 → VerifyError 闪退）。
9. **只信静态闸门**：ART 校验器错误抓不全，真机崩溃只认 `adb logcat -b crash -d`。

## 8. 已知遗留

- `RadarBitmap` 里死 `sget`（`bmpW/bmpH/minX/minY/rangeX/rangeY/mapScaleI`）与 `dbgPix` 可能每帧扫 13 万次 `getPixel` —— 蓝层撤掉后可以删（低优先级，删前先看 B24/B25 是否依赖这些符号）。
- `drawAircraftRadar` 现在"只删绘制调用后的残余算术"：每帧仍遍历任务算中心 + `calcRadarRy`（纯算术无 GL）；要省 CPU 得动 `drawAirForce` 调用方，属于跨批次改动。

> 方案史（别重走）：v39 逐盘绘制（叠亮）→ v40 离屏 FBO（投影/坐标错，盘不见）→ v41 透明度 0.2→0.1 → v42 建筑盘烘进地图纹理（钉在省中心、逐省跳）→ v43 回到每帧 FBO 平滑跟随 → v45/v46 统一成"同一 FBO + 单次整图合成 + 净 0.15"。


## 9. v50：红盘接入后的真实结构（2026-10-23 起）

`drawAircraftRadar` 现在有**三个**挂点，顺序即层序：

```
drawAircraftRadar(sb)
  ├─ AirRadarAD->drawAll(sb)         # 敌方/己方 AAA 省的火力圈（红）
  ├─ AirRadarBld->drawAll(sb)        # 本国雷达省的探测圈（蓝）
  ├─ 任务循环：begin + 逐任务 drawDisc（蓝飞机盘）+ end 前的红盘独立一遍
  └─ AirRadarPlane->drawAllMissions(sb)   # 己方任务的空空导弹射程圈（红），不信蓝盘循环的守卫
      → RadarOverlay.end(sb)              # 整图合成一次
```

**为什么红盘要"独立一遍"**：红盘原来挂在蓝盘循环里，而那串 legacy 守卫
（`isMyMission → sourceAirport → target≥0 → at≥0 → airhqKey/getKeyOrd∈[0,4) → 省存在`）
会把大量任务整段掐掉（`getKeyOrd` 在 v37 后已是死逻辑）；`at<0`、`modelAid<0`、
`aid&3==3`（轰炸机）还有各自的静默跳过。红盘独立遍历 `AirForceManager.activeMissions`
才不会跟着蓝盘一起消失。

**防空红盘口径**：v50 起**不再区分敌我**（玩家自建 AAA 也要看到覆盖圈）；半径仍是
`100`（同省有 RADAR/LONGWAVE 时 `130`）Real × `MapBG.iMapScale` × scale，与
`AirDefense.inRange` 的命中判定同源。

## 10. 排查这类问题的正确姿势（血泪）

1. **不要靠"探针包"反复试**：仓库里有 `tools/gate_behavior.py` 的 smali 解释器，
   拿着**装机 dex**（baksmali 反汇编后）直接跑目标方法 + mock 环境，能直接看到
   "走哪个 return / 真调了什么参数 / 抛什么异常"。B26 就是这么做的。
2. **设备日志的坑**：
   - `RadarDiag`/`AirDbgLog` 这类日志有行数上限（曾设 400），**加载期会把它刷爆**，
     之后的记录全部丢失 ⇒ 探针要么按 tag 限额，要么带帧号。
   - `adb-shell` 会把**带空格的 grep pattern 拆坏**（`"^RDT AD "` 查不到、`"RDT AD"` 能查到）
     ⇒ 先粗查 `grep RDT`，再本地过滤；不要相信"0 行"。
3. **删绘制块要整块删**：v46 漏删 `move-object/from16 v6, p0`、v48 漏删
   `move-object v7, v0`（v0 已变 float）→ ART `VerifyError`，一建雷达建筑就闪退。
   汇编器和静态闸门都抓不到；B30/B31 是为此加的，但**真机最坏路径仍要跑一遍**。


## 11. 导弹系统（v56~v65 定稿）

两套时钟，一个状态位 `msFxInit`（0=未初始化 / 1=屏内逐帧 / 2=停用）：

```
发射（AirMission.missileTick）
  · strikeKind=1、strikeTargetMissionID、msFlyHours=AirMissileCore.flightHours(距离,射程,速度)
  · seedFx()：把 msFxX/msFxY 设为**飞机贴图位置**（世界坐标），否则 (0,0) 永远判屏外
  ├─ 屏内：drawAirMissileFx → msFxStep（逐帧推进 + contact 判定）→ msFxContact（结算）
  └─ 屏外：missileTick 小时钟按 msFlyHours 推进 → 到达/丢失
```

**坐标契约（只许换算一次）**

| 字段 | 空间 |
|---|---|
| `msFxX/msFxY`、省中心 `getCenterX_Real` | 世界 |
| `getAirSpriteX/Y`、`getAirDrawPosX/Y` | 屏幕（`(world+pos)*zoom`） |
| FBO 内坐标 | 像素 |

`drawAirMissileFx` 里已有一处内联"屏幕→世界"换算（`div scale / sub cam / float-to-int`），
**不要再调用 `sx2wx/sx2wy` 做第二次**（v63 就是这么错的，目标点偏 5.35 万 px）。

**接触极性（v64 修）**：`msFxStep` 里那段是

```smali
v9 = AirMissileCore.notContact(...)   # v64 起用 notContact（= !contact）
if-eqz v9, :msc                       # 未接触 → return（继续飞）；接触 → 结算
```

原代码调的是 `contact`，语义反了：**未接触反而结算**，`msFxInit` 立刻变 2，绘制门 `if-ne fx,1` 永不通过。
门禁不许改原版类分支 ⇒ 只能"换被调用的 Java 函数"。

**踩过的坑**：`if-nez` 是"非零跳转"、`if-eqz` 是"零跳转"（v62 读反过）；
`flightHours` 旧公式把**射程**放进分母（射程越小飞越久），v57 改成 `距离/速度`。

**遗留**：`:9820 if-gtz HPT` 与"`drawAirForce` 每帧两次"互相抵消（改一边速度会翻倍）；
导弹是 14×14 白方块（`Images.pix`），无专用贴图。
