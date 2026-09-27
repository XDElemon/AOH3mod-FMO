# -*- coding: utf-8 -*-
# R5b014-docs：把"炸陆军"修复 + 三条新门禁 + 教训，写入五份文档
#   1) 计划书  r6s5/B3-A1自动打击接活_具体方案书v1.md   -> 附-10
#   2) 硬规则  r6s5/硬规则_交接口径_v1.md               -> 追加条款
#   3) 专档    r6s5/空战重做_进度与bug排查专档_v1.md     -> 批次登记
#   4) 设计v2  空战重做专案_设计v2.md                    -> 【R5b014】章节
#   5) 交接文档 r6s5/交接文档_电脑端接手_v1.md           -> 状态刷新
import io, os, shutil, datetime

R = '/sdcard/GLG/历史23'
R6 = os.path.join(R, 'r6s5')
STAMP = datetime.datetime.now().strftime('%Y-%m-%d %H:%M')

def append(path, title, text):
    p = path
    if not os.path.exists(p):
        print('!! 缺文件:', p); return False
    bak = p + '.pre_r5b014.bak'
    if not os.path.exists(bak):
        shutil.copyfile(p, bak)
    s = io.open(p, encoding='utf-8').read()
    if title in s:
        print('  已存在，跳过:', title, '->', os.path.basename(p)); return True
    add = '\n\n' + ('=' * 72) + '\n' + title + '\n' + ('=' * 72) + '\n\n' + text + '\n'
    s = s + add
    io.open(p, 'w', encoding='utf-8').write(s)
    print('  +%d 行 -> %s' % (add.count('\n'), os.path.basename(p)))
    return True

