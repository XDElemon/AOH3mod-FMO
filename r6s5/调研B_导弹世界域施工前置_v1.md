# 调研 · 方案B（导弹世界域改造）施工前置（v1）

> 调研时间：2026-09-25 12:30｜范围：**只读调研，未改一行 smali**｜基线版本 r5c044（已装机、已验收）
> 目标：把"飞机导弹 FX"的弹体与尾迹从**屏幕坐标**改为**世界坐标**（用户已选定方案 B），
> 在动手之前把「能不能改、改哪里、要花多少寄存器、会有什么副作用」全部查实。

## 一、结论速览（先看这 8 行）

1. **可行**：方案 B **不需要新增任何字段**、**不需要新增方法**（如需可读性，可选加 2 个小 helper），
   只改 `ProvinceDrawArmy` 内 **3 个位置**，合计约 **40 条指令**。
2. `msFxStep`（推进逻辑 8978-9110）**完全不用改**——它本身**与坐标域无关**（不读相机、不读屏幕尺寸、不做边界裁剪），
   换域后同一段数学直接成立。
3. `msFxTrailAdd`（尾迹 9143-9216）**也不用改**——同样是纯几何（16 点环、4 单位间距）。
4. 需要改的只有「**入口换算**（屏幕→世界）」「**尾迹投影**（世界→屏幕）」「**弹体投影**（世界→屏幕）」三处。
5. **零存档风险**：`Save_AirMission`（`SaveGameManager$Save_AirMission`）字段清单里**没有任何 `msFx*`**，
   全树 `*Save*.smali` 也搜不到 `msFx` ⇒ FX 状态**根本不落存档**，改语义不会破坏旧档。
6. **零 schema 风险**：B 复用现有字段（`msFxX/msFxY/msFxTX/msFxTY`），不新增字段 ⇒ 不触碰存档/反射/混淆面。
7. `msFxVX` / `msFxVY` 是**死字段**（全树除声明外 **0 引用**）⇒ 本批不用；若将来要存"上帧相机"（方案 A 的做法）它们就是现成容器。
8. 有 **2 个设计取舍**需要你拍板（见 §九），其余全部已定。

## 二、坐标系公理（本次调研的地基，含证据行号）

| 事实 | 证据 | 说明 |
|---|---|---|
| 屏幕 = `(世界 + 相机) * 缩放` | `ProvinceDrawArmy.getAirDrawPosX(IF)`（6452）：`(Province.iCenterShiftX + Game.mapCoords.getPosX()) * nScale`；`getAirDrawPosY`（6480）同构（用 `iCenterShiftY + getPosY()`） | **世界域 = 省中心 `iCenterShift?`，单位＝未缩放地图像素**；相机 `mapCoords.iPosX/iPosY` 与之同单位（否则不会先加再乘） |
| 相机取值的单位口径 | `MapCoords.getPosX()`（558）直接返回私有字段 `iPosX`（567 处的 `getPosY` 返回 `iPosY`），无二次换算 | 确认"先加后乘"里的 `getPosX` 是**未缩放**量 |
| 缩放取值 | `MapScale.getCurrentScale()`（394）返回 `currentScale`；`STANDARD_SCALE = 1.0f`（`<clinit>`），`MINSCALE = 0.01f`，`MAXSCALE = 20.0f` | 正常游玩通常 `scale ≈ 1`，缩放会偏离 1 ⇒ 屏幕域错误在缩放时最明显 |
| **逆变换在引擎里不存在** | 全树搜"先 `div-float` 再叠加 `mapCoords`"的写法：**命中 0 处** | 「屏幕→世界」必须自己写：`world = 屏幕 / 缩放 − 相机` |
| 飞机屏幕坐标的三条来源 | `getAirSpriteX`（6508）：① 段内进度 lerp 分支（6528-6551，**屏幕域整数 lerp**：两次 `getAirDrawPosX` 后 `sub/mul/div/add`）；② 军队挂靠分支（6570 `getArmyPosX(省, armyIdx)`）；③ 省回退（6580 `getAirDrawPosX(省, scale)`）。`getAirSpriteY`（6588）同构 | ①②③里 **②** 的坐标约定与 ①③**不同**（见 §八 风险①） |
| `getArmyPosX` 的额外项 | `getArmyPosX`（6949）：`(iCenterShiftX + Province.getTranslateProvincePosX() + ArmyDivision.iShiftX_Scaled) * scale`；`iShiftX` 另有未缩放版 | 多出 `iTranslateProvincePosX`（`Province.smali` 私有字段，构造置 0；全树仅 `Game.smali` 5 处 setter 调用 17995/18022/18067/18222/18283）⇒ 游戏期恒定 |

