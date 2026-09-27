# -*- coding: utf-8 -*-
# R5c019/r5c019b 文档登记：方案书 附-28、计划书 §F、设计v2 【R5c019】、进度专档顶部行
import io, os, shutil

R = '/sdcard/GLG/历史23/r6s5/'
PLAN = R + 'B3-A1自动打击接活_具体方案书v1.md'
NEXT = R + '下一步调研_选靶微调与C2代际v1.md'
PROG = R + '空战重做_进度与bug排查专档_v1.md'
DESIGN = R + '空战重做专案_设计v2.md'

FU28 = u"""
---

## 附-28 施工记录：批次 **r5c019 / r5c019b**（攻击机选靶分散化）2026-09-24

### 附-28.1 口径（用户拍板）
```
排序键 = ( 在飞数↑ , 距离↑ , 同档随机 )
· 每省在飞上限「≤2」取消 ⇒ 层数不封顶（层1铺满所有候选省 → 才进层2 → 层3…）
· 同档 = |候选距离 − 当前档锚距离| ≤ 航程×10%（=37）；档内用 Game.oR 做蓄水池抽样
· 重瞄侧（a1bRetarget）同步同键，且只在半程185内选 ⇒ 档宽再 ×0.5 = 18.5（同一相对尺度）
· 唯一天然上限 = 可用闲置攻击机师数（pickIdleDivKey）；每机场每次扫描最多新增1架
```

### 附-28.2 改动清单
| 批次 | 位置 | 改动 |
|---|---|---|
| r5c019 | AFM 字段表 | 新增 6 个静态暂存：`a1bPkInf / a1bPkN / a1bPkTol`、`a1bRtInf / a1bRtN / a1bRtTol` |
| r5c019 | `a1bPick` | 比较块整体替换为新三级键；删「在飞≥2跳过」闸门；新增探针 0x30/0x31 |
| r5c019 | `a1bRetarget` | 同步三级键；删「在飞≥2跳过」闸门（半程门保留）；新增探针 0x32/0x33 |
| r5c019b | `AirMission.applyArmyDamage` | 探针 `String.valueOf(lArmyRegiment)` → `lArmyRegiment.size()`（**消闪退**） |
| r5c019b | AFM | k=4 极性 `if-gtz→if-lez`；0x30 护门 `if-gez→if-ltz`；0x32 护门 `if-gez→if-ltz`；重瞄档宽 ×0.5 |

### 附-28.3 工程约束（新发现，会影响以后所有批次）
`RunSmali`（smali 2.5.2 + 本项目工具链）**拒绝 `.registers > 16`**：
最小样例实测 `.registers 17/18/20` 全部报 `Invalid register: v… Must be between v0 and v15`。
⇒ 本次原按「升到 20 寄存器」实现，组装失败后**完整回滚**（md5 复位校验），改走**静态字段暂存**，寄存器维持 16。
**结论：以后新增状态优先用静态字段，不要动 `.registers`。**

### 附-28.4 判读（抓样实证）
**r5c019（`r6s5/cur_r5c019.txt`，17.85MB）**
- `k=9` 选中省：有效 115 次落在 **8 个不同省**（5713×61／6256×15／5714×15／5964×6／5962×6／5965×2／5722×2）⇒ 分散生效
- `k=49` 同档候选数：≥2 共 **22 次**（2×16、3×4、4×2）⇒ 随机档生效
- 该轮 **闪退 1 次**（见 附-28.5）

**r5c019b（`r6s5/cur_r5c019b.txt`，57.76MB）**
| 探针 | 实测 | 结论 |
|---|---|---|
| `k=9` 选中省 | 2263 条：-1×307（无候选）＋ 有效 1956 次覆盖 **14+ 个省**：5976×134、6258×133、6333×131、6335×124、6329×123、6256×112、6257×102、5713×77、6337×69、6325×61、6345×57、6339×55、2907×55… | **分散成功**（对比 r5c018c 的"堆一省"） |
| `k=48` 层号（选中省在飞数） | **0×1004、1×899**、2×2、3~12 各 1~12 次 | **层1铺满才进层2** 结构成立；少量高值＝候选少时的正常叠加 |
| `k=49` 同档候选数 | 1×1311、**2×373、3×174、4×61、5×31、6×3、7×1**（0×307） | **同档≥2 共 643 次（≈有效选取的 33%）** ⇒ 随机档大量生效 |
| `k=50 / k=51`（重瞄侧） | 271 / 271 | 0x32 护门修好后正常打印 |
| 闪退 | 无新 FATAL（logcat 唯一 FATAL 是 10:39 那次 r5c019 旧崩溃）；`VerifyError` 为自命令回显误命中 | **止血成功** |

**弹药机制回归（r5c019b 样本）**：`nGA fire` r=0/1/2/3 = **265/255/254/245**（成串投满）；`nGA dry`=0；`nRT sw`=267；`um_sr:0/1`=943/267；`nB2c nofire`=271=`nB2 miss`271；`nB2 gate`=80=`nB2 new`=80；`nB2 cap hops=1`=191（＝**跨省中转 hop 上限事件**，非每省配额）；`toast`=0 ⇒ **无回归**。

### 附-28.5 闪退根因与修复（重要）
```
java.util.ConcurrentModificationException
  at ArrayList$Itr.next ← AbstractCollection.toString ← String.valueOf
  at AirMission.applyArmyDamage(Unknown Source:71) ← R5b011 诊断探针
  at executeAttack → update → AirForceManager.updateMissions → AA_Game.render (GLThread)
```
`String.valueOf(lArmyRegiment)` 会遍历 division 的**活列表**；取消「每省≤2」后同帧多架打同一省，命中竞争概率被抬到必现 ⇒ GLThread 崩。
**修复**：改为 `lArmyRegiment.size()`（带 null 护门），观测值从"整列表"降级为"团数"，信息量不损。全树扫描确认**仅此一处**同类写法。

### 附-28.6 口径订正（消除两条假账）
1. **旧比较块并非"方向本来就正确"**：r5c018c 的 `6517-6522` 在「新候选更远 **且** 省ID更小」时会**落穿到 `:bp_take` 覆盖最优** ⇒ 真雷（这次整体替换后已消失）。
2. **但「并列取较小省ID」在 r5c018c 本来就是对的**（`if-ge v4, v5, :bp_loop` ＝保留原来那个更小ID）——我上一轮说的"并列取较大ID"**是错的**，一并订正。
3. `k=4` 旧义（"被 ≤2 上限挡下"）作废，新义＝"该省在飞>0（非层1）"；`0x30/0x32` 新义＝选中省在飞数（层号）。

### 附-28.7 遗留（登记，不属本批）
AFM 既有死代码 4 处（与补丁前逐字一致，非本次引入）：`airCombatOne`73、`executeAIAssignmentForAirport`61、`trySelectAirUnit`1、`updateAll`20 ⇒ 与 `forceReturn`/`trackTarget` 一并纳入"死代码复核"队列。
另：`reach_baseline.txt` 是 **AirMission** 专用基线；每个文件各自维护基线，勿跨文件校验。
"""

