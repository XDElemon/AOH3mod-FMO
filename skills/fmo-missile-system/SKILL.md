---
name: fmo-missile-system
description: FMO 空空导弹系统（A2A，AirMission.msFx*）：发射门槛（拦截任务/4h 冷却/弹池/邻省或射程）、两套时钟（帧钟推进 vs 小时钟兜底，含已知互斥反转）、msFxInit 状态机、世界↔屏幕坐标单一换算、接触判径 mrr 与伤害结算、Java 核心 + 原版类接线、B8/B9/B10 闸门盲区、真机 nMS 日志与 v56–v66 历代翻车点。任何要动发射/推进/命中/速度/弹体拖尾，或排查"打不出、看不见、不结算、冻结、速度不对"的批次都先读它。
---

# FMO 空空导弹系统

**v66 现状一句话**：导弹 = `AirMission` 上的 `msFx*` 字段 + 一个 Java 纯函数核心 `AirMissileCore`；发射在 `missileTick`，**推进只发生在渲染路径**（`drawAirMissileFx → msFxStep`），命中 = 剩余距离 ≤ `mrr` 后 `msFxContact` 结算，小时钟只做超时兜底。

> 防空弹（AD，`adFx*`）是**另一套独立系统**（字段/推进/绘制/兜底都不共享），只在"帧长、坐标 helper、贴图"处交叉。动 AD 不要照抄本文，见 §12。

## 1. 文件地图与锚点（HEAD `920573f6`，行号会漂，认方法名）

| 文件 | 角色 | 关键方法 |
|---|---|---|
| `src/java/.../battles/AirMissileCore.java` | **逻辑真源**（纯函数） | `advance:31` `contact:53` `notContact:67` `seedFx:91` `speedDiv:140` `gateStep:170` `tintR/G/B:198` `flightHours:256`；`NX/NY` 静态返回通道 |
| `src/java/.../battles/AirMissileGate.java` | 屏内/屏外判定 | `onScreen:18` `advanceMode:29`（`MODE_HOUR=0` / `MODE_FRAME=1`） |
| `ProvinceDrawArmy.smali` | **帧钟 + 弹体/尾迹绘制** | `drawAirMissileFx:4064` `msFxStep:9763` `msFxTrailAdd:9917` `msFxDrawTrail:9616` `msFxFrameDt:9718` |
| `AirMission.smali` | **发射 + 小时钟 + 结算** | `missileTick:4941` `msFxContact:5673` `missileIsNeighbor:4843` `update:8264`（`throttlePass:6715`；调用点 8413 → `missileTick:8431`） |
| `AirModelStats`（生成物） | 按 `modelAid` 取弹参数 | `missileSpeed` `missileRange` `missileRadarRange` `missileCount` `MS_SPD` |

`AirMissileCore.smali` 是 `build_java.sh` 的**产物**，手改会在下次编译被覆盖。

## 2. 参数（按代，真源 `tools/gen_aircraft_models.py` 的 `GEN`）

| gen | 速度 `mspeed` | 接触径 `mrr` | 发射射程 `mrange` | 每机弹数 |
|---|---|---|---|---|
| 3 | 68 | 40 | 100 | 2 |
| 4 | 84 | 55 | 130 | 2 |
| 5 | 102 | 70 | 160 | 4 |
| 6 | 124 | 85 | 190 | 4 |

> `MissileHops` 只写进 `AircraftTypes.json` 面板，**逻辑不读**（别以为它限制"跳几省"）。

- 射程只做**发射门槛**（`missileIsNeighbor`：同省/邻省/Real 距离 ≤ `mrange`），**不进飞行时长**（v57）。
- `mrr` 是**接触半径**：修好后弹体会在离目标 40~85 世界 px 处消失（"近炸"口径未与用户确认，见 §14.3）。

## 3. 一次发射写什么（`missileTick` 发射分支）

触发：**任务类型** `MissionType.INTERCEPT`（机型不限，战斗机也能打）、`state∈{EN_ROUTE,EXECUTING}`、`airDivisionAtProvinceID>0`、弹池>0、距上次发射 ≥ **4 游戏小时**、找到敌国在飞目标且在射程内。

