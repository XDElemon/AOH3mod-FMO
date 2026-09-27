# -*- coding: utf-8 -*-
# r5c046u_all.py —— 批 r5c046u：三轮调研(v1/v2/v3) + 计划书 §91 + INCR §35 + 补丁(G1/G2) + 门禁㊹㊺
# 用法: python3 r5c046u_all.py docs | patch | gate [文件]
import os, sys, time, re, hashlib

BASE='/sdcard/GLG/历史23'; R6S5=os.path.join(BASE,'r6s5')
AFM='/tmp/revs/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
TS=time.strftime('%Y-%m-%d %H:%M')

V1=os.path.join(R6S5,'调研_r5c046u_开关门失效与AI视野_v1全量.md')
V2=os.path.join(R6S5,'调研_r5c046u_开关门失效与AI视野_v2拓展.md')
V3=os.path.join(R6S5,'调研_r5c046u_开关门失效与AI视野_v3定稿.md')
PLAN=os.path.join(R6S5,'AI打击接入_调研与计划书v1.md')
INCR=os.path.join(BASE,'build_inputs','r5c046','INCR.md')

V1_TXT='''# 调研（第一轮·全量）：③开关关着仍出击 + ④AI 彻底不出动
> 时点 ''' + TS + ''' ｜ 装机版 r5c046t（apk `a6ae8230…`／dex `8451644e…`）｜ 样本 `r5c046t_s1.txt`（16.9 MB）｜ 仅调研

## 一、样本硬证
| 观测 | 值 | 判读 |
|---|---|---|
| `afp:strike new=` | `0`(75408) → `1`(112873) → `0`(133062) → **`1`(143157 最后)** | 最后一次把打击键切到**关**（`autoStrikeOff=1`） |
| `nA4d civ=226` | 行 **887375 / 1025488 / 1043231 / 1160711** | **全部在 143157 之后** ⇒ 关着仍进了玩家战时分支 ★③成立 |
| `nA2L` | 64 | 非玩家机场也进了老线战时分支（同一原因） |
| `nP2pick a=-1` | **205 / 205** | AI 一个目标都选不到 ★④成立 |
| `nP2dif/nP2set/nP2ap` | 59 / 204 / 203 | AI 扫描在跑，卡在"可见性" |

## 二、③ 的真因：装机版里的"开关门"逻辑是坏的（逐字，`executeAIAssignment(I)V` @8206）
```
8284 if-eq  v3, v4, :cond_65      # mode==AI ⇒ 派发
8295 if-gez v4, :cond_65          # ★playerCiv>=0 ⇒ 直接跳到"派发"（跳过后两条检查）
8297 iget   v3, v2, Airport->civID
8299 if-ne  v3, v4, :cond_68      # 这两条只有 playerCiv<0 时才走得到 ⇒ 形同虚设
8301 iget-boolean v3, v2, Airport->autoStrikeOff
8303 if-nez v3, :cond_68          # （同上，形同虚设）
8305 :cond_65 invoke-direct executeAIAssignmentForAirport
```
⇒ **只要世界里存在玩家（playerCiv≥0），所有机场一律派发**，`autoStrikeOff` 与"是否玩家机场"两道检查被短路 ⇒ 玩家关着开关也出击、AI 机场也进老线。
（`BtnMission.getTextToDraw` 已核：`autoStrikeOff==0 ⇔ 文本"开"`，**文本极性本身没错**，错的是门。）

## 三、④ 的真因：我自己写的 helper 取错了寄存器（`a1VisOk`）
```
invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)…Province;   # ✗ p2＝文明 id
```
签名是 `a1VisOk(Airport, int pid, int civ)` ⇒ **p1＝pid、p2＝civ**。用 `p2`（civ）当省 id 去 `getProvince` ⇒ 取到 null/错省 ⇒ 全部候选判"看不见" ⇒ AI 静默。
（另核：老线 `aiPickVisibleTarget` 用 `(省中心x, 省中心y, airport.civID, 1.0f)`；两个 `aiVis*` 均返回布尔 1=可见；AI 侧确实有全覆盖雷达 ⇒ 修好这一处，AI 立即恢复。）
'''

