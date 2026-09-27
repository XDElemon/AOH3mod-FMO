# -*- coding: utf-8 -*-
# autostrike_ai_docs.py —— ① 调研：自动打击/自动拦截 现状与 AI 接入 ② 计划书修订 §54
import io, time

TS = time.strftime('%Y-%m-%d %H:%M')
D = '/sdcard/GLG/历史23/r6s5/'
DOC = D + '调研_自动打击与自动拦截_现状与AI接入_v1.md'
PLAN = D + 'AI打击接入_调研与计划书v1.md'

DOC_TXT = u'''# 调研 · 「自动打击 / 自动拦截」现状 × AI 接入（v1）

> 调研时间：{TS} ｜ 性质：**只读调研，未改一行 smali** ｜ 基线：r5c045（已装机验收）
> 用户口径（本轮）：**"不照抄 ICBM；我们之前做过玩家侧的自动打机，现在要把它接入 AI，让 AI 也会用这套；要有本作特色。"**
> 本文件先**把名词对齐**（避免设计时张冠李戴），再列现状、缺口、与调整后的步骤。

## 一、名词对齐：本作里"自动打机"到底指什么（三套东西，逐一取证）

### 口径 A：引擎自带的「机场模式驱动自动派发」（**在，且已对 AI 开放**）
- 机场有模式枚举：`Airport$Mode ∈ {{OFFENSIVE, PATROL, AI}}`（`Airport$Mode.smali`，只有这三个）。
- 玩家面板用它：`InGame_AirForceOptions$BtnMission`（`missionType:I`）＋ `AirForceManager.toggleAirportPatrol(I)I`（**5749**）循环切换模式。
- 消费端（每文明每回合，`update(civID)`）：
  - `PATROL` → `updatePatrols(civID)`（**7654**）→ `tryPatrolForAirport(airport, rnd)`（**2580**，内部判 `mode==PATROL`，2595）→ `createPatrol` ⇒ **这是引擎的"自动巡逻"**；
  - `AI` → `executeAIAssignment(civID)`（**2851**）→ `executeAIAssignmentForAirport`（**1021**）⇒ **这是引擎的"自动打击/自动派任务"**；
  - `OFFENSIVE` → **没有任何消费端**（全树只在 toggle 里出现，5764）⇒ **OFFENSIVE 是"手动"，自动打击只能靠 AI 模式**。
- 我们对它做过的改造（已装机）：
  - **r5c026**：判据改为 `mode==AI **或** civID != 玩家`（2900-2912）⇒ **AI 文明从此会派发**；
  - **r5c026 C5**：`strikeTick_A1`（**7053**）的玩家门**反转**（`if-eq p0, v1, :st_ret`＝玩家走原链、其余文明放行）＋战争门 ⇒ **AI 的打击结算也开了**；
  - **P1b（r5c033–r5c037）**：`updateAIBuildUp`（**8068**）⇒ AI 会造机；
  - 结果：实测 AI 轰炸机真的起飞、真的炸到玩家（计划书 §26.6 验收表）。
- ⇒ **口径 A 的 AI 侧其实已经接通**。它的短板是"**打得笨**"：概率门 10% + **均匀随机**选靶（`aiPickVisibleTarget` 7999-8066），没有优先级、没有目标上限、没有记忆。

### 口径 B：MOD 自建的「自动打击」玩家功能（**当前树内不存在**）
- 历史：`B3-A1自动打击接活_具体方案书v1.md` 记录了一套完整设计（`tryStrikeForAirport`、`pickStrikeTarget`、`strikeScore`、`roveTick`、`trackGroundTarget`、配置面板 `cfg*`、建筑永久记忆、每目标在飞上限…）。
- **用户于 2026-09-20 决策整层取消**（原话："这些关于自动打击的全部删掉，我们重新设计这一部分"），并**整树回滚**到 R4c176b。
- **本树取证**：`grep` 全树 → `pickStrikeTarget` / `tryStrikeForAirport` / `strikeScore` / `roveTick` / `trackGroundTarget` / `afMilReal` **全部 0 命中**；只存在 `tryPatrolForAirport`(2)、`toggleAirportPatrol`(1)、`strikeTick_A1`(1)。
- ⇒ **口径 B 目前是"纸面设计 + 待办登记"**，不是现成代码。且该方案书 **附-11.8** 明确写着：用户要求**加玩家门**，并登记
  **「AI 自动打击」为必须补的功能性缺失**（用户原话："现在我允许不对 AI 开放自动打击，**但是以后必须要**。"）
  ⇒ **本轮用户要的正是这一条（AI 自动打击）**，而我们**没有**现成可搬运的 MOD 代码——只能搬它的**设计思路**（且用户要求：不照抄 ICBM）。

### 口径 C：自动拦截（**两侧都在**）
| 侧 | 入口 | 触发 | 关键判定 | 现状 |
|---|---|---|---|---|
| **玩家侧** | `PlayerFogOfWar.detectEnemyMissions()`（599）→ `dispatchAutoIntercept(mission)`（**AFM:3424**） | 侦测敌方在途任务 | 作战半径/射程门（r5c043 修极性）、**活猎手去重** `hasActiveChaser`（r5c044 修极性）、配对门 `if-eqz v5`（r5c044） | ✅ 已验收（§44：首次真派机 12 次） |
| **AI 侧** | `updateAIAutoIntercept()`（**AFM:3043**，我方新增，`updateMissions` **7535** 调用，节流 `0x1f4`=500ms） | 扫描 `activeMissions` 中"敌方任务"（按目标省归属者＝防守方） | 存活机>0、状态 EN_ROUTE/EXECUTING、`isAtWar`、`aiAirDetSeen`＋`hasActiveChaser` 去重 | ✅ 在运行 |
- 共用件：`aiAirDetSeen`（AI 侧看到过就记住）、`airDetSeen`（玩家侧）、`hasActiveChaser`、`dispatchSweep`（3756）。
- 已知遗留：`airDetSeen` **全树无清理点**（§1120）；`aiAirDetSeen` 同理需核。

## 二、现状总表（AI 侧 vs 玩家侧 × 四条链）
| 链 | 玩家侧 | AI 侧 | 说明 |
|---|---|---|---|
| **派发**（每回合造任务） | ✅（mode=AI 时自动；否则手动点击 `createMissionForClick` 615） | ✅ 已开（r5c026 判据改造） | 同一套 `executeAIAssignmentForAirport` |
| **巡逻**（PATROL 模式） | ✅ `tryPatrolForAirport` | ✅（随 `update(civID)` 对每个文明跑） | 引擎原生 |
| **结算**（到达后掉血/建筑） | ✅ 原链 | ✅ 已开（`strikeTick_A1` 玩家门反转＋战争门） | 同一套 `AirMission.executeAttack()` |
| **拦截**（对来袭敌机起飞） | ✅ `FOW.detectEnemyMissions → dispatchAutoIntercept` | ✅ `updateAIAutoIntercept` | 两套入口、共用去重件 |
| **造机** | 玩家自己造 | ✅ `updateAIBuildUp`（P1b） | — |
| **智能选靶**（优先级/上限/记忆） | ❌ 无 | ❌ 无（均匀随机） | **本轮的真正缺口** |

## 三、真正的缺口（要让 AI"会用这套"，缺的是什么）
1. **选靶没有"脑子"**：AI 现在 = 10% 概率门 → `getEnemyProvincesInRange` 取交集 → **均匀随机**取一个。
   没有：目标价值分层、同时目标数上限、换靶阈值、绝对不打的清单。
2. **没有目标记忆/衰减**：同一目标反复被瞄（无"打过的变不香"机制）⇒ 会重靶。
3. **没有"打空/情报"表现**：ICBM 有残影与"not found at its last known position"提示；
   我们在玩家侧做过 `a1bBlind/a1bTold`（AirMission 132-135）——**AI 侧未复用**。
4. **玩家/AI 参数未分层**：现在两侧共用同一批硬编码常量（截击 500／战斗 400／轰炸 1000 等），
   没有"按任务类型/机型分表"，也没有难度分层。

## 四、ICBM 参照 → 本作特色（不是照抄）
**取它的"机制骨架"，换我们的"实现形态"**：
| ICBM 的做法 | 我们的特色化改造（建议） |
|---|---|
| 数据文件驱动（`GroupsConquest.txt` 语法 + 5 个空军组） | **编译期常量表**（我们的铁律：不引入文件读取；且 APK 内不可写配置） |
| `Priority` 目标优先级表 | **按 `MissionType` 分表**的权重常量：战略轰炸（BOMBER）看"省的价值"、攻击机（ATTACKER）看"驻军规模" |
| `Fade` 衰减（单位 0.02 / 城市 0.4） | **轻量"记事本"式衰减**：复用已有 `airDetSeen`-风格的 `HashSet/Map`，记"该省最近被瞄的回合"，窗口内降权（**不引入存档字段**，读旧档按 0 处理） |
| `MaxTargets`（空军组 3） | 每文明**在飞同型任务上限 K**（建议 3） |
| `PriorityDivider`（默认 50） | 换靶阈值（先不做，等有记忆后再评估） |
| `Avoid`（按单位类型） | 按**省份属性**回避：省内有敌方防空设施/机场 ⇒ 降权或跳过（需防空建筑 id，仍待补） |
| `DistanceFrom`（按编组主力算航程） | 我们已有"按 `AirType` 查航程表"，**只需把图省事的全局常量改成按任务类型分表** |
| `MaxAutoEngageRange`（截击＝全航程） | 我们的自动拦截半径按机型定位重排（截击≈全航程、战斗≈半航程） |
| `Slave` + `AutoReturn Yes` | 我们已有"飞机屬机场 + 返航"，将来补"存量低于 N 就返航补给" |
| `limits.txt`（每难度一行阈值） | P4 照此格式：**每难度一行参数**（概率门/上限 K/视野容差） |
| 引擎 `GHOSTVISIBLE_FOR` 记忆衰减 | 我们的"记事本 + 回合窗口"（与 `a1bTold` 同一思路） |

**三条本作特色原则（写进设计约束）**
1. **一条链，两套权限**：玩家与 AI 走**同一条**派发/结算/拦截链，只差参数与开关（不做两套平行系统）——这是我们与 ICBM 最大的不同（它是 AI 专属数据）。
2. **按任务类型分表**（战略轰炸 / 对地打击 / 巡逻 / 拦截），而不是"一支空军一张表"。
3. **记忆轻量化**：能复用现有 `HashSet/Map` 或 `a1b*` 字段，就**不加存档字段**（避免存档兼容风险）。

## 五、调整后的步骤（写入计划书 §54）
| 序 | 批次（建议号） | 内容 | 验收（可证伪） |
|---|---|---|---|
| 1 | **r5c046**（P2a） | **选靶智能化（无记忆）**：`aiPickVisibleTarget` 内把"均匀随机"改"**按分数加权随机**"；分数＝按 `MissionType` 分表的省权重（省经济/人口/驻军/是否含机场雷达）；另加**在飞同型任务上限 K**（建议 3）；新增 `nP2s`（本会选谁/分数）与 `nP2cap`（被上限拦）探针 | 同一批机场派发时目标分散；`nA4d war=1` 与 `nATK` 不下降；日志能看到被上限拦的次数 |
| 2 | **r5c047**（P2b） | **目标记忆 + 衰减**：记事本记"省→最近被瞄回合"，窗口 N 回合内降权（不新增存档字段；读旧档视为 0） | 连续推回合，同一省被反复瞄的次数显著下降；旧档读入无异常 |
| 3 | **r5c048**（P3a） | **自动拦截的机型定位重排**（截击≈全航程、战斗≈半航程；攻击机不拦截）＋玩家/AI 参数表统一 | 敌方来袭时，由"够得着的机型"起飞；不再出现"明明够不着也派" |
| 4 | **r5c049**（P3b） | **AI 的"打空/情报"表现**：把 `a1bBlind/a1bTold` 语义复用到 AI 任务；必要时给玩家一条可见提示 | 打空时日志/提示成对出现，不再"白飞无感知" |
| 5 | **r5c050**（P4） | **难度表**（照 ICBM `limits.txt` 格式）：每难度一行（派发概率/上限 K/视野容差），接 `difficultyID` | 换难度后空袭频率肉眼可见变化 |
| 6 | **r5c051**（P5） | 清探针、`airDetSeen`/`aiAirDetSeen` 清理点、文档收尾 | 探针 0 输出；长跑无内存增长 |

> 前置补调研（小，可在 r5c046 前顺带做）：
> ① 防空建筑 id（从 apk 内 assets 取；`/tmp/Buildings_new.json` 里没有 `antiAir`）；
> ② `nA4v vis=` 恒定的定性探针；③ `SaveGameManager$Save_Airforce` 是否序列化任何 `AirForceManager` 字段（决定 P2b 记忆能否落档）。

## 六、待用户确认的开口项
1. **"自动打机"口径确认**：你要的是
   (a) **口径 A**（引擎模式驱动派发，AI 已接通）只是"打得笨"⇒ 做上面的 §五；还是
   (b) **口径 B**（把 MOD 那套"自动打击按钮/设置面板"重建，并同时给 AI 开放）⇒ 那要先重建玩家侧功能再谈 AI 接入？
   **我的判读**：你这句话更像 (a)+「将来必须补 AI 自动打击」的合并诉求，故 §五 按 (a) 排，
   并把 (b) 的"设置面板/按钮"仍留在后置线（等你说要）。
2. **上限 K** 取 3（照 ICBM）还是更保守的 2。
3. **权重表**：省的价值如何取（建议：经济 `getEconomy()` + 人口 `getPopulationSize()` + 驻军 `getArmySize()` + 是否含机场/雷达；**按 MissionType 分表**，攻击机重驻军、轰炸机重经济/机场）。
'''

