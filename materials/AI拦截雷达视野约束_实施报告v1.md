# AI 拦截"雷达视野约束" · 实施报告 v1（R4c109）

- 日期：2026-09-12（CST；装机 00:22）
- 需求（用户）：修复"AI 在没有雷达视野的情况下也能前出拦截"——让 AI **在没有雷达探测/视野时无法执行前出拦截**；先定位确认"雷达视野"的判定条件，不得假设
- 状态：✅ 已实施并装机（R4c109）——八检对照无回归、724,237,651 B、签名 OK、装机 Success、dex2oat 零警告；**待复测**
- 关联：《AI自动拦截对称化_实施计划书v1.md》§八 ｜《空战重做专案_设计v2.md》§55 ｜《终序千禧_ICBM移植_产品规划书_v2.1.md》§27.7

---

## 一、定位与确认结论（"雷达视野"到底是什么）

**代码级结论：不存在随任务走的"探测状态"字段；"雷达视野"＝位置级"目标可见性"判定**——
> 敌机**当前位置**（其师所在省中心 Real 坐标）落在【**防御方本国雷达省范围** ∪ **防御方本国机场雷达范围**】内，才算"看见"。

**玩家侧权威口径**（`PlayerFogOfWar.detectEnemyMissions`，逐行实证）：
- Pass A 雷达省（PGoW:239-347）：遍历 `AFM.radarProvinces`（全图建有雷达/长波/AAA 的省集，`syncRadar` 维护）→ 只取 `getCivID()==玩家` → 半径 **长波 2400 / 雷达 600 / 其余(AAA) 300** → `÷ MapBG.iMapScale`（>0 时）→ `calcCosK(雷达省Y)` + `calcInEllipse(dx,dy,R,K)`（条件：`dx²·K/1000 + dy² ≤ R²`）；
- Pass B 机场雷达（PGoW:349-449）：遍历 `allAirports` → 只取 `airport.civID==玩家` → `dx²+dy² ≤ (int)airport.radarRange²`（`radarRange=等级×20+200`＝220~300）；
- 命中 → `airDetSeen.add` → `dispatchAutoIntercept` → 探针 `nDR_DET type=radar/airport`。

**AI 侧病灶**（改前）：`updateAIAutoIntercept`（AFM:2775-2850）派发前**无任何探测检查**；`dispatchAutoIntercept` 唯一空间条件＝"敌机省 ∈ 机场机种作战半径"（`getProvincesInRange`，`CombatRadius` 缺省 300/500）——即"腿长"而非"眼睛"，故无雷达也能前出。

## 二、实现（R4c109，单文件 AirForceManager.smali，口径 A＝完全镜像玩家链）

| 项 | 内容 |
|---|---|
| 新字段 | `aiVisSeen:Ljava/util/HashSet;`（跳过日志去重） |
| 派发门 | `updateAIAutoIntercept` 的 `:uai_go`：先调 `aiRadarVision(敌任务, defCiv)`；**false → 不派发、不记 `aiAirDetSeen`**（之后进入视野仍可派发）、探针 `nAVS blk`；true → 原派发流程不变 |
| 新方法×3 | `aiRadarVision(AirMission;I)Z`（取敌机位置 + 汇总）／`aiVisRadarPass(III)Z`（镜像 Pass A：2400/600/300 ÷iMapScale + `calcCosK`/`calcInEllipse`）／`aiVisAirportPass(III)Z`（镜像 Pass B：`radarRange²`） |
| 不动 | 玩家链（PGoW）与 `dispatchAutoIntercept` 本体**零改动** |
| 探针 | `nAVS blk id=<missionID> civ=<defCiv> prov=<敌机省>`（dKey，每任务一次） |

## 三、构建链与装机验证

- 汇编：+820B → `classes_r4c109.dex` = 7,327,068 B（md5 `91f610f61408be44c91245e9ce0a88a2`）；
- 八检：CheckRefs 5328/0、Invoke 0、Regs 0、Init 0、Range 0、SIG **152159**/15（+20 为新调用点、白名单不变）、CheckCast 50＝50、CheckUndef 3＝3（**对照无回归**；AirForceManager 域全 0）；
- 产物 `dbg_signed77_v119_R4c109.apk` = 724,237,651 B，签名验证 OK；
- 装机 Success（00:22）；**安装版 dex md5 与产物一致**；**dex2oat 零验证警告**；未启动游戏。

## 四、复测清单（等用户实测）

1. **无雷达 AI 国**：轰炸机接近时不拦截（`nAVS blk` 出现、无 `nDR_AID`），直到进入其**机场雷达圈（~220-300）**才可能拦截（届时 `nAVS` 停、`nDR_AID` 出现）；
2. **有雷达/长波雷达的 AI 国**：敌方进入其雷达省 **600/2400** 圈内即可被正常拦截（`nDR_AID`）；
3. **玩家侧行为不变**（`nDR_DET → nDR_DSPT` 链照旧）；
4. 回归：零闪退；正常轰炸/拦截链不受影响。

## 五、档案（r6s5）

- `r4c109_patch.log` / `r4c109_verify.log` / `r4c109_build.log` / `r4c109_diff.log` / `r4c109_patch.py` / `AirForceManager.bak_r4c109`