| 字段 | 写入 | 含义 |
|---|---|---|
| `strikeKind` | 1 | 0 空闲 / 1 在飞 / 2 弹尽（dry，只有返航能清） |
| `strikeTargetMissionID` | 目标 `missionID`（long） | 绘制门 + 小时钟查目标 + 结算 |
| `lastMissileHours` | `TURN_ID*24+HOUR` | 冷却与 due 基准 |
| `msFlyHours` | `flightHours(d, r, spd)` = clamp(round(d/spd),1,4)×2 = **2..8h** | 小时钟名义时长（`×2` 只是量级沿用，无 tick 换算，见 §12） |
| `msFxTgtAt` | **目标发射时所在省 id** | 目标任务消失时的回退点；`<0` 则该发弹画不出来 |
| `msFxInit` | 0 | 0 未初始化 / 1 可画可推 / 2 终态（不推不画） |
| `seedFx()` | `msFxX/Y` = **飞机贴图位置的世界坐标** | `world = getAirSpriteX/zoom − mapPos`；取不到回退发射省中心 |
| `msFxTN/TH` | 0 / 15 | 尾迹点数 / 头指针 |

## 4. 状态机（`(strikeKind, msFxInit)`）

```
(0,·) --发射--> (1,0) --首帧初始化块--> (1,1) --notContact==false--> msFxContact --> (0,2)
                   │                        └--目标丢失/超时(小时钟)--> (0,2) 无伤
                   └--弹池<=0--> (2,·) --返航--> (0,·)
```

- `msFxInit=2` 是**终态**：`msFxStep` 入口直接 return，绘制门 `if-ne fx,1` 也不通过。
- `strikeKind=2` 期间该任务**一发都打不出**，直到返航补满（`missilePerPlane` 惰性初始化 = `missileCountOf(aid) × 存活数`）。

## 5. 坐标契约：三种空间，**只许换算一次**

| 数据 | 空间 | 备注 |
|---|---|---|
| `msFxX/Y`、`msFxTX/TY[16]` | **world** | 未缩放地图像素，不含相机 |
| `getAirSpriteX/Y(m)`、`getAirDrawPosX/Y(pid,scale)` | **screen** | `(world + mapPos) × zoom`；`getAirSprite*` 无效返回 **-1**（0 是合法值） |
| FBO / 屏幕像素 | screen | `drawAirMissileFx` 里 `(msFxX + cam) × zoom − 7` |

当前**唯一**换算点是 `drawAirMissileFx` 的内联块（`:4264-4292`，`div-float ... v3` + `sub-float ... cam` + `float-to-int`，v5..v8 各一遍）。v63 曾在它后面又调 `sx2wx/sx2wy`，造成**双重换算**，目标点偏 5.35 万 world px —— v64 删的是第二次。`AirMissileCore.sx2wx/sx2wy` 现在**零调用点**（死代码，别"顺手"加回去）。

尾迹点存 world；`msFxDrawTrail` 逐点投影一次。`drawAirMissileFx` 每帧用**目标贴图当前位置**重算目标点 ⇒ 导弹是追踪的；目标任务没了就回退 `msFxTgtAt` 省中心。

## 6. 速度（v66 已收口，别再"调速度"）

```
step_ms = MS_SPD / (playSpeedTIME / HOURS_PER_TURN) × dt_ms
          └ AirDefense.msSpd() 读的全局静态，由当前任务第一架活机的 missileSpeed 写入
```

- 分母由 `AirMissileCore.speedDiv()` 算（`playSpeedTIME / HPT`）；原 smali `if-gtz HPT` 在 HPT>0 时**跳过赋值**，HPT=2 被当 1（步进减半）。
- `gateStep(mission, step)`：同一 `missionID` **4 ms 内**重复调用返回 `0f`（`drawAirForce` 默认每帧被调 **2 次**，同一 `msFxStep` 跑两遍）。
- 两个 bug 原先恰好抵消（×1/2 × ×2），v66 用上面两件套复现出**同样的净速度**；只改一边 ⇒ 速度翻倍/减半。
- 实参 `dt` 来自 `msFxFrameDt()`（同毫秒内返回缓存值）。

## 7. 接触与伤害

```
notContact(msFxX, msFxY, tgtX, tgtY, mrr) == false  ⇒  msFxContact
```

