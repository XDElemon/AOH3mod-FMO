# Smali 安全写码规则 v1（《终序千禧》AI 空军 · 逆向注入专用）

> 适用：任何 agent（含电脑版）在本项目里写 / 改 smali。
> 本文只讲**怎么不翻车**，不讲功能设计。**规则后面全部配逻辑表**，照表查，不靠"感觉"。
> 血案全部来自本项目真实事故（2026-09 ~ 2026-10）。

---

## 0. 一句话总纲

**smali 的崩溃几乎从来不来自"逻辑写错"，而来自"类型/寄存器/签名对不上"——而这三类全部可以在装机前用表格 + 门禁查出来。**
所以铁律是：**先查表 → 再写码 → 跑门禁 → 再装机**；任何"应该没问题"的直觉都不算依据。

---

## 1. 血案 → 规则 对照（本项目真实发生过的 8 次翻车）

| # | 事故 | 症状 | 根因 | 对应规则 |
|---|---|---|---|---|
| 1 | r6d144 `up(I)V` | 开局闪退，`Verifier rejected class AirPosProbe` | 方法早退路径上 `:end` 读了从未赋值的 `v1`（Undefined） | **R4** |
| 2 | r6d144 `upd` | 同上 | 签名声明 `(III,String)`（4 参），方法体用了 `p4`（第 5 个参数）⇒ 实参/签名不符 | **R7** |
| 3 | r6d145 | 同上，`register v7 has type Precise Reference: String but expected Integer` | "修"的时候把 `p4` 改成 `p3`，但 `p3` 是 String，被当成 Integer 用 | **R5** |
| 4 | r6d147 `up` 守卫 | `register v2 has type Conflict` | 判空守卫用**对象**写了 `v2`，而同一寄存器在方法体里是 **int**（跨合并点类型冲突） | **R3** |
| 5 | r6d149 `ok(I)Z` | 采样闸全 0 / `rem-int` 除零 | 入口"把局部寄存器清零"时把 **参数寄存器 v5(=p0)** 也置零 | **R6** |
| 6 | 历史（long/String） | 启动即崩、日志 **0 字节** | `StringBuilder.append(J)` 传了 `{v0,v1,v2}` 之类错组；或把 **long 的低半寄存器当 String** 用 | **R5/R8** |
| 7 | R4c111 `getRingImageId` / AD 系列 10 处 | 逻辑反向（敌我不分 / 零比较全反） | `if-ne`(=不相等跳) 与 `if-eq` 记反；`if-ltz`(=小于0跳) 与 `if-gez` 记反 | **R10 + 表C** |
| 8 | 探针闸门 | 探针全 0（以为没跑） | 用**时间戳比较**当采样闸，极性一写反就全哑；且任何静态检查都验不出 | **R14** |

> 补充：`java.nio.file`（`Paths.get`/`Files.readAllBytes`）在 `/storage` 上必失败并被 catch 吞掉，表现为"配置静默回默认值" ⇒ **R19**。

---

## 2. 逻辑表（照表查，不要凭记忆）

### 表A：`.registers` ↔ `pN` 映射

| 项 | 规则 |
|---|---|
| `.registers N` | N = 局部寄存器数 + 参数寄存器数（含 this） |
| `.locals N` | N = 只算局部；参数占用 `vN .. vN+P-1` |
| pN 的物理号 | `p0 = v(N寄存器总数 - 参数总数)`，`pN = p0 + N` |
| 参数个数 | **实例方法**：`this` 占 1 个（p0=this，p1=第1实参）；**static 方法**：p0=第1实参 |
| 禁止 | ①使用超出参数个数的 `pN`（写 `p4` 但只有 4 参 = 事故#2）②写参数寄存器当临时变量（事故#5） |
| 实例换算（本项目常用） | `.registers 16` + 4 参 static ⇒ p0=v12, p1=v13, p2=v14, p3=v15 |

### 表B：每个描述符"占几个寄存器 / 用什么类型"