# ---------------- 1) 计划书 附-10 ----------------
A10 = """## 附-10 · 第③步A 收尾：轰炸机「炸陆军」修复定稿（r5b008 / r5b010 / r5b014）

> 记录时间：%s ｜ 状态：**用户实测通过**（"现在确实会减少了"）

### 1. 目标省内每个陆军师的处置（**定稿真值表**）

按顺序判定，命中即处理：

| 顺序 | 条件 | 处置 | 日志 |
|---|---|---|---|
| 1 | `key` 以 `airhq` 开头（我们自己造的"飞机假师"） | **跳过**（不伤害、也不调 `updateArmy`，避免越界崩） | `skA+1` |
| 2 | `lArmyRegiment == null`（清单为空） | **扣 `iArmy`（兵力总数）**：`iArmy -= iArmy × pct`，下限 0 | `nAHd`，`n+1`（每师记 1） |
| 3 | 其它（清单非空） | **逐团扣血**：每团 `num -= num × pct`（下限 0），伤害**落袋** | `n+1`（每团记 1） |

共同前置判定（两类都过）：`civID != 我方`、`isAtWar(我方, 师所属国)` 为真、`iArmy > 0`。

### 2. 条件跳转语义（**本项目翻车最多的一类错，写死**）

| 指令 | 真实语义 |
|---|---|
| `if-eqz v` | **v == 0（null / false / 0）才跳** |
| `if-nez v` | **v != 0（非空 / true / 非零）才跳** |
| `if-ltz v` | v < 0 才跳 ｜ `if-gez v` | v >= 0 才跳 |
| `if-lez / if-gtz` | v <= 0 / v > 0 才跳 |
| `if-eq / if-ne` | 两寄存器相等 / 不相等才跳 |
| `if-lt / if-ge / if-gt / if-le` | vA < / >= / > / <= vB 才跳 |

### 3. 根因与教训（本轮）

- **根因**：`r5b004` 的守卫把 `lArmyRegiment == null` 写成了 `if-nez`（**非空才跳**）⇒
  **清单非空的正常军队被跳过**，只能落到"扣 iArmy"兜底；而 `iArmy` 是**派生量**
  （`ArmyDivision.updateArmy()` 按团求和），很快被引擎重算覆盖 ⇒ 表现为**"炸了没反应"**。
  修正见 `r5b014`：两处判空改为 `if-eqz`（`key` 判空、清单判空）。
- **排障顺序教训**：静态分析（5 个构造器都 `new ArrayList`）早已说明"字段不可能为 null"，
  但当时继续去猜游戏 ⇒ 白跑多轮。**今后：静态判定"不可能"时，先怀疑自己的探针/断言。**
- **探针纪律**：探针**一律无分支**（`String.valueOf(obj)` 之类），否则跳转落点算错就得到自相矛盾的日志。
- **门禁盲区**：`CheckSig`/`check_calls`/`check_arity` 都抓不到"调了别的类里不存在的方法"
  （已因此崩过 3 次：原版 `removeMove`、原版 `buildAirport`、我写的 `ArmyDivision.getCivID()`）。

### 4. 新增三条常驻门禁（每批必跑）

```bash
A=/sdcard/GLG/历史23/toolchain/act
python3 $A/check_branch.py  /tmp/w3a/smali/<类>.smali <方法名片段>   # 方向可疑=0 且 探针内分支=0
bash    $A/check_dangling.sh /sdcard/GLG/历史23/build_apk/<本批>.apk # 真悬空 = 0
python3 /sdcard/GLG/历史23/check_calls.py /tmp/w3a/smali/<类>.smali # 无「调用未定义」
```
外加：**探针无分支**（`check_branch.py` 会告警）。

### 5. 当前参数（沿用）

| 项 | 值 |
|---|---|
| 打击伤害比例 | 战略轰炸档 `pct = min(0.001 × 攻击力, 0.15)` |
| 限流 | 同目标在飞 ≤ 2；同目标每回合新增 ≤ 1；无全局总闸 |
| 目标来源 | 侦察记忆表（`GroupID == 1` 军事建筑）＋射程＋省主≠我方＋交战 |
| 生命周期 | 建筑记录**永久**、可见即刷新；部队/飞机走第③步B 的 6 回合新鲜度 |

### 6. 本批之后仍待办

1. `B3-A6`：自动打击开关 + 「自动打击设置」面板（计划书附-9 已登记）
2. 存档丢飞机 bug（用户已同意插在三步走之后）
3. 第③步 B：攻击机追部队（6 回合新鲜度 + 扑空提示）
4. **归档**：`r5b003 ~ r5b014` 共 12 批尚未登记进专档/设计v2（本轮已补，见专档）
""" % STAMP
append(os.path.join(R6, 'B3-A1自动打击接活_具体方案书v1.md'), '## 附-10 ·', A10)

# ---------------- 2) 硬规则 ----------------
HARD = """## 追加条款（r5b014 起生效）

### ① 条件跳转语义表（唯一权威，写代码时必须引用，不许凭手感）
```
if-eqz  v : v == 0（null/false/0）才跳
if-nez  v : v != 0（非空/true/非零）才跳   ← 判"为空则跳过"必须用 if-eqz
if-ltz  v : v <  0 才跳        if-gez v : v >= 0 才跳
if-lez  v : v <= 0 才跳        if-gtz v : v >  0 才跳
if-eq / if-ne      : 两寄存器相等 / 不等 才跳
if-lt / if-ge / if-gt / if-le : vA < / >= / > / <= vB 才跳
```
每处条件跳转旁边必须写明"命中才跳"的意图；补丁里必须带**反例断言**（写成反向就报错）。

### ② 探针纪律：一律无分支
探针（AIRDBG 日志）**不得包含条件跳转**。需要打印"是否为空/长度"时用
`String.valueOf(obj)`（null 会打 `null`、非 null 打对象本身）或直接打对象，
不要手写 if 分支——分支落点算错会得到自相矛盾的日志，浪费整轮排障。

### ③ 每批必跑的三条门禁 + 一条纪律
```
python3 toolchain/act/check_branch.py  <类>.smali <方法>   # 方向可疑=0 且 探针内分支=0
bash    toolchain/act/check_dangling.sh <本批 apk>          # 真悬空 = 0
python3 check_calls.py <类>.smali                           # 无「调用未定义」
```
纪律：**当静态分析给出"不可能"结论、而运行时读数与之冲突时，先怀疑探针/断言本身**
（先按 ProbeCode2 反汇编装机 dex 核对指令，再谈游戏）。

### ④ 寄存器边界（血泪）
- `.registers` **上限 16**（`mul-float/2addr` 等第二操作数只有 4 位）；抬高前先确认不越界。
- 参数占 `v(registers-参数个数) .. v(registers-1)`；**插入局部变量前先算 locals 区间**，
  否则会把 `p0` 覆盖成 int ⇒ 真机 `VerifyError`。
- 寄存器不够时优先"现取/复用"，不要盲目抬 `.registers`。
"""
append(os.path.join(R6, '硬规则_交接口径_v1.md'), '## 追加条款（r5b014 起生效）', HARD)

