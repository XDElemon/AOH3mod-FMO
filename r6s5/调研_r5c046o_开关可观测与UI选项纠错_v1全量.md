# 调研 · r5c046o（A+B）—— 开关可观测性 + UI 选项纠错 · v1 全量调研

> 时间：2026-09-26 ｜ 只读调研（未改一行 smali）｜ 基线：**r5c046n**（dex `9aa1396d…`／apk `d7c8a279…`，已装机）
> 用户口径：**A**＝把 `autoStrikeOff` 打进机场 dump（可观测）；**B**＝`iActiveID` 越界/未选中时不要静默落到第 0 个机场（提示 + 不动作）。**C 之后再说、D 下批做**。
> 触发背景：用户报"九个机场自动打击全关仍然出动"。实测结论（本文件 §4）：开关与门都正确，问题在于**看不出自己关的是哪个机场**。

---

## 1. 症状与实测判读（r5c046n 场次，切片 522,762 行）

| 观测 | 值 | 结论 |
|---|---|---|
| `nA2m civ=` | 全 =73（玩家） | 扫的都是玩家机场 |
| `nA2m mode=` | 全 =1（`OFFENSIVE`；枚举实测 `PATROL=0/OFFENSIVE=1/AI=2`） | 不是 AI 模式绕过 |
| `nA4d` | 42 行 ÷3 = **14 次战时支**，全 `civ=73` | 老路在跑 |
| `nA4e k=` | 0:**10**（成功）｜1:1117（骰没过）｜5:63（无闲置轰炸师）｜6:16（和平支无战斗机） | 有 10 次真派发 |
| `k=0` 位置 | 前 1/3:0 ｜中 1/3:0 ｜**后 1/3:10**；最后一次在行 459,138 | 派发集中在后半段 |
| **最后一次 k=0 之后的 63k 行** | `nA2m/nA4d/nA4e` **全 0** | **开关关完后整条链完全安静** |
| `nA1 ap= / nA1b ap= / nP2s / nDSPT / nHAC / nAC / nMS` | 全 0 | AI 线、自动拦截、空战、导弹均未参与 |
| `p0K` 调用点 | 全树 6 处，**全在 `executeAIAssignmentForAirport`** | 出现 `k=0` 必须先过玩家的门 |
| 装机 dex 的门 [AFM:8255-8263] | `if-gez v4` / `if-ne v3,v4` / `iget-boolean autoStrikeOff` / `if-nez → 跳过` | 与设计逐字一致 |

⇒ **开关与门都正确**：`flag==0` 是派发的必要条件；关完之后链彻底安静。

## 2. 为什么"看不到自己关的是哪个机场"（B 的根因）

`InGame_AirForceOptions$BtnMission`（面板的 5 个任务按钮：0=自动巡逻逻辑、1=自动打击开关、2=AI 模式、3=紧急召回、4=另一支）：

| 位置 | 行为 |
|---|---|
| `<clinit>` [InGame_AirForceOptions:24-26] | **`iActiveID` 初值 = -1** |
| `BtnAirport.actionElement` [InGame_AirForce$BtnAirport:44-48] | 点机场列表时才 `sput iActiveID = airportIndex` |
| `BtnMission.actionElement` [BtnMission:72-87] | 读 `iActiveID`：**`<0` ⇒ 置 0；`≥size` ⇒ 置 0** ⇒ 静默作用到**列表第 0 个机场** |
| `BtnMission.getTextToDraw` [BtnMission:413-424, 431-437] | 同一套钳位 ⇒ 按钮文本「**自动打击：开/关**」显示的是**第 0 个机场**的状态 |

⇒ **未选中机场时（初值 -1），按「自动打击」既改的是第 0 个机场、显示的也是第 0 个机场的状态**；用户以为在配置眼前那个机场 ⇒ "九个全关"很可能是"看着 #0 的状态、按了别的对象"。这正是 A（日志可见）与 B（不静默落到 #0）要解决的问题。

## 3. A 的实现面（可观测性）

`AirDbgLog.p0Air(Airport;String;)V`［AirDbgLog:748-902，`.registers 10`］当前字段序列：

`civ= ap= mode=(ordinal) q=(buildQueue.size) tot=(totalAircraft) rem=(buildTurnsRemaining) it= ft= bm= at=`（it/ft/bm/at 由 `airport.aircraft:Map<AirType,List>` 按机型取值）

- 每个字段的模式：`const-string v1," <name>="` → `p0Tag(p1,v1)String` → `move-result-object v0` → 取值 → `e5i(String;I)`。
- 寄存器：**只用 v0/v1/v2/v3**（v3 全程持 `aircraft` Map）⇒ **v4–v9 空闲**；插入点（最后一个 `e5i` 之后、`return-void` 之前）v0/v1/v2 全死 ⇒ **加一个字段不需要动 `.registers`**。
- 调用点共 3 个：`AFM:8238`（nA2m，机场循环 dump）、`AFM:9145`、`Airport:758`（nA3b，`updateBuild` 入口）⇒ 纯日志，无行为影响。
- 拟加字段：` strike=`（取 `Airport.autoStrikeOff:Z`）。**布尔直传 `e5i(String;I)` 在本项目已有先例**（`nA2w` 探针就是把 `isEmpty()` 的布尔直接喂 `e5i`，AFM:8191-8197）⇒ 校验器允许（bool 属 int 家族）。
- 防撞名：全树无 `"strike=` 键（实测 0 命中）；与字段名 `strikeKind`/`strikeTargetMissionID` 不冲突。

## 4. B 的实现面（UI 纠错）

| 方法 | 现状 | 拟改 |
|---|---|---|
| `BtnMission.actionElement` [43-…，`.registers 11`] | [72-87] 钳位到 0 → 用 list[0] | `iActiveID<0` 或 `≥size` ⇒ **不动作**：走 `Game.menuManager.addToast_Error("请先选择机场")` + 探针 `afp:noSel` + `return-void` |
| 同上（诊断增强） | 无 | 解析出机场后补一条探针：`afp:press ap=`（该机场 `provinceID`）⇒ 以后每次按键**能证明作用在哪个机场** |
| `BtnMission.getTextToDraw` [369-…，`.registers 8`] | [413-424] 钳位到 0 → 显示 list[0] 状态 | 同样判据 ⇒ 直接返回 **「未选中机场」**，不再冒充 #0 的状态 |

- Toast 模板（照抄 `AFM:3485-3493`）：`sget-object vX, LGame;->menuManager:MenuManager;` → `if-eqz vX, :skip` → `const-string vY,"文本"` → `invoke-virtual {vX,vY}, MenuManager;->addToast_Error(String)V`。
- `BtnMission` 内共 4 处读 `iActiveID`：72（actionElement 主路径）、238/290（actionElement 的 type3/4 支）、413/470（getTextToDraw）⇒ 本批**只改主路径与显示**，type3/4 支保持原样（登记待办）。
- 其它按钮类（`BtnPayload/BtnNuke/BtnBuild/BtnSelect`）各有自己的钳位副本 ⇒ **本批不动**（登记待办）。

## 5. 本轮不涉及
C（全局全开/全关按钮）、D（攻击机纳入自动派发）、`BtnMission` type3/4 支与其它按钮类的钳位、任何派发/开关语义、`.registers` 调整、存档格式。