| 描述符 | 含义 | 寄存器占用 | 传参/取值用的 opcode 后缀 |
|---|---|---|---|
| `I` `F` `Z` `B` `S` `C` | int/float/bool/byte/short/char | 1 | 普通（`move-result`） |
| `J` `D` | long/double（**wide**） | **2（必须偶数起始的寄存器对，如 v0/v1）** | `move-result-wide`、`cmp-long`、`iget-wide` |
| `L...;` `[...` | 对象/数组（引用） | 1 | `move-result-object`、`iget-object`、`const-string` |

### 表C：零比较与比较助记符真值表（★ 最常写反的地方）

| 指令 | 跳转条件（人话） | 备注 |
|---|---|---|
| `if-eqz vA, :L` | vA **== 0** 就跳 | 对象时 0 = null |
| `if-nez vA, :L` | vA **!= 0** 就跳 | "非零" |
| `if-ltz vA, :L` | vA **< 0** 就跳 | 事故#7 就在这 |
| `if-gez vA, :L` | vA **>= 0** 就跳 | |
| `if-gtz vA, :L` | vA **> 0** 就跳 | |
| `if-lez vA, :L` | vA **<= 0** 就跳 | |
| `if-eq vA, vB, :L` | vA **== vB** 就跳 | 只对 **int/引用** 合法 |
| `if-ne vA, vB, :L` | vA **!= vB** 就跳 | 只对 int/引用合法 |
| `if-lt/ge/gt/le vA, vB` | 依次 `< / >= / > / <=` 就跳 | 只对 **int** 合法 |

**浮点比较**：必须 `cmpl-float`/`cmpg-float` → `if-*z` 两步走，**不能**直接 `if-lt` 两个 float（类型不符）。
**long 比较**：`cmp-long` → `if-*z`。
**NaN 语义**：`cmpl-float` = NaN 当 **-1**；`cmpg-float` = NaN 当 **+1**。（`cmp-long` 无 NaN）

### 表D：字段访问 opcode ↔ 字段描述符（★"字段种类配对错误"就出在这）

| 字段描述符 | 实例读 | 实例写 | 静态读 | 静态写 |
|---|---|---|---|---|
| `I` `F` | `iget` | `iput` | `sget` | `sput` |
| `Z` | `iget-boolean` | `iput-boolean` | `sget-boolean` | `sput-boolean` |
| `B` | `iget-byte` | `iput-byte` | `sget-byte` | `sput-byte` |
| `S` | `iget-short` | `iput-short` | `sget-short` | `sput-short` |
| `C` | `iget-char` | `iput-char` | `sget-char` | `sput-char` |
| `J` `D` | `iget-wide` | `iput-wide` | `sget-wide` | `sput-wide` |
| `L...;` `[...` | `iget-object` | `iput-object` | `sget-object` | `sput-object` |

**硬规则**：**永远按描述符选 opcode**，不要用裸 `iget`/`sget` 去赌布尔和对象能过。
本项目的典型字段（直接照抄描述符）：
`AirUnit;->isAlive:Z` / `isInFlight:Z` ⇒ `iget-boolean` ｜ `AirMission;->fPoolHP:F`、`dispHeading:F` ⇒ `iget`（float）
`AirMission;->state:...$MissionState;`、`assignedAircraft:Ljava/util/List;` ⇒ `iget-object`
`AirMission;->dispHeadingMs:J`、`airCombatLastMs:J` ⇒ `iget-wide`（**寄存器对**）

### 表E：寄存器类型合并规则（ART 到底怎么判）

| 合并点（跳转目标 / 汇合处 / catch）上 | 结果 | 何时报错 |
|---|---|---|
| 两条路径同类型 | ✅ 该类型 | — |
| `int` vs `float` / `int` vs 引用 / float vs 引用 | ⚠️ **Conflict** | **当该寄存器随后被读时**报 `has type Conflict`（先被写则不报） |
| `zero`（`const/4 vX, 0x0`）与任意**单槽**类型 | ✅ 兼容（zero 可当 int/float/引用/null 用） | — |
| 某路径未定义 vs 已定义 | ⚠️ 未定义路径上**一旦被读**即报 `Undefined` | 所以**入口清零**才是正解 |
| wide 与其寄存器对 | 两个寄存器都要一致 | 同上 |

