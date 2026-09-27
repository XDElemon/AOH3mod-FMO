# -*- coding: utf-8 -*-
# r5c046z3_docs.py —— 批 r5c046z3 全套落盘
import os, time
D = '/sdcard/GLG/历史23/r6s5/'; ROOT = '/sdcard/GLG/历史23/'
TS = time.strftime('%Y-%m-%d %H:%M')
HEAD = ('> 批次 **r5c046z3** ｜ 生成 ' + TS +
        ' ｜ dex `e2efa805676bf81f95c2d6ffdc997a3c` ／ apk `39dc10c524ddf867f8a3a8119dc75e1e`'
        '（738,377,701 B）｜ Earth3=18510 ｜ 基线 `1263151053` ｜ 状态：已装机 · 三对齐全绿 · 待实测\n\n')

CRASH = HEAD + '''# 闪退复盘 · r5c046z3（NoSuchFieldError：Float.POSITIVE_INFINITY 被当对象读）

## 一、现场（logcat crash buffer 原文）
```
09-27 11:14:01.764 16625 20833 E AndroidRuntime: FATAL EXCEPTION: Thread-6
09-27 11:14:01.764 16625 20833 E AndroidRuntime: Process: age.of.history3.qiamxi.zhiri, PID: 16625
09-27 11:14:01.764 16625 20833 E AndroidRuntime: java.lang.NoSuchFieldError:
    No static field POSITIVE_INFINITY of type Ljava/lang/Float; in class Ljava/lang/Float;
    or its superclasses (declaration of 'java.lang.Float' appears in /apex/com.android.art/javalib/core-oj.jar)
```
- 线程 `Thread-6`（回合推进线程）＝ `updateOffensivesP → tryStrikeForAirportP → pickStrikeTargetP` 首次真正执行到选靶。
- 这也是**好消息**：说明前几批的闸门全部打开，P 线终于"跑到了选靶"。

## 二、根因（逐字）
`pickStrikeTargetP` 原代码（r5c046z 批我写的）：
```
sget-object v3, Ljava/lang/Float;->POSITIVE_INFINITY:Ljava/lang/Float;
invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
move-result v3
```
`java.lang.Float.POSITIVE_INFINITY` 的真实声明是 **`public static final float`（类型 F）**，不是 `Float` 对象。
- smali 里把它写成 `Ljava/lang/Float;` 并配 `sget-object`：**ART 校验器按"smali 声明的类型"通过**，所以没有 VerifyError；
- 但**运行时字段解析**按真实签名查找 ⇒ 找不到 `...:Ljava/lang/Float;` ⇒ `NoSuchFieldError`。
⇒ 这类错误**只在实际执行到那一行时才炸**，因此前几批（闸门未开）都"看着没事"。

## 三、修复（唯一正确姿势）
```
# +Inf 必须走 float 渠道：
const v10, 0x7f800000                                  # int 位型：+Inf 的 IEEE754 编码
invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F
move-result v3                                         # v3 是 float
```
> 也可用 `double +Inf` 位型 `const-wide …0x7ff0000000000000L` + `double-to-float`（占两个寄存器），本批选单位寄存器方案。

## 四、新增铁律（写进编写规范）
1. **凡是 `java.lang.*` 的"静态常量"，先确认它是基本类型还是对象**：
   `Float.POSITIVE_INFINITY/MAX_VALUE/MIN_VALUE`、`Double.*`、`Integer.MAX_VALUE` 等全是**基本类型**；
   能按对象读的只有 `Boolean.TRUE/FALSE`、`Integer` 的缓存对象等（且签名要写对）。
2. smali 中 `sget-object …:Ljava/lang/X;` 读一个基本类型字段 ⇒ **能过校验、必炸运行**（比 VerifyError 更阴）。
3. 需要"无穷大/最大浮点"时，统一走 `Float.intBitsToFloat(0x7f800000)`（+Inf）
   或 `Float.intBitsToFloat(0x7f7fffff)`（Float.MAX_VALUE）。
4. 新门禁 **51-1 / 51-5** 已把"对象读 Float"写法纳入拦截。

## 五、症状 ↔ 修复对应表
| 症状 | 原因 | 修复 |
|---|---|---|
| 进入战斗若干回合后必崩（GLThread/Thread-6） | 选靶首次执行到 `POSITIVE_INFINITY` 对象读 | 改 `intBitsToFloat` 渠道 |
| 崩溃前 `nAS=0`（看日志像"没派机"） | 崩在派发之前 | 同上；修好后 `nAS` 才有机会 >0 |
'''