# ---------------- 3) 专档：批次登记 ----------------
BATCH = """## 批次登记 · r5b003 ~ r5b014（自动打击 / 崩溃修复链）

| 批次 | 内容 | 装机 | 验收 |
|---|---|---|---|
| r5b003 | `a1Scan` 加**开战判定** `isAtWar(我方,目标国)` | ✅ | 通过 |
| r5b004 | `applyArmyDamage` 加两道守卫（跳过 airhq 假师 / 脏数据）——**其中判空用了 if-nez，方向反了** | ✅ | 见 r5b014 |
| r5b005 | 补**原版自带**两处悬空调用：`Civilization.removeMove(String)`→`cancelMove`；`AirForceManager.buildAirport(II)`→`registerAirport` | ✅ | AI 和约 / 机场建成不再崩 |
| r5b006 / r5b006c | 探针：`nAH` 增 `same/nw/sk/sz`（首版因寄存器越界 VerifyError，已修） | ✅ | 通过 |
| r5b007 | 探针：`sk` 拆 `skA`(airhq) / `skD`(脏数据) | ⏳ 构建完成 | 被 r5b008 取代 |
| r5b008 | 去掉"计数>清单长度"整师跳过；扣血按清单长度；脏数据师改自算 `iArmy` | ✅ | 通过 |
| r5b009 | 探针：`nAHd`（打印被跳过师的 key/civ/计数/兵力/id） | ✅ | 通过 |
| r5b010 | 对"清单为空"的师改用**扣 `iArmy`**；探针加 `ia=` | ✅ | 部分（数值会被引擎重算覆盖） |
| r5b011 | 探针：`nAHs` 状态全量（L/sz/mv/bt）——**L/sz 用分支实现，落点算错** | ✅ | 不可信 |
| r5b012 | 修探针里不存在的 `ArmyDivision.getCivID()`（改 `iget`）；补"对 ArmyDivision 的调用必须存在"自检 | ✅ | 通过 |
| r5b013 | 探针改**无分支**（`String.valueOf`）→ 铁证：`obj=null` 出现 0 次，敌军清单**有 23 个团** | ✅ | 定案 |
| **r5b014** | **修根因**：两处判空 `if-nez` → `if-eqz`（key 判空 / 清单判空）⇒ 逐团扣血恢复 | ✅ | **用户实测通过（兵力确实减少）** |

**关键实据（r5b013 抓样）**
```
nAHs p=5963 k=feoCS civ=226 obj=[ArmyRegiment@… ×23] c=23 ia=23000
nAHs p=5713 k=QRSLa civ=226 obj=[ArmyRegiment@974772a] c=1 ia=1000
```
**修复后（r5b014，用户实测）**：敌军兵力按 `pct` 递减并**保持**（不再被引擎回算覆盖）。

**新增门禁**：`check_branch.py`（条件跳转语义/方向 + 探针无分支）、`check_dangling.sh`
（精确悬空引用）、`check_calls.py`（本类调用未定义）。

**磁盘**：本轮清理了自家构建产物（`/tmp` 23G→3.9G、`build_apk` 10G→2.0G、游戏日志 224MB→0、
`/data/local/tmp` 2.8G→15M），`/data` 由满盘（剩 490MB）→ 87%（剩 31G）。
"""
append(os.path.join(R6, '空战重做_进度与bug排查专档_v1.md'), '## 批次登记 · r5b003 ~ r5b014', BATCH)