**推论（三条保命写法）**
1. 新写的分支块**入口先把要用的局部寄存器逐个清零**（参数寄存器除外）。
2. 分支跳转的**目标标签处**，别让某条路径上的寄存器"没写过就被读"。
3. **不要跨标签改一个寄存器的类型**——守卫/常量用**专用寄存器**（旧方法体里当 int 用的，绝不复用）。

### 表F：方法调用与返回值配对

| 场景 | 正确写法 | 坑 |
|---|---|---|
| ≤5 个寄存器参数 | `invoke-static {v0, v1}, L…;->m(II)V` | 每个寄存器**单独列出**；wide 占两格（v0,v1） |
| >5 个寄存器参数 | `invoke-static/range {v0 .. v7}, L…;->m(...)V` | 寄存器必须**连续**且在参数区尾部 |
| static / 实例 / 构造 / 接口 / super | `invoke-static` / `invoke-virtual` / `invoke-direct` / `invoke-interface` / `invoke-super` | 用错 invoke 种类 = 直接崩 |
| 取返回值 | `move-result`（I/F/Z…）／`move-result-wide`（J/D）／`move-result-object`（引用） | **必须紧跟 invoke**，且类型必须匹配 |
| `StringBuilder.append` | 按实参类型选重载：`(I)`/`(F)`/`(J)`/`(Ljava/lang/String;)` | 事故#6：类型选错 ⇒ 整个类被拒 |

### 表G：ART 报错文本 → 根因（见到什么就去查哪条规则）

| 报错片段 | 根因 | 规则 |
|---|---|---|
| `register vX has type Undefined but expected …` | 某路径未初始化就被读 | R4 |
| `register vX has type Conflict` | 同寄存器跨合并点被写成不同类型 | R3 |
| `register vX has type Precise Reference: java.lang.String but expected Integer` | 实参/寄存器类型不符（String 当 int） | R5 |
| `… failed to verify` + 方法名 | 该方法整体不符：签名≠实参 / pN 越界 / 字段 opcode 配错 | R7/R8 |
| `Verifier rejected class X` | 类里**任一**方法硬失败 ⇒ **整个类废掉**，类一加载就崩 | 全部 |
| `NoClassDefFoundError`（运行期） | 只是缺依赖/libGDX、传了 null | **不算失败** |
| `NullPointerException`（探针里） | 同上 | **不算失败** |

### 表H：门禁能力矩阵（谁抓什么，谁能漏什么）

| 阶段 | 手段 | 能抓 | **抓不到** |
|---|---|---|---|
| 写前 | 三轮调研（锚点/极性/寄存器分配表） | 锚点歧义、极性、分配冲突 | 一切运行期 |
| 写后 | `check_params.py` | `pN` 越界、`vN` 越界 | 类型、签名语义 |
| 写后 | `check_regtype.py` | 对象↔数值跨合并点复用 | 未初始化读、字段 opcode |
| 写后 | （建议新增）`check_fieldop.py` | 字段 opcode↔描述符配错 | 调用签名 |
| 写后 | （建议新增）`check_callsig.py` | 实参个数/类型 vs 签名 | 极性/语义 |
| 汇编 | 八件套（Invoke/Regs/Init/Range） | 结构性问题 | 语义 |
| 验证 | `app_process` + `ProbeVerifier`（含 WARM 强制加载）/ 装机后 `cmd package compile -m verify -f <pkg>` | **ART 真判**（VerifyError） | 极性/语义 |
| 实测 | 探针 `nXXX` + 行为级模拟器 | 极性/语义（需写断言） | dex 合法性 |

