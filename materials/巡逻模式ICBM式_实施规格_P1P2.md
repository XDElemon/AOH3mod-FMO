# 巡逻模式（ICBM 式）实施规格 —— P-1 / P-2（2026-08-31）

> 依据：v79 安装包 DEX 反汇编实证（见《A1_v79源码核对报告_dex实证.md》）+ ICBM UI.lng 3510 原文语义。
> 用户拍板：①[巡逻]=机场级开关（取当前师所属机场）②只放开玩家 civ，AI 后置 ③概率 60%→**80%** ④机场版走配额、师级版不走配额。
> ⚠ 本规格由**只读容器**产出（/tmp/build_work 不可达），smali 落地需在 Ubuntu 构建环境执行。

---

## 0. 现状实证（改之前必须知道的四件事）

| # | 事实 | 证据（DEX） |
|---|---|---|
| 1 | **`tryPatrolForAirport` 第 0 条指令就是 `return-void`** —— 整个方法被短路禁用，后面全是死代码 | AirForceManager code_off 3100408，offset 0 |
| 2 | 调度入口已存在且节奏合理：`GameThread_Turns.run → updateAll → update(civ) → updatePatrols(civ) → 每机场调一次 tryPatrolForAirport` | 全库调用图 |
| 3 | **选点已自带航程过滤**：`getRandomBorderProvince` → `getProvincesInRange(airport, FIGHTER)` → 只留 `getCivID() != airport.civID` 的省 → 空则返回 **-1** → tryPatrolForAirport `if-ltz` 直接不起飞 | getRandomBorderProvince offset 0-83 |
| 4 | **PATROL 任务不耗油**：`AirMission.consumeFuel` 首行判 `type == PATROL → return-void` | AirMission.consumeFuel offset 0-4 |

⇒ **"航程不够怎么办"已经有答案：够不到就不起飞**（候选集为空 → -1 → 跳过），不会出现半路没油。

---

## 1. P-1a 引擎侧（4 处改动，全在 AirForceManager.smali）

### 改动 1 —— 解短路（核心）
- **位置**：`tryPatrolForAirport` 方法体第一条指令
- **动作**：删除首行 `return-void`
- **风险**：这一行极可能是当初为防 AI 乱飞加的 → 必须配合改动 2 一起上，不得单独解

### 改动 2 —— civ 守卫（只放开玩家）
- **位置**：解短路后、`iget mode` 之前
- **逻辑**：`if (airport.civID != Game.player.iCivID) return;`
- **锚点**：`Game.player:Player;` → `Player.iCivID:I`（DEX 实证字段名）
- **理由**：用户拍板"AI 以后搞"；AI 侧 `executeAIAssignment` 另有一条链，不受影响

### 改动 3 —— 概率 60% → 80%
- **位置**：`tryPatrolForAirport` 内 `Random.nextFloat()` 之后的比较常量
- **现值**：`const v, 0x3ECCCCCD`（= 0.4f）；语义 = `nextFloat() < 0.4 → 不起飞` ⇒ 起飞率 60%
- **改为**：`0x3E4CCCCD`（= 0.2f）⇒ 起飞率 **80%**
- **语义确认**：= 机场巡逻开关打开后，**每回合**该机场派出一批巡逻机的概率（与用户理解一致）

### 改动 4 —— 选点修正（航程按机型 + 绕场兜底）
- **现状问题 A**：`getRandomBorderProvince` 首行 `sget FIGHTER` **硬编码用战斗机航程**（500）；截击机（400）巡逻时会选到够不到的点 —— 也是代差不友好点 D2
- **现状问题 B**：候选只收 `civID != 本国` 的**外国省**；内陆机场（周边全本国）永远选不到 → 永不巡逻；且与 ICBM 原文 3510 "patrol **around the base**" 不符
- **改法**：
  1. `getRandomBorderProvince(Airport)` → `getRandomBorderProvince(Airport, AirUnit$AirType)`，把 `sget FIGHTER` 换成入参（调用方传实际派出的机型）
  2. 候选为空时**兜底**：改取 `getProvincesInRange(airport, type)` 里的**本国省**随机一个（绕场巡逻）
  3. 仍为空（航程内一个省都没有）→ 返回 -1 不起飞