# ---------------- 4) 设计v2 ----------------
D2 = """## 【R5b014】轰炸机对陆军的伤害模型（定稿）

**目的**：让"轰炸机打击"对敌方陆军产生**会落袋**的杀伤。

**三类师的处置**
1. `key` 以 `airhq` 开头（我们造的飞机假师）：跳过。原因：它的 `uID` 是自编值，
   引擎 `updateArmy()` 用它索引 `ArmyManager.lArmy` 会越界（历史上崩过 `Index 12 out of bounds`）。
2. `lArmyRegiment == null`：**扣 `iArmy`**（`iArmy -= iArmy×pct`，下限 0）。
   注意 `iArmy` 是**派生量**，会被 `updateArmy()` 按团重算覆盖 ⇒ 仅作兜底。
3. 其它（清单非空）：**逐团扣血** `num -= num×pct` —— 这是**唯一会落袋**的路径（战斗系统同样写这里）。

**判定语义（关键）**
```smali
if-eqz v5, :axa_ak2     # key == null       -> 按非空军师继续
if-eqz v6, :axa_skipd   # 清单 == null      -> 走扣 iArmy 兜底
if-eq  v4, p1, skip     # 师所属国 == 我方  -> 跳过
if-eqz v4, skip         # 未交战            -> 跳过
if-lez v5, skip         # iArmy <= 0        -> 跳过
if-ne  v4, v5, :dirty   # 计数 != 清单长度  -> 自算 iArmy（不调 updateArmy，避免越界）
```
（`if-nez` = **不等于 0 才跳**；判空跳过必须用 `if-eqz`。此条为血泪教训。）

**伤害数值**：`pct = min(0.001 × 攻击力, 0.15)`（战略轰炸档）。
**验收实据**：用户实测敌军兵力按比例递减且不回弹。
"""
append(os.path.join(R, '空战重做专案_设计v2.md'), '## 【R5b014】轰炸机对陆军的伤害模型（定稿）', D2)

# ---------------- 5) 交接文档 ----------------
JH = """## 附：r5b014 之后的现状（%s）

| 项 | 值 |
|---|---|
| 设备现役 | **r5b014**（含"炸陆军"修复；装机 `DEX_MATCH=1`/`APK_MATCH=1`，启动自检 VerifyError=0） |
| 已验收 | ①最小可飞 ✅ ②点名清单 ✅ ③A 自动挑（建筑侧）✅ **轰炸机伤陆军 ✅（本批）** |
| 未归档→已登记 | `r5b003 ~ r5b014` 已写入专档批次表（本批补） |
| 新增门禁 | `toolchain/act/check_branch.py`、`toolchain/act/check_dangling.sh`、`check_calls.py`（见硬规则追加条款） |
| 磁盘 | `/data` 87%%（剩 31G）；`/tmp` 3.9G；`build_apk` 2.0G（只留 r5a005 / r5b012 / r5b013 / r5b014） |
| 排队中 | ③B 攻击机追部队 / `B3-A6` 开关+设置面板 / 存档丢飞机 bug / 空军区（炸飞机）讨论 |

**每批门禁命令（照抄）**
```bash
A=/sdcard/GLG/历史23/toolchain/act
python3 $A/check_branch.py /tmp/w3a/smali/<类>.smali <方法>
bash    $A/check_dangling.sh /sdcard/GLG/历史23/build_apk/<本批>.apk
python3 /sdcard/GLG/历史23/check_calls.py /tmp/w3a/smali/<类>.smali
```
""" % STAMP
append(os.path.join(R6, '交接文档_电脑端接手_v1.md'), '## 附：r5b014 之后的现状', JH)

print()
print('全部文档更新完成')
