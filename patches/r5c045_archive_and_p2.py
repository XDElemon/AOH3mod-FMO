# -*- coding: utf-8 -*-
# r5c045_archive_and_p2.py —— ① 归档 r5c045（导弹世界域）②落盘 P2 派发闸门细化调研
import io, time

TS = time.strftime('%Y-%m-%d %H:%M')
D = '/sdcard/GLG/历史23/r6s5/'
ARCH = D + '归档_v3_导弹世界域_r5c045.md'
P2R = D + '调研_P2派发闸门细化_v1.md'
PLAN = D + 'AI打击接入_调研与计划书v1.md'
HAND = D + '交接文档_电脑端接手_v1.md'

ARCH_TXT = u'''# 归档 v3 · 导弹动画「世界域改造」（r5c045，已验收）

> 归档时间：{TS} ｜ 状态：**✅ 已装机、已实测通过、已归档** ｜ 产物 dex `80b77370…` / apk `0afa2758…`
> 上游文档：`调研_导弹动画坐标域_v1.md`（定位）→ `调研B_导弹世界域施工前置_v1.md`（施工前置审计）→ `设计逻辑_r5c045.md`（规则）

## 一、这一段解决了什么（玩家视角）
**导弹不再"粘在屏幕上"。** 此前：飞机发射导弹后，只要玩家滚动或缩放地图，导弹与尾迹就跟着屏幕走、相对地图漂移（飞机与省份却正常）。
现在：导弹与尾迹**长在地图上**——拖地图时它和飞机、省份一起平移；缩放时它随地图缩放，位置连续。
（连带修掉的：首版产物因一个类名写错导致**一进游戏就闪退**，见 §三。）

## 二、批次链（完整表）
| 步骤 | 批次/文档 | 内容 | 结果 |
|---|---|---|---|
| 定位 | `调研_导弹动画坐标域_v1.md` | 查明根因：弹体+尾迹存的是**屏幕坐标**；推进器与尾迹入环与坐标域无关 | ✅ |
| 用户决策 | — | 在 A 最小改动 / **B 只存世界坐标** / C 参数化 中**选定 B** | ✅ |
| 施工前置 | `调研B_导弹世界域施工前置_v1.md`（计划书 §48） | 0 新字段、0 存档风险、3 处改动、寄存器分配、阈值影响 | ✅ |
| 施工 | `r5c045_fix.py` | 端点屏→世界换算；尾迹绘制移入新方法 `msFxDrawTrail`；弹体投影 | ✅ 本地全绿 |
| **事故** | 计划书 §50 | 装机后**启动闪退**（VerifyError：`Images`/`Image` 类名写错） | ❌ → 已修 |
| 加固 | `check_invoke_target.py`（**门禁㉘**） | 逐条 invoke 校验目标类（含父类链）是否真声明该方法；先跑负样本命中 1 条 | ✅ |
| 交付 | 计划书 §49 | 修复版重编译重装；启动自检无 VerifyError | ✅ |
| 验收 | 用户实测 | "成功"（导弹随地图走） | ✅ |
| 归档 | 本文件 | — | ✅ |

## 三、元教训（本段新增/强化）
1. **invoke 的类名字符串是代码**：`textures/Image`（单数，有 `draw`）vs `textures/Images`（复数，只有 `pix` 等静态位图）。
   写错 ⇒ 八件套**全绿**、装机 **VerifyError 闪退**（八件套不校验"被调用类是否声明该方法"）⇒ 已由**门禁㉘**补齐。
2. **门禁自身必须过负样本**：㉘ 首版有 2 个 bug（类名没去前导 `L`、没去尾部 `;`）⇒ 全部 invoke 被当"外部类"跳过、永不报警。
   **规则：新门禁上线前，必须能让它在已知坏样本上报错。**
3. **静态方法的参数别名陷阱**：`.registers 16` 的 static 方法里 `p0=v14、p1=v15`。
   若把 `v14/v15` 当临时寄存器 ⇒ 踩掉参数。**必须先把"最多用到 v13"的假设核对成事实。**
4. **`install.sh` 第 4 步有假阳性**：Shizuku 瞬时故障时打印**空输入 md5**却报"✅一致"。
   **装机后必须独立复核**：`cmd package path` → `md5sum` apk → `unzip -p … classes.dex | md5sum`。
5. **"能通过八件套" ≠ "ART 会接受"**：八件套是本地静态检查；ART 校验器才是终审 ⇒ **新方法/新 invoke 必过真机启动自检**。
6. 分段收敛有效：把"尾迹逐点投影"整体移入独立方法，比在 `drawAirMissileFX` 里挤寄存器**更稳**（新方法内局部寄存器全可用）。

## 四、当前主链设计层（简版）与参数
**导弹特效（本版）**
| 项 | 值 |
|---|---|
| 存储域 | **世界坐标**（未缩放地图像素，不含相机） |
| 投影式 | `屏幕 = (世界 + 相机) × 缩放`（与省份/飞机同源 `getAirDrawPosX/Y`） |
| 逆换算 | `世界 = 屏幕/缩放 − 相机`（每帧、在 `+0x14` 视觉偏移之后） |
| 到达阈值 | 距目标 < **8**（世界单位） |
| 尾迹 | 16 点环、最小间距 **4** 世界单位、每帧≤8 补点 |
| 弹体 | 14×14 屏幕像素（投影后画） |
| 缩放钩子 | 缩放变化时清尾迹（保留） |
| 运行门（未改） | `strikeKind==1` ∧ 有目标机 ∧ 有任务表 |

**拦截/派发链（r5c037–r5c044 遗留，仍现役）**：截击半径 500 ／ 战斗机 400 ／ 轰炸机 1000 ／ 攻击机 370；长波雷达 2400 ／ 雷达 600；拦截冷却 4 游戏小时；AI 派发概率门 **10%**（每回合每机场）。

## 五、遗留（未做，按优先级）
1. **P2 派发闸门细化**（本轮已出调研：`调研_P2派发闸门细化_v1.md`）。
2. 两个澄清探针（`nHAC=0` 的两种解释；432 次 `nDSPT3 sz=1 ap0=5715 n0=-1` 自相矛盾）。
3. 战斗机半径严谨化（F 分支加 `dist ≤ 400`）。
4. `AirDbgLog.dKey` 的 `if-ltz` 疑似写反（只影响落盘时机）；`e5s` 判空极性写反。
5. `airDetSeen` 全树无清理点（P2/P5 评估）。
6. `nA4v vis=218` 恒定（视野门口径）——**P2 调研已把它列为一等公民**。
7. P3 空战对称与分工 → P4 难度接 `difficultyID` → P5 清探针。

## 六、关键路径
- 工作树 `/tmp/w3a/smali`（5520 smali）｜产物 `/tmp/r5c045_classes.dex`（`80b77370…`）｜坏产物留档 `/tmp/r5c045_classes.dex.broken_045a`
- 归档 apk：`build_apk/dbg_signed77_v119_r5c045.apk`（现役）＋ `r5c044`（回滚点）＋ `r5c037`（更早回滚点）
- 备份：`ProvinceDrawArmy.smali.pre_r5c045`｜脚本：`r5c045_fix.py` / `r5c045_docs.py` / `r5c045_docs2.py`
- 门禁：八件套 + **㉘ `check_invoke_target.py`**（新）+ ㉔ + ㉗/㉗b + `check_branch.py`
- 文档：`设计逻辑_r5c045.md`、计划书 §46–§50、铁律【74】【75】
- 设备日志：`Android/data/age.of.history3.qiamxi.zhiri/files/airdbg_key.txt` / `airdbg_tick.txt`
'''

