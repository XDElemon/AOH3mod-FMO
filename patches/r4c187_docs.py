# -*- coding: utf-8 -*-
# R4c186 抓样 + R4c187 诊断 归档
import io, shutil
D = '/sdcard/GLG/历史23/'
ZH = D + 'r6s5/空战重做_进度与bug排查专档_v1.md'
JJ = D + '空战重做_交接文档_v2.md'
CS = D + '铁律与教训_常驻速查_v1.md'

ZH_ADD = u"""
> 🔎（2026-09-19 深夜·**r4c186 抓样：5693 在"打分之前"就被守卫跳过了；r4c187 上候选层探针**）
> **r4c186 抓样（用户："还是不会去轰炸缅甸首都的机场"）**：
>   · 派发 2 次：`tgt=5723`（最近）——**不是 5693**；
>   · 但 `5693` 的现场证据链完备：`nIKS p=5693 mil=1 air=1 bsz=1 b0=34 mem=0 rps=1 pls=1 fog=0`（**有军事建筑、有机场**）+ `nIKM p=5693 cov=1 ok=1`（**情报门通过**）——即"看得见、算军事、也放行"；
>   · 另有 `ap=5693 pv=1 n=0 ik=null fk=null` 与 `nDSPT3 sz=1 ap0=5693 n0=-1 k0=-`（说明存在以 5693 为**机场**的派发循环，其自身找不到目标）。
> **定案**：5693 **不是被"看不见"或"审核"挡住，而是在候选循环的守卫链里被提前 `continue`**（打分根本没跑到它）。最可疑的两条守卫：
>   ① `hasStrikeInFlight(pid, BOMBER)` ——"该省已有在飞/在编的打击"（用户手动派过一次打 5693 的任务，若该记录未销账就会永久挡住后续自动派发）；
>   ② 同省轰炸机上限（2 个师）相关判定。
> **r4c187（纯诊断）**：新增候选层探针 `dbgCand(pid, airportCiv)`，在 `pickStrikeTarget` 循环内、守卫链之前打一行：
>   `nSC p=<pid> c=<省主> oc=<占领者> war=<交战> inf=<有在飞打击> air= mil= rps= pls= fog=`
> ⇒ 一次抓样即可判定 5693 到底卡在 `c/oc/war/self/inf/intel` 哪一关。
> **产物**：dex `00c6ee6d54eb178484a0cf4fddf1fe24`／apk `8d91a43e…`；arity BAD=0；八件套通过（Sig 152549，Δ=12）；装机 Success；启动自检 crash=0。
> **若 r4c187 显示 5693 卡在 `inf=1`（已有在飞打击）**：修法是"打击完成后销账/或允许对同一省并发（上限内）"，属于守卫清理问题。
> **备选方案（若本轮仍不奏效）**：转向**显式优先目标清单**——
>   · 用已有的建筑事件钩子（`Province.addNewBuilding*`，R4c185 已挂）在**敌方新建机场/军事设施时自动登记为该文明的"优先目标"**；
>   · auto-strike 时优先打"优先目标清单"（不看距离），清单空了才回到分档评分；
>   · 好处：完全绕开"读数闪烁 + 距离档"，且天然满足"打掉敌人机场"的诉求。
"""

with io.open(ZH, 'a', encoding='utf-8') as f:
    f.write(ZH_ADD)
print('ZH ok')

s = io.open(JJ, encoding='utf-8').read()
NEW_ROW = u'| **r4c187** | 【诊断】候选层探针 `nSC p= c= oc= war= inf= air= mil= rps= pls= fog=`（`pickStrikeTarget` 守卫链之前）；用于判定 5693 卡在哪一关 | `00c6ee6d…` / `8d91a43e…` | 🔬 诊断·待抓样 |'
lines = s.split('\n'); out = []
for L in lines:
    if L.startswith(u'| **现役装机**'):
        L = u'| **现役装机** | **r4c187**（诊断版，dex `00c6ee6d54eb178484a0cf4fddf1fe24`）｜含候选层探针 `nSC`｜装机后启动自检 crash=0 ✓ |'
    out.append(L)
    if L.startswith(u'| **r4c186**'):
        out.append(NEW_ROW)
s = '\n'.join(out) + u"""

## 36. r4c187（2026-09-19 深夜·诊断）：候选层探针 `nSC`

- r4c186 抓样：派发 5723；5693 证据链完备（`mil=1 air=1`、`nIKM ok=1`）却未被派 ⇒ **卡在守卫链**（打分没跑到它）。
- 主嫌：`hasStrikeInFlight`（已有在飞打击，用户手动派过一次）／同省轰炸机上限。
- 探针 `nSC p= c= oc= war= inf= air= mil= rps= pls= fog=`：一次抓样定位卡点。
- 备选方案：**显式优先目标清单**（用 R4c185 已挂的建筑事件钩子，敌方新建机场/军事设施即入清单；auto-strike 不看距离优先打清单）。
- 产物：dex `00c6ee6d…`／apk `8d91a43e…`；arity BAD=0；八件套 Sig 152549（Δ=12）；装机 Success；启动自检 crash=0。
"""
io.open(JJ, 'w', encoding='utf-8').write(s)
print('JJ ok')

CS_ADD = u"""
28. **"该被选"≠"进了打分"（R4c187）**：目标可能被候选循环的守卫（同省/占领/交战/自机场/已有在飞打击/同省上限）提前 `continue`，此时任何评分改进都不会生效。⇒ 铁律：**改评分前先确认目标能走到评分步骤**（候选层探针，一行/候选）。
29. **手动/外力介入会留下"在飞"状态（R4c187 主嫌）**：用户手动派过一次打击后，`hasStrikeInFlight` 可能长期为真 ⇒ 后续自动派发被永久挡住。⇒ 铁律：**凡"在飞/占用"类守卫，必须核对"销账路径"是否可靠**（完成/返航/坠毁/取消是否都会清）。
30. **方案要能绕开不可靠输入（R4c187 备选）**：当"读数闪烁 + 距离档"双重不可靠时，最稳的是**事件驱动的显式目标清单**（敌方新建机场/军事设施即入清单，打击不看距离）。⇒ 铁律：**让关键行为依赖"事件 + 显式清单"，而不是"每帧现读 + 打分"**。
"""
with io.open(CS, 'a', encoding='utf-8') as f:
    f.write(CS_ADD)
print('CS ok')

shutil.copyfile('/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali',
                D + 'r6s5/AirForceManager.r4c187.smali')
print('SRC ok')