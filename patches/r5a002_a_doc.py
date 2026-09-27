# -*- coding: utf-8 -*-
# R5a002：更新《B3-A1自动打击接活_具体方案书v1.md》
# 原则（用户拍板）：只改这一份文件；原路线内容【保留原文】，只加“已取消”标记；
#                  文末追加：取消记录 + ICBM 调研 + 新设计 + 实施步骤 + 验收门禁。
import io, os, shutil

F = '/sdcard/GLG/历史23/r6s5/B3-A1自动打击接活_具体方案书v1.md'
BAK = F + '.pre_r5a002.bak'

s = io.open(F, encoding='utf-8').read()
if not os.path.exists(BAK):
    shutil.copy2(F, BAK)
    print('BACKUP ->', BAK)
else:
    print('BACKUP already exists ->', BAK)

BANNER = u"""
> ## ⛔ 本方案书已取消（2026-09-20）
> **本文件 §0–§8 描述的「B3-A1 自动打击」路线，已被用户决策整层取消并删除，正文原样保留仅供追溯。**
> - 取消决策（用户原话）：「这些关于自动打击的全部删掉，我们重新设计这一部分」
> - 执行：整树回滚到 `build_inputs/w3a_smali_20260918.tar.gz`（R4c176b 状态）→ 汇编 Sig=**152403**（与文档记录一致）→ 装机 **r5a001**（`DEX_MATCH=1`/`APK_MATCH=1`，无 VerifyError）
> - 旧工作备份（可取回）：`/tmp/w3a_bak_r4c205/smali_full/`（r4c192~r4c205）
> - 上文第 4 行「状态：方案定稿，待用户确认 §8 三个开口项后开工」**已过期作废**。
> - **新路线**见文末【附录】：取消记录 → ICBM 调研 → 新设计 → 实施步骤 → 验收与门禁。
---
"""

anchor = '\n---\n'
i = s.find(anchor)
assert i > 0, 'header anchor not found'
s = s[:i + len(anchor)] + BANNER + s[i + len(anchor):]

