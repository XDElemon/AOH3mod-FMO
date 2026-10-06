# AD-3 第二轮调研（弹迹机制 + 迷雾谓词）· 定稿输入

## 1) 飞机导弹弹迹的完整机制（要照抄的对象）
### 1.1 (AirMission 上的) 状态字段
`msFlyHours:I`、`msFxDbgMs:J`、`msFxInit:I`、`msFxLastScale:F`、`msFxSpd:F`、`msFxTH:I`、`msFxTN:I`、`msFxTX:[F`、`msFxTY:[F`、`msFxTgtAt:I`、`msFxVX:F`、`msFxVY:F`、`msFxX:F`、`msFxY:F`
⇒ 结构：一个“飞行中的弹”（msFxX/Y、速度 msFxVX/VY、速度 msFxSpd）+ 一条尾迹缓存（msFxTX/TY 数组、容量 msFxTH、当前长度 msFxTN、飞行进度 msFxTgtAt/msFxInit）
### 1.2 (ProvinceDrawArmy 上的) 静态字段
`msFxPrevMs:J`、`msFxFrameDtMs:J`（帧间�差异，共享的帧计时）
### 1.3 方法族（ProvinceDrawArmy，均已定位）
- `drawAirMissileFx(SpriteBatch,AirMission)` 行 **2920**（入口，守卫 + 坐标换算）→ 调 `msFxStep` → 若 `msFxInit==1` 调 `msFxDrawTrail`，其后还有一段（本方 civ 判定）
- `msFxDrawTrail(SpriteBatch,AirMission)` 行 **8509**
- `msFxFrameDt()` 行 **8611**
- `msFxStep(AirMission,IIII)` 行 **8656**（x1,y1,x2,y2 —— **参数化坐标，可被 AD 直接复用或拷贝**）
- `msFxTrailAdd(AirMission,FF)` 行 **8907**
- 调用点：行 **2066**（空军绘制流程中，逐 mission）

## 2) 迷雾谓词（已确认）★
- `Province.fogDrawArmy:Z` 就是“这个省处于迷雾（被遮住）”标志
- `PlayerFogOfWar.setFogOfWar(provinceID, state)` 实现就是 `invoke Game.getProvince(id) → iput-boolean state → fogDrawArmy`
- ⇒ **“在迷雾外面” = `province.getFogDrawArmy() == false`**
- 非迷雾期间（例如场景不启用迷雾）该字段恒 false ⇒ 行为自然退回可见

## 3) AD-3 定稿设计（待施工）
### 3.1 接口（照抄口径 A③/B②/C迷雾/D尾迹黄）
- **新增字段（AirMission，ad 前缀，与 msFx* 完全隔离）**：`adFxInit:I`、`adFxTH:I`、`adFxTN:I`、`adFxTX:[F`、`adFxTY:[F`、`adFxX:F`、`adFxY:F`、`adFxSpd:F`、`adFxSrc:I`（发射省 id）、`adFxLastScale:F`
- **新增方法（ProvinceDrawArmy）**：`adFxStep(AirMission;IIII)V`、`adFxDrawTrail(SpriteBatch;AirMission;)V`、`adFxTrailAdd(AirMission;FF)V`（= 照抄 msFx* 版本，字段改 adFx*，**尾迹 tint 改黄**）
- **新增入口（ProvinceDrawArmy）**：`drawAdMissileFx(SpriteBatch;AirMission;)V` —— 守卫：`adHitAt>0` 且 `adFxInit==1` 且 `adFxSrc>=0`；坐标：源 = `getAirDrawPosX/Y(adFxSrc,scale)+20`，目标 = 本体 mission 的 `getAirSpriteX/Y`（或退化到 `airDivisionAtProvinceID`）；**迷雾门：`Game.getProvince(目标省).getFogDrawArmy()==false` 才画**
- **调用点**：紧接行 2066 的 `drawAirMissileFx` 调用之后，加一行 `drawAdMissileFx`（Δ=+1，符合“只增不减”）
- **发射登记**：`AirDefense.scheduleHit(AirMission;F)V` 里写入 `adFxSrc=开火省 id`、`adFxInit=1`、重置 `adFxTN/TH`（数组按需新建）⇒ 弹迹从发射持续到到达（B②）；`tickHits` 到达时清 `adFxInit=0`
### 3.2 颜色（D）
- 弹头：**照抄飞机导弹**（不变）
- 尾迹：**黄色**（具体 RGB 到第三轮从 `msFxDrawTrail` 的 setColor 常量位置确认后换值）
### 3.3 待第三轮补齐
- `msFxDrawTrail` 全文（贴图字段、tint 常量、尾迹绘制方式）
- `msFxStep` 的推进公式（帧差/速度/进度）
- `msFxTrailAdd` 的环形缓存规则
- 寄存器分配表（每个拷贝方法的 .registers 与借用寄存器）与逐字锚点
- 门禁断言 + 行为级模拟器（判定点位） + 负样本

## 4) 已知风险
- 拷贝体量大（约 400 行 smali，三个方法）⇒ 必须分步施工、每步跑静态检查（params/regtype/castorder）再合批
- `msFxFrameDt()` 是**方法名无参**，但内部用静态 `msFxPrevMs/FrameDtMs`；AD 版可**直接复用**（帧计时是全局的），不必拷贝
- 数组字段 `[F` 需在发射时 `new-array`（避免 null）