SURVEY = HEAD + '''# 调研 · r5c046z3（按钮"串机场"真修）

## 1. 用户复现（原话）
「点侧边栏进入选机场界面 → 选一个机场 → 把自动打击从关变开 → 切出 → 换一个机场点进去 → 本应关的却是开」；**自动巡逻按钮同样**。

## 2. 现场读数（样本 `r6s5/r5c046z2_s1.txt`，24.8 MB，基线 1238345269→1263151053）
| 项 | 读数 | 判读 |
|---|---|---|
| `afp:src` ×7 | **全部 `a=14`** | 7 次按键**全走兜底 src=4（list[0]）** ⇒ 面板侧"当前机场"始终无效 |
| `afp:press ap=` ×7 | 6258 ×1、6336 ×6 | 每次都落到**同一个机场**（省 6258/6336） |
| `afp:mt` ×7 | 1/0 混合 | 打击键与巡逻键**同样**走兜底 ⇒ 两个按钮都"串机场" |
| `ProvinceDraw` 每帧探针 `afp:st: sel=-1 mode=0 ahp=-` ×23351 | **sel 恒 -1** | 面板的"当前机场"信号整体是死的 |
| `nAS` | 0 | 派发未成功（本批崩溃在选靶，故为 0，与按钮问题无关） |
| `nA4e k=0` | **0** | ✅ 老线已不再替玩家轰炸（E2 生效） |

## 3. 代码取证（为什么 iActiveID 总是无效）
| 事实 | 证据 |
|---|---|
| `BtnAirport` 的行下标是 **`getAirportsForCiv(playerCiv)` 的下标**（与我们解析同一列表），且建行时用 `hasAirportBuilding(provinceID)` 过滤但**下标不变** | `InGame_AirForce` 建行段：`v1` 循环下标 → 构造参数 p8=airportIndex；`airportIndex` = v1 |
| 行点击把该下标写进 `iActiveID`，**随后立刻**调 `setVisibleInGame_AirForce(true)` | `BtnAirport.actionElement` 逐字 |
| `setVisibleInGame_AirForce(false)`（隐藏路径）**会把 iActiveID 重置为 -1** | `MenuManager`：`const/4 v1,-0x1; sput v1, …iActiveID` |
| `visible=true` 时**按 iActiveID 决定显示"列表屏"还是"该机场选项屏"** | 同上 `if-gez v0(iActiveID), :cond_66` 两分支 |
| `selectedMask` 是**机型位掩码**（默认 0xf 遍历 AirType，用完清零），**不是机场选择** | `BtnMission` 193-200 / 269 |
⇒ 结论：本入口流下 `iActiveID` 没有一个持久可靠的来源（随时被隐藏路径清零），**面板侧没有"当前机场"记忆** ⇒ 每次按键都落到同一个兜底机场 ⇒ 观感＝所有机场一起变。

## 4. 设计决定（本批采用）
**新增"点行记忆"**（最小侵入、不动 UI 布局）：
1. `InGame_AirForceOptions` 新增静态字段 `a1MemIdx:I`（clinit 初值 -1）。
2. `BtnAirport.actionElement`：写 `iActiveID` 的同时写 `a1MemIdx = 行下标`；并在 `setVisibleInGame_AirForce(true)` **之后**再断言一次 `iActiveID = 行下标`（恢复引擎"点行即进该机场选项屏"的本意）。
3. `BtnMission.pickAirport` 解析顺序改为：
   **①`iActiveID`（有效即用）→ ②`a1MemIdx`（点行记忆，src=5）→ ③`selectedAirportProvinceID`（死字段）→ ④`Game.iActiveProvince` → ⑤`list[0]`**
   ⇒ 显示与写入**同链**，且都以"用户点过的那一行"为准。

## 5. 未解决/下一批条件
若用户的入口**根本不经过行点击**（即在列表屏上直接按这两个按钮），`a1MemIdx` 仍是 -1 ⇒ 只能继续走兜底（看起来仍会"串机场"）。
此时的正解是**把这两个按钮变成"每行独立"**（UI 级改动，本轮用户明确说不做 UI 面板）——需要时再开。
'''