> ⚠️ 铁律：**文本门禁与 Python 模拟器都验不出 ART 的 VerifyError**（本项目连崩 3 次全栽在这）。
> ⚠️ 且验证器只调用探针类 = **本批真正改的游戏类根本不会加载** ⇒ 必须用 WARM 强制加载（已在 `gen_verifier.py` 落地）。

---

## 3. 规则（R1–R20）

### A 组｜寄存器与类型（最容易出人命）
- **R1** 动手前先写**寄存器分配表**：`.registers`、每个借用的寄存器、用途、类型、是否有死的可借。改 `.registers` 要在表里写明。
- **R2** 寄存器**一人一岗**：一个寄存器在一次方法里只承担一种类型（int/float/引用三选一）。
- **R3** **跨标签不改类型**；守卫/判空/常量用**专用寄存器**，绝不复用方法体里当 int 的（事故#4）。
- **R4** **早退路径也要初始化**：任何可能被读到的寄存器，在所有能到达该读点的路径上都必须被写过。最省事的做法是**方法入口把局部寄存器全部清零**。
- **R5** **实参类型必须与目标签名逐字匹配**：不要"改一个寄存器号"来修类型错——先去查那个寄存器当前是什么类型（事故#3）。
- **R6** **参数寄存器不是你的草稿纸**：不要清零/覆写 `pN`（除非它本来就用完了）。清零时**只清局部**（事故#5）。
- **R7** 方法**签名与实现必须一致**：参数个数、类型、顺序；用 `pN` 前数一遍参数（事故#2）。
- **R8** wide 值用**偶数起始的寄存器对**；`move-result-wide`/`iget-wide`/`append(J)` 都按表 B 传。

### B 组｜字段与调用
- **R9** 按表 D 选字段 opcode；按表 F 选 invoke 种类与 `move-result*`。
- **R10** 比较按表 C：int 用 `if-*`，float 用 `cmpl/cmpg` + `if-*z`，long 用 `cmp-long` + `if-*z`。
- **R11** 所有引用**写完整描述符**（`Laoc/…;->m(II)V`），不要靠简写/推断。
- **R12** 调用游戏 API 前先确认语义（返回值、null 行为、是否裸 `List.get` 会抛）。本项目已知：`Game.getProvince(id)` = **裸 `List.get`，越界即抛** ⇒ 传 id 前先判 `>= 0`。

### C 组｜控制流与状态
- **R13** 动游戏状态（扣血、移除单位、改 state）要走**游戏自己的管线**（如 `AirMission.recordLoss` / `applyAirDamage`），不要自己写标记位。
- **R14** **采样闸用计数器取模**，不要用时间戳比较（极性一写反就全哑，且查不出来）。
- **R15** 每个新判定点必须能在**模拟器/探针**上被证伪；热路径探针用**无参形式** `hitN()V`（调用点不需要准备寄存器）。

### D 组｜探针与日志
- **R16** **探针独立成方法**，游戏方法里只加 **1 行** `invoke-static`。
- **R17** 探针方法**入口把局部寄存器全部清零**（`pN` 除外）；只读，不写游戏状态。
- **R18** 日志走免节流通道（本项目：`dWrite` → `aircfg_diag.txt`）；不要用 `dKey`（500ms 攒批）；不要用游戏自带 `FinalityLogger`（死实现）。
- **R19** **读/写 `pkg/files` 用 `java.io`，禁用 `java.nio.file`**（在 `/storage` 上必失败且被 catch 吞）。
- **R20** 修 bug 时**先定位"错误的规则是什么"，再改**；禁止"把 A 改成 B 试试"（事故#3 就是这么来的）。

---

## 4. 装机流水线（必须按顺序，缺一步不许装）

