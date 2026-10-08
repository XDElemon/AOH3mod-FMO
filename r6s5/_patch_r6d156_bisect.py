#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d156 补丁：drawAirDivisionAsPlane 内三点分段探针（bisect）

D1 方法入口          → mk(1)
D2 takeoff 之后       → mk(2)   （= :cond_7e 入口）
D3 取图链之前（:goto_cf 之后）→ mk(3)

目的：用一次实测钉死"执行到哪一步"，回答
      "takeoff 在跑、airImgForKey/artD 从不跑" 这个矛盾。
"""
import os, shutil

ROOT = '/tmp/w3a/smali/'
BATCH = 'r6d156'
REVX = '/tmp/revx/'
PD = ROOT + 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PP = ROOT + 'aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'


def rd(p):
    return open(p, encoding='utf-8').read()


def wr(p, s):
    open(p, 'w', encoding='utf-8').write(s)


def backup(p):
    b = p + '.pre_' + BATCH
    if not os.path.exists(b):
        shutil.copy2(p, b)
        print('  备份 ->', b)
    os.makedirs(REVX, exist_ok=True)
    shutil.copy2(p, REVX + os.path.basename(p) + '.pre_' + BATCH)


def rep_once(s, old, new, tag):
    n = s.count(old)
    assert n == 1, '[%s] 锚点命中 %d != 1: %r' % (tag, n, old[:160])
    return s.replace(old, new)


# ---- D1：方法入口（airSelRingDraw 之后）----
A1 = '''    # r6d067 A5：选中空军编队 ⇒ 画金环
    invoke-static {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->airSelRingDraw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/lang/String;)V'''
N1 = A1 + '''

    const/4 v0, 0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->mk(I)V'''

# ---- D2：takeoff 之后 ----
A2 = '''    invoke-static {p3, v7, v5, v6, v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->takeoff(Ljava/lang/String;IIIF)V'''
N2 = A2 + '''

    const/4 v0, 0x2

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->mk(I)V'''

# ---- D3：取图链之前（:goto_cf 标签后）----
A3 = '''    :goto_cf
    if-ne v10, v11, :cond_e5'''
N3 = '''    :goto_cf
    const/4 v0, 0x3

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->mk(I)V

    if-ne v10, v11, :cond_e5'''

MK = '''

.method public static mk(I)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x3c

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v0

    if-eqz v0, :end

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nMK s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end
    return-void
.end method
'''


def main():
    ch = []
    s = rd(PD)
    if 'AirPosProbe;->mk(' in s:
        print('  [D1-D3] 已应用')
    else:
        backup(PD)
        s = rep_once(s, A1, N1, 'D1')
        s = rep_once(s, A2, N2, 'D2')
        s = rep_once(s, A3, N3, 'D3')
        wr(PD, s)
        ch.append('D1-D3 ' + PD)
    s = rd(PP)
    if '.method public static mk(I)V' in s:
        print('  [MK] 已应用')
    else:
        backup(PP)
        s = s.rstrip('\n') + '\n' + MK
        wr(PP, s)
        ch.append('MK ' + PP)
    print()
    print('✅ r6d156 补丁落地：')
    for c in ch:
        print('   ', c)


if __name__ == '__main__':
    main()