# -*- coding: utf-8 -*-
# r5c046_survey5.py —— 第五轮：施工定稿（锚点/寄存器/真值表）
#   ① r6s5/调研_r5c046施工定稿_v5.md
#   ② 计划书 §59
#   ③ build_inputs/r5c046/INCR.md（追加）
# 未改一行 smali。
import os, time

BASE = '/sdcard/GLG/历史23'
R6S5 = os.path.join(BASE, 'r6s5')
PLAN = os.path.join(R6S5, 'AI打击接入_调研与计划书v1.md')
DOC = os.path.join(R6S5, '调研_r5c046施工定稿_v5.md')
INCR = os.path.join(BASE, 'build_inputs', 'r5c046', 'INCR.md')

TS = time.strftime('%Y-%m-%d %H:%M')

DOC_TXT = r'''# r5c046 施工定稿（第 5 轮：锚点 / 寄存器 / 真值表）
时间：''' + TS + r''' ｜ 性质：**只读定稿，未改一行 smali** ｜ 前序：v1 全量 / v2 专项 / v3 难度 / v4 排雷
本轮目标：把每一处改动钉到"**唯一锚点 + 寄存器 + 真值表**"，使写码阶段只做机械替换。

---

## 一、终版口径（用户已拍板，写死）

| 项 | 值 |
|---|---|
| 关线 L | **只关 AI 文明**（`civID != 玩家civ`，含观战无玩家时同样关闭） |
| 视野门（R1） | **方案 B：可见即刷新**（`a1Scan`、`a1bPick` 各 1 条指令 `if-eqz → if-nez`） |
| K（并发上限） | **3**，按 `civID × 任务类型`，**两条线各判一次**（类型用**枚举对象**比较，不用 ordinal） |
| 频率（方案 C） | **FRQ 天花板 ＋ P 摇骰**；FRQ＝每文明每回合新增轰炸上限；P＝每机场是否尝试 |
| FRQ 表 | `[1,1,1,2,2,3]`（VeryEasy→Legendary） |
| P 公式 | `P = base × MULT[难度]`，`base = GameValues.air.AIR_AI_BOMB_CHANCE_AT_WAR`（0.33，**≤0 则回退 0.33**）；`MULT = [0.5,0.75,1.0,1.25,1.5,2.0]` |
| 轰炸线选靶 | 军建**置顶档** → 经济:人口 = **1:1**（换算见 §五）→ **同档随机** → **每机场每回合只派 1 次** |
| 攻击线选靶 | 硬门 `isEnemyArmyInProvince` 不变 → 主键 **师数 desc** → 次键 在飞↑ → 再 距离 band 随机 |
| 探针 | `nP2dif` / `nP2frq` / `nP2cap` / `nP2mil` / `nP2s` |

---

## 二、施工锚点表（每处都给了唯一可匹配字符串）

### E1 关线 L（只关 AI 文明）
- 文件：`AirForceManager.smali`；方法：`executeAIAssignmentForAirport`（1021-1200，`.registers 9`，**实例方法** ⇒ `p0=v7`、`p1=v8`）
- **插入位置**：`1046-1048` 之后、`1050 const-string v3, "nA4d"` 之前（战时直落路径上）
- 锚点（唯一）：`    if-eqz v0, :cond_3c`（1048，紧跟 `sget-object v1, ...Game;->oR`）
- 现寄存器占用：`v0=isAtWar 结果`（此处已用完）、`v1=Random`（1057 要用，**勿动**）⇒ 可用 `v2,v3,v4`
- 新代码形态（示意）：
```
sget-object v2, Game;->player
if-eqz v2, :p2L_close            # 观战/无玩家 ⇒ 也归线 S
iget v3, v2, Player;->iCivID:I
iget v2, p1, Airport;->civID:I
if-eq v3, v2, :p2L_keep          # 玩家自己的机场 ⇒ 保留旧行为
:p2L_close
const-string v2, "nA2L"
const/4 v3, 0x1
invoke-static {v2, v3}, AirDbgLog;->e5i(Ljava/lang/String;I)V
return-void
:p2L_keep
```
- 真值表：`civID==玩家civ` ⇒ 继续（旧行为）；否则 ⇒ 探针＋返回
- 写反症状：`if-eq`↔`if-ne` 互换 ⇒ 变成"只关玩家自己、AI 照旧派发"（完全反了）

### E2 K=3（轰炸线）
- 方法：`a1Scan`（6267，`.registers 16`，**静态** ⇒ `p0=v15`；局部 `v0..v14`）
- **插入位置**：`6304 :sc_have` 之后（**必须晚于 6278-6303 的数组分配块** —— 见 R2）
- 锚点（唯一）：`:sc_have` 行 + 紧随的 `invoke-static {}, AirForceManager;->getInstance()`
- 新代码形态：
```
const/4 v13, 0x0
sget-object v13, AirMission$MissionType;->STRATEGIC_BOMBING:...$MissionType;
invoke-static {p0, v13}, AirForceManager;->a1CivInflight(ILaoc/.../AirMission$MissionType;)I
move-result v13
const/4 v14, 0x3
if-ge v13, v14, :p2K_ok          # <3 才继续
const-string v13, "nP2cap"
const/4 v14, 0x3
invoke-static {v13, v14}, AirDbgLog;->e5i(Ljava/lang/String;I)V
goto :sc_ret
:p2K_ok
```
- 真值表：`count>=3` ⇒ 走 `:sc_ret`（本回合该文明不再新增轰炸）
- 写反症状：`if-ge`↔`if-lt` ⇒ 变成"满 3 就狂派 / 不足 3 就停"

### E3 K=3（攻击机线）
- 方法：`a1bScan`（7006，`.registers 16`，静态 ⇒ `p0=v15`）
- **插入位置**：守卫块之后、`a1bDiag` 之前（即 7016 `if-ne v13, v12, :bs_skip` 之后，7017 `invoke-static {p0}, a1bDiag(I)V` 之前）
- 类型参数：`MissionType;->ATTACK_ARMY`
- 命中后跳 `:bs_ret`（7044）前先打 `nP2cap`
- 真值表同 E2（类型换成 ATTACK_ARMY）
- ⚠ 注意不要跳 `:bs_skip`（那会打一条 `a1bLog(-1,-1,7,0)` 的假日志，污染判读）

### E4 R1（视野门翻转，轰炸线）
- 方法：`a1Scan`，行 **`6384 if-eqz v13, :sc_sel`** → 改为 **`if-nez v13, :sc_sel`**
- 真值表：`fog==true（不可见）` ⇒ 跳 `:sc_sel`（用旧记忆）；`fog==false（可见）` ⇒ 落入 `a1HasMil` 刷新记忆（写 6/4）
- 写反症状（即改前现状）：可见省永不写记忆 ⇒ `a1Known` 字节恒 0 ⇒ 被 `0x2` 位门永久跳过

### E5 R1（视野门翻转，攻击机线）
- 方法：`a1bPick`，行 **`6710 if-eqz v10, :bp_invis`** → 改为 **`if-nez v10, :bp_invis`**
- 真值表：`fog==true` ⇒ 跳 `:bp_invis`（不盖戳，用旧戳）；`fog==false（可见）` ⇒ 落入盖戳分支（`a1Gsee[pid]=当前小时`）
- 副作用：`a1bNvis` 语义由"不可见计数"变为"**可见计数**"（仅探针，不影响逻辑），抓样时按新语义判读

### E6 攻击线主键：师数 desc
- 方法：`a1bPick`，区域 `6739-6787`（排序键）
- 现逻辑：主键＝在飞数（`if-lt` 越小越好）→ 距离 band
- 目标逻辑：主键＝师数（`if-gt` 越大越好）→ 次键在飞数（`if-lt`）→ 距离 band
- **实现方式（降低风险）**：新增静态暂存 `a1bDivBest:I`，在比较前先算 `a1bDivCount(pid)`；把"更好"判据从 `if-lt v10, v12, :bp_better` 改为 `if-gt v_div, a1bDivBest, :bp_better`
- 写反症状：用 `if-lt` ⇒ 永远挑师数最少的省（与"攻击机打陆军"完全相反）

### E7 轰炸线选靶改造（本批最大改动）
- 方法：`a1Scan`，涉及 `6337-6446`
- 步骤：
  1. **每机场开始**（6339 `autoStrikeOff` 门之后）：`P` 摇骰（`nextFloat() < a1PkP` 否则跳过该机场）＋ 重置选中态（`a1PkTier=-1`、`a1PkScore=0`、`a1PkN=0`、`a1PkPid=-1`）
  2. **循环内**（替换 6424-6446 的"立即派发"块）：
     - 保留 `a1Inflight(pid) < 2` 门（不满足 ⇒ `a1Log k=4` ⇒ 跳过）
     - `tier = (a1Known[pid] & 0x2) != 0 ? 0 : 1`（有军建＝档 0）
     - `score = (int)(getEconomy()*10) + getPopulationTotal()/100`
     - 比较：档更小 ⇒ 必取；档更大 ⇒ 跳过；同档 ⇒ `score` 落在 `±TOL` 内走**蓄水池随机**（`a1PkN++`；`nextInt(a1PkN)==0` 才替换），否则分高者取
  3. **循环结束**（把 6356 的 `if-eqz v13, :sc_ap_next` 改指新标签 `:sc_pick`）：若 `a1PkPid>=0` 且 FRQ 未满 ⇒ `a1Dispatch(pid,civ)`＋`a1FrqN++`＋探针；FRQ 满 ⇒ 打 `nP2frq` 并跳出机场循环
- 真值表（同档随机）：`a1PkN` 从 1 递增，第 n 个同档候选以 `1/n` 概率替换 ⇒ **均匀同档随机**
- 写反症状：`tier` 判反 ⇒ 只打无军建省；`if-gt/if-lt` 判反 ⇒ 总挑最穷省；蓄水池写成"总是替换" ⇒ 退化为"最后一个候选"

### E8 FRQ / P 初始化（新增静态）
- 位置：E2 的 K 门**之后**（同一插入点），初始化 `a1PkP:F`（base×MULT）与 FRQ 计数重置
- 难度读取：`sget Game;->difficultyID:I` → `clamp(0,5)` → 查表
- FRQ 计数：`sget Game_Calendar;->TURN_ID:I`；若 `!= a1FrqTurn` ⇒ `a1FrqN=0`、`a1FrqTurn=TURN_ID`
- 写反症状：`nextFloat() < P` 写成 `>` ⇒ 难度越高越不打；不 clamp ⇒ 数组越界闪退；不绑 TURN_ID ⇒ 首回合后锁死

---

## 三、新增字段与 helper 清单（写码前定稿）

| 名称 | 类型/签名 | 用途 |
|---|---|---|
| `a1PkTier` | `static I` | 当前最优档（0=军建，1=无） |
| `a1PkScore` | `static I` | 当前最优分 |
| `a1PkN` | `static I` | 同档候选数（蓄水池） |
| `a1PkPid` | `static I` | 当前最优省 pid（-1=无） |
| `a1PkP` | `static F` | 本回合该文明的概率 P |
| `a1FrqTurn` | `static I` | FRQ 计数所属回合 |
| `a1FrqN` | `static I` | 本回合已新增轰炸数 |
| `a1bDivBest` | `static I` | 攻击线当前最优师数 |
| `a1CivInflight` | `private static a1CivInflight(ILaoc/kingdoms/lukasz/map/battles/AirMission$MissionType;)I` | 按 civ＋类型计在飞（排除 COMPLETED/ABORTED） |
| `a1DivCount` | `private static a1DivCount(I)I` | 师数（**内部仅一处 `Province.getArmySize()`**，便于将来改体制） |
| `a1FrqFor` | `private static a1FrqFor()I` | 难度→FRQ（含 clamp + 表） |
| `a1ProbFor` | `private static a1ProbFor()F` | 难度→P（base 兜底 0.33 × MULT） |

**全部枚举比较用对象引用**（`if-ne`/`if-eq` 对 `MissionType`/`MissionState` 的 `sget-object`），**不依赖 ordinal**。

---

## 四、寄存器预算表（防"寄存器不够/踩到在用寄存器"）

| 方法 | `.registers` | 参数 | 插入点可用寄存器 | 备注 |
|---|---|---|---|---|
| `executeAIAssignmentForAirport` | 9 | `p0=v7`(this)、`p1=v8`(Airport) | `v2,v3,v4,v5,v6`（**v0 已用完、v1=Random 勿动**） | E1 |
| `a1Scan` | 16 | `p0=v15`（静态） | `v13,v14` 富余；`v0..v12` 均有在用值 ⇒ 新增逻辑**优先用静态暂存** | E2/E4/E7/E8 |
| `a1bScan` | 16 | `p0=v15`（静态） | `v3,v4,v5,v6,v8,v11,v13,v14` | E3 |
| `a1bPick` | 16 | `p0=v2`(Airport)、`p1=v3`(civ) | 原有的 `v8..v14`；新增师数比较用静态 | E5/E6 |

> 铁律（文件内注释 56 行）：**"工具链限 16 寄存器"** ⇒ 选最优的暂存一律走静态字段（沿用 `a1bPk*`/`a1bRt*` 的既有范式）。

---

## 五、R7 量纲换算（我方定，验收时向你汇报）

- 采用：**`score = (int)(getEconomy() * ECO_W) + getPopulationTotal() / POP_DIV`**，初版常量 `ECO_W = 10`、`POP_DIV = 100`
- 依据：`getEconomy()` 是 `ProvinceData6.e:F`（浮点，量级需实测）；`getPopulationTotal()` 是**人口总量 int**（`getPopulationSize()` 是"条数"，**不用**）；`GV_Province.json` 里 `MIN_POPULATION=250`
- 兜底：`score<0 ⇒ 0`
- **验收时我会汇报**：`nP2s` 打出的 raw `econ / pop / score`，若两者量级明显失衡（例如经济恒压过人口），我会给出"只改两个常量"的微调值，供你决定是否再出一小批

---

## 六、探针清单与期望输出（抓样判读表）

| 探针 | 形态（`e5i` 输出为 `nE5 <前缀> a=<值>`） | 期望 |
|---|---|---|
| `nP2dif` | `nE5 nP2dif a=<0..5>` | 与你开局选的难度一致 |
| `nP2frq` | `nE5 nP2frq a=<本回合新增数>` | ≤ `FRQ[难度]`；传奇 > 极简 |
| `nP2cap` | `nE5 nP2cap a=3` | 出现 ⇒ K 真在拦 |
| `nP2mil` | `nE5 nP2mil a=1` | **必须出现**（历史恒 0） |
| `nP2s` | `nE5 nP2s…`（选中 pid / 档 / 分 / raw econ / raw pop） | 选中省的"档"应为 0 或分最高档 |
| `nA2L` | `nE5 nA2L a=1` | 线 L 战时分支被关闭的次数（AI 文明） |

---

## 七、门禁与验收（排雷版，逐条执行）
1. 写码 → 每处改动先在脚本里写"锚点匹配数必须 =1"断言；
2. `apktool b` / 或既有汇编流程 → **arity 门禁** → **八件套** → **㉔** → **㉘（新增 invoke 必须核目标类声明；先跑负样本）**；
3. 装机（独立核验 md5）→ 启动自检（crash=0）；
4. 抓样：`nP2dif / nP2frq / nP2cap / nP2mil / nP2s / nA2L`；
5. 可证伪硬指标：`nP2mil` 出现 `mil=1`；传奇难度 `nP2frq` > 极简；玩家手动点省出击照常（含"先宣战"提示）；AI 和平期巡逻不归零；无闪退。

---

## 八、开工顺序（下一步立即执行）
1. `r5c046_fix.py`：E1 → E2/E3（K）→ E4/E5（视野）→ E8（FRQ/P）→ E7（轰炸选靶）→ E6（攻击主键）→ 探针；
   每步带"锚点唯一性断言 ＋ 替换前后 diff 打印"。
2. 备份：`AirForceManager.smali.pre_r5c046`（先做）。
3. 汇编/门禁/装机/实测/归档（含【设计逻辑】11 项）。
'''