1. **三轮调研落盘**（锚点逐字 + 命中次数=1 + 极性真值表 + 寄存器分配表 + 失败模式 + 验收标准）
2. **写码**（新类/新方法：入口清零 locals；探针独立成方法）
3. `check_params.py`（pN/vN 越界）
4. `check_regtype.py`（对象↔数值跨合并点）
5. （建议新增）字段 opcode / 调用签名检查
6. **汇编八件套**：`Invoke/Regs/Init/Range BAD` 必须 **0**
7. **打包**（模板＝**上一个归档包**，不临时抓别的）
8. **从要装的 APK 里抽 `classes.dex` 再验一次**（"验的就是装的"）
9. **ART 验证**：`app_process` 跑验证器（★含 WARM 强制加载本批真正改的类）或装机后 `cmd package compile -m verify -f <pkg>` 读日志
10. **装机**（不许并行 `pm install`；失败两种已知原因：并撞车 / 空间不足）
11. **装机后**：核 `lastUpdateTime`、崩溃栈、重建 `strike_config.json`、清日志基线
12. **实测** → 写"设计逻辑 11 项" + 实测记录 → 归档（只覆盖不删）→ 推仓库

### 负样本要求（每个新点位）
≥4 条断言 + **3 个负样本**（故意写错的版本必须在某一环被拦下）。抓不到的那一环，就是下一次翻车的地方。

---

## 5. 提交前 20 条自查（贴在每一批开工前）

1. 锚点是否逐字、命中次数是否 =1？
2. 有没有"带上下文"的锚点（纯标签可能撞名）？
3. 极性真值表写了吗？`if-ltz/if-eqz/if-ne` 逐个核对了吗？
4. 寄存器分配表写了吗？每个寄存器**一种类型**吗？
5. 新块入口把局部寄存器清零了吗？
6. 有没有复用方法体里当 int 的寄存器？
7. 有没有读"某路径可能没写过"的寄存器？
8. 有没有动 `pN`？
9. wide 值用寄存器对了吗？偶数起始吗？
10. 字段 opcode 与描述符配对了吗（Z/B/S/C/J/对象）？
11. 调用的实参个数/类型与签名一致吗？`move-result*` 类型对吗？
12. float/long 比较走 `cmp*` 两步了吗？
13. 有没有用 `java.nio.file`？
14. 有没有自己写游戏状态（绕过游戏管线）？
15. 传 province/索引 id 前判过 `>=0` 吗？
16. 采样闸是"计数器取模"吗？
17. 探针是否独立成方法、入口清零、只读不写？
18. `check_params` / `check_regtype` 与基线**逐字一致**吗（有新增就是有问题）？
19. 八件套 BAD=0 吗？APK 内 dex 与产物 md5 一致吗？
20. ART 验证跑了吗（含 WARM）？跑不了时，是否明确标注"未验证 + 回退命令"？

---

## 6. 给"电脑版 agent"的交接话术（直接复制）

```
你将为 Android 游戏（smali 注入）改代码。先读《Smali 安全写码规则 v1》全文并遵守：
1) 动手前输出：锚点表（逐字+命中次数）、极性真值表、寄存器分配表；
2) 只按表 C/D/F 选助记符，禁止凭记忆写零比较与字段 opcode；
3) 新块入口把局部寄存器清零（pN 除外），守卫用专用寄存器，绝不跨标签改类型；
4) 探针独立成方法，游戏方法里只加 1 行 invoke-static；
5) 每个新点位配 ≥4 断言 + 3 负样本；
6) 交付时说明"哪一步没做/为什么"，不要跳过验证直接说"应该没问题"。
```

---

## 7. 待办（把"规则"变成"门禁"）

- [ ] `check_fieldop.py`：扫描所有 `iget*/iput*/sget*/sput*`，与 `.field` 描述符配对校验
- [ ] `check_callsig.py`：扫描 invoke 的实参寄存器个数/类型 vs 目标方法描述符（拿本 dex 的类表）
- [ ] `check_zerocmp.py`：把 `if-*z` 与目标标签连起来做"意图核对"（配合真值表输出人类可读结论）
- [ ] "探针自检 nSELF"：游戏内首次调用自测（采样闸 `ok(60)×120==2`），抓极性/语义类错误
- [ ] 宿主侧"真验证器"（Python 实现表 E 的类型流规则），彻底摆脱设备侧 ART 验证的内存限制
