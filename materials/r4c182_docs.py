# -*- coding: utf-8 -*-
# R4c182 归档（诊断批次）
import io, shutil
D = '/sdcard/GLG/历史23/'
ZH = D + 'r6s5/空战重做_进度与bug排查专档_v1.md'
JJ = D + '空战重做_交接文档_v2.md'

ZH_ADD = u"""
> 🔬（2026-09-19 深夜·**r4c182：诊断批次——"mil 读 1 又读 0"的矛盾**）
> **r4c181 抓样结果**：`nIKM` 237 条（79 省 ×3 次），**全部 `cov=1 ok=1`**；`nIK add` 79（全在那79省）；`nIK del=0`；派发 `nAS pk` 3 条（1688/5675/5689）**全 `mil=0`**。
> **硬矛盾**：同一次评估内，门对 5675 读到 `mil=1`（`nIKM p=5675 ok=1`），41 行之后派发探针读到 `mil=0`（`nAS pk tgt=5675 mil=0`）——**同一 tick，同一函数，两个相反读数**。
> **另一条硬事实**：r4c180（buggy，只有 mil==0 才进记忆）与 r4c181（修正后，只有 mil==1 才进记忆）的 `nIK add` **79 省名单完全一致** ⇒ `Province.buildings` 这条读数在两次会话里对同一批省给出了相反结果，**不是稳定游戏数据**。
> 已排除：`Province.buildings` 只在构造器赋值一次（`iput` @433，唯一的写入点），不存在重建；`isMilIdx`/`hasMilitaryBuilding` 判据本身已复核。
> **本轮只上仪器，不改玩法逻辑**：新探针 `nIKS p= mil= bsz= b0= mem= rps= pls= fog=`（`bsz`=该省建筑列表 size，`b0`=首个建筑索引），打点两处：① 写入记忆处（原 `add` 日志）② 派发处（`dbgPick` 之后）。
> **判读规则（下次抓样照此判）**：
>   · 若两处 `bsz` 不同（如记忆处 3、派发处 0）⇒ **建筑列表在 tick 内被清空/过滤**（疑似按迷雾/情报过滤玩家可见建筑）⇒ 修法是改用稳定源或"观测即记、不再复读"。
>   · 若两处 `bsz` 相同但 `mil` 不同 ⇒ 问题在 `hasMilitaryBuilding/isMilIdx` 内部（索引编号体系不一致），要重新选判据。
>   · `rps/pls/fog` 可同时回答"这79省到底凭什么算有情报"。
> **产物**：dex `29027f65c2779eccc0cf5ed27237b439`／apk `4fb81c9e…`；arity BAD=0；八件套通过（Sig 152523，Δ=7＝新增探针 invoke）；装机 Success；启动自检 crash=0。
"""

with io.open(ZH, 'a', encoding='utf-8') as f:
    f.write(ZH_ADD)
print('ZH ok')

s = io.open(JJ, encoding='utf-8').read()
NEW_ROW = u'| **r4c182** | 【诊断】新增 `nIKS`（mil/bsz/b0/mem/rps/pls/fog）探针，打点＝记忆写入处 + 派发处；用于判 r4c181 中"门读 mil=1、派发读 mil=0"的矛盾 | `29027f65…` / `4fb81c9e…` | 🔬 诊断·待抓样 |'
lines = s.split('\n'); out = []
for L in lines:
    out.append(L)
    if L.startswith(u'| **r4c181**'):
        out.append(NEW_ROW)
s = '\n'.join(out) + u"""

## 31. r4c182（2026-09-19 深夜）：诊断批次——mil 同 tick 读 1 又读 0

- r4c181 抓样：`nIKM` 237（79省×3）全 `cov=1 ok=1`；`nIK add=79`（同一批省）；`nIK del=0`；派发 3 条全 `mil=0`。
- 矛盾：同一评估内门读 `mil=1`、41 行后派发探针读 `mil=0`。
- 旁证：r4c180 与 r4c181 的 79 省 add 名单完全一致（两次判据相反）⇒ `Province.buildings` 不是稳定读数。
- 处置：只上 `nIKS` 探针（bsz/b0/mem/rps/pls/fog），打点＝记忆写入处 + 派发处；玩法逻辑不动。
- 产物：dex `29027f65…`／apk `4fb81c9e…`；arity BAD=0；八件套 Sig 152523（Δ=7）；装机 Success；启动自检 crash=0。
"""
io.open(JJ, 'w', encoding='utf-8').write(s)
print('JJ ok')

shutil.copyfile('/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali',
                D + 'r6s5/AirForceManager.r4c182.smali')
print('SRC ok')