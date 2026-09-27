# -*- coding: utf-8 -*-
# 2026-09-24 文档登记：附-27（r5c018c 记录+判读）＋ 选靶随机化调研（§E）＋ 设计v2 待办行
import io, shutil

P = '/sdcard/GLG/历史23/r6s5/B3-A1自动打击接活_具体方案书v1.md'
D = '/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
S = '/sdcard/GLG/历史23/空战重做专案_设计v2.md'
for f in (P, D, S):
    shutil.copyfile(f, f + '.pre_r5c018d')

# ---------------- 附-27 ----------------
sec27 = u"""
## 附-27 施工记录：批次 **r5c018c**（解锁 shouldReturn 死循环体 ＋ 可达性门禁）＋ 第三轮抓样判读 ＋ R4c136 死代码发现 2026-09-24

### 附-27.1 全量可达性调研（新工具 `reach.py`，源码级 CFG，支持 packed-switch）
- 扫描器先修正对 `packed-switch` 的误报（`update()` 曾报 280 条"死代码"，修正后消失）。
- **真实死代码 = 4 处**：`shouldReturn`(31，循环体)、`returnToBase`(24，**我们的 R4c136**)、`forceReturn`(25)、`trackTarget`(7)。
- `shouldReturn` 死因：**循环守卫后的冗余无条件 `goto :goto_2c`**（源码 2877）⇒ 其后循环体（`canAttackGround`／payload 判定）不可达 ⇒ v0 保持 1 ⇒ `return true` 恒真 ⇒ **一趟只投 1 轮**。全文件 `.catch` 计数 = 0 ⇒ 无异常处理器入口 ⇒ 死区无法被跳入。

### 附-27.2 本批改动
| # | 改动 | 目的 |
|---|---|---|
| A | 删除 `shouldReturn:2877` 的冗余 `goto :goto_2c` | 解锁循环体 ⇒ 让 r5c018b 的 `if-lez` 真正生效（**投满 payload 才走**） |
| B | `update()` 里 `um_sr` 探针 `d()` → `dKey()` | 抓样可直接看到 `shouldReturn` 返回值，不再靠推断 |
| C | 新增第九件门禁：`reach.py --check-baseline`（基线 `reach_baseline.txt`，4 个白名单方法） | 防"再引入死代码"；无新增/无恶化即通过 |

### 附-27.3 门禁与装机
arity BAD=0（WARN=3 白噪）；八件套 **BAD 合计=0、ΔSig=0**；`check_branch`（单文件）`shouldReturn`/`update` **方向可疑=0**；**真悬空=0**；可达性门禁 **通过**（`shouldReturn` 死代码 31→18，剩余为引擎原有 `return` 之后尾巴）。
产物：`build_apk/dbg_signed77_v119_r5c018c.apk`；dex `16a0ea850ed19dae9a2c80611b08d665`／APK `133a4abceed57b5fa5a23184b3f6c338`；装机 **DEX_MATCH=1／APK_MATCH=1**；真机启动 **VerifyError=0／FATAL=0**；基线重置 232,741,022。

### 附-27.4 第三轮抓样判读（`r6s5/cur_r5c018c.txt`，131,500,786 B）——**通过**
| 判据 | 实测 | 结论 |
|---|---|---|
| 一趟投满 | `nGA fire` r=0×208／r=1×205／r=2×202／r=3×197，序列 `0,1,2,3` 成串 | ✅ 投满 4 轮 |
| 投完即走 | `nRT sw`×210 ≈ r=0 次数 | ✅ |
| 新证据通道 | `um_sr:0`×769（有弹⇒留下）／`um_sr:1`×210（打光⇒回家） | ✅ 不再靠推断 |
| 轮数上限 | `nGA dry`=0 | ✅ 未误触 |
| 回归 | `nB2c nofire`216＝`nB2 miss`216；`gate`108＝`cap`108＝`new`108；`toast`=0 | ✅ 与 r5c015 一致 |
小尾巴：`nGA init … n=0`×2（无可用攻击机时也建了任务）——已观察，影响小，记入观察项。

### 附-27.5 新发现（旧 bug，登记不修）：R4c136「返航补给导弹」是死代码
`returnToBase` 中该块被置于 `goto :goto_6` 之后且**无任何跳入点**（可达性工具判定：`dead=24`，起于 2792）⇒ **拦截机导弹池从不因返航而补**，现仅靠"每架次新建任务＋惰性初始化"兜底。
- **对本批无影响**：攻击机弹药＝`payload`，其返航补给是**引擎原有且可达**的（2783-2785）。
- **处置**：与 C2/导弹家族同批修（把该块移到可达处，或改为在惰性初始化里一并补），并加探针 `nMS refill` 验收。

### 附-27.6 状态
**"攻击机备弹（甲1'）"结案**（机制＋回归全过）。剩余：①逐代给数（C2 第 4 接线点，`unitGenOf`＋`MaxPayload` 4/6/10/16）；②**攻轰选靶随机化/分散**（新需求，见《下一步调研…》§E）；③面板显示（B3-A6）；④R4c136 修复；⑤表现类尾巴（FX／战报节流／手动静默）。
"""