V2_TXT='''# 调研（第二轮·拓展）：改动面与副作用
> 时点 ''' + TS + '''

## 1. G1（门修正）的上下游
- 上游：`executeAIAssignment(civ)`（唯一入口，每文明每回合）→ 本门 → `executeAIAssignmentForAirport`。
- 目标语义（保持 n 批设计）：`mode==AI ⇒派发`；`playerCiv<0 ⇒派发`；`玩家机场 ∧ autoStrikeOff==0 ⇒派发`；其余跳过。
- 副作用评估：修好后 **AI 文明机场不再进老线**（它们 mode≠AI）⇒ 与"AI 走智能线"一致；`nA2L` 探针应归 0（那本来只该在无玩家场景出现）。

## 2. G2（helper 修正）的上下游
- 调用点 2 处：`a1Scan`（`{v2,v11,p0}`＝airport,pid,civ ✔）、`a1bPick`（`{p0,v4,p1}`＝airport,pid,civ ✔）⇒ **调用点本来就对**，只有 helper 内部取错 ⇒ 一处修改即修复两条线。
- 不变量：老线视野判据不动；AI 的 K/FRQ/军建优先/绑定不动。

## 3. 与 F5 门的叠加
G1 修好后，和平分支只会被"玩家机场 + 开关开"触发；再叠加 F5 的 `mode==PATROL` 门 ⇒ **自动巡逻只由巡逻键决定**（上一轮已验收 ✔），自动打击只由打击键决定。

## 4. 失败模式
| 现象 | 原因 |
|---|---|
| 开关关着仍出击 | 门又被绕过（本批门禁㊹ 拦） |
| AI 又全盲 | helper 寄存器取错（㊺ 拦） |
| 玩家开着开关却不出击 | 门写反（㊹ 会说"派发路径不是 2 条"） |
'''

V3_TXT='''# 调研（第三轮·全量拓展·定稿）：r5c046u 可施工定稿
> 时点 ''' + TS + ''' ｜ 基线树 `/tmp/revs`（＝r5c046t 装机版反汇编）

## 1. 编辑清单（2 处，锚点唯一）
| # | 位置 | 锚点（逐字） | 动作 | 寄存器 |
|---|---|---|---|---|
| **G1** | `executeAIAssignment(I)V` | `    if-gez v4, :cond_65` | 改为 `if-gez v4, :t_gchk` ＋ `goto :cond_65` ＋ `:t_gchk` | 无新增（v3/v4 既有） |
| **G2** | `a1VisOk` helper 内 | `    invoke-static {p2}, …Game;->getProvince(I)…Province;`（带我的注释行做锚） | `{p2}` → **`{p1}`** | 无（p1＝pid） |

## 2. G1 真值表
| 条件 | 修后行为 |
|---|---|
| `mode==AI` | 派发 ✔（不变） |
| 无玩家（playerCiv<0） | 派发 ✔（`goto :cond_65`） |
| 玩家机场 ∧ `autoStrikeOff==0`（按钮"开"） | 派发 ✔ |
| 玩家机场 ∧ `autoStrikeOff==1`（按钮"关"） | **跳过** ✔（③ 的修复点） |
| 非玩家机场（任何开关状态） | **跳过** ✔ |

## 3. G2 真值表
`a1VisOk(airport, pid, civ) == 1 ⇔ aiVisRadarPass(x(pid), y(pid), civ, 1.0f) ∨ aiVisAirportPass(同参)`；`pid` 取 **p1**、`civ` 取 **p2**。

## 4. 门禁
- **㊹**：定位 `executeAIAssignment` 内 `invoke-direct …executeAIAssignmentForAirport` 的**前一行标签 X**；断言"跳向 X 的分支恰为 2 条"（1×`if-eq`＝mode==AI、1×`goto`＝无玩家），且**不存在** `if-gez v4, X`（坏模式）。负样本 r5c046t ⇒ 命中坏模式。
- **㊺**：断言 helper 内含 `invoke-static {p1}, …Game;->getProvince(I)`，且**不含** `{p2}, …getProvince`。负样本 r5c046t ⇒ 报错。

## 5. 验收（可证伪）
1. 打击键显示"关"（`autoStrikeOff=1`）＋战时 ⇒ **玩家机场零出击**（`nA4d` 不增）；
2. 打击键显示"开" ＋战时 ⇒ 出撃恢复（`nA4d`/`nA4v` 增加）；
3. AI：`nP2pick a≥0` 恢复（目标落在 AI 自己雷达/机场视野内）、`nP2frq`/`nP2s` 出现；
4. 回归：自动巡逻仍只由巡逻键控制。
'''

