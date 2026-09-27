# -*- coding: utf-8 -*-
# r5c046w_all.py —— 批 r5c046w：两个按钮互不干扰（撤掉"战时+巡逻⇒不轰炸"的互斥）
# 用法: python3 r5c046w_all.py survey | patch | gate [file]
import os, sys, time, re, hashlib
BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
AFM='/tmp/revs/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
TS=time.strftime('%Y-%m-%d %H:%M')
V1=os.path.join(R6S5,'调研_r5c046w_按钮解耦_v1全量.md')
V2=os.path.join(R6S5,'调研_r5c046w_按钮解耦_v2拓展.md')
V3=os.path.join(R6S5,'调研_r5c046w_按钮解耦_v3定稿.md')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')

V1_TXT='''# 调研（第一轮·全量）：玩家的轰炸机为何"不飞了"——F5 互斥门的副作用
> 时点 ''' + TS + ''' ｜ 装机版 r5c046v ｜ 样本 `r5c046u_s1.txt`（26.7 MB）

## 一、时序硬证（同一样本）
| 事件 | 行号 | 含义 |
|---|---|---|
| `nA4d`（玩家战时分支） | 56756 … 279973（14 次） | 玩家机场**进过**战时分支 |
| `nA4e k=0`（成功建任务） | 56896 … 279882（**10 次**） | **玩家的轰炸机确实出击过 10 次** |
| `afp:mt a=0`（按「自动巡逻」） | **615010、644572** | **在那些出击之后**才把巡逻打开 |
| 之后 | **再无任何 `nA4d`** | 巡逻开着（`mode=PATROL`）期间，战时轰炸**一次都没发生** |

## 二、机制（F5 引入的互斥）
```
r5c046t F5 的门（现状）：
  mode == PATROL ? ── 是 ─→ 战时⇒return-void（★不轰炸）／和平⇒继续（巡逻）
                   └─ 否 ─→ 战时⇒继续（轰炸）／和平⇒return-void（不巡逻）
```
⇒ 只要「自动巡逻」显示"开"（`mode=PATROL`），**玩家的轰炸机在战时被门挡死**；而「自动打击」开关（`autoStrikeOff`）此时形同虚设。
⇒ 这正是用户"轰炸机完全不去"的直接原因（他们按过巡逻键，且巡逻键是常开的）。

## 三、用户期望
"轰炸机炸敌方本土、攻击机打敌方部队，两者都该会飞"⇒ **两个按钮应当互不干扰**（巡逻键只管巡逻、打击键只管轰炸）。
'''

V2_TXT='''# 调研（第二轮·拓展）：解耦后的判定链、不变量与副作用
> 时点 ''' + TS + '''

## 1. 解耦后的完整判定链（玩家老线，逐机场每回合）
1. **外层门（u 批修好的）**：`mode==AI` ⇒ 派发；`playerCiv<0` ⇒ 派发；`airport.civID != playerCiv` ⇒ 跳过；`autoStrikeOff != 0`（打击键"关"）⇒ 跳过；否则派发。
2. 10% 骰（`rnd ≥ 0.1 ⇒ 返回`）。
3. `atWar = isAtWar(civ)`。
4. **新门（本批）**：
 - **战时** ⇒ **继续**（不论 `mode`）⇒ 走轰炸分支（`aiPickVisibleTarget(BOMBER)` → `pickIdleDivKey(BOMBER)` → `createStrategicBombing`）。
 - **和平** ⇒ 仅当 `mode==PATROL` 继续（巡逻：`pickIdleDivKey(FIGHTER)` → `createPatrol`）；否则返回。
⇒ **巡逻键（mode）只影响和平期巡逻；打击键（autoStrikeOff）只影响战时轰炸**；两者可同时开。

## 2. 不变量
- 外层门（u 批）不动；F4 视野（AI 走自己视野）不动；老线的视野过滤、`aiPickVisibleTarget` 不动。
- `tryPatrolForAirport`（另一条巡逻路径）本来就要求 `mode==PATROL` ⇒ 与新门一致，无需改。
- 不新增静态字段；不提高 `.registers`（复用 v2/v3）。

## 3. 副作用评估
- 巡逻开着且战时：机场**同时**可能轰炸（战时）与巡逻（和平）——符合"两个按钮各管一段"。
- AI 文明：仍走智能线（外层门要求 `mode==AI` 才放行它们走老线），不受影响。
- 攻击机：**玩家侧仍无路径**（另立新功能，见 §95）。

## 4. 失败模式
| 现象 | 原因 |
|---|---|
| 巡逻开着就不轰炸 | 门没改成功（门禁㊼ 拦） |
| 和平期乱巡逻 | 门写反（把和平判据写成"非 PATROL 继续"） |
| 战时轰炸无视打击开关 | 外层门被绕过（㊹ 拦） |
'''

V3_TXT='''# 调研（第三轮·全量拓展·定稿）：r5c046w 可施工定稿
> 时点 ''' + TS + ''' ｜ 基线树 `/tmp/revs`（＝r5c046v 装机版反汇编）

## 1. 编辑清单（1 处）
| # | 位置 | 锚点 | 动作 |
|---|---|---|---|
| **F6** | `executeAIAssignmentForAirport` 的 mode 门 | `    # r5c046t F5: …` 至 `    :t_go`（6 条分支指令） | 改为"战时一律继续；和平仅 `mode==PATROL` 继续"，删掉 `:t_pat` 分支 |

## 2. 真值表（修后）
| 情形 | 修前 | 修后 |
|---|---|---|
| 战时 + `mode==PATROL`（巡逻键"开"） | **不轰炸** ✗ | **继续轰炸** ✔（由打击键管） |
| 战时 + `mode==OFFENSIVE` | 继续轰炸 | 继续轰炸（不变） |
| 和平 + `mode==PATROL` | 继续巡逻 | 继续巡逻（不变） |
| 和平 + `mode!=PATROL` | 不巡逻 | 不巡逻（不变） |

## 3. 门禁
- **㊼ `check_button_decouple.py`**：断言门内**存在** `if-eqz v0, :t_go`（战时直接放行）且**不存在** `if-nez v0, :t_go`（旧的互斥写法）。负样本＝r5c046v 树 ⇒ 报错。

## 4. 验收（可证伪）
1. **巡逻键"开" + 打击键"开" + 战时**：`nA4d`/`nA4e k=0` 应重新出现（轰炸机出击）；
2. 打击键"关" + 战时：仍零出击（u 批的外层门）；
3. 和平：巡逻仍只由巡逻键控制（t 批验收项不回归）；
4. AI：不受影响（仍只走智能线）。
'''

