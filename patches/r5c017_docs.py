# -*- coding: utf-8 -*-
# R5c017：弹药机制——决策落定 + 拓展调研（路线甲/乙）+ 修正我此前写错的初始化守卫描述
import io, shutil

D = '/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
D2 = '/sdcard/GLG/历史23/空战重做专案_设计v2.md'
for p in (D, D2):
    shutil.copyfile(p, p + '.pre_r5c017')

def rep(path, old, new, expect, tag):
    s = io.open(path, encoding='utf-8').read()
    n = s.count(old)
    assert n == expect, 'XX [%s] 命中 %d（期望 %d）' % (tag, n, expect)
    io.open(path, 'w', encoding='utf-8').write(s.replace(old, new))
    print('OK', tag)

# ---------- ① 修正初始化守卫描述（我此前写错）----------
rep(D,
    '| **惰性初始化**（守卫＝`perPlane<=0 ∥ strikeKind==2`） |',
    '| **惰性初始化**（守卫＝**`perPlane<=0` 且 `strikeKind!=2`**；`strikeKind==2` 是"已干"闩锁，防重复初始化）⚠️此前写成`∨`，2026-09-23 重读代码修正 |',
    1, '§D.2 初始化守卫极性修正')

# ---------- ② 追加 §D.5 决策落定 + §D.6 拓展调研 ----------
anchor = '| D-C | **打光后**行为 | 建议：**直接返航**（照引擎"打光→不再开火"＋`shouldReturn` 的"有攻击机 payload≤0 才 linger"语义）；备选：留在原地待命 |\n'
add = anchor + '''
### D.5 决策落定（用户 2026-09-23）

| # | 定案 |
|---|---|
| D-A | **②以现 payload 为基准并随代增长**（3代:4／4代:6／5代:10／6代:16，可在 B3-A6 面板调） |
| D-B | **①新池限流，`payload` 不再作为限制**（避免双重限流） |
| D-C | **①打光直接返航**（用现成的 `forceReturn()`：守卫 state ∈ {RETURNING,COMPLETED,ABORTED}→直接跳，否则 `state=RETURNING` ＋ `setupReturnLeg()`） |
| **D-D** | **自动派发与手动任务都适用**（不限定 `a1bAuto`）——落地方式：**把弹药初始化写成"惰性初始"（放在攻击路径里）**，这样 `a1bDispatch`（自动）与 `createMissionForClick`（手动）两条创建路径**自动覆盖**，无需在工厂里各写一次 |
| D-E | 每轮扣"每机 1 发"（＝`min(存活机数, 剩余)`，与导弹齐射同构） |
| D-F | **是否拦派发**：待用户拍板（见 D.7） |
| D-G | 照抄：`returnToBase` 里与 `missilesLeft` 并列补给（`每机数 × 存活机数`） |
| D-H | 探针：`nGA init p= n= g=`（照 `nMS init`）＋ `nGA dry` |
| D-I | 无弹**不弹新提示**（不新增文案；将来并入 B3-A6 面板） |
| D-J | **本批只做攻击机**；轰炸机（`maxAttackRounds=1`、payload 8）保持现状，改导弹留待以后 |

### D.6 拓展调研（2026-09-23 源码实证）——两条实现路线（**新增待选**）

**关键新发现（决定实现面）**

| 事实 | 证据 |
|---|---|
| **`payload` 其实已经是"能否对地开火"的硬门** | `AirUnit.canAttackGround()` ＝ `currentPayload > 0 && canAttackGround[机型]` ⇒ payload 0 的飞机**不计任何对地伤害** |
| 伤害循环本身**不**用 payload 判伤，只做递减 | `executeAttack` 机群循环：`canAttackGround()`→`unitMul`→累加 `groundAttack`；随后 `if (payload>0) payload--` |
| 现役轮数上限：**攻击机 2 轮／轰炸机 1 轮** | `createAttackArmy` 写 `maxAttackRounds=2`；`createStrategicBombing` 写 **1**；INTERCEPT/SWEEP＝1；AIR_SUPERIORITY/PATROL＝0 |
| 因此现在"限流"由**轮数**先到（payload 用不完，返航即补满） | 一架攻击机 payload 4 ⇒ 本可打 4 轮，但轮数封在 2 |
| **AI 不会创建 ATTACK_ARMY 任务** | 全树 `createAttackArmy` 仅两处调用：`AFM:814`（玩家手动）与 `AFM:6608`（我们的 `a1bDispatch`）；AI 只调 `createStrategicBombing` |
| 弹药**不入存档** | 存档 DTO 无弹药字段 ⇒ **读档即满弹**（已知行为，登记为 quirk） |

**两条路线**

| 路线 | 做法 | 优点 | 风险/代价 |
|---|---|---|---|
| **甲（贴引擎·最小改动）** | **放宽 `maxAttackRounds`**（攻击机＝按 payload 决定轮次），让**现有 payload 成为弹药池**；"按世代给弹药数"＝让 **C2 逐代覆盖 `MaxPayload`**（数据层，纯 JSON） | 几乎不动 `executeAttack`；**天生适配代差**（C2 数据层直接给数）；无新字段；风险最低 | 需要改 `createAttackArmy` 的轮数常量；"任务级池/面板显示"要另做 |
| **乙（照抄导弹弹药）** | 新增 `a1bAmmoPerPlane/a1bAmmoLeft` ＋ `groundAmmoForGen(gen)`；**惰性初始化**（放攻击路径）；每轮齐射扣减；`dry` 闩锁；`returnToBase` 补给；并**去掉 payload 门**（改 `canAttackGround` 的判据或把 payload 恒置满） | 与拦截机模型完全一致；可做"本队剩余弹药"显示 | 要动 `canAttackGround()` 或 `executeAttack` 的 payload 递减 ⇒ 中等风险；两套数据（payload 与池）需协调，避免双源 |

**建议**：**先走甲**（同样实现"弹药＝出击次数上限、随代增长、打光返航"的全部要领，且风险最低）；若之后要做"任务级池＋面板显示"，在甲之上追加乙的池字段即可。**两条路线的 D-F 语境不同**（见 D.7）。

### D.7 D-F「是否拦派发」是什么意思（准备给用户的通俗解释）

见正文汇报（本轮回复）；结论先记：**甲路线下**该问题基本不存在（弹药＝机型 payload，扫描器无需知道）；**乙路线下**才需要决定"扫描器遇到无弹的机场是否跳过派发"。
'''
rep(D, anchor, add, 1, '§D.5/§D.6/§D.7 追加')

