# -*- coding: utf-8 -*-
# §H 更新：开关范围拍板为②（对地全部：a1Scan 轰炸线 + a1bScan 攻击机线）
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
t = io.open(P, encoding='utf-8').read()
B = P + '.pre_r5c019i'
CHANGED = []

def rep(old, new, tag):
    global t
    if old not in t:
        print('  未命中:', tag); return
    t = t.replace(old, new, 1)
    CHANGED.append(tag)
    print('  OK', tag)

# 1) 拍板记录
rep(u'**H.7.2 ⇒ 开关范围需你拍板（新）**：',
    u'**H.7.2 开关范围【已拍板 2026-09-24 = ② 对地全部】**：\n- ✅ **② 控对地全部**（`a1Scan` 轰炸线 ＋ `a1bScan` 攻击机线）——用户原话：「自动打击肯定包括轰炸机啊」。\n- 以下①/③仅留档：')

# 2) 实施清单：加 a1Scan 门 + 探针分行
rep(u'| 3 | `AirForceManager.a1bScan` 机场循环 | 循环体内加门：`iget-boolean` → `if-eqz` 跳过该机场 | 现循环只用 `v0 v1 v2 v7 v9 v10 v11 v12 v13` ⇒ **v3–v6/v8 空闲**，插入不需升寄存器 |',
    u'| 3a | `AirForceManager.a1bScan` 机场循环（攻击机线） | 循环体内加门：`iget-boolean` → `if-eqz` 跳过该机场 | 现循环只用 `v0 v1 v2 v7 v9 v10 v11 v12 v13` ⇒ **v3–v6/v8 空闲**，插入不需升寄存器 |\n'
    u'| 3b | `AirForceManager.a1Scan` 机场循环（**轰炸线，拍板②新增**） | 同款门，插在 `check-cast`（6173）与 `sget v3, AirType->BOMBER`（6179 前）之间，**借用 v3** | 该方法 v0–v14 全在用 ⇒ 不可升寄存器；v3 随后立即被覆盖，语义安全 |',
    u'清单 3a/3b')

rep(u'| 9 | 探针 | `a1bScan` 处打 `nAS st=<0/1>`（该机场是否暂停自动打击，逐机场一次）；可选 `nAS sk=<省>=1`（因开关跳过的机场省） | 走 `a1bLog`/`dKey` 通道，无分支拼接 |',
    u'| 9 | 探针 | 两条线各打一次：`nAS ln=1 st=<0/1>`（攻击机线）／`nAS ln=2 st=<0/1>`（轰炸线），逐机场；可选 `nAS sk=<省>` | 走 `a1bLog`/`dKey` 通道，无分支拼接 |',
    u'清单 9 探针分行')

# 3) 验收口径：加轰炸线
rep(u'2. 行为：把某机场关掉后 ⇒ 抓样中该机场**不再新增** `nA1b` 派发（`nAS st=1` 成串出现），**其它机场不受影响**；已在该省上空的攻击机任务照常打完返回。',
    u'2. 行为（**两条线都要验**）：把某机场关掉后 ⇒\n'
    u'   · 攻击机线：该机场不再新增 `nA1b` 派发（`nAS ln=1 st=1` 成串）；\n'
    u'   · **轰炸线：该机场不再新增轰炸派发**（既有探针 `nAS pk …` / `nIK add p=` 在该机场范围内不再出现）；\n'
    u'   · **其它机场不受影响**；已在空中的任务照常打完返回。',
    u'验收 2 两条线')

# 4) 风险表：补一条"关轰炸线的影响"
rep(u'| "关掉后仍看到飞机起飞" | 属**已在飞任务**（按 H.2 不召回）——判读时以"新增派发"为准 |',
    u'| "关掉后仍看到飞机起飞" | 属**已在飞任务**（按 H.2 不召回）——判读时以"新增派发"为准 |\n'
    u'| 拍板②后，关掉会**同时暂停轰炸机派发**（含"只在有军事建筑且有情报时派"的既有行为） | 属预期；验收时以 `nAS pk`／`nIK add` 是否停止新增为准 |',
    u'风险 补轰炸线')

if CHANGED:
    if not os.path.exists(B):
        shutil.copy2(P, B)
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK §H 已更新（%d 处）；备份 %s' % (len(CHANGED), os.path.basename(B)))
else:
    print('无改动')