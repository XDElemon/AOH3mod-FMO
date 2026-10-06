# AD-3 第一轮调研（开火可见特效）· 只调研、未动手

## 1) 现成可抄的机制：飞机导弹特效 `drawAirMissileFx`
- 位置：`ProvinceDrawArmy.drawAirMissileFx(SpriteBatch, AirMission)`（行 2920–3311，约 391 行，`.registers 16`）
- 调用点：`ProvinceDrawArmy` 行 2066（在空军绘制流程中，逐 mission 调用）
- 前置守卫（缺一即不出特效）：
  1. `mission != null` 且 **`strikeKind == 1`**
  2. **`strikeTargetMissionID != 0`**（记录被打击的目标 mission）
  3. `AirForceManager.instance != null`、`activeMissions != null`
  4. 在 `activeMissions` 中按 `missionID == strikeTargetMissionID` 找到**目标 mission**（找不到也可退到 `msFxTgtAt` 省）
  5. 两端坐标可算：`getAirSpriteX/Y` 或 `getAirDrawPosX/Y(省id, scale)` ≥ 0
- 几何：两端坐标 **+0x14（20px）**，再把“屏幕坐标 → 地图坐标”（`÷scale − MapCoords.pos`）
- 状态与驱动字段（都在 AirMission 上）：`msFxLastScale:F`、`msFxTN:I`、`msFxInit:I`、`msFxTgtAt:I`
- 两个绘制子步骤：
  - `msFxStep(AirMission;IIII)V` —— 推进状态机（每帧调，带 scale 变化重置）
  - `msFxDrawTrail(SpriteBatch; AirMission;)V` —— 画弹迹；仅当 `msFxInit == 1`
  - 其后（截断处）还有一段，根据 `Game.player.iCivID == mission.civID` 决定是否绘制（大概率为“只给本方看”）

## 2) 可用的贴图资产（APK assets/ui，扫过关键词）
- 无 expl*o / missil* / flak* 类专用特效图
- 只有：`atomicBomb.png`、`atomicBombBig.png`（原子弹）、`BOMBER.png`（图标）、`airs_pay_aa.png`（防空付费图标）
- 旧结论仍成立：**不要靠新贴图**，要就复用飞机导弹特效那套画法

## 3) 全树“导弹”字样的类
- `RadarDataManager$RadarTypeData`（雷达数据）、`AirMission`（飞机导弹）、`AirDefense`（我们的 AD）、`ProvinceDrawArmy`（特效）
- 无 `ShapeRenderer`（所以不能画线/圆，只能用贴图精灵）

## 4) AD 侧可用的“时间轴”与落点
- 回合制时间轴：`now = Game_Calendar.TURN_ID + Game_Calendar.HOUR`（与导弹飞行时间同源）
- 已存在字段（r6d203）：`AirMission.adHitAt:I`（到达时刻）、`AirMission.adHitDmg:F`（累加伤害）
- 发射瞬间已知：开火省 id、目标 mission、发射时刻、dmg
- ⇒ 弹迹可画在**发射省 → 目标 mission 位置**之间；因为 AD 是“延迟一回合”结算，弹迹可以持续一整个回合

## 5) 待用户拍板的设计选项（第二轮、第三轮以选定项为准）
- **A 画什么**：①只画阵地的发射闪光 ②只画目标处的命中闪光 ③画“阵地→目标”的弹迹（照抄飞机导弹 trail）④③+命中闪光
- **B 时长**：①只闪 0.5s ②横跨整回合（发射→到达都可见）
- **C 可见性**：①只有自己的阵地开火才可见（对齐雾战）②都可见
- **D 颜色**：①照抄飞机导弹（同贴图同色）②换色区分（例：黄白/青白）

## 6) 用户已拍口径（2026-10-06）★ 以此为准
- **A = ③**：画“阵地 → 目标”的弹迹（照抄飞机导弹 trail）
- **B = ②**：横跨整回合（从发射到到达都可见）
- **C = “迷雾外面（雷达圈里面）所有国家都能看得见”**（注意：不是“只看自己”，而是“看该位置是否处于玩家迷雾外”）⇒ 需要调研迷雾 API
- **D = 弹头颜色不变（照抄飞机导弹），尾迹用黄色**