P2_TXT = u'''# 调研 · P2「AI 派发闸门细化」（v1，只读，未改码）

> 调研时间：{TS} ｜ 基线：r5c045（现役）｜ 结论状态：**待用户选闸门组合后再施工**
> 目标：让 AI 的空袭**有节制、不重靶、不撞硬目标**，且"看得见的出动"不被削弱。

## 一、结论速览
1. **现状：AI 派发只有一道闸门——10% 概率门**（每文明每回合每机场一次），其后直接"选靶→建任务→入队"。
   夜无上限、无去重、无换靶、无避硬目标 ⇒ 很容易出现"同一省被反复砸、多机场同日齐射同一目标"。
2. **节拍已查明**：`GameThread_Turns` → `AirForceManager.updateAll()` → `update(civID)` → 遍历该文明机场 →
   `executeAIAssignmentForAirport(ap)` ⇒ **每回合每机场一次尝试**（不是每帧），所以"频率"应以**回合/在飞任务数**衡量。
3. **可落点已定**：去重与上限 → `executeAIAssignmentForAirport`（建任务之前）；**换靶** → `aiPickVisibleTarget`（候选列表内过滤，最自然）；
   避硬目标 → 同一处（候选过滤）。**四处闸门都在已经过测试的路径上，不需要新建链路。**
4. **`nA4v vis=218 恒定`已定位到唯一探针点**：`p0V(cand, vis)` 的实参映射**已核实正确**（`p0V` 内 `cand=p0`、`vis=p1`；调用处 `p0V(v2,v4)`，
   `v4` 确为过滤后 `List.size()`）⇒ 该"恒定"不是标签错位造成的，需实测复现后再定性（见 §六）。
5. 本批**建议先做 3 道**（去重 / 上限 / 换靶），避硬目标需要先补一步"防空建筑 id"调研（见 §五）。

## 二、现状链（含行号，`AirForceManager.smali`）
| 环节 | 位置 | 说明 |
|---|---|---|
| 回合驱动 | `GameThread_Turns.smali:1331-1335` | 每回合取 `AirForceManager.getInstance()` → `updateAll()` |
| 遍历文明/机场 | `AirForceManager.updateAll()` 7340 → `update(civID)` 7083 | 先 `updateBuild()` + `updateAIBuildUp()`，再 `updateDeployedCount()`，再 `executeAIAssignment(civID)`（7134）、`updatePatrols(civID)`（7135） |
| 派发入口 | `executeAIAssignment(I)` 2851-2924 | 遍历该文明机场；判据 = `mode==AI` **或** `civID != 玩家 civ`（2900-2912） |
| 派发主体 | `executeAIAssignmentForAirport(Airport)` **1021-1120** | ①**概率门 0.1**（1026-1032，`if-gez` 跳过）②`isAtWar(civID)` ③战时：`aiPickVisibleTarget(BOMBER)` → `pickIdleDivKey` → `createStrategicBombing` → 非空则入 `activeMissions`；和平时：`getRandomBorderProvince` + FIGHTER 航程内省 → `createPatrol` |
| 选靶+视野门 | `aiPickVisibleTarget(ap,type,rnd)` **7999-8066** | 候选 = `getEnemyProvincesInRange`；逐个 `aiVisRadarPass(1.0f)` **或** `aiVisAirportPass(1.0f)`；可见集非空则**均匀随机**取一个；否则 -1 |
| 出口探针 | `p0K(1/3/4/5/6)` | 1=概率门拦、3=无靶、4=空机组、5=没闲飞机、6=和平分支无省 |
| 视野探针 | `p0V(cand, vis)` 8053；实现 `AirDbgLog.p0V(II)` 1303-1309 | `cand=` = 航程内敌省数；`vis=` = 过视野后的数量 |

**关键枚举**：`MissionType ∈ {{AIR_SUPERIORITY, ATTACK_ARMY, INTERCEPT, PATROL, STRATEGIC_BOMBING}}`；
`AirType ∈ {{ATTACKER, BOMBER, FIGHTER, INTERCEPTOR}}`。
**可用字段**（去重/上限要用）：`AirMission.type`、`targetProvinceID`、`sourceProvinceID`、`civID`、`state`、`assignedAircraft`。

## 三、五道候选闸门（规则化描述 + 落点 + 成本）
> 判定顺序建议：**概率门 → 上限门 → 选靶（含换靶/避硬）→ 去重门 → 建任务**。
> 理由：先便宜的先判；去重必须知道"选中的靶"，所以放在选靶之后、建任务之前。

| # | 闸门 | 规则（人话） | 落点 | 成本 |
|---|---|---|---|---|
| 1 | **去重** | 若 `activeMissions` 里已有**同文明、同类型（STRATEGIC_BOMBING）、同目标省**的在飞任务 ⇒ 本次不派 | `executeAIAssignmentForAirport`，`createStrategicBombing` 之前（约 1065 行前） | 一次 O(n) 遍历（n=在飞任务数，通常个位数） |
| 2 | **上限** | 若该文明在飞的战略轰炸任务 ≥ **K** ⇒ 本次不派（防"多机场齐射"） | 同上，更靠前（与概率门相邻） | 一次计数 |
| 3 | **换靶** | 选靶时**跳过"已被同类型任务瞄准"的省**（把"重靶"消灭在候选阶段） | `aiPickVisibleTarget` 的候选循环内（8043 之前加一层过滤） | 每候选一次比对；可用"目标省→计数"小表或直接遍历 activeMissions |
| 4 | **避硬目标** | 选靶时跳过**有防空建筑**的省（软目标优先） | 同上 | 需先查"防空建筑 id"（见 §五）；`Province.getBuildings(i)` / `buildingBuilt(provId,buildingID)` 可用 |
| 5 | **视野门口径复核** | 澄清 `vis` 是否真的等于"候选∩可见"（见 §六） | 只读核对 + 一条更明确的探针 | 极小 |

**建议 K 取值**：`K = 2`（每文明同时在飞 ≤2 个战略轰炸任务）起步；P4 难度接入后再按难度缩放。

## 四、参数与阈值（拟）
| 名称 | 拟值 | 含义 | 调大/调小 |
|---|---|---|---|
| 派发概率 | **0.10**（现行） | 每回合每机场尝试概率 | 调大＝空袭更频繁 |
| 在飞上限 K | **2**（拟） | 每文明同时的战略轰炸任务数上限 | 调大＝更压制；调小＝更节制 |
| 去重键 | `(civID, type, targetProvinceID)` | 三键相同 ⇒ 视为重靶 | 加 `sourceProvinceID` 会更宽松 |
| 避硬目标 | 有防空建筑 | 软目标优先 | 可先只记日志不拦（保守起步） |

## 五、避硬目标的前置一步（本轮未完成）
- 引擎确实有防空建筑图标：`InitGame.smali:1055-1061` 加载 `game/buildings/provinceIcons/antiAir.png` → `Images.antiAir`；
  `ProvinceDrawArmy.smali:3347-3350` 在省上绘制它（受某个布尔开关控制）。
- 但 `/tmp/Buildings_new.json`（我们改过的资源）里**没有** `antiAir` ⇒ **防空建筑的 id 在原始资源里**（apk 内 assets，未解包）。
- 要做这一步，需要：从现役 apk 内取建筑定义（`unzip -l` 找 `Buildings*.json` / `assets/...`），查出 antiAir 对应的 `buildingID`，
  再确认 `Province.buildingBuilt(provinceID, buildingID)Z`（`Province.smali:8130`）能否直接用来判定。

## 六、遗留疑点：`nA4v vis=` 恒定 218（本轮已排除"标签错位"）
- 事实：`p0V(a,b)` 内部 `cand=a`（p0）、`vis=b`（p1）；**全树唯一调用点**在 `aiPickVisibleTarget:8053`，实参为 `(v2, v4)`：
  `v2` = `getEnemyProvincesInRange` 的 size；`v4` = 过滤后 `ArrayList.size()`（8051-8052）。
  ⇒ 打印口径**正确**，`vis` 就是"候选∩可见"。
- 那为什么历史抓样里 `vis=218` 恒定而 `cand` 变化（218/461/470/474/477）？两种可能：
  1) 抓样里那 14 条并非同一时段同一批机场（不同机场之间 `cand` 不同、而恰好有若干机场 `vis` 同为 218）；
  2) `aiVisRadarPass`/`aiVisAirportPass` 在某些输入下**恒真**（例如雷达半径取到极大值），使 `vis==218`（＝某个固定集合大小）。
- **待办（一条探针即可定性）**：给 `aiPickVisibleTarget` 补 `p0V2(cand, vis, firstCandProv)` 或按"机场省 id + cand + vis"一行打印，
  下批抓样即可判定。**在搞清楚之前不要改视野门判定。**

## 七、可证伪验收（拟，供施工批使用）
1. **去重/上限**：连续推回合，日志应出现"因已有同型同靶任务而跳过"的计数（新增探针 `nP2dup`），且**同一省同时只有 1 个战略轰炸任务**。
2. **不空转**：AI 仍在如期派发（`nA4d war=1` 与 `nATK` 不下降）——防"闸门把链路又掐死"。
3. **换靶**：同一回合多个机场派发时，目标省分布更分散（可用 `nATK tgt=` 列表肉眼核对）。
4. **不通过**：AI 完全不出击（闸门写反）；或同一省仍被重复瞄准（去重键写错）。

## 八、风险与待办
- 风险①：闸门加上后**可能叠乘**（0.1 概率 × 上限 × 去重）⇒ 空袭频率骤降。缓解：先在日志里**只统计不拦截**跑一轮（dry-run 探针）。
- 风险②：`civID` 语义要确认是"任务发起文明"（`createStrategicBombing` 里由 `Airport.civID` 传入）——去重键用它。
- 风险③：`activeMissions` 的清理时机（任务结束是否立即移除）决定去重的"记忆窗口"；需在施工前确认（`updateMissions` 路径）。
- 待办：①确定 K 与"是否 dry-run 一轮"；②补 §五的防空建筑 id；③`nA4v` 定性探针；④施工批建议号 **r5c046**（必附设计逻辑）。
- **本文件为只读调研：本轮未改一行 smali。**
'''