NEW = u"""
---

# 【附录】新路线（2026-09-20 起生效）

> 本附录与上文 §0–§8 **互斥**：上文为已取消的 B3-A1 旧路线原样存档；今后一切自动打击相关工作以本附录为准。

## 附-1. 取消记录

### 附-1.1 决策与执行
| 项 | 内容 |
|---|---|
| 决策 | 用户 2026-09-20：「这些关于自动打击的全部删掉，我们重新设计这一部分」 |
| 底座 | `build_inputs/w3a_smali_20260918.tar.gz`（＝R4c176b 状态，5520 个 smali） |
| 删除范围 | 自动打击整层：`cfg*` 配置系统、`afMilReal`/登记表、情报门、评分 `strikeScore`、选择器 `pickStrikeTarget`、巡炸 `roveTick`、各类探针 |
| 关键佐证 | 汇编后 **Sig = 152403**，与文档记录的 R4c176b 签名完全一致 |
| 装机 | `r5a001`，`DEX_MATCH=1`/`APK_MATCH=1`，启动无 VerifyError |
| 备份 | `/tmp/w3a_bak_r4c205/smali_full/`（含 `AirForceManager.smali` 单文件副本），13 批工作未丢 |

### 附-1.2 三条已定位的真凶（新路线必须回避）
| # | 真凶 | 后果 | 证据 |
|---|---|---|---|
| 1 | **`Game.getProvince(-1)` 每回合崩溃** | 异常沿 `tryStrikeForAirport → updateOffensives → update → updateAll` 冒泡，**打断整条回合链**（攻/轰都不飞、巡炸也没机会跑） | r4c177t 时代探针缺 `if-ltz` 守卫，r4c199 才修 |
| 2 | **配置通道在 scoped storage 下不可用** | ① app 侧 `File.lastModified()` 对跨 UID 写入 `Android/data/<pkg>/files/` 的文件返回 **0**；② `Gdx.files.internal(...)` 抛异常；③ 游戏自研 `FileManager.loadFile` **静默返回空** | r4c193b→r4c205 共 **13 批**，配置**一次都没真正生效过** |
| 3 | **我方自伤（4 类）** | ① `.registers > 16` 触发 `pN` 别名上限（`Invalid register: v17`）；② 挂钩 private 方法误用 `invoke-virtual` ⇒ `VerifyError` 闪退；③ `const/4` 只能 −8..7；④ 条件跳转极性写反（本轮共 **8 处**） | r4c177d/177h/177n/177o、r4c197b |

## 附-2. ICBM 调研成果（2026-09-20，实据）

> 数据源：`/sdcard/GLG/历史23/ICBM Escalation Endless October PROPER`（PC 版，**文本驱动**，非 APK）。
> 取证方式：数据文件全扫 + `ICBM.exe` 符号提取。

### 附-2.1 迷雾系统：每个对象 × 每个观察方 一条记忆记录
存档格式串（`ICBM.exe` 内）：
```
visinfo vis %d ghost %s precise %s know_exists %s pos %f %f %f %f head %f %f %f ftseen %f
```
实据样例（`Scenario/Main/Main-1.txt:805-822`，`unit "Submarine"` 的 `Visibility` 块，每观察方一行）：
```txt
unit "Submarine"
  Owner 0
  Visibility
    visinfo vis -1 ghost true  precise true  know_exists true  pos -0.613140 0.392123 -0.685784 0.000000 head ... ftseen 0.000000
    visinfo vis  0 ghost false precise false know_exists false pos 1.000000 0.000000 ...            ftseen 2147483648.000000
```
规模：`Main-1.txt` 3680 条、`Main-10.txt` 20100 条；全库 `visinfo` 约 **14.7 万**条。

| 字段 | 语义 | 取值 |
|---|---|---|
| `vis` | 可见状态 | `-1` / `0` |
| `ghost` | **残影**：目标已不在探测内，只剩记忆 | true/false |
| `precise` | **是否精确当前位置** | true/false |
| `know_exists` | **是否“知道它存在”**（连位置都没有） | true/false |
| `pos` / `head` | **最后已知位置 / 朝向** | 坐标 + 朝向 |
| `ftseen` | **首次看到时间戳** | `0.0`；`2147483648.0`≈“从未” |

**三态（均为实测组合）**：
1. `ghost true precise true know_exists true` → 现在看得见（精确）；
2. `ghost true precise false know_exists true` → **只记得它在那儿**（残影 + 位置）；
3. `vis 0 ghost false know_exists true` → **只知道它存在**，位置不明。

**覆盖对象（`Main-1.txt` 统计）**：`Airport 106、Carrier 90、Army_Base 88、Army_Entrenched 32、Army_Division 17、Fixed_Coastal_Gun 8、Destroyer 7、AA_Site_Old 6、Landing_Ship 4、SRBM_Site 3、Submarine 2、SAM_site 2、Fixed_LW_radar 2、Cruiser 1`
⇒ **建筑与单位一视同仁**，这就是“建筑记忆”。

**相关常量（`ICBM.exe` 符号）**：`GHOST`、`GHOSTVISIBLE`、**`GHOSTVISIBLE_FOR`**（记忆可见时长＝显式衰减参数）、`ACH_TIME_IS_A_GHOST`（成就名 "Time Is A Ghost"）、`PreciseTargeting`、`RequiresPreciseTargeting`、`DetectionSwitch`、`Intelligence`。
⚠️ **`GHOSTVISIBLE_FOR` 的具体数值不在任何文本配置里**（仅存在于 exe 内），要拿准只能反编译 .NET。

**打记忆目标失败有明确反馈**（`lang/Eng/UI.lng`）：
```
2217 LANG "Enemy %s of %s not found at its last known position."
2253 LANG "Enemy %s of %s not found at its last known position by satellite."
```
中文（`lang/CHN/UI.lng:1954/1918`）：「在最后一个已知位置未找到敌人%s (%s)。」

### 附-2.2 轰炸机打击机制（数据层）
`Units/Units.txt:836 [UNIT] "Bomber"`（关键字段原样）：
```
Type Airborne / NoAutoDeploy / Slave / AutoReturn Yes
Speed 400   TurnSpeed 3   Range 6000   Power 2
Config "Bombs" Default
  Weapon "Free fall bomb" 20 Launch 4 Time 1 AutoEngage
Config "100 Kiloton" … "100 Megaton"（核弹）／"Chemical Bomb"（化学弹）
Modifier "Bomber_Stealth_Bonus_Modifier_1/2"（B-2/B-21）＋ ECM_Bonus_1..4
AchievementProperty "ACH_SHADOW_OF_DEATH"
```
`Units.txt:1071 [UNIT] "High_Speed_Bomber"`：`Speed 1000 / TurnSpeed 3.5 / Range 9000 / Power 0.8`，自带 `Radar "STD Vision Air"` ＋ `"STD Short Wave"`。
另有 `[UNIT] "Attack"`(:363，多用途，`Config "Bombs"`＋`"Rockets"`)、`Attack_Helicopter`(:1720)。

**四个决定行为的机制点**：
1. 挂载＝一组 `Config`（对地炸弹／核弹／化学弹），格式 `Weapon "<弹> <备弹> Launch <齐射> Time <再装填秒> [AutoEngage] [Principal]`；
2. `Slave` ＋ `AutoReturn Yes`：飞机必须由机库/载机平台托管，出击后自动返航；
3. 代际升级 `ImprovedBy "Generation_N_Aircraft" Set Speed/Range/Power/…`（同一 UNIT 承载 6–7 代）；
4. **能否打“记忆目标”由弹药类型决定**（`Units/Missile_types.txt:60-80`，带官方注释）：
```
[TYPE] "Default"
  RequiresPreciseTargeting No    // Means can be used without the precise location info
  CanBeUsedAgainst Ground / Naval / City / AbstractPosition
[TYPE] "SemiGuided"  RequiresPreciseTargeting No  CanBeUsedAgainst Ground/Naval  Affects City
[TYPE] "No Attack"   RequiresPreciseTargeting Yes
[TYPE] "LandAttack"  RequiresPreciseTargeting No  CanBeUsedAgainst Ground  Affects City
```
⇒ **朝“记忆坐标”投弹合法**（`AbstractPosition`），但 `RequiresPreciseTargeting Yes` 的弹药**必须有精确目指**（例：`Units/Missile_defs.txt:8332`）。

### 附-2.3 AI 层（打击决策）
`AI/StrategyConquest.txt`（81KB，文件头含完整编写规范）：每个策略声明 ①入侵/核战投入比 0–100 ②研发科技清单 ③开战最低科技 ④入侵部队“最小集/目标集/补集（ComplementPer）”⑤防御最小集 ⑥核战最小/目标/可选集；
`AI/GroupsConquest.txt`（30KB）＝部队组定义；`AI/Conditional.txt`/`AI/limits.txt`＝开关与上限。
弹药侧另有 `AIHint Specific "Army_Division" 8` 这类**给 AI 的目标偏好标注**（`Units/Missile_defs.txt`）。

### 附-2.4 尚未验证（诚实标注）
1. `GHOSTVISIBLE_FOR` 的**具体数值**（在 exe 内，文本层无）；
2. **AI 是否主动利用 ghost/记忆目标**（逻辑在 exe 内，数据层无体现）；
3. 记忆的**刷新/衰减规则**（再次探测是否重置 `ftseen`、残影是否有寿命上限）。

## 附-3. 新设计

### 附-3.1 四条硬约束
1. **配置一律编译期常量**，不再引入任何文件读取（配置通道已判死）；
2. **目标来源只用可靠输入**：`getProvincesInRange` 射程集合 ＋ `Province.getCivID()` 归属 ＋（第③步）事件登记表或 ICBM 式记忆四态；
3. **不读瞬时表、不做多层判据、不做评分、不加随机门**；
4. **每一步一行日志**（`nA1 …`），失败必须一眼看出卡在哪一条。

### 附-3.2 三步走
| 步 | 内容 | 验收 |
|---|---|---|
| **① 最小可飞** | 每回合对我方机场：`pickIdleDivKey(airport, BOMBER)` → 非空 → `createStrategicBombing(airport, 常量目标省, key)` → `assignedAircraft` 非空 → `getInstance().activeMissions.add(m)`；一行日志 `nA1 ap= tgt= div= ac= ok\\|no-div\\|no-aircraft\\|out-of-range` | 游戏里**肉眼看到轰炸机起飞** |
| **② 点名清单** | 目标改**编译期常量数组**（点名清单）；同省已有在飞任务则不重复派 | 点谁打谁 |
| **③ 自动挑** | 只用可靠输入：射程集合 ∩ 省主≠我方 ∩ 目标集；目标集候选两种口径（**待拍板**）：(a) 事件驱动建筑登记表；(b) **ICBM 式记忆四态 + 衰减期** | 自动打“有军事建筑的省” |

### 附-3.3 ICBM 经验到本项目的映射（第③步备选口径 b）
| ICBM | 本项目对应物 |
|---|---|
| `know_exists` / `ghost` / `precise` 三态 ＋ `pos·head` ＋ `ftseen` | 每省维护「已知存在／残影位置／当前可见／首次发现时间」 |
| **`RequiresPreciseTargeting`**（弹药级开关） | 轰炸机打“记忆省”允许（低精度）；打“精确省”满精度；攻击机同理 |
| **`GHOSTVISIBLE_FOR`**（记忆衰减参数） | 给建筑记忆一个**衰减期**，而不是永久记住 |
| 失败反馈文案 “not found at its last known position” | 打空时给玩家反馈，避免“飞机白飞”的困惑 |

## 附-4. 实施步骤（第①步详案，可直接施工）

| 项 | 内容 |
|---|---|
| 改动文件 | **仅 `AirForceManager.smali`**（1 个新私有方法 ＋ 1 处挂钩 ＋ 2 个编译期常量） |
| 挂钩点 | `update(I)`（每回合，与原生 `executeAIAssignment(civID)` 同节拍）尾部 |
| 遍历 | `getAirportsForCiv(玩家 civID)`；范围＝**全部我方机场**（或仅 `OFFENSIVE`，**待拍板**） |
| 派发 | `pickIdleDivKey(airport, BOMBER)`（注意其**访问修饰符**决定 `invoke-static`/`invoke-direct`）→ 非空 → `AirMission.createStrategicBombing(airport, 常量省, key)` → `assignedAircraft` 非空才 `activeMissions.add(m)` |
| 判定 | **不判战争、不判建筑、不判迷雾**；只要求“目标不是自己人的省”且“在射程内” |
| 目标 | **写死的常量省号**（由用户给，或从存档里挑一个射程内敌省写死） |
| 日志 | `nA1 ap= tgt= div= ac= ok\\|no-div\\|no-aircraft\\|out-of-range`（`div=`＝`pickIdleDivKey` 返回的 key 或 `-`，`ac=`＝`assignedAircraft.size()`） |
| 明确不做 | 不碰 `updateOffensives` 老链；不修 `AirForceManager.isAtWar(I)`（它是恒 false 的坏方法，**另行拍板**）；不引入任何文件读取 |
| 后续两步 | 第②步：目标换常量数组 ＋ 同省去重（查 `activeMissions` 的 `targetProvinceID`）；第③步：目标集改“射程集合 ∩ 非我方省 ∩ 目标集” |

## 附-5. 验收与门禁（每批必走）

### 附-5.1 十步流程
`备份 → 补丁脚本 → 应用 → assemble → arity 检查 → 八件套 → build → install → 核验 → 归档`

### 附-5.2 三道硬门
1. **arity BAD = 0**；
2. **八件套 Δ 与设计意图一致**（注意：**回滚场景 Sig 会下降**，“只增不减”判据不适用）；
3. **设备 dex md5 == 本地产物**（`DEX_MATCH=1`/`APK_MATCH=1`）。

### 附-5.3 四个自伤坑（每批自查）
`.registers ≤ 16`（pN 别名上限）｜ private 方法必须 `invoke-direct` ｜ `const/4` 只在 −8..7 ｜ 条件跳转极性须回放真值表。

### 附-5.4 归档规范（每批收尾）
专档登记 → 设计v2 章节 → 本计划书更新 → 补丁存档 `r6s5/*.py` → 留回滚点 apk → 刷新交接文档 §4/§6/§7。

## 附-6. 待你拍板（开工前需要答复）
1. **目标省**：给一个省号写死，还是我从存档里挑一个射程内敌省写死？
2. **我方机场范围**：第①步＝“全部我方机场”，还是只对 `mode == OFFENSIVE`？
3. **是否同步修 `AirForceManager.isAtWar(I)`**（守卫写反 ⇒ 恒 false ⇒ 原生轰炸分支永不执行）？建议**先不修**，三步走完再单独拍。
4. **第③步口径**：选 (a) 事件驱动建筑登记表，还是 (b) **ICBM 式记忆四态 + 衰减期**？

---
*（附-1~附-6 · 2026-09-20 · 与上文 §0–§8 互斥；上文为已取消路线存档）*
"""

s = s.rstrip() + '\n' + NEW
io.open(F, 'w', encoding='utf-8').write(s)
print('WROTE ok bytes=%d' % len(s.encode('utf-8')))
print('lines=%d' % (s.count('\n') + 1))