**FX 现状（错误域）**：`msFxX/msFxY`、`msFxTX/msFxTY` 存的是**屏幕坐标**；相机平移/缩放时不重投影 ⇒ 滚动地图时"粘在屏幕上跟着走"（详见 `r6s5/调研_导弹动画坐标域_v1.md`）。
**B 的目标域**：这四个字段改存**世界坐标**，投影只在"画的那一刻"做。

## 三、改造可行性审计（逐项查实）

### 3.1 字段面
| 字段 | 读写点（行号） | B 需要动吗 |
|---|---|---|
| `msFxX` / `msFxY` | 写：9015? 否 → 9034/9035（步进）、9079/9080（初始化）；读：9002/9003（步进）、8937/8940（绘制） | **语义改世界**（不增不删） |
| `msFxTX` / `msFxTY` | 写：9154/9156（建数组）、9195/9196（环写）、9210/9211；读：8883/8885（取引用）、8900/8901（环读） | **语义改世界** |
| `msFxInit` | 写：9015（=2 到达）、9103（=1 就绪）、6093（发射复位 0）；读：8996、8878 | 不动（与坐标域无关） |
| `msFxSpd` | 写：9101；读：9022 | **语义随域变化**（世界单位/秒，见 §七 风险③） |
| `msFxTgtAt` | 写：6091；读：8841/8859 | 不动（快照省 ID，与域无关） |
| `msFxLastScale` | 写：8873；读：8870 | 不动（钩子保留，见 §九 取舍②） |
| `msFxTN` / `msFxTH` | 多处（8881、8887、8914 前后、9105/9107、9158/9160、9166-9213） | 不动（环缓冲游标） |
| `msFxVX` / `msFxVY` | **全树 0 引用（死字段）** | 本批不用（备用容器） |
| `msFxDbgMs` | 读：8957；写：8971（暂停节流日志） | 不动 |

### 3.2 存档面（关键否证）
- `SaveGameManager$Save_AirMission.smali` 的实例字段共 22 个（`airhqKey, aliveIDs, animElapsedMs, assignedIDs, attackRoundsExecuted, civID, distanceToTarget, enemyAircraftShotDown, flightProgress, lingerRounds, lostIDs, maxAttackRounds, maxLingerRounds, missionID, roundsInFlight, sourceProvinceID, state, targetAirUnitIDs, targetArmyID, targetProvinceID, totalDamageDealt, type`）⇒ **无一个 `msFx*`**。
- 全树 `*Save*.smali` 中搜 `msFx`：**0 命中**。
- ⇒ FX 运行态**不落存档**；读档后 `msFxInit=0` 会在首帧重新初始化（与现状一致，行为不变）。

### 3.3 封闭性（改动不会外溢）
| 符号 | 调用点数 | 位置 |
|---|---|---|
| `msFxStep` | **1** | `ProvinceDrawArmy:8877`（`drawAirMissileFx` 内） |
| `msFxTrailAdd` | **2** | 9036 / 9108（都在 `msFxStep` 内） |
| `drawAirMissileFx` | **1** | `ProvinceDrawArmy:1957`（`drawAirForceMissions` 内，紧邻机炮 FX 调用） |
| `getAirSpriteX` / `getAirSpriteY` | **各 3** | 8570/8576（机炮 FX）、8814/8822/8832/8850（导弹 FX）⇒ **共享，语义不得改** |
| `getAirDrawPosX` / `getAirDrawPosY` | **各 27** | 全树多处 ⇒ **共享，语义不得改** |

### 3.4 寄存器预算（`.registers` 不得上调——铁律【1】，smali 2.5.2 硬顶 v15）
| 方法 | 行 | `.registers` | 实测最大 v 号 | 余量 |
|---|---|---|---|---|
| `drawAirMissileFx` | 8772 | 16 | v13 | v14 / v15（另有多段临时空闲，见 §四） |
| `msFxStep` | 8978 | 16 | v10 | 充足（且**不改**） |
| `msFxTrailAdd` | 9143 | 14 | v10 | 充足（且**不改**） |
| `getAirSpriteX` / `getAirSpriteY` | 6508 / 6588 | 11 | v7 | 不改 |
| `getAirDrawPosX` / `getAirDrawPosY` | 6452 / 6480 | 5 | v1 | 不改 |

