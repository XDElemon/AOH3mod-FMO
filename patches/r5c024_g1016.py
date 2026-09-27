# -*- coding: utf-8 -*-
# §G.10.16 r5c023 抓样实证（硬证据）
import io, os, shutil
P = u'/sdcard/GLG/历史23/r6s5/下一步调研_选靶微调与C2代际v1.md'
ADD = u"""
#### G.10.16 r5c023 **抓样实证**（cur_r5c023.txt，21.0 MB）
| 时刻 | 证据 |
|---|---|
| 读档①（旧档，r5c022 时代存的） | `R1main a=1`（主文件生效）→ `R4civ a=1`／**`R4dto a=1`**（旧档里确实只有 1 个机场）→ `L1hit a=6445` |
| 存档 | `AF_SAVE:start` → `W0civ a=1`／`W2h=1`／`W3main=1`／`W4dbg=1` → `AF_SAVE:exported` |
| **读档②（新档）** | **`R4dto a=4`** ⇒ 存档里 4 个机场 ✔；**`L1hit` 四次（6429／8628／6369／6371）** ⇒ 每个机场的飞机都回填了 ✔ |
| 游戏内 | `nA1e p0=73 apts=4` 全程稳定 |
⇒ **r5c023 实证结案**（不只是"感觉好了"）：存档侧机场数＝内存机场数，读档侧逐机场命中。
"""
t = io.open(P, encoding='utf-8').read()
if u'G.10.16' in t:
    print('已存在')
else:
    B = P + '.pre_g1016'
    if not os.path.exists(B):
        shutil.copy2(P, B)
    t = t.replace(u'\n---\n\n## H. 自动打击「开关态」', ADD.strip() + u'\n\n---\n\n## H. 自动打击「开关态」')
    io.open(P, 'w', encoding='utf-8').write(t)
    print('OK §G.10.16 已写入')