DES = HEAD + '''# 设计逻辑 · r5c046z3

## 1. 版本号 + 定位
**r5c046z3**：①**修 P0 闪退**（`Float.POSITIVE_INFINITY` 被当对象读 ⇒ 运行时 `NoSuchFieldError`）②**真修「串机场」**（新增点行记忆 `a1MemIdx`，让面板有可靠的"当前机场"）。不动 AI 空军、不改 UI 布局。

## 2. 设计目标
- 现象 A：进战斗几回合必崩（`Thread-6`）⇒ 意图：选靶/派发链**不得因常量取法崩溃**。
- 现象 B：在一个机场把开关改成"开"，另一个机场进去也是"开"（打击与巡逻**都是**）⇒ 意图：**按钮只作用于当前选中机场**，且用户看得见改的是谁。

## 3. 设计规则与判定顺序（人话）
**按钮 → 机场解析（`pickAirport`）**，先判先用：
1. `iActiveID ≥ 0 且 < 列表长度` ⇒ 用它（引擎选中态）。
2. **`a1MemIdx ≥ 0 且 < 列表长度`** ⇒ 用它（"我上次点的那一行"）。
3. `selectedAirportProvinceID ≥ 0` ⇒ 用该省机场（本作从未写入 ⇒ 恒不命中，保留兼容）。
4. `Game.iActiveProvince` ⇒ 用当前打开省的机场。
5. 兜底 `list[0]`。
**点行语义**：点行 ⇒ 记 `a1MemIdx = 行下标`，并再次断言 `iActiveID = 行下标`（保证引擎切到该机场的选项屏）。
**选靶常量**：+Inf 由 `Float.intBitsToFloat(0x7f800000)` 取得（float 渠道）。

## 4. 参数与阈值表
| 名称 | 值 | 含义 | 影响 |
|---|---|---|---|
| `a1MemIdx` | -1（初值）/ 行下标 | 用户点选的机场在 `getAirportsForCiv(playerCiv)` 中的下标 | 只由点行写入；跨面板重建仍有效 |
| src 码 | 1…5 | 解析来源：1=无玩家/实例、2=selectedAirportProvinceID、3=iActiveProvince、4=list[0]、**5=点行记忆** | 日志 `afp:src a=<mode*10+src>` 可直接判读 |
| +Inf 位型 | `0x7f800000` | IEEE754 正无穷 | 用 `intBitsToFloat` 转 float，禁止 `sget-object` 读 |

## 5. 状态与生命周期
用户点行 → `a1MemIdx/iActiveID` 记住 → 按开关 → `pickAirport` 解析出该机场 → 写 `airport.autoStrikeOff`/`airport.mode` → 面板重建 → **显示走同一条解析链** ⇒ 显示与写入永远指向同一机场。

## 6. 边界与不变量
- 不改 AI 链、不改任务推进/结算、不改 UI 布局（只加一个静态字段）。
- `a1MemIdx` 初值必须 -1（0 会被当成"第 0 个机场"⇒ 又变成老的兜底观感）。
- `.registers` 未上调：`pickAirport` 仍 9、`BtnAirport.actionElement` 仍 3（复用 v0/v1）。

## 7. 玩家可感知
- 正常：在 A 机场开「自动打击」⇒ A 变开、B/C 仍为自己状态；巡逻同理；按行进入时面板直接显示**该机场**。
- 崩溃：不再出现 `NoSuchFieldError`（选靶可以正常跑完，`nAS` 才有机会 ≥1）。
- 异常：若从不点行直接按按钮 ⇒ 仍走兜底（下一批需做"每行独立按钮"才能真正闭环）。

## 8. 失败与回退（正常不出兵）
开关关、概率门 20% 放弃、无空闲师/该师已在飞、视野内无目标或超航程、机型不在白名单 —— 皆属节流。
**bug 定义**：条件齐备却永远不出兵，或"改了 A 却动了 B"。

## 9. 验收标准（可证伪）
| 看什么 | 通过 | 不通过 |
|---|---|---|
| 稳定性 | 无 `NoSuchFieldError`/VerifyError | 仍有崩溃 |
| 按钮 | 改 A 只有 A 变；`afp:src a=15`（src=5）出现 | 多机场同变；src 仍恒为 14 |
| 出击 | `nAS ≥ 1` | 恒 0 |
| 老线 | `nA4e k=0` 不再出现 | 仍出现 |

## 10. 变更清单摘要
1. `pickStrikeTargetP`：+Inf 改 `intBitsToFloat(0x7f800000)`（去 `sget-object Float`）。
2. `InGame_AirForceOptions`：新增静态字段 `a1MemIdx:I` + clinit 初值 -1。
3. `InGame_AirForce$BtnAirport.actionElement`：点行写 `a1MemIdx`；`setVisible…` 之后再断言 `iActiveID`。
4. `BtnMission.pickAirport`：新增"点行记忆"分支（src=5），优先于省兜底。
5. 门禁：新增 **51**（5 项 + 3 负样本）；㊽ 断言同步（`floatValue()` 或 `intBitsToFloat` 皆算 float 渠道）。

## 11. 风险与待办
- 若入口不点行，兜底仍在（见上）；彻底闭环需"每行独立按钮"（UI 级，本轮按你要求不做）。
- `a1MemIdx` 是**我们新增**的字段：若将来 PC/其他线也改这个类，需保留该字段与 clinit 初值（写进交接文档）。
- 选靶崩溃已修，但 `nAS` 仍需实测确认（本批只保证"能跑到派发"）。

## 附：修 bug 三问
| 症状 | 错误的规则 | 正确的规则 | 之前为什么会错 |
|---|---|---|---|
| 战斗几回合后闪退 | "`Float.POSITIVE_INFINITY` 可以按 `Float` 对象读" | "它是 `static final float`；要 +Inf 得用 `intBitsToFloat(0x7f800000)`" | 我校验时只看"校验器是否通过"——ART 按 smali 声明类型放过，**运行时才炸** |
| 改了 A 机场、B 也变 | "面板总能给出当前机场（iActiveID）" | "点行记忆必须由我们自己维护（a1MemIdx），并在 setVisible 后再断言" | `MenuManager` 隐藏路径会把 iActiveID 清成 -1；实测 7/7 次按键全走兜底 |
'''