- **极性坑**：原 smali 调 `contact()` 但用 `if-eqz`（"为 0 才跳"），语义变成"未接触→结算"。门禁禁止改原版类分支，v64 的修法是**换被调函数**：`AirMissileCore.notContact` 返回 `!contact`，`if-eqz` 原样不动。
- 伤害：`Σ aliveAircraft.airAttack × 2.0 × defenseMul` → `applyAirDamage(target, dmg)`；无论是否造成伤害都清场（`strikeKind=0` / `msFxInit=2`）。
- `contact` 的 `range<0` 退化为 0（必须真正重合）；`mrr=0` 的机型等于"贴脸才爆"。
- AD 弹的接触分支是**正确用法**（审计对照样例），不要把 A2A 的修法套到 AD 上。

## 8. 两套时钟：真实行为 ≠ 注释

| | 帧钟 `msFxStep` | 小时钟 `missileTick` |
|---|---|---|
| 驱动 | 每帧 `drawAirForce`（默认 2 次）→ `drawAirMissileFx` | `AirMission.update` → `throttlePass`（每 `playSpeedTIME` ms） |
| 推进位置 | **是**（逐帧唯一写 `msFxX/Y` 的路径，`:9865/:9867`；初始位置由 `seedFx` 写） | **否**（从不写位置） |
| 接触 | `notContact` → `msFxContact` | 无接触，只有 due 超时 |
| 屏判 | 无（靠调用点门禁，见 §9） | `advanceMode` + `if-nez`（**写反**，见下） |

**当前代码（v66）的互斥块**（`AirMission.smali:4944-4998`）：

```smali
if-ne  v2, 2, :msc_mode   # fx != 2 → 判断模式
goto   :msc_hour          # fx == 2 → 交给小时钟收尾
:msc_mode
... advanceMode(...) → v2
if-nez v2, :msc_hour      # ★ mode != 0（屏内 MODE_FRAME=1）→ 进小时钟
return-void               # ★ 屏外 MODE_HOUR=0 → 直接 return
```

复跑：`python3 skills/fmo-missile-system/probe_missile_tick.py`。

`if-nez` 是"**非零**跳转"，`MODE_FRAME=1`，所以**屏内跑小时钟、屏外什么都不跑**——与紧邻的注释（"屏幕内……小时钟立即让位"）正好相反。该块自 `c9ac6189` 起未改；v63 审计离线复跑已复现，v66 HEAD 复跑仍是：

```
屏内 MODE_FRAME -> applyAirDamage=1  strikeKind=0  msFxInit=2
屏外 MODE_HOUR  -> applyAirDamage=0  strikeKind=1  msFxInit=0   ← 冻结
```

后果：屏内无害（帧钟在推，`msFxStepMs` 新鲜，`due+12h` 门挡住提前结算）；**屏外一旦帧钟停摆就永不结算**，`strikeKind` 卡 1、该任务不再发射。真正的解是审计的 **P1**：把推进移到 `AirMission.update`，渲染只投影（见 §14.1）。改动前不要信注释，只信分支语义。

## 9. 帧钟为什么可能"不推"（`drawAirMissileFx` 的门禁链）

按出现顺序，任一不满足就 `return`（**画不画 = 推不推**，这是 P1 要拆的耦合）：

1. 调用方 `myOrDetectedMission`：不是我的、也没被探测到的任务，根本不进来；
2. `strikeKind==1`、`strikeTargetMissionID!=0`、`AirForceManager/activeMissions` 非空；
3. `airDivisionAtProvinceID>=0`、`mapScale!=null`；
4. 本机 `getAirSpriteX/Y < 0` → return；目标贴图无效则回退目标省/`msFxTgtAt`，省 `<0` 或 `getAirDrawPosX<0` → return；
5. `mapCoords!=null`；
6. `msFxStep` 内部：`gameThread.play`、Esc 菜单不可见、`msFxInit!=2`；
7. 回到绘制：`msFxInit==1`（`:4315`）才画尾迹与弹体。

注意第 4 条**只判 `<0`，不判 `>W/H`**：源机/目标机从**左/上**出屏会停推，从**右/下**出屏照推 —— 不是视口裁剪，别再按"裁剪"去改。

## 10. 改代码 SOP（导弹专用约束）