SELF = u"""
---

## F. 2026-09-24 交付：**攻击机选靶分散化**（r5c019 / r5c019b，已验收）

### F.1 结论
用户需求「别让每架攻击机都摁着一个师揍、照顾一下别的敌军」**已实现并抓样验收通过**：
- 排序键 `(在飞数↑, 距离↑, 同档[航程×10%]随机)`，每省在飞上限取消（层数不封顶）；
- 抓样：有效选取 1956 次覆盖 **14+ 个省**（此前基本集中 1 个省）；层号分布 `0×1004 / 1×899`（层1铺满→层2）；同档≥2 共 643 次（随机档生效）；
- 回归：弹药机制（投满 4 轮、投完即走、`um_sr` 通道）与 B2 系列全部对账一致；
- 顺手止血：`applyArmyDamage` 探针 `String.valueOf(活列表)` 引发的 CME 闪退已修。

### F.2 与"逐代给数（C2 第4接线点）"的关系
两者互不依赖：本批只改**选靶**，弹数仍是机型字段 `MaxPayload`（现 4）。若先做 C2，则"3代4／4代6／5代10／6代16"直接叠加到本键之上，不影响分散效果。

### F.3 剩余队列（与 附-27 合并后的现状）
1. C2 第4接线点：`unitGenOf` 真接线 ＋ `MaxPayload` 4/6/10/16 ＋ 探针 `g=`/`p=` ⏳
2. 面板显示"本队剩余弹药"（B3-A6）⏳
3. R4c136 死代码修复（返航补给导弹，与 C2 同批 ＋ `nMS refill` 探针）📋
4. 死代码复核：`forceReturn`/`trackTarget` ＋ AFM 4 处（`airCombatOne`/`executeAIAssignmentForAirport`/`trySelectAirUnit`/`updateAll`）📋
5. 归档前清理 B 步诊断探针（含本批 0x30–0x33）📋
6. 其余：盲打正向分支验收、轰炸机/攻击机跟随目标、自动打击开关＋设置面板、开火动画区分、杂项（存档丢飞机／空军区／tick 节奏）、五代六代上导弹（导弹家族留位）📋

### F.4 手感旋钮（不用改代码结构，仅两个常量）
- 同档阈值：`a1bPkTol` 现 37（航程 10%）→ 想更"就近"改 5%、想更散改 20%；
- 重瞄档宽：`a1bRtTol` 现 18.5（半程的 10%）；
- 如需恢复"硬性每省≤2"，把排序键前插一条 `if (inflight >= 2) skip` 即可（一行）。
"""

