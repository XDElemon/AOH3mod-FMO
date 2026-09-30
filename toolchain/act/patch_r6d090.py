#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""B3a: Images 补 Gen3/5/6 的 48 个字段 + InitGame 补 48 条加载（照 Gen4 模板）
锚点：Images.airG4_US_INTERCEPTOR:I 字段行 / InitGame 的 airG4_US_ATTACKER sput 行（各命中 1 次）
"""
import io, shutil, os

IMG = '/tmp/w3a/smali/aoc/kingdoms/lukasz/textures/Images.smali'
INI = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menus/InitGame.smali'

GENS   = [3, 5, 6]                      # Gen4 已存在，不重复
GROUPS = ['CN', 'EU', 'RU', 'US']
TYPES  = ['INTERCEPTOR', 'FIGHTER', 'BOMBER', 'ATTACKER']   # 与 Gen4 顺序一致

for p in (IMG, INI):
    if not os.path.exists(p + '.pre_r6d090'):
        shutil.copyfile(p, p + '.pre_r6d090')

# ---------- 1) Images 字段 ----------
src = io.open(IMG, encoding='utf-8').read()
a1 = '.field public static airG4_US_INTERCEPTOR:I\n'
assert src.count(a1) == 1, ('anchor1', src.count(a1))

fields = ''
for g in GENS:
    for grp in GROUPS:
        for t in TYPES:
            fields += '.field public static airG%d_%s_%s:I\n' % (g, grp, t)
assert fields.count('.field') == 48
src = src.replace(a1, a1 + '\n' + fields, 1)
io.open(IMG, 'w', encoding='utf-8').write(src)

# ---------- 2) InitGame 加载 ----------
ini = io.open(INI, encoding='utf-8').read()
a2 = '    sput v0, Laoc/kingdoms/lukasz/textures/Images;->airG4_US_ATTACKER:I\n'
assert ini.count(a2) == 1, ('anchor2', ini.count(a2))

blk = ''
for g in GENS:
    for grp in GROUPS:
        for t in TYPES:
            blk += '    const-string v0, "game/AirUnit/AirUnitlmages/Gen%d/%s/%s.png"\n' % (g, grp, t)
            blk += '    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->addImage(Ljava/lang/String;)I\n'
            blk += '    move-result v0\n'
            blk += '    sput v0, Laoc/kingdoms/lukasz/textures/Images;->airG%d_%s_%s:I\n' % (g, grp, t)
assert blk.count('sput') == 48
ini = ini.replace(a2, a2 + blk, 1)
io.open(INI, 'w', encoding='utf-8').write(ini)

print('OK fields=48 loads=48')
print('Images airG 字段总数=%d' % io.open(IMG, encoding='utf-8').read().count('.field public static airG'))
print('InitGame Gen 加载行=%d' % io.open(INI, encoding='utf-8').read().count('AirUnitlmages/Gen'))