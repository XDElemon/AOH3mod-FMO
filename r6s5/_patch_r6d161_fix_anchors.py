#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""r6d161 修正补丁：补齐 A1b（jAir 初始化）与 A3a（v13 置零）—— 首轮锚点空行假设错误"""
import os
import shutil

ROOT = '/tmp/w3a/smali/'
BATCH = 'r6d161'
REVX = '/tmp/revx/'
PROV = ROOT + 'aoc/kingdoms/lukasz/map/province/Province.smali'
PROBE = ROOT + 'aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'
BAD = []


def rd(p):
    return open(p, encoding='utf-8').read()


def wr(p, s):
    open(p, 'w', encoding='utf-8').write(s)


def rep(path, old, new, tag):
    s = rd(path)
    c = s.count(old)
    if c == 0 and s.count(new) >= 1:
        print('  [%s] 已应用' % tag)
        return
    if c != 1:
        BAD.append('%s 命中 %d' % (tag, c))
        print('  [%s] ✗ 命中 %d（应 1）' % (tag, c))
        return
    wr(path, s.replace(old, new, 1))
    print('  [%s] ✓' % tag)


# ---- A1b：在 j 初始化之后补 jAir（注意：`.local v0, "i":I` 与 `const/4 v1, 0x0` 之间无空行）----
A1B_OLD = '''    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->up(I)V

    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I'''
A1B_NEW = A1B_OLD + '''

    const/4 v5, 0x0

    .local v5, "jAir":I'''
rep(PROV, A1B_OLD, A1B_NEW, 'A1b jAir 初始化')

# ---- A3a：v12 与 invoke 之间是 3 个空行 ----
A3A_OLD = '''    const/4 v12, 0x0



    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;'''
A3A_NEW = '''    const/4 v12, 0x0
    const/4 v13, 0x0



    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;'''
rep(PROBE, A3A_OLD, A3A_NEW, 'A3a v13 置零')

if BAD:
    print('❌ 仍有未命中:', BAD)
    raise SystemExit(1)

for p in (PROV, PROBE):
    b = p + '.pre_' + BATCH
    if not os.path.exists(b):
        shutil.copy2(p, b)
        print('  备份 ->', b)
    os.makedirs(REVX, exist_ok=True)
    shutil.copy2(p, REVX + os.path.basename(p) + '.pre_' + BATCH)
print('✅ r6d161 补齐完成')