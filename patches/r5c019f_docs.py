# -*- coding: utf-8 -*-
# 文档：把「自动打击开关态（每机场）」与「AI 自动打击」写进计划书 §H / §I（并回填 §G.4 第17项）
import io, os, shutil

NEXT = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'

H = u"""
---

## H. 自动打击「开关态」（每机场）——设计定稿（用户 2026-09-24 拍板；待开工）

### H.1 为什么必须做（现状实证）
- 玩家点「自动打击」按钮**没有任何作用**。按钮 = `InGame_AirForceOptions$BtnMission`（`missionType==1`，文本字面量"自动打击"全树**只此一处**）。
- 其 `actionElement()` 只做三件事：`airport.mode = Mode.OFFENSIVE` ＋ `stopAirportPatrols(provinceID)` ＋ `selectedMask=0; rebuildInGame_AirForce()`；**不建任务、不改任何开关**。
- 而 **`Mode.OFFENSIVE` 全树没有任何消费者**（它是 `Airport` 构造器默认值）：`mode` 只被 `tryPatrolForAirport`（`mode==PATROL`）与 `executeAIAssignment`（`mode==AI`）读 ⇒ 把 mode 设回"进攻"＝什么都没变 ⇒ **看起来"点了无用"**。
- 真正的对地自动打击在 `strikeTick_A1(civID)`（→`a1Snap/a1Scan/a1bScan`），挂在 `AirForceManager.update(civID)` 末尾、**无条件调用**⇒**恒开**，与按钮/`mode` 完全无关。

### H.2 口径（用户拍板）
1. **粒度＝每机场**（与"自动巡逻"一致；UI 文案仿 `自动巡逻：开/关` → `自动打击：开/关`）。
2. **默认＝开**（不改变现役体验）。
3. **关掉只影响"新派发"**，不召回已在飞的攻击机任务（"紧急召回"是另一个按钮的语义）。
4. 本轮只做**玩家侧**开关；"对 AI 开放"另立 §I，不与本批混做。

### H.3 实施清单（锚点已查实，编码时逐项执行）
| # | 位置 | 改动 | 备注 |
|---|---|---|---|
| 1 | `Airport.smali` 字段表 | 新增 `autoStrikeOff:Z`（**反向语义**，默认 false＝开启） | 见 H.4 为什么用反向字段 |
| 2 | `Airport.smali` 构造器 | 显式 `iput-boolean 0`（防御性；与 Java 默认一致） | `Airport.<init>(III)` 现有 `.registers 11` |
| 3 | `AirForceManager.a1bScan` 机场循环 | 循环体内加门：`iget-boolean` → `if-eqz` 跳过该机场 | 现循环只用 `v0 v1 v2 v7 v9 v10 v11 v12 v13` ⇒ **v3–v6/v8 空闲**，插入不需升寄存器 |
| 4 | `SaveGameManager$Save_Airport` | 新增同名字段 `autoStrikeOff:Z` | DTO，libGDX `Json` 序列化 |
| 5 | `SaveGameManager`（Airport→DTO 拷贝段，现 385–427） | 加一行 `iget-boolean`→`iput-boolean` | 紧邻 `prefPayload` 拷贝之后 |
| 6 | `LoadSavedGameManager`（DTO→Airport 拷贝段，现 4117–4157） | 加反向一行 | 同上 |
| 7 | `InGame_AirForceOptions$BtnMission.actionElement()` `missionType==1` 分支 | 改为**翻转 `airport.autoStrikeOff`**（取代"设 mode=OFFENSIVE"），保留 `stopAirportPatrols` + `rebuildInGame_AirForce()` | 保留重建以便文案即时刷新 |
| 8 | 同文件 `getTextToDraw()` | `missionType==1` 时返回 `自动打击：开` / `自动打击：关`（新增 2 个字面量） | 仿 `missionType==0` 的现有写法 |
| 9 | 探针 | `a1bScan` 处打 `nAS st=<0/1>`（该机场是否暂停自动打击，逐机场一次）；可选 `nAS sk=<省>=1`（因开关跳过的机场省） | 走 `a1bLog`/`dKey` 通道，无分支拼接 |

### H.4 存读档兼容分析（关键，已实证）
- 存读档机制 = **libGDX `Json`**（`SaveManager.getJson()` + `setElementType` + `toJson/prettyPrint` + `fromJson`），即**文本 JSON、按字段名存取**。
- 旧档缺少新键 ⇒ 反序列化后该字段保持**对象构造时的默认值**。加载链是"先由 `syncAllFromProvinces()` 建好 `Airport`（跑构造器）→ 再用 DTO 字段逐项覆盖"。
  ⇒ 若用**正向字段**（`autoStrike=true` 表示开），旧档 DTO 的默认 `false` 会在覆盖时把构造器的 `true` 冲掉 ⇒ **旧档会静默变成"关"**（不可接受）。
  ⇒ **因此采用反向字段 `autoStrikeOff`**：旧档、新建机场一律 false ⇒ 语义＝**开启**，零静默变化；玩家主动关时才写 true。
- 新档会多出该键，旧版本客户端不参与回读，无兼容问题。

### H.5 验收口径
1. UI：选中某机场 → 按钮文案在 `自动打击：开` / `自动打击：关` 间切换；面板重建后仍一致（重新打开不丢）。
2. 行为：把某机场关掉后 ⇒ 抓样中该机场**不再新增** `nA1b` 派发（`nAS st=1` 成串出现），**其它机场不受影响**；已在该省上空的攻击机任务照常打完返回。
3. 存读档：关掉 → 存档 → 读档 ⇒ 仍是"关"；未动过的机场读档后仍是"开"。
4. 门禁九件套 + 真机自检 + 抓样（`nGA fire` 等弹药机制回归不变）。

### H.6 风险与对策
| 风险 | 对策 |
|---|---|
| 改了 `SaveGameManager`/`LoadSavedGameManager` ⇒ 存档面最大风险 | 只做"新增字段+一行拷贝"，不重排既有字段；改动后**先做一次存读档实测**（新建机场/切换开关/存档/读档） |
| `a1bScan` 插入门引入死代码/方向错 | 用 `if-eqz → 跳到已存在的循环推进点`；跑 `reach.py`（死区=无）+ `check_branch.py`（方向可疑=0） |
| 面板文案不刷新 | 与 `missionType==0` 同款：`rebuildInGame_AirForce()` 已在 actionElement 末尾 |
| "关掉后仍看到飞机起飞" | 属**已在飞任务**（按 H.2 不召回）——判读时以"新增派发"为准 |
"""