CARD = HEAD + '''# 验收卡 · r5c046z3（闪退修复 + 按钮串机场真修）

## 一、交付件（已独立核验）
| 项 | 值 |
|---|---|
| 设备 apk | `39dc10c524ddf867f8a3a8119dc75e1e`（738,377,701 B）✅ |
| 设备 dex | `e2efa805676bf81f95c2d6ffdc997a3c` ✅ |
| Earth3 | `18510` ✅ ｜ 基线 `1263151053` |
| 归档 | `build_apk/dbg_signed77_v119_r5c046z3.apk` ｜ 回滚 = **z2**（`5d736970…`） |

## 二、本批修了什么
1. **闪退**：选靶里的 `Float.POSITIVE_INFINITY` 误当对象读 ⇒ 改 `Float.intBitsToFloat(0x7f800000)`。
2. **串机场**：新增"点行记忆"`a1MemIdx`（点哪个行就记住哪个机场），按钮解析优先用它；点行后还会再断言 `iActiveID`，让面板直接进入**该机场**。

## 三、请这样测（6 步）
1. **重启游戏**。
2. 进空军界面：**先点一个机场那一行**（进入它的选项），按「自动打击」⇒ 应变成"开"。
3. 返回列表，**点另一个机场那一行** ⇒ 它的「自动打击」应仍是**它自己的状态**（关）。
4. 对「自动巡逻」做同样的两步验证。
5. 战时让开着闸的机场跑 2~4 回合 ⇒ 应有出击（攻机打部队/轰机炸本土，航程内）。
6. 玩够后喊「抓」，我读 `afp:src`（应出现 `a=15`）/`nAS`/`nA4e` 判读。

## 四、判据表
| 现象 | 通过 | 不通过 |
|---|---|---|
| 稳定性 | 不闪退 | 出现 `NoSuchFieldError` 等 |
| 按钮 | 改 A 只动 A | 多机场同变 |
| `afp:src` | 出现 `a=15`（src=5 记忆命中） | 仍恒 `a=14`（兜底） |
| `nAS` | ≥1 | 恒 0 |
| `nA4e k=0` | 不出现 | 出现 |

## 五、正常"没动"的原因（非 bug）
开关关；概率门 20% 放弃；无空闲师或该师已在飞；视野内无目标或超航程；机型不在白名单。

## 六、回滚
重装 `build_apk/dbg_signed77_v119_r5c046z2.apk`（apk `5d736970…`）。

## 七、文档索引
`闪退复盘_r5c046z3_NoSuchFieldError.md`｜`调研_r5c046z3_按钮串机场真修_v1.md`｜`设计逻辑_r5c046z3.md`｜
脚本 `r5c046z3_all.py`（survey/patch/gate，门禁 51）｜计划书 §105/§106｜`INCR.md` §49/§50
'''