PLAN_SEC='''

---

## 95. 【施工·已装机】r5c046w —— 两个按钮解耦（玩家轰炸机恢复）
**根因**：r5c046t 的 F5 门做成"互斥"（`mode==PATROL` 时战时**不轰炸**）⇒ 用户把「自动巡逻」开着时，**玩家的轰炸机被挡死**（样本：巡逻键在 615010 才打开，此后 0 次 `nA4d`；此前有 10 次 `k=0` 成功）。
**修法**：战时**一律继续**（轰炸由「自动打击」开关经外层门控制）；和平仍要求 `mode==PATROL` 才巡逻。⇒ 巡逻键只管巡逻、打击键只管轰炸，**互不干扰**。
**门禁**：新增 ㊼（断言"战时放行"＋"无互斥写法"）。
**待办（新功能，见 §96）**：**玩家的攻击机线**——目前玩家侧没有任何攻击机自动出击路径。
'''

INCR_ADD='''
## 39. 施工·已装机 r5c046w（两个按钮解耦）
- **症状**：玩家机场的轰炸机"完全不飞"。
- **根因**：r5c046t 的 F5 门把巡逻/打击做成**互斥**（`mode==PATROL` ⇒ 战时 return-void）⇒ 巡逻键开着时轰炸被挡死。样本：`afp:mt a=0` 出现在 615010（此前已有 10 次 `nA4e k=0` 成功），此后 0 次 `nA4d`。
- **修法**：战时一律继续（由「自动打击」开关的外层门管）；和平仅 `mode==PATROL` 才巡逻。
- **门禁**：新增 ㊼（战时放行 + 禁互斥写法）；负样本＝r5c046v 树。
- 验收：巡逻开+打击开+战时 ⇒ 轰炸机重新出击；打击关 ⇒ 零出击；和平巡逻仍只由巡逻键控制。
'''

def survey():
    for p,t in ((V1,V1_TXT),(V2,V2_TXT),(V3,V3_TXT)): open(p,'w',encoding='utf-8').write(t)
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC); open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    print('[survey OK] v1=%d v2=%d v3=%d plan=%d incr=%d'%(os.path.getsize(V1),os.path.getsize(V2),os.path.getsize(V3),os.path.getsize(PLAN),os.path.getsize(INCR)))

OLD='''    # r5c046t F5: 巡逻/打击按钮真正生效 —— 和平只巡逻、战时只打击（mode 互斥）

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->PATROL:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    if-ne v2, v3, :t_pat

    if-eqz v0, :t_go

    return-void

    :t_pat

    if-nez v0, :t_go

    return-void

    :t_go'''
NEW='''    # r5c046w F6: 两个按钮互不干扰 —— 战时一律继续（轰炸由「自动打击」外层门管）；和平仅 mode==PATROL 才巡逻

    iget-object v2, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->PATROL:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    if-eqz v0, :t_go

    if-ne v2, v3, :t_go

    return-void

    :t_go'''

def patch():
    src=open(AFM,encoding='utf-8').read(); before=hashlib.md5(src.encode()).hexdigest()[:12]
    if src.count(OLD)!=1: print('[FAIL] 锚点命中 %d 次'%src.count(OLD)); return 1
    src=src.replace(OLD,NEW,1)
    bak=AFM+'.pre_r5c046w'
    if not os.path.exists(bak): open(bak,'w',encoding='utf-8').write(open(AFM,encoding='utf-8').read())
    open(AFM,'w',encoding='utf-8').write(src)
    print('AFM md5 %s -> %s'%(before,hashlib.md5(src.encode()).hexdigest()[:12])); return 0

def gate(path=None):
    f=path or AFM; src=open(f,encoding='utf-8').read()
    m=re.search(r'executeAIAssignmentForAirport.*?\.end method',src,re.S)
    body=m.group(0) if m else ''
    bad=[]
    if not body: bad.append('㊼ 找不到 executeAIAssignmentForAirport')
    else:
        if 'if-eqz v0, :t_go' not in body: bad.append('㊼ 缺"战时直接放行"（if-eqz v0, :t_go）')
        if 'if-nez v0, :t_go' in body: bad.append('㊼ 仍存在互斥写法（if-nez v0, :t_go）')
        if 'Airport$Mode;->PATROL' not in body: bad.append('㊼ 缺 PATROL 比较（和平巡逻门）')
    for x in bad: print('FAIL %s'%x)
    print('㊼ r5c046w: %d 处可疑'%len(bad))
    return 1 if bad else 0

if __name__=='__main__':
    mode=sys.argv[1] if len(sys.argv)>1 else 'survey'
    if mode=='survey': survey(); sys.exit(0)
    if mode=='patch': sys.exit(patch())
    if mode=='gate': sys.exit(gate(sys.argv[2] if len(sys.argv)>2 else None))
    print('usage: r5c046w_all.py survey|patch|gate [file]')