# ---------------- §E 选靶随机化调研 ----------------
secE = u"""
## E. 2026-09-24 增补：**攻轰（对地）选靶现状与"随机/分散"候选方案**（用户新需求，只读调研）

### E.1 现状（源码实证）
| 环节 | 现役实现 |
|---|---|
| 派发链 | `a1bScan(civID)` → 每机场 `a1bPick(airport,civID)` → `a1bDispatch(provID,civID)` → `createAttackArmy(airport, **targetArmyID=-1**, provID, divKey)` |
| **目标粒度** | **是"省"，不是"师"**（`targetArmyID` 恒传 -1） |
| `a1bPick` 候选门 | ①省份在 ATTACKER 可达集内；②`isEnemyArmyInProvince(civID)==true`；③"见过"时间戳 `a1Gsee[p]` 在 **6×HOURS_PER_TURN 小时**内（记忆过期即跳过）；④**每省在飞任务数 `< 2`**（超出则跳过并计 probe 0x4） |
| `a1bPick` 排序 | `provinceDistance(我方机场省, 候选省)` **取最小**；并列时取**省ID较小**者 ⇒ **完全确定性** |
| 伤害侧 | `applyArmyDamage(省, civID, dmg, armyID)`：**倒序遍历该省全部师**，跳过 `airhq` 假师、跳过非敌/未交战师 ⇒ R4c176 后为 **nuke-style**：打某省＝同时打到该省**所有**敌师 |

⇒ **结论**：您观察到的"总摁着一个师揍"根因是 **选省＝"最近优先、无随机、并列取小ID"**；而"照顾别的敌军"的抓手在 **选省（以及每省在飞配额）**，不在"换一支师"——因为一旦打到某省，该省所有敌师都会挨打。

### E.2 现成可用件
- **RNG：`Game.oR`（`public static java.util.Random`）**，AFM 已有 `nextInt(size)` 用法（如 4454-4462）⇒ 随机化零成本。
- 探针：`nA1b` 诊断通道已有（类型 0x08/0x09/0x0b-0x0e/0x15/0x1a/0x1b 等）可复用。
- 「敌师是否在移动」可用 `ArmyDivision.inMovement`（我们的 `applyArmyDamage` 探针里已读过 `mv=`/`bt=`）。

### E.3 候选方案（待用户挑）
| # | 方案 | 做法 | 优点 | 代价 |
|---|---|---|---|---|
| ① | **top-K 随机** | 把"取最小距离"改成"在距离最优的前 K 个（或 ≤最优+ε）里 `Game.oR.nextInt` 随机取一个" | 改动最小、天然分散、K/ε 可调 | 选靶不再可完全预测 |
| ② | **确定性轮转** | 按机场序号/省ID哈希取偏移，在候选列表里取 `(i+offset)%n` | 分散且**可复现**（判读友好） | 需要新增偏移来源 |
| ③ | **紧迫度优先** | 优先"有敌师 `inMovement==true`（正在推进/入侵）"的省，再在其中随机 | **直接回应"敌人趁乱继续入侵"** | 需读 `inMovement`（现成字段） |
| ④ | **多省并行配额** | 把"每省 ≤2 个在飞"改为"全局均衡：每省 ≤1"或按距离分层配额 | 最直接地"照顾别的敌军" | 会降低单点火力密度 |
| ⑤ | **随机伤害分配** | 每轮伤害按随机比例分给省内多支敌师 | 让受损更"平摊" | 现为 nuke-style 全打，收益有限；要动 `applyArmyDamage` |

### E.4 建议与我需要您拍板的点
- **建议**：先做 **①+③ 组合**（"正在入侵的省"优先，其次在距离接近的候选里随机），并把"每省在飞上限"从 2 变为 **可配置**（默认仍 2）。这样既不丢"就近"的军事直觉，又能让火力分散到其他敌军。
- **待拍板**：A. 选 ①/②/③/④/⑤ 中的哪些（可组合）；B. 随机粒度＝**每架次**／每次扫描／每回合；C. "每省在飞 ≤2" 是否保留；D. 是否需要"优先打正在移动的师"。
- **验收探针建议**：新增 `nPK pick=<省> d=<距离> k=<候选数> rnd=<0|1>`，配合现有 `nA1b` 对账"多省是否都被照顾到"。
"""