# ---------- ③ 设计v2：把"待拍板"改为"已拍板 + 新增路线待选" ----------
rep(D2,
    '- 待拍板 3 条（D-A 弹数表／D-B 与既有 payload 的关系／D-C 打光后行为）见《下一步调研_选靶微调与C2代际v1》**§D.4**。',
    '- **已拍板（2026-09-23）**：D-A②（3代:4/4代:6/5代:10/6代:16）／D-B①（新池限流、payload 不再作限制）／D-C①（打光直接返航，用 `forceReturn()`）／**D-D＝自动＋手动任务都适用**（惰性初始化覆盖两条创建路径）／D-E~D-J 按默认（每轮每机1发；返航补给；探针 `nGA init/dry`；无弹不弹提示；本批只攻击机）。\n- **新增待选（拓展调研）**：实现**路线甲**（放宽 `maxAttackRounds`、让现成 payload 当弹药、C2 逐代给 `MaxPayload`；风险最低）**vs 路线乙**（照抄导弹：新增任务级池字段，并去掉 payload 门）。详见《下一步调研…》**§D.6**；**D-F"是否拦派发"的取舍依附于路线选择**（§D.7）。',
    1, '设计v2 待拍板→已拍板')

print('OK: r5c017 完成（备份 .pre_r5c017）')