PLAN_SEC='''

---

## 91. 【施工·已装机】r5c046u —— 修"开关门被短路"（③）+ 修 helper 取错寄存器（④）
### 91.1 根因（均以样本 + 逐字代码双向确认）
- **③**：`executeAIAssignment(I)V` 的派发门里 `if-gez v4, :cond_65`（=playerCiv≥0 直接跳"派发"）⇒ **只要有玩家，所有机场一律派发**，`autoStrikeOff` 与"是否玩家机场"检查被短路。样本：最后一次把打击键切到"关"在 143157 行，而 4 次 `nA4d` 全在其后。
- **④**：我上一批新增的 `a1VisOk` 里用 `Game.getProvince(p2)` 取省坐标，而 **p2 是文明 id**（应为 p1＝pid）⇒ 所有候选判"看不见"⇒ AI 静默。样本：`nP2pick a=-1` 205/205。
### 91.2 修法
G1：`if-gez v4, :cond_65` → `if-gez v4, :t_gchk` ＋ `goto :cond_65` ＋ `:t_gchk`（保持"无玩家⇒派发"；玩家机场按开关）。
G2：helper 内 `{p2}` → `{p1}`（调用点两处本来就正确）。
### 91.3 门禁
新增 **㊹（派发门结构）**、**㊺（helper 寄存器）**；负样本＝r5c046t。
### 91.4 待验收
打击键"关"＋战时 ⇒ 零出击；"开" ⇒ 恢复出击；AI 的 `nP2pick a≥0`／`nP2frq` 恢复；自动巡逻仍只由巡逻键控制。
'''

INCR_ADD='''
## 35. 施工·已装机 r5c046u（开关门短路 + helper 寄存器）
- **③ 根因**：`executeAIAssignment(I)V` 派发门 `if-gez v4, :cond_65` ⇒ 有玩家时所有机场直接派发，`autoStrikeOff`／"玩家机场"两道检查被短路（样本：开关切"关"在 143157 行，4 次 `nA4d` 全在其后）。
- **④ 根因**：我新增的 `a1VisOk` 用 `Game.getProvince(p2)`（p2＝文明 id，应为 p1＝pid）⇒ 全部候选判"看不见"（样本 `nP2pick a=-1` 205/205）。
- 修法：G1 `if-gez v4, :cond_65` → `if-gez v4, :t_gchk` ＋ `goto :cond_65` ＋ `:t_gchk`；G2 helper `{p2}` → `{p1}`。
- 门禁：新增 ㊹（派发门结构：跳向派发的分支恰 2 条，禁 `if-gez v4, X`）｜㊺（helper 必须用 p1 取省）。
- 验收：开关"关"＋战时零出击；"开"恢复；AI `nP2pick a≥0`／`nP2frq` 恢复；巡逻仍只由巡逻键控制。
'''