PLAN_ADD = u'''
## 51. 【归档 v3】导弹动画「世界域改造」（r5c045，已验收）（{TS}）
- 玩家视角：**导弹不再粘在屏幕上**——拖地图/缩放时它和飞机、省份一起走。
- 链：定位（§46）→ 用户选 B → 施工前置审计（§48）→ 施工 → **事故：VerifyError 闪退**（§50）→ 修复 + 新门禁㉘ → 交付（§49）→ **用户实测通过** → 归档。
- 元教训：invoke 类名字符串是代码（`Image` vs `Images`）｜新门禁必须先跑负样本｜static 方法 `p0=v14/p1=v15` 别名坑｜install.sh 第 4 步假阳性｜"过八件套 ≠ ART 接受"。
- 全文：**`r6s5/归档_v3_导弹世界域_r5c045.md`**。产物 dex `80b77370…` / apk `0afa2758…`。

## 52. 【调研】P2「AI 派发闸门细化」（只读，未改码）（{TS}）
- **现状**：AI 派发**只有一道 10% 概率门**（每回合每机场一次）；无上限、无去重、无换靶、无避硬目标。
- **节拍**：`GameThread_Turns` → `AirForceManager.updateAll()`（7340）→ `update(civID)`（7083）→ 遍历机场 → `executeAIAssignmentForAirport`（1021）。
- **拟补 5 道闸**（判定顺序：概率门 → 上限门 → 选靶（换靶/避硬）→ 去重门 → 建任务）：
  1) 去重：`(civID, type=STRATEGIC_BOMBING, targetProvinceID)` 已在飞则跳过 —— 落点 `executeAIAssignmentForAirport` 建任务前；
  2) 上限：每文明在飞战略轰炸任务 ≤ **K（拟 2）** —— 同处；
  3) 换靶：选靶时跳过"已被同型任务瞄准"的省 —— 落点 `aiPickVisibleTarget` 候选循环（8043 前）；
  4) 避硬目标：跳过有**防空建筑**的省 —— 同处；**前置**：防空建筑 id 在原始资源里（`/tmp/Buildings_new.json` 无 `antiAir`，需从 apk assets 取）；
  5) 视野门口径复核：`nA4v vis=` 恒定 218 的定性。
- **已排除**：`p0V` 标签错位——`p0V(a,b)` 内 `cand=a/vis=b`，全树唯一调用点 `aiPickVisibleTarget:8053` 传 `(v2,v4)`，口径正确 ⇒ 需实测定性。
- 风险：闸门叠乘可能把空袭频率压低 ⇒ 建议**先 dry-run（只统计不拦截）跑一轮**。
- 全文：**`r6s5/调研_P2派发闸门细化_v1.md`**。施工批建议号 **r5c046**（必附设计逻辑）。
'''