PLAN_ADD = u'''
## 54. 【重定基线】把"自动打机"接给 AI：口径对齐 + 步骤重排（{TS}）
> 用户口径：**不照抄 ICBM；我们之前做过玩家侧的自动打机，现在要把它接入 AI；要有本作特色。**
> 全文：**`r6s5/调研_自动打击与自动拦截_现状与AI接入_v1.md`**

### 54.1 名词对齐（先定名，再谈设计）
| 口径 | 是什么 | 现状（本树取证） |
|---|---|---|
| **A. 引擎「机场模式驱动自动派发」** | `Airport$Mode ∈ {{OFFENSIVE, PATROL, AI}}`；PATROL→`tryPatrolForAirport`（AFM:2580）、AI→`executeAIAssignmentForAirport`（AFM:1021）；OFFENSIVE 无消费端（手动） | **AI 侧已接通**：r5c026 判据改 `mode==AI 或 civID!=玩家`（2900-2912）＋`strikeTick_A1` 玩家门反转（7053）＋P1b 造机（8068）。实测 AI 已炸到玩家（§26.6） |
| **B. MOD 自建「自动打击」** | 曾是完整设计（`pickStrikeTarget`/`strikeScore`/`roveTick`/设置面板/建筑记忆），2026-09-20 被**整层取消并回滚**（见 `B3-A1自动打击接活_具体方案书v1.md` 附-1） | **当前树内 0 命中**（六个方法名全无）⇒ 只剩纸面设计；其 附-11.8 登记「**AI 自动打击**」为**必须补**（用户："以后必须要"） |
| **C. 自动拦截** | 玩家侧 `FOW.detectEnemyMissions → dispatchAutoIntercept`（AFM:3424）；AI 侧 `updateAIAutoIntercept`（AFM:3043，`updateMissions`7535 调用，500ms 节流） | **两侧都在**（r5c043/r5c044 已修判定与去重） |

### 54.2 真正的缺口
不是"AI 不会派发"，而是**AI 打得笨**：概率门 10% + **均匀随机**选靶（`aiPickVisibleTarget` 7999-8066），缺
①目标价值分层 ②同时目标上限 ③目标记忆/衰减 ④"打空/情报"表现 ⑤玩家/AI 参数分层（按任务类型与难度）。

### 54.3 ICBM 只取骨架，形态本作化
取：`Priority`／`Fade`／`MaxTargets`／`Avoid`／`DistanceType(radar|flight|weapon)`／`MaxAutoEngageRange`／`limits.txt 每难度一行`。
换：**编译期常量表**（不引文件读取）｜**一条链两套权限**（玩家与 AI 共用派发/结算/拦截）｜**按 MissionType 分表**｜**记忆轻量化**（复用 `HashSet` 式记事本，不新增存档字段）。

### 54.4 重排后的步骤
`r5c046（P2a 选靶智能化：加权随机 + 在飞上限 K + 探针）`
`→ r5c047（P2b 目标记忆 + 回合窗口衰减，不落档）`
`→ r5c048（P3a 拦截机型定位重排：截击≈全航程、战斗≈半航程）`
`→ r5c049（P3b AI 侧复用 a1bBlind/a1bTold 的"打空/情报"表现）`
`→ r5c050（P4 难度表：每难度一行参数，接 difficultyID）`
`→ r5c051（P5 清探针 + 去重表清理点 + 收尾）`
前置小调研：防空建筑 id（apk assets）／`nA4v` 恒定定性 ／`SaveGameManager$Save_Airforce` 字段面。

### 54.5 待拍板
1. "自动打机"口径＝A（我的判读，做 §54.4）还是 B（先重建玩家侧 MOD 自动打击再谈 AI）？
2. 上限 K＝3（照 ICBM）或 2？
3. 省权重取哪些量（建议 经济＋人口＋驻军＋是否含机场/雷达，**按 MissionType 分表**）。
'''

def main():
    io.open(DOC, 'w', encoding='utf-8').write(DOC_TXT.replace('{TS}', TS))
    print('[OK] 调研_自动打击与自动拦截_现状与AI接入_v1.md（%d B）' % len(DOC_TXT.encode('utf-8')))
    p = io.open(PLAN, encoding='utf-8').read()
    if '## 54. 【重定基线】' in p:
        print('SKIP plan')
    else:
        io.open(PLAN, 'a', encoding='utf-8').write(PLAN_ADD.replace('{TS}', TS))
        print('[OK] 计划书 §54')
    print('DONE')


if __name__ == '__main__':
    main()