## 四、B 的精确改造点（施工图：3 处）

### 改动点 ①：入口换算（屏幕 → 世界）——插在 **8869 与 8870 之间**
**为什么插在这里**：`+0x14`（20px 视觉偏移，8866-8869）留在屏幕域 ⇒ 换算之后的轨迹形状、偏移量、与"发射机↔目标"的相对关系**与现在逐像素一致**；同时 8870 起的 `msFxLastScale` 钩子与 8877 的 `invoke` 都不受影响。

**该处空闲寄存器实测**：v0（8813 后空闲至 8878）、v1（8825 后空闲至 8879）、v2（8861 后空闲至 8885）、v4、v11、v12、v13、v14、v15 ⇒ 余量很大。
**分配**：`v4`＝`Game.mapCoords` 对象；`v11`/`v12`＝临时（int/float 复用）；`v14`＝camX(float)；`v15`＝camY(float)；`v3`＝scale（保持不动）。

```
:mf_world                      # （示意，实际不新增标签，仅为说明）
sget-object v4, Game->mapCoords ; invoke-virtual {v4}, getPosX()I ; move-result v11
int-to-float v14, v11          # camX
invoke-virtual {v4}, getPosY()I ; move-result v11
int-to-float v15, v11          # camY
# 起点 x（v5）：world = v5/scale - camX
int-to-float v11, v5 ; div-float v11, v11, v3 ; sub-float v11, v11, v14 ; float-to-int v5, v11
# 起点 y（v6）
int-to-float v11, v6 ; div-float v11, v11, v3 ; sub-float v11, v11, v15 ; float-to-int v6, v11
# 目标 x（v7）
int-to-float v12, v7 ; div-float v12, v12, v3 ; sub-float v12, v12, v14 ; float-to-int v7, v12
# 目标 y（v8）
int-to-float v12, v8 ; div-float v12, v12, v3 ; sub-float v12, v12, v15 ; float-to-int v8, v12
```
- 共 **4 + 4×4 = 20 条**。
- **建议加 null 保护**：`sget-object v4, Game->mapCoords` 后 `if-eqz v4, :mf_ret`（与 8811 的 `mapScale` 判空同级处理；`getAirDrawPosX` 自己没有判空，说明现状默认非空，但显式判空更稳）。
- 注意：`mapScale` 已在 8810-8813 判空并取到 `v3`，此处**不要**重复取 scale（重复取也不会错，但没必要）。

### 改动点 ②：尾迹投影（世界 → 屏幕）——替换 **8900-8905**，并在 **8895 之后、`:mf_tloop` 之前**加载 3 个 float
**循环前（8895 之后，v0 此时已用完）**：
```
sget-object v11, Game->mapScale ; if-eqz v11, :mf_skip_trail
invoke-virtual {v11}, getCurrentScale()F ; move-result v14            # scaleF
sget-object v11, Game->mapCoords ; if-eqz v11, :mf_skip_trail
invoke-virtual {v11}, getPosX()I ; move-result v12 ; int-to-float v15, v12   # camXF
invoke-virtual {v11}, getPosY()I ; move-result v12 ; int-to-float v0, v12    # camYF
```
**循环体内（替换原 8900-8905 的 `aget`+`float-to-int`）**：
```
aget v6, v1, v5            # 原样保留
aget v7, v2, v5            # 原样保留
add-float v6, v6, v15      # + camX   ← 新增
mul-float v6, v6, v14      # * scale  ← 新增
float-to-int v6, v6        # 原样保留
add-float v7, v7, v0       # + camY   ← 新增
mul-float v7, v7, v14      # * scale  ← 新增
float-to-int v7, v7        # 原样保留
add-int/lit8 v6, v6, -0x1  # 原样保留（-1px 微调）
add-int/lit8 v7, v7, -0x1  # 原样保留
```
- 净增 **6 条/点**（最多 16 点/帧，成本可忽略）；持久寄存器：`v14`=scaleF、`v15`=camXF、`v0`=camYF（循环体不占用这三者）。
- **不要**复用 v4（循环计数器）、v3（`msFxTH`）、v1/v2（两个数组引用）、v5（环索引）、v8-v13（`Image.draw` 实参）。