1. **先分类**：数值 → `data/aircraft_models.json` + 生成器；逻辑 → `src/java/AirMissileCore.java`；接线 → 原版类 smali。
2. 逻辑改完：`bash tools/build_java.sh AirMissileCore`（生成 smali；`<clinit>` 等自动带上）。Java 侧**不能引用 libgdx 类型**（桩生成器把树外类型退化成 `Object`）——所以着色拆成 `tintR/G/B` 返回 float，由 smali 调 `setColor`。
3. 原版类（`ProvinceDrawArmy`/`AirMission`）只许 **invoke/sget/sput/iget/iput/const/move/return**；不许新增分支/算术（`gate_java_first`）。
   - 要翻转极性 ⇒ 在 Java 加取反函数换 invoke（`notContact` 先例）；
   - 要把乘法挪走 ⇒ Java 收（`gateStep` 先例）。
4. 改调用目标/协议时，**同步改 B10**（它是字符串断言），并且**先造红样本**再改绿。
5. 每批加 `baseline/allow_v<NN>.txt`，跑 `gate_change_scope`；出包/台账/推送走 `fmo-patch-pipeline`。

**寄存器禁区**（`drawAirMissileFx` 弹体段）：`v5=Images.pix`、`v6=SpriteBatch`、`v7/v8=(x,y)`、`v9/v10=(w,h)` 是 `Image.draw(SB;IIII)V` 的 varargs，**不能用 v6/v10 装颜色/中间值**；v66 着色用 `v2/v3/v4`，alpha 复用 `v2`（`tintR` 恒 1.0）。写坏 v6 的第一次就发生在 v66。

## 11. 闸门覆盖与盲区

| 断言 | 覆盖 | 抓不到 |
|---|---|---|
| B8 | `AirMissileGate.onScreen` 四组合（含相机/zoom） | 调用点极性 |
| B9 | `advance`/`contact`/`flightHours`/`advanceMode` 纯函数 | 接线、坐标换算次数、smali 分支 |
| B10 | `msFxStep` 必须调 `advance/notContact/NX/MS_SPD/missileRadarRange`；`missileTick` 必须调 `advanceMode/flightHours` 且互斥在推进前 | **分支极性**（它曾把 `contact` 的写法固化）、换算次数 |
| B11 | 机炮表 | 导弹 |

**B34/B35 仍不存在**（审计 §5.4 建议）：B34 = 用解释器真跑 `msFxStep` 的接触真值表 + "绘制路径不得调推进"；B35 = `missileTick` 屏外必须能兜底。加闸门前先写负样本（把 `notContact` 换回 `contact`、把 `if-nez` 改回去），必须变红。

**离线复跑**（仓库自带 Dalvik 解释器，1 秒级）：

- `gate_behavior.Interp` + `_run_static`；mock 表：`Game.gameThread{play=true,playSpeedTIME=250}`、`HOURS_PER_TURN`、`menuManager=None`、`AirDefense.msSpd=67.5`、`AirModelStats.*=68/40`、`System.currentTimeMillis` 固定、`AirMission.msFxContact` 只记 invoke；
- 跑 `msFxStep` 需要把 `long-to-float` 预翻 `int-to-float`；跑 `missileTick` 需要把 `cmp-long/sub-long` 预翻 `sub-int`、`iget-wide/iput-wide` 预翻 `iget/iput`；
- 审计附录 C（`/sdcard/GLG/DSHA/fmo_missile_system_audit_v1.md`）有 `msFxStep` 的完整脚本，照抄改参数即可；
- **现成探针**：`skills/fmo-missile-system/probe_missile_tick.py`（只读、1 秒）直接给出 §8 的两行结果与 verdict；修好互斥块后它会变成"已修复"，可当回归哨兵。

## 12. 真机日志与验收

日志（游戏自己写，非探针）：`/sdcard/Android/data/age.of.history3.qiamxi.zhiri/files/aircfg_diag.txt`
落盘是**每行 open/write/flush/close**（`AirDbgLog.dWrite`；`dKey` 走 logcat，旧噪声家族 1/64 采样）。
`dbgOn` 在 `boot()` 置 true ⇒ **日志常开，不需要探针包**；热点路径每行开一次文件，长时间跑会拖慢，验收完记得清。