def main():
    io.open(ARCH, 'w', encoding='utf-8').write(ARCH_TXT.replace('{TS}', TS))
    io.open(P2R, 'w', encoding='utf-8').write(P2_TXT.replace('{TS}', TS))
    print('[OK] 归档_v3（%d B）' % len(ARCH_TXT.encode('utf-8')))
    print('[OK] 调研_P2派发闸门细化_v1（%d B）' % len(P2_TXT.encode('utf-8')))

    p = io.open(PLAN, encoding='utf-8').read()
    if '## 51. 【归档 v3】' in p:
        print('SKIP plan')
    else:
        io.open(PLAN, 'w', encoding='utf-8').write(p.rstrip('\n') + '\n' + PLAN_ADD.replace('{TS}', TS))
        print('[OK] 计划书 §51/§52')

    h = io.open(HAND, encoding='utf-8').read()
    old = '| r5c045 | 导弹 FX 世界域改造（弹体+尾迹改存世界坐标；屏→世界换算 + 新方法 msFxDrawTrail 投影绘制） | `80b77370…` / `0afa2758…` | 2026-09-25 12:44 | ⏳待验收（已修首版闪退：VerifyError 类名复数写错；门禁㉘已建；拖动/缩放时导弹应随地图走） |'
    new = '| r5c045 | 导弹 FX 世界域改造（弹体+尾迹改存世界坐标；屏→世界换算 + 新方法 msFxDrawTrail 投影绘制） | `80b77370…` / `0afa2758…` | %s | ✅已验收（用户实测：拖动/缩放地图时导弹随地图走；首版闪退已修；新增门禁㉘） |' % TS
    if old in h:
        io.open(HAND, 'w', encoding='utf-8').write(h.replace(old, new))
        print('[OK] 交接文档 r5c045 → ✅已验收')
    else:
        print('[WARN] 交接文档未找到原行（跳过）')
    print('DONE')


if __name__ == '__main__':
    main()