### 改动点 ③：弹体投影（世界 → 屏幕）——替换 **8937-8942**
**该处空闲**：v11/v12/v13/v14/v15 与 v0/v1（结果）均可用；`Image.draw` 实参用的是 v5..v10 ⇒ 不冲突。
```
sget-object v2, Game->mapScale ; if-eqz v2, :mf_ret
invoke-virtual {v2}, getCurrentScale()F ; move-result v11              # scaleF
sget-object v2, Game->mapCoords ; if-eqz v2, :mf_ret
invoke-virtual {v2}, getPosX()I ; move-result v2 ; int-to-float v12, v2 # camXF
sget-object v2, Game->mapCoords ; invoke-virtual {v2}, getPosY()I ; move-result v2 ; int-to-float v13, v2  # camYF
iget v0, p1, AirMission->msFxX:F ; add-float v0, v0, v12 ; mul-float v0, v0, v11 ; float-to-int v0, v0 ; add-int/lit8 v0, v0, -0x7
iget v1, p1, AirMission->msFxY:F ; add-float v1, v1, v13 ; mul-float v1, v1, v11 ; float-to-int v1, v1 ; add-int/lit8 v1, v1, -0x7
```
- 共 **约 20 条**（含 3 次取值 invoke）；`-0x7` 的 14×14 居中偏移原样保留。

### 明确**不动**的清单（施工时的红线）
1. 8775-8790 的**运行门**（`strikeKind==1`、`strikeTargetMissionID!=0`、`AirForceManager` 实例与 `activeMissions` 非空、任务匹配循环）⇒ **自动拦截链依赖它们，禁止改动**。
2. 8808-8864 的**端点来源与有效性判定**（仍用屏幕域 helper `getAirSpriteX/Y`、`getAirDrawPosX/Y`；`if-ltz`/`if-gez` 那几处判空）⇒ 语义保持屏幕域。
3. 8866-8869 的 `+0x14` 视觉偏移（留在屏幕域）。
4. 8870-8876 的 `msFxLastScale` 钩子（保留；缩放时清尾迹，属预期行为——见 §九 取舍②）。
5. `msFxStep`（8978-9110）**整体不动**；`msFxTrailAdd`（9143-9216）**整体不动**。
6. `getAirSpriteX/Y`（6508/6588）、`getAirDrawPosX/Y`（6452/6480）**不改一行**（共 60 个调用点，机炮 FX 等共用）。
7. `.registers` **一律不上调**；任何新代码**不得插在 `invoke-*` 与其 `move-result*` 之间**（铁律【3】）。

## 五、参数与阈值表（B 改造后语义变化一览）

| 名称 | 十六进制/值 | 现在（屏幕域） | 改后（世界域） | 影响 |
|---|---|---|---|---|
| 到达阈值 | `0x42800000` = 64.0（比较 dist²，即 dist < **8**） | 距目标 **8 屏幕像素** 判到达 | 距目标 **8 世界像素** | 屏幕上提前/延后 `8×(1−scale)` px 判到达；scale=1 时完全相同 |
| 尾迹最小间距 | `0x41800000` = 16.0（dist < **4** 停止插点） | 4 屏幕 px | 4 世界 px | 缩小地图时尾迹点更密（屏幕上 `4×scale` px 一个） |
| 尾迹步距 | `0x40800000` = 4.0 | 4 屏幕 px | 4 世界 px | 同上 |
| 最短剩余时间 | `0x42000000` = 32.0f（ms） | 32 ms | 32 ms | 不变（与域无关） |
| 初始化进度上限 | `0x3f666666` = 0.9f | 90% | 90% | 不变 |
| 弹体视觉偏移 | `0x14` = 20 | 20 屏幕 px | **仍是 20 屏幕 px**（换算前施加） | 保持逐像素一致 |
| 尾迹点 -1px | `-0x1` | 1 屏幕 px | 换算后施加 ⇒ 仍是 1 屏幕 px | 不变 |
| 尾迹点数 | 16（`0x10`） | — | — | 不变 |
| 每帧最多插点 | 8（`0x8`） | — | — | 不变 |
| 弹体尺寸 | 14×14（`0xe`），居中 `-0x7` | 屏幕 px | 屏幕 px（投影后） | 不变 |
| 缩放来源 | `MapScale.STANDARD_SCALE`=1.0f、`MINSCALE`=0.01f、`MAXSCALE`=20.0f | — | — | scale=1 时改前改后**完全等价** |