I = u"""
---

## I. 「AI 自动打击」（对 AI 开放对地自动打击）——立项与约束（用户 2026-09-24 立项；未开工）

### I.1 现状（为什么 AI 现在拿不到，三条实证）
1. `AirForceManager.updateAll()`（AFM:7154）对**所有文明**逐个调 `update(civID)`（AFM:6904），后者末尾无条件调 `strikeTick_A1(civID)`。
2. 但 `strikeTick_A1`（AFM:6888）第一件事是**玩家门**：`p0 != Game.player.iCivID ⇒ return-void` ⇒ **AI 永远进不去**（＝"自动打击不对 AI 开放"）。
3. AI 本应走的入口 `executeAIAssignmentForAirport`（AFM:1021）**第 1025 行即 `return-void`，其后 61 条指令全是死代码**（reach.py：total 62 / reachable 1 / dead 61）⇒ **AI 侧空军自动派发是空壳**；`executeAIAssignment(civID)` 只对 `mode==AI` 的机场调用它 ⇒ 实际无效果。

### I.2 四个硬约束（必须先解决/拍板）
| # | 约束 | 现状与影响 |
|---|---|---|
| 1 | **共享静态状态** | `a1Gsee:[I`（"见过"记忆）、`a1Known:[B`、`a1bDay/Hour/Turn`（时钟）都是**全局单份**。若 AI 共用同一条链 ⇒ **会覆盖/污染玩家的情报记忆** ⇒ 必须先 per-civ 化（记忆分桶） |
| 2 | **可见性语义** | `Province.fogDrawArmy` 是**单省单一布尔**（人类玩家视角的迷雾）⇒ 给 AI 用等于"AI 借用玩家情报"，语义不成立（除非明确接受该简化） |
| 3 | **节流/性能** | `updateAll` 每帧遍历所有文明；每个 AI 都跑完整候选扫描（全图省数 × 距离计算）⇒ 开销按"文明数 × 机场数"放大 ⇒ 需 per-civ 节流（再多一份状态） |
| 4 | **AI 侧开关/默认** | 现在没有任何"自动打击"状态；对 AI 开放后需定义 **默认开/关**、是否**只对交战国**开放 |

### I.3 两条路线
- **路线②（共用同一条链）**：把 `strikeTick_A1` 的玩家门改成"该文明启用了自动打击 ∧ 正在交战（`isAtWar`）"，先做 `a1Gsee/a1Known` per-civ 化 + 节流。效果最直接，改动面最大（记忆结构 + 节流 + 存读档）。
- **路线③（AI 专用链）**：复活空壳 `executeAIAssignmentForAirport`，让 AI 用它自己的派发逻辑（选靶核心可复用 `a1b×`，但传 AI 的 civID + **独立记忆**）。对玩家零影响，但要重新设计 AI 的"情报/可见性"与接线。
- **判读建议**：先做 §H（开关态，零风险、可立即验收）→ 再定 ②或③；分岔点只有两个问题：**AI 的情报判定用什么** 与 **AI 开关粒度/默认**。

### I.4 待用户拍板（4 条）
1. AI 默认：**默认开** 还是 **默认关**？是否**只对交战国**开放？
2. AI 情报语义：接受"**沿用玩家迷雾**（简化）"还是要求"**AI 独立情报**"（工作量大得多）？
3. 路线：②（共用链）还是 ③（AI 专用链）？
4. 节流粒度：每帧 / 每 N 帧 / 每小时一次（当前 `a1bClock` 为单份时钟，若 per-civ 需改造）。
"""

def backup(p):
    b = p + '.pre_r5c019f'
    if os.path.exists(p) and not os.path.exists(b):
        shutil.copy2(p, b)

t = io.open(NEXT, encoding='utf-8').read()
if u'## H. 自动打击' in t:
    print('已存在，跳过')
else:
    backup(NEXT)
    t = t.rstrip('\n') + '\n' + H + '\n' + I + '\n'
    # 回填 §G.4 第17项：指向 §H/§I
    t = t.replace(u'| 17 | 自动打击开关 ＋ 设置面板（B3-A6） |',
                  u'| 17 | 自动打击开关（**已定稿 → §H**，每机场粒度，待开工）＋ 设置面板（B3-A6） |')
    t = t.replace(u'### G.4 功能队列（未排期）',
                  u'### G.4 功能队列（未排期）\n> 注：**"AI 自动打击（对 AI 开放）"已单独立项 → 见 §I**；"自动打击开关态"设计定稿 → 见 §H。')
    io.open(NEXT, 'w', encoding='utf-8').write(t)
    print('OK 计划书已追加 §H / §I，并回填 §G.4')