def w(name, text, also_root=False):
    p = D + name; open(p, 'w', encoding='utf-8').write(text)
    print('[OK] %s (%d B)' % (p, os.path.getsize(p)))
    if also_root:
        p2 = ROOT + name; open(p2, 'w', encoding='utf-8').write(text)
        print('[OK] %s (%d B)' % (p2, os.path.getsize(p2)))

w('闪退复盘_r5c046z3_NoSuchFieldError.md', CRASH)
w('调研_r5c046z3_按钮串机场真修_v1.md', SURVEY)
w('设计逻辑_r5c046z3.md', DES, also_root=True)
w('验收卡_r5c046z3.md', CARD)

# 规划书叠加
PLAN = D + 'AI打击接入_调研与计划书v1.md'
open(PLAN, 'a', encoding='utf-8').write('''

## 105. r5c046z3：P0 闪退（Float 对象误读）+「串机场」真修（2026-09-27）

**触发**：用户报"闪退了"＋"按钮串机场（自动打击与自动巡逻相同）"。

**① 闪退**：`java.lang.NoSuchFieldError: No static field POSITIVE_INFINITY of type Ljava/lang/Float;`
⇒ `Float.POSITIVE_INFINITY` 实为 `static final float`，r5c046z 批我按对象读（`sget-object …:Ljava/lang/Float;`）。
ART 校验按 smali 声明类型放过 ⇒ **只在运行到那行才炸**（好的一面：说明前面所有闸门已打开）。
修：`const v10,0x7f800000` + `Float.intBitsToFloat(I)F` + `move-result v3`。

**② 串机场**：样本 `r5c046z2_s1.txt` 7/7 次按键 `afp:src a=14`（兜底 list[0]）、`afp:st: sel=-1` 恒 -1
⇒ 本入口流下 `iActiveID` 无可靠来源（`MenuManager` 隐藏路径会清 -1）。
修：新增静态字段 `a1MemIdx`（点行写行下标，clinit 初值 -1）+ `BtnAirport` 在 `setVisible` 后再断言 `iActiveID`
+ `pickAirport` 解析链改为 `iActiveID → a1MemIdx(src=5) → selectedAirportProvinceID → iActiveProvince → list[0]`。

**产物**：dex `e2efa805676bf81f95c2d6ffdc997a3c` / apk `39dc10c524ddf867f8a3a8119dc75e1e`；装机 Success；三对齐 ✔；基线 `1263151053`。
**门禁**：新增 **51**（+Inf 渠道 / a1MemIdx 字段与初值 / 点行记忆与 setVisible 后断言 / 解析顺序 / 禁"对象读 Float"；负样本 3/3）；㊽ 同步接受 `intBitsToFloat`；回归 ㉙/㊾/㊿/arity/invoke 全绿。
**铁律新增**：`java.lang.*` 的 `POSITIVE_INFINITY/MAX_VALUE/…` 都是**基本类型常量**；smali 里 `sget-object …:Ljava/lang/X;` 读它们**能过校验、必炸运行**（比 VerifyError 更阴）⇒ 新门禁 51-1/51-5 永久拦截。
**待办**：若用户入口不经过"点行"，`a1MemIdx` 仍 -1 ⇒ 需做"每行独立按钮"（UI 级）才能彻底闭环。

## 106. 装机/空间纪律（沿用）

- `/data/local/tmp` 仅保留当前批次 apk（装机后即删）；`build_apk` 只保留最近 3 个归档（w/z2/z3，z1 已轮换出）。
- 三对齐判据：apk md5 ＋ apk 内 classes.dex md5 ＋ Earth3=18510 ＋ apk 字节数（738,377,701）。
''')
print('[OK] 计划书 §105/§106 (%d B)' % os.path.getsize(PLAN))