## 六、状态与生命周期（B 改造后）

1. **产生**：飞机发射导弹（`AirMission.smali:6086-6096` 写 `msFlyHours`、`msFxTgtAt`，并把 `msFxInit=0 / msFxTN=0 / msFxTH=15` 复位）。
2. **首帧初始化**：`drawAirMissileFx` 取端点（屏幕）→ **换算成世界**（改动点①）→ `msFxStep` 走 `:mfst_init`（9038-9109）：
   - 用 `lastMissileMs` 与 `msFlyHours×playSpeedTIME` 算已飞进度（钳位 0.9）；
   - 在世界域 lerp 出初始位置 → 写 `msFxX/msFxY`（世界）；
   - `msFxSpd = 世界距离 / 剩余时间`；`msFxInit=1`；清尾迹并压入首点。
3. **推进**：每帧 `msFxStep` 按 `msFxSpd × dt` 朝 (tx,ty) 世界点纯追踪（9001-9037，带暂停门 8981-8991）；距离 < 8 世界单位 → `msFxInit=2`（到达，之后只绘制不推进）。
4. **尾迹**：`msFxTrailAdd` 以世界坐标入环（4 世界单位间距、≤8 点/帧、最多 16 点）。
5. **绘制**：改动点②（尾迹 16 点逐点投影）+ 改动点③（弹体投影）——相机平移/缩放**天然生效**，不需要任何"重投影补偿"。
6. **回收**：随 `AirMission` 对象销毁；无存档、无清理点（`msFxTX/TY` 仅在 `msFxTrailAdd` 里惰性建数组）。

## 七、玩家可感知的表现（正常 vs 异常）

| 场景 | 改后**正常**表现 | 若失败会看到 |
|---|---|---|
| 拖动地图（不缩放） | 导弹与飞机、省份**一起平移**，导弹始终盯着飞机看 | 导弹相对屏幕几乎不动、慢慢爬向飞机新位置（＝现状） |
| 缩放地图 | 导弹位置连续、随地图缩放（世界锚定），尾迹按比例缩放 | 缩放时导弹"钉在屏幕上漂移"，或位置跳变 |
| 发射→命中全程 | 从发射机飞向目标机，命中即消失/停止（`msFxInit=2`） | 弹体原地不动、飞到屏幕外、或从屏幕外飞入 |
| 屏幕外 | 端点判无效时回退到省中心（8808-8864 逻辑不变） | 若换算写错域，会出现"导弹出现在省外随机处" |

## 八、失败与回退

- **不出兵/不画 FX**：8775-8790 的门不变 ⇒ 与本次改造无关的"没有 FX"照旧（属正常节流）。
- **本改造可能的失败模式与判别**：
  - ①「拖动后仍随屏幕」→ 换算没生效（改动点①没打上/打错位置）。
  - ②「每帧抖动或跳变」→ 投影用的 scale/相机寄存器被覆盖（改动点②/③里 v0/v11/v12/v13/v14/v15 与循环实参撞车）。
  - ③「导弹起点/终点整体偏移一个常量」→ 端点走了 `getAirSpriteX` 的**军队挂靠分支**（该分支含 `iTranslateProvincePosX`，与省中心口径差一个常量），见 §九 风险①。
  - ④「缩放瞬间尾迹清空」→ 8870 钩子仍生效，**属预期**（要保持就按取舍②决定）。
- **回退**：保留 `ProvinceDrawArmy.smali.pre_r5c045` 备份；装机产物按批次备份；回滚点 = `dbg_signed77_v119_r5c044.apk`（已存 `build_apk/`）。

## 九、风险与待办（含 2 个待你拍板的取舍）

**风险**
1. **军队挂靠分支的常量偏移**：若导弹的起点/终点由 `getAirSpriteX` 的 army 分支（6570-6572 / 6650-6652）返回，则其坐标约定是
   `(iCenterShift + iTranslateProvincePosX + iShift_Scaled) * scale`，用"省中心口径"的逆变换反算会得到**恒定偏移**（`iTranslateProvincePosX` 游戏期不变，只由 `Game.smali` 5 处 set）。
   ⇒ 现象是"导弹整体偏一点"，但**仍然是地图锚定的**（不再跟屏幕走）。若真出现，可在换算处加"世界点必须落在对应省内一定范围内，否则回退省中心"的守卫（本批建议**先不加**，先看实测）。