| 行前缀 | 含义 | 怎么用 |
|---|---|---|
| `nMS fire t= h= left= ammo= tgt= d= ft=` | 发射成功 | 有 fire 无后续 = 卡在绘制/推进 |
| `nMS init p= n= g= hpt= t=` | 弹池惰性初始化 | 确认每机弹数 |
| `nMS hit t= h=` | **接触结算**（`msFxContact` 写；小时钟兜底不写这行，写 `fb`） | 紧跟 fire ⇒ 极性/mrr 异常 |
| `nMS fb t= h=` | 小时钟兜底 | 按当前代码只有**屏内**才可能出现 |
| `nMS lost t= h=` | 目标先死，无伤清场 | 正常 |
| `nMS gx id=` | 首次真正画到弹体 | 有 fire 无 gx ⇒ 绘制门没过 |
| `nMS dry` | 弹尽 | 等返航 |

设备侧限制：`adb-shell` 禁管道/重定向/变量；`grep` 带空格的模式会失效（用 `tail -n 300` 或 `grep -c nMS` 这类无空格模式）。

**验收口径**（缺一条就不算过）：

1. 弹体从**飞机贴图位置**出现，朝目标飞，随地图**平移/缩放**（world 锚定，不"粘屏"）；
2. 命中时目标 HP 在弹体消失附近下降（不是发射帧）；
3. 我方白 / 敌方红（**尾迹仍是白色**，v66 没改）；
4. 弹头 20×20、拖尾 5×5；速度与 v65 观感一致；
5. `logcat -b crash -d` 干净（ART VerifyError 只在这里现形）；
6. 边界：源机/目标机从左/上出屏时**允许**出现 §8 的冻结（已知缺陷，不是本批回归）。

## 13. 历代翻车点（每条都真出过事）

| 批次 | 错在哪 | 教训 |
|---|---|---|
| v56 | 以为没发射，探针显示 **三代确实在发射**，只是 `ft` 8~12h | 先量，再猜 |
| v57 | `flightHours` 把**射程**放分母 ⇒ 射程越小飞越久 | 射程只做门槛 |
| v58/v59 | FX 起点用省中心 / 直接拿屏幕坐标当世界坐标 | 起点 = 飞机贴图位置（world） |
| v60-v61 | 探针在门槛之前，抓的全是"没导弹的任务"；`PAINT=0` 被误读成透明度 | 探针要放在**门之后** |
| v62 | 把 `if-nez` 读成"零跳转"，白加 `beginFx` | `if-nez` = **非零**跳转 |
| v63 | 内联换算后又调 `sx2wx` ⇒ 目标偏 5.35 万 px | 同一层只换算一次 |
| **v64** | 真因：`contact` + `if-eqz` 极性反了；`beginFx` 掩盖初始化 | 极性 bug 只换被调函数，不翻分支 |
| v66 | 着色写坏 `v6`（`Image.draw` 的 varargs），自查后改 `v2/v3/v4` | 先数清寄存器用途 |

## 14. 已知遗留（按优先级，别当新 bug 修）

1. **P1 解耦**：推进搬进 `AirMission.update`（每帧一次、与相机无关），渲染只投影；同时修掉 §8 的互斥反转。风险中等，需重写尾迹采样与接触。
2. **存档不存导弹**（D9）：读档后 `strikeKind/msFxX/...` 全 0 ⇒ 在途弹消失、弹池被补满（save-scum）。`Save_AirMission` 加字段对旧档向后兼容（`setIgnoreUnknownFields(true)`），但要补 round-trip 测试。
3. **mrr 近炸**（D10）：40~85px 处消失是否为产品意图未确认；三选一（改判径 / 加爆炸闪光 / 明确"导引头截获"）。
4. **死代码**：`beginFx`、`sx2wx/sx2wy`、`msFxSpd/VX/VY`、`strikeProgress`、`flightHours` 的 `missileRange` 参数；`drawAirMissileFx` 里旧着色块（`:4325-4360`）已被 `tint*` 覆盖，改它无效。
5. **`MS_SPD` 全局静态**：跨任务污染隐患，取不到 aid 时沿用上一发的值；新逻辑优先把速度当参数传。
6. **同省可发射**：`missileIsNeighbor` 同省返回 true，与"同省用机炮"的口径不一致（未确认是否有意）。
7. 弹体是 `Images.pix` 方块（20×20），没有专用贴图。

## 15. 三条红线

1. **不要为了"看得见"去改绘制门/初始化块的分支**——v56~v63 八批都栽在这里；先跑离线真值表。
2. **不要同时改速度公式的两半**（`speedDiv` 与 `gateStep`），否则速度必翻倍/减半。
3. **不要让渲染门禁决定命中**：任何"推进挪位置"的改动，先问"镜头移开还算不算"。