def docs():
    for p,t in ((V1,V1_TXT),(V2,V2_TXT),(V3,V3_TXT)):
        open(p,'w',encoding='utf-8').write(t)
    open(PLAN,'a',encoding='utf-8').write(PLAN_SEC)
    open(INCR,'a',encoding='utf-8').write(INCR_ADD)
    print('[docs OK] v1=%d v2=%d v3=%d plan=%d incr=%d'%(os.path.getsize(V1),os.path.getsize(V2),os.path.getsize(V3),os.path.getsize(PLAN),os.path.getsize(INCR)))

ANCHOR_G1='    if-gez v4, :cond_65'
NEW_G1='''    if-gez v4, :t_gchk

    goto :cond_65

    :t_gchk'''
ANCHOR_G2='''    # r5c046t F4: 目标省是否"打击方自己看得见"（雷达 ∨ 机场视野，与老线 aiPickVisibleTarget 同款判据）
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;'''
NEW_G2='''    # r5c046t F4 / r5c046u G2: 目标省是否"打击方自己看得见"（p1＝pid、p2＝civ）
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;'''

def patch():
    src=open(AFM,encoding='utf-8').read()
    before=hashlib.md5(src.encode()).hexdigest()[:12]
    for i,(o,n) in enumerate(((ANCHOR_G1,NEW_G1),(ANCHOR_G2,NEW_G2)),1):
        c=src.count(o)
        if c!=1:
            print('[FAIL] 编辑 %d 锚点命中 %d 次（要求 1）'%(i,c)); return 1
        src=src.replace(o,n,1); print('[OK] 编辑 %d'%i)
    bak=AFM+'.pre_r5c046u'
    if not os.path.exists(bak): open(bak,'w',encoding='utf-8').write(open(AFM,encoding='utf-8').read())
    open(AFM,'w',encoding='utf-8').write(src)
    print('AFM md5 %s -> %s'%(before,hashlib.md5(src.encode()).hexdigest()[:12])); return 0

def gate(path=AFM):
    src=open(path,encoding='utf-8').read()
    bad=[]
    m=re.search(r'\.method public executeAIAssignment\(I\)V.*?\.end method',src,re.S)
    body=m.group(0) if m else ''
    if not body: bad.append('㊹ 找不到 executeAIAssignment(I)V')
    else:
        mm=re.search(r'(:[A-Za-z0-9_]+)\s*\n\s*invoke-direct \{p0, v\d+\}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->executeAIAssignmentForAirport',body)
        if not mm: bad.append('㊹ 找不到派发点')
        else:
            X=mm.group(1)
            jumps=re.findall(r'\n\s*(if-\w+|goto)[^\n]*'+re.escape(X)+r'\s*\n',body)
            bad_in=[j for j in jumps if j.startswith('if-gez')]
            if len(jumps)!=2: bad.append('㊹ 跳向派发点 %s 的分支 %d 条（应为 2：if-eq + goto）'%(X,len(jumps)))
            if bad_in: bad.append('㊹ 仍是短路模式 if-gez … %s'%X)
    h=re.search(r'\.method private static a1VisOk\(.*?\.end method',src,re.S)
    hb=h.group(0) if h else ''
    if not hb: bad.append('㊺ 缺 a1VisOk')
    else:
        if 'invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)' not in hb:
            bad.append('㊺ a1VisOk 未用 p1 取省')
        if 'invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)' in hb:
            bad.append('㊺ a1VisOk 仍用 p2 取省')
    for b in bad: print('FAIL %s'%b)
    print('㊹㊺ r5c046u: %d 处可疑'%len(bad))
    return 1 if bad else 0

if __name__=='__main__':
    mode=sys.argv[1] if len(sys.argv)>1 else 'docs'
    if mode=='docs': docs(); sys.exit(0)
    if mode=='patch': sys.exit(patch())
    if mode=='gate': sys.exit(gate(sys.argv[2] if len(sys.argv)>2 else AFM))
    print('usage: r5c046u_all.py docs|patch|gate [file]')