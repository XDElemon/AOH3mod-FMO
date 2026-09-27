# speed接入飞行进度 · 实施报告 v1

- 日期：2026-09-12（R4c118）
- 前提：全变量扫描证实 `AirUnit.speed` 全树 **0 读取**（只写未读＝未接入）；规划书 M3/A6＝“飞行进度速率 × Speed/基准 800”。

## 一、调研结论（代码级）
1. **飞行时长＝两套时钟共用基准 `playSpeedTIME × K`**（去程 K=40、返程 K=28）：
   - 任务级：`AirMission.update()` → `flightProgress = animElapsedMs×100/(playSpeedTIME×K)`（clamp 100）；
   - 段级：过省时分配 `airDivSegDurMs`（按距离比，供绘制插值）；
   - 返航：`forceReturn()` → `animElapsedMs = (1−fp)×playSpeedTIME×28`（前跳）。
2. 数据链：`AircraftTypes.json → AircraftTypeData.Speed → AirUnit.speed` 完整；断点在消费端。
3. 实测机型数值（母包）：截击 1000 / 战 800 / 攻 700 / 轰 400。

## 二、实现（补丁 r4c118_patch.py）
- **新增** `AirMission.getLeadSpeedInt()`：取 `aliveAircraft`（空→`assignedAircraft`）首架 speed；异常缺省 800；探针 `nSpd:`。
- **3 处基准统一乘 `（800/leadSpeed）`**（int 运算：先 ×800 再 ÷speed）：
  ① `update()` 进度分母｜② `moveDivisionAlongFlight()` 段时长｜③ `forceReturn()` 前跳量。

## 三、预期时长系数（真实时间）
| 机型 | speed | 系数 | 相对变化 |
|---|---|---|---|
| Interceptor 截击 | 1000 | ×0.8 | 快 20% |
| Fighter 战斗 | 800 | ×1.0 | 基准 |
| Attacker 攻击 | 700 | ×1.143 | 慢 14% |
| Bomber 轰炸 | 400 | ×2.0 | 慢一倍 |

## 四、验证
- 汇编 ✅ ｜ 八检对照：SIG 152172→152176/15、Cast 50=50、Undef 4=4（**零回归**）｜ 724,245,935 B ｜ `apksigner verify` ✅
- 装机 **Success（13:42:43）** ｜ dex2oat 零警告 ｜ 安装版 dex md5 一致：`eaeda387af6c7400ec58c90dbff1e117`

## 五、复测清单（用户）
1. 同机场、同航线分别派 **截击机** 与 **轰炸机**：到达/返航时间应明显不同（截最快、轰最慢）；
2. 飞机过省动画平滑、不错位（快机/慢机各看一条）；
3. 返航衔接自然、不跳变；
4. 零闪退。

## 六、档案（r6s5）
`r4c118_patch.py/.log` ｜ `r4c118_verify.log` ｜ `r4c118_diff.log` ｜ `r4c118_assemble.log` ｜ `r4c118_rebuild.log` ｜ `r4c118_build.log` ｜ `AirMission.smali.bak_r4c118`

## 七、未决/后续
- “任务总时长与航线距离无关”仍为历史遗留（返航快进方案 A/B/C 待拍板）——本包未动；
- 油耗递减（A5）未做；
- 如需“编队按最慢机”，把 `getLeadSpeedInt()` 改为取最小即可（一处）。