INCR = ROOT + 'build_inputs/r5c046/INCR.md'
open(INCR, 'a', encoding='utf-8').write('''

## 49. r5c046z3 —— P0 闪退（Float.POSITIVE_INFINITY 对象误读）

- 现场：`NoSuchFieldError: No static field POSITIVE_INFINITY of type Ljava/lang/Float;`（Thread-6，11:14）
- 根因：该字段实为 `static final float`；smali 用 `sget-object …:Ljava/lang/Float;` 能过 ART 校验，运行时字段解析失败
- 修法：`const v10,0x7f800000` + `Float.intBitsToFloat(I)F` + `move-result v3`
- 铁律：`java.lang.*` 静态常量（POSITIVE_INFINITY/MAX_VALUE/…）一律当基本类型处理；新门禁 51-1/51-5 拦截
- 产物：dex `e2efa805…` / apk `39dc10c5…`；装机 Success；三对齐 ✔；基线 `1263151053`

## 50. r5c046z3 —— 「串机场」真修（a1MemIdx 点行记忆）

- 证据：样本 7/7 次按键 `afp:src a=14`（兜底 list[0]）；`ProvinceDraw` 探针 `afp:st: sel=-1` 恒 -1
- 机制：`MenuManager.setVisibleInGame_AirForce(false)` 清 `iActiveID=-1`；点行写入后紧接 setVisible ⇒ 面板无可靠"当前机场"
- 修法：新增静态字段 `a1MemIdx`（点行写行下标、clinit 初值 -1）+ `BtnAirport` 在 setVisible 后再断言 `iActiveID`
        + `pickAirport` 解析链：`iActiveID → a1MemIdx(src=5) → selectedAirportProvinceID → iActiveProvince → list[0]`
- 新增门禁 51（5 项 + 3 负样本）；㊽ 断言同步（接受 `intBitsToFloat`）
- 遗留：入口不点行时仍走兜底 ⇒ 需要时做"每行独立按钮"（UI 级）
''')
print('[OK] INCR §49/§50 (%d B)' % os.path.getsize(INCR))