PLAN_SEC = r'''

---

## 59. 【施工定稿】r5c046 锚点/寄存器/真值表（''' + TS + r'''）
> 全文：**`r6s5/调研_r5c046施工定稿_v5.md`**；未改一行 smali。
### 59.1 终版口径
关线 L **只关 AI 文明**（含观战无玩家）｜视野门 **B：可见即刷新**（`a1Scan:6384`、`a1bPick:6710` 各 `if-eqz→if-nez`）｜
K=3 按 `civ × 任务类型`（**枚举对象比较，不用 ordinal**）｜频率 **方案 C**：`FRQ=[1,1,1,2,2,3]` ＋ `P=0.33×[0.5,0.75,1.0,1.25,1.5,2.0]`（`<=0` 兜底）｜
轰炸线：军建置顶档 ＋ 经济:人口 1:1 ＋ 同档随机 ＋ 每机场每回合一次｜攻击线：主键**师数 desc**。
### 59.2 锚点（唯一匹配串）
E1 `if-eqz v0, :cond_3c`(1048) 之后插入关闭门｜E2 `:sc_have`(6304) 后插 K=3｜E3 `a1bScan` 7016 后插 K=3(ATTACK_ARMY)｜
E4 `6384 if-eqz v13, :sc_sel`→`if-nez`｜E5 `6710 if-eqz v10, :bp_invis`→`if-nez`｜E6 `a1bPick` 比较改 `if-gt` 师数｜
E7 `a1Scan` 6337-6446 改"每机场选最优一次"＋`6356` 改指 `:sc_pick`｜E8 FRQ/P 初始化（含 clamp 与 `TURN_ID` 绑定）。
### 59.3 新增字段/helper
`a1PkTier/a1PkScore/a1PkN/a1PkPid/a1PkP/a1FrqTurn/a1FrqN/a1bDivBest` ＋
`a1CivInflight(I,MissionType)I`／`a1DivCount(I)I`／`a1FrqFor()I`／`a1ProbFor()F`。
### 59.4 R7 量纲（我方定）
`score = (int)(getEconomy()*10) + getPopulationTotal()/100`，负值归零；验收时汇报 raw 值并按需给"只改两常量"的微调。
### 59.5 探针
`nP2dif`/`nP2frq`/`nP2cap`/`nP2mil`/`nP2s` ＋ `nA2L`（线 L 关闭计数）。
### 59.6 开工顺序
备份 → E1 → E2/E3 → E4/E5 → E8 → E7 → E6 → 探针 → 门禁（arity/八件套/㉔/㉘ 含负样本）→ 装机 → 抓样 → 归档（附【设计逻辑】）。
'''