2. **缩放敏感常量**（8 / 4 / 4 世界单位）：见 §五。scale=1 时与改前完全等价；缩放时观感有差异。
3. **`msFxSpd` 语义变化**：从"屏幕像素/秒"变成"世界像素/秒"，屏幕上速度 ∝ scale ⇒ 缩小地图时导弹看起来更慢（但**仍按 `lastMissileMs` 的时间窗到达**）。这是"地图锚定物体"的正确语义，但与改前观感不同。
4. **逆变换的整数截断**：端点本身是 int 屏幕值 ⇒ 世界端点分辨率 = `1/scale` 世界像素（scale=1 时 1px，scale=0.25 时 4 世界 px = 1 屏幕 px）⇒ **投影后误差 ≤1 屏幕像素**，不可见。
5. **可选精修**（本批不做）：把 `msFxStep` 签名由 `(AirMission;IIII)V` 改为 `(AirMission;FFFF)V`，可消除截断；代价是要改 9004/9006/9072/9077/9088/9091 等 `int-to-float` 为 `move` 及两处 `sub-int` → `sub-float`（约 7 处），收益极小。

**待你拍板的 2 个取舍**
- **取舍①**：到达阈值（8）与尾迹间距（4）是否按 `1/scale` 补偿？—— (a) **不补偿（推荐）**：语义最干净，scale=1 与改前一致；(b) 补偿：与改前观感在任意缩放下一致，但要往 `msFxStep`/`msFxTrailAdd` 传 scale（改动面变大）。
- **取舍②**：8870-8876 的 `msFxLastScale` 钩子（缩放时清尾迹）保留还是移除？—— (a) **保留（推荐）**：改动最小、缩放时尾迹清零不影响正确性；(b) 移除：尾迹在缩放时连续，但要多删一段代码并确认 `msFxLastScale` 无其他用途（实测只有 8870/8873 两处）。

## 十、变更清单摘要（仅规则/参数/判定，不贴代码）

| 项 | 改前 | 改后 |
|---|---|---|
| `msFxX/msFxY` 语义 | 屏幕像素 | **世界像素（未缩放地图像素，不含相机）** |
| `msFxTX/TY` 语义 | 屏幕像素 | **世界像素** |
| `msFxSpd` 语义 | 屏幕像素/秒 | 世界像素/秒 |
| 端点进入 `msFxStep` 前 | 直接传屏幕坐标 | 先做 `world = 屏幕/scale − 相机` |
| 弹体绘制 | 直接按 `msFxX/msFxY` 画 | 先 `(world + 相机) × scale` 再画 |
| 尾迹绘制 | 直接按存储点画 | 逐点投影后画 |
| `msFxStep` / `msFxTrailAdd` 判定逻辑 | — | **完全不变** |
| 运行门 / 端点有效性判定 / 视觉偏移 | — | **完全不变** |

## 十一、关键路径与验收（可证伪）

- **待改文件**：`/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali`（备份 `*.pre_r5c045`）
- **坐标系基线**：`getAirDrawPosX/Y` = `(iCenterShift + mapCoords.pos) * scale`（6452/6480）
- **产物链**：`assemble.sh r5c045` → `verify.sh` → `build.sh` → `install.sh --yes`（装机前先 `df -h /data` ≥3G，铁律【4】）
- **验收（你可自行目视，亦可让我抓样判读）**
  1. **通过**：飞行中**拖动地图** ⇒ 导弹与飞机、省份同步平移，相对位置不变；**缩放地图** ⇒ 导弹随地图缩放、位置连续。
  2. **通过**：发射→命中全程可见，无"原地不动"、无"飞到屏幕外"。
  3. **不通过**：拖动后导弹在屏幕上基本不动（＝现状）；或每帧抖动；或缩放时弹体漂移。
- **异常即失败**：出现 ①②③ 中任一异常表现，按 §八 判别回退。

> 本文件为**只读调研结论**：本次**未改一行 smali**，未生成任何 dex/apk。等你确认 §九 的两个取舍后可开工（届时按常驻规范附【设计逻辑】）。