t = io.open(P, encoding='utf-8').read()
assert '附-27' not in t, 'XX 附-27 已存在'
io.open(P, 'w', encoding='utf-8').write(t.rstrip('\n') + '\n' + sec27)

t2 = io.open(D, encoding='utf-8').read()
assert '### E.1 现状' not in t2, 'XX §E 已存在'
io.open(D, 'w', encoding='utf-8').write(t2.rstrip('\n') + '\n' + secE)

t3 = io.open(S, encoding='utf-8').read()
anchor = u'## 【R5c018a / 2026-09-24】'
assert anchor in t3, 'XX 设计v2 缺 R5c018a 锚点'
row = (u'\n## 【R5c018c / 2026-09-24】弹药机制第二步：解锁 shouldReturn 死循环体（甲1\' 生效）＋ 可达性门禁\n\n'
       u'- `shouldReturn` 冗余 `goto :goto_2c` 造成循环体不可达（死代码 31 条）⇒ 删除后 `if-lez` 生效：**一趟投满 payload 才走**。\n'
       u'- 新增 **第九件门禁 `reach.py --check-baseline`**（基线 4 个白名单方法，无新增/无恶化）。\n'
       u'- 抓样（`cur_r5c018c.txt`）**通过**：`nGA fire` r=0…3 各 ~200 次、`um_sr:0/1` 出现、`nGA dry`=0、回归四项一致。\n'
       u'- 新发现旧 bug：**R4c136 返航补给导弹是死代码**（与 C2/导弹家族同批修）。\n'
       u'- 新需求（待拍板）：**攻轰选靶随机化/分散** —— 现状"最近优先、确定性"，见《下一步调研_选靶微调与C2代际v1》**§E**。\n')
if '【R5c018c' not in t3:
    io.open(S, 'w', encoding='utf-8').write(t3.rstrip('\n') + '\n' + row)
    print('OK 设计v2 已追加【R5c018c】节')
else:
    print('OK 设计v2 已有 R5c018c 节，跳过')

for f, name in ((P, '方案书'), (D, '下一步调研'), (S, '设计v2')):
    print('OK %s 行数: %d' % (name, len(io.open(f, encoding='utf-8').read().split('\n'))))