DESIGN_BLOCK = u"""
---

## 【R5c019 / r5c019b】选靶分散化（2026-09-24，已验收）

- **口径**：排序键 `(在飞数↑, 距离↑, 同档随机)`；取消每省在飞≤2；同档＝航程×10%（重瞄侧 ×0.5＝18.5）；蓄水池抽样用 `Game.oR`。
- **实现约束**：`RunSmali` 限 16 寄存器 ⇒ 状态走 6 个静态暂存字段（`a1bPkInf/PkN/PkTol`、`a1bRtInf/RtN/RtTol`）。
- **探针**：`0x30`=选中省在飞数（层号）、`0x31`=同档候选数；重瞄侧 `0x32`/`0x33`；`0x4` 新义＝"该省在飞>0"。
- **实证**：选中省覆盖 14+ 省；层号 `0×1004 / 1×899`；同档≥2 共 643 次；弹药机制零回归。
- **止血**：`AirMission.applyArmyDamage` 的 `String.valueOf(lArmyRegiment)` → `.size()`（CME 闪退）。
- **订正**：旧比较块确有一处"更远也覆盖"的落穿雷；但"并列取较小省ID"原本正确。
"""

def backup(p):
    b = p + '.pre_r5c019d'
    if os.path.exists(p) and not os.path.exists(b):
        shutil.copy2(p, b)

def append_if_new(path, marker, text, tag):
    if not os.path.exists(path):
        print('  SKIP(缺文件)', tag, path)
        return
    t = io.open(path, encoding='utf-8').read()
    if marker in t:
        print('  已存在，跳过', tag)
        return
    backup(path)
    io.open(path, 'w', encoding='utf-8').write(t.rstrip('\n') + '\n' + text + '\n')
    print('  OK 追加', tag, '（%d 行）' % len(text.split('\n')))

print('== 文档登记 r5c019/r5c019b ==')
append_if_new(PLAN, u'附-28 施工记录', FU28, u'方案书 附-28')
append_if_new(NEXT, u'## F. 2026-09-24 交付', SELF, u'计划书 §F')
append_if_new(DESIGN, u'【R5c019 / r5c019b】', DESIGN_BLOCK, u'设计v2 节')
# 专档顶部增补
if os.path.exists(PROG):
    t = io.open(PROG, encoding='utf-8').read()
    if u'r5c019b' not in t.split('\n')[0:6].__str__():
        backup(PROG)
        line = u'> 2026-09-24 批次 **r5c019/r5c019b**：攻击机选靶分散化（排序键=在飞↑/距离↑/同档随机×10%，取消每省≤2）已装机并抓样验收通过；同时止血 `applyArmyDamage` 探针 CME 闪退。详见方案书 附-28。\n\n'
        io.open(PROG, 'w', encoding='utf-8').write(line + t)
        print('  OK 专档顶部增补行')
    else:
        print('  专档已含，跳过')
else:
    print('  SKIP(缺文件) 专档')
print('== 完成 ==')