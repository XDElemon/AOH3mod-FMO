# -*- coding: utf-8 -*-
# 补登记：设计v2（真实路径在 /sdcard/GLG/历史23/ 根下）
import io, os, shutil
P = u'/sdcard/GLG/历史23/空战重做专案_设计v2.md'
B = P + '.pre_r5c019d'
BLOCK = u"""
---

## 【R5c019 / r5c019b】选靶分散化（2026-09-24，已装机并抓样验收）

- **口径**：排序键 `(在飞数↑, 距离↑, 同档随机)`；取消「每省在飞≤2」（层数不封顶）；同档＝航程×10%（=37），重瞄侧 ×0.5（=18.5）；档内蓄水池抽样用 `Game.oR`。
- **实现约束**：`RunSmali` 拒绝 `.registers > 16`（实测 17/18/20 全被拒）⇒ 新状态走 6 个静态暂存字段：`a1bPkInf/a1bPkN/a1bPkTol`、`a1bRtInf/a1bRtN/a1bRtTol`。**以后不要动 `.registers`。**
- **探针**：`0x30`=选中省在飞数（层号）、`0x31`=同档候选数；重瞄侧 `0x32`/`0x33`；`0x4` 新义＝"该省在飞>0（非层1）"。
- **实证（r5c019b 抓样 57.76MB）**：有效选取 1956 次覆盖 14+ 个省；层号 `0×1004 / 1×899`；同档≥2 共 643 次；弹药机制（`nGA fire` 265/255/254/245、`nRT sw` 267、`um_sr`）与 B2 系列零回归。
- **止血**：`AirMission.applyArmyDamage` 探针 `String.valueOf(lArmyRegiment)` → `lArmyRegiment.size()`（消 `ConcurrentModificationException` 闪退；全树仅此一处同类写法）。
- **口径订正**：r5c018c 旧比较块在「更远且省ID更小」时会落穿覆盖最优（真雷，已随整体替换消失）；但「并列取较小省ID」原本正确（我此前"取较大"的说法有误）。
"""
if os.path.exists(P):
    t = io.open(P, encoding='utf-8').read()
    if u'【R5c019 / r5c019b】' in t:
        print('已存在，跳过')
    else:
        if not os.path.exists(B):
            shutil.copy2(P, B)
        io.open(P, 'w', encoding='utf-8').write(t.rstrip('\n') + '\n' + BLOCK + '\n')
        print('OK 设计v2 追加（%d 行）；备份 %s' % (len(BLOCK.split('\n')), os.path.basename(B)))
else:
    print('缺文件', P)