- **兼容**：保留旧 1 参重载转发到 2 参（传 FIGHTER），避免其他调用点签名不一致（教训 ㊱ CheckSig）

### 探针（dKey 通道，多条必须 dKey —— 教训 ㊿）
```
pt:try:ap=<省>:mode=<0/1/2>        进入 tryPatrolForAirport
pt:skip:r=<civ|dup|rand|prov>     跳过原因（非玩家 civ / 已有任务 / 概率没中 / 无可达省）
pt:go:tgt=<目标省>:ord=<机型>      成功起飞
```

---

## 2. P-1b 按钮侧（⚠ 待用户一句话确认）

一个 [巡逻] 键不能同时是"机场开关"和"师级立即巡逻"，二选一：

| 方案 | [巡逻] 短按 | [巡逻] 长按 |
|---|---|---|
| **甲（推荐）** | **切换该师所属机场的自动巡逻开关**（PATROL ⇄ OFFENSIVE），Toast「本机场自动巡逻：开/关」 | 该师**立即起飞巡逻**（师级，不走配额） |
| 乙 | 该师立即起飞巡逻（师级） | 切换机场开关 |

> 备注：**师级巡逻其实已经存在**——现在选中战斗机/截击机师 →[行进]→ 点省，走的就是 `createPatrol`（`createMissionForClick` ord0/1 分支）。P-1b 只是把它变成"一键就地巡逻"（目标省 = `getRandomBorderProvince` 选点，省掉点省步骤）。
> 长按链已有先例：机库信息条长按详情（v43-v51），可复用同一套 hover/长按机制。

---

## 3. P-2 配额（用户已认同）

- `getPatrolQuota(ord)` 已存在且值即 ICBM 配额：**截击 2 / 战斗 4 / 轰炸 2 / 攻击 0**（DEX 实证）—— 目前**零调用者**
- 接法：`tryPatrolForAirport` 里统计"该机场该机型在飞的 PATROL 任务数" < quota 才起飞
- `createPatrol(airport, prov, **null**)` 的 **null 必须换成师 divKey** —— 否则走老 3 段 key 路径，会踩回"双师/派错机型"的老坑（教训 patch15）
- 巡逻池只收 FIGHTER / INTERCEPTOR；轰炸机、攻击机不进（配额本来就是 2/0，但要显式挡）
- 机库格显示「巡逻 N/4」

---

## 4. 验收清单（M-P1）

1. 机场开关默认关 → 不会自动起飞（`pt:skip:r=mode`）
2. 打开开关 → 若干回合内自动派出战斗机飞向航程内某省并返航（`pt:go`）
3. 关闭开关 → 不再自动派
4. **AI 机场全程无变化**（`pt:skip:r=civ`）
5. 内陆机场（周边全本国）也能巡逻（绕场兜底生效）
6. 截击机师巡逻不会选到 >400 的省（航程按机型）
7. 存档 → 读档：机场 mode 保持（`Airport.mode` 本来就在 Save/Load 里）
8. 五防线 CheckInvoke/CheckRegs/CheckInit/CheckSig/CheckRange 全 0 + 真机零崩溃

---

## 5. 顺带记录：引擎自带战报系统（A2 用，本轮不做）

DEX 实证 `Player` 类已有完整战报设施：
`lBattleReports:List;` / `iBattleReportsSize:I` / `addBattleReport()` / `getBattleReportID()` / `clearBattleReport()`

⇒ **A2 战报不需要自建面板**：打击结算后调 `Game.player.addBattleReport(...)` 即可进原版战报列表。等打击效果那条线定案后再做。

---

*本规格基于 v79 DEX 实证撰写；落地环境=Ubuntu 构建链（apktool b → mkzip → 签名 → pm install）。*