INCR_ADD = r'''
## 9. 第五轮追加（施工定稿）
- 终版口径：只关 AI 文明｜视野门 B（两条 `if-eqz→if-nez`）｜K=3 用枚举对象比较｜方案 C（FRQ=[1,1,1,2,2,3]，P=0.33×MULT）｜轰炸线军建置顶档＋经济:人口1:1＋同档随机＋每机场每回合一次｜攻击线主键师数 desc。
- 锚点：E1 `if-eqz v0, :cond_3c`(1048)｜E2 `:sc_have`(6304)｜E3 a1bScan 7016 后｜E4 `6384`｜E5 `6710`｜E6 a1bPick 比较改 `if-gt`｜E7 6356 改指 `:sc_pick`。
- 新增：`a1PkTier/a1PkScore/a1PkN/a1PkPid/a1PkP/a1FrqTurn/a1FrqN/a1bDivBest` ＋ helper `a1CivInflight(I,MissionType)I`/`a1DivCount(I)I`/`a1FrqFor()I`/`a1ProbFor()F`。
- R7：`score=(int)(econ*10)+popTotal/100`，负值归零；验收汇报 raw。
- 探针：nP2dif/nP2frq/nP2cap/nP2mil/nP2s/nA2L。
- 寄存器铁律：16 上限 ⇒ 新增暂存走静态（沿用 a1bPk* 范式）。
- 文档：`r6s5/调研_r5c046施工定稿_v5.md`；计划书 §59。
'''

def main():
    with open(DOC, 'w', encoding='utf-8') as f:
        f.write(DOC_TXT)
    with open(PLAN, 'a', encoding='utf-8') as f:
        f.write(PLAN_SEC)
    with open(INCR, 'a', encoding='utf-8') as f:
        f.write(INCR_ADD)
    print('[OK] doc  :', DOC, os.path.getsize(DOC), 'B')
    print('[OK] plan :', PLAN, os.path.getsize(PLAN), 'B')
    print('[OK] incr :', INCR, os.path.getsize(INCR), 'B')

if __name__ == '__main__':
    main()