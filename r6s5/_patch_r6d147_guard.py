#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
给 AirPosProbe 的 up(I)V / ap(III)V 加"前置守卫"：
Game.mapScale 若尚未初始化（开局早期）就直接返回，避免 NPE 打断游戏初始化。
"""
import re

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'
t = open(P, encoding='utf-8').read()

GUARD = '''
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-nez v2, :safe
'''
SAFE = '''
    :safe

    return-void
.end method'''

for sig in ['up(I)V', 'ap(III)V']:
    m = re.search(r'\.method public static ' + re.escape(sig) + r'.*?\n\.end method', t, re.S)
    assert m, '找不到 ' + sig
    body = m.group(0)
    assert ':safe' not in body, sig + ' 已经加过守卫'
    idx = body.rfind('const/4 v2, 0x0')          # 入口置零块的最后一行
    assert idx > 0, sig + ' 找不到入口置零块'
    eol = body.index('\n', idx)
    body2 = body[:eol] + GUARD + body[eol:]
    body2 = body2.replace('\n.end method', SAFE, 1)
    t = t.replace(body, body2, 1)
    print('已加守卫:', sig)

open(P, 'w', encoding='utf-8').write(t)
print('✅ 完成')
