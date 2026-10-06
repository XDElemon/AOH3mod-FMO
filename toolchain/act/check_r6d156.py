#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
门禁 r6d156 —— drawAirDivisionAsPlane 三点分段探针（bisect）
4 断言 + 3 负样本
"""
import sys

BASE = '/tmp/w3a/smali/'
PD = BASE + 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PP = BASE + 'aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'
HD = '.method public static final drawAirDivisionAsPlane(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/lang/String;)V'


def load(ov=None):
    d = {'PD': open(PD, encoding='utf-8').read(), 'PP': open(PP, encoding='utf-8').read()}
    if ov:
        d.update(ov)
    return d


def slice_method(s, header):
    i = s.find(header)
    if i < 0:
        return None, 0
    j = s.find('.end method', i)
    return s[i:j], s.count(header)


def a1(d):
    body, n = slice_method(d['PD'], HD)
    if n != 1 or body is None:
        return False, 'drawAirDivisionAsPlane 定义 %d' % n
    if body.count('AirPosProbe;->mk(I)V') != 3:
        return False, '方法内 mk 调用 %d 处（应 3）' % body.count('AirPosProbe;->mk(I)V')
    for lit in ('0x1', '0x2', '0x3'):
        if ('const/4 v0, %s' % lit) not in body:
            return False, '缺 stage %s 的常量' % lit
    return True, '三点分段探针齐备（stage 1/2/3）'


def a2(d):
    body, n = slice_method(d['PD'], HD)
    i1 = body.find('AirPosProbe;->mk(I)V')
    i2 = body.find('AirPosProbe;->mk(I)V', i1 + 1)
    i3 = body.find('AirPosProbe;->mk(I)V', i2 + 1)
    t = body.find('AirPosProbe;->takeoff(')
    g = body.find(':goto_cf')
    a = body.find('airImgForKey')
    if not (i1 < t < i2):
        return False, 'stage2 未插在 takeoff 之后'
    if not (i2 < g < i3 < a):
        return False, 'stage3 未插在 :goto_cf 与取图链之间'
    return True, '三个探针顺序正确（入口 < takeoff < :goto_cf < 取图链）'


def a3(d):
    s = d['PP']
    body, n = slice_method(s, '.method public static mk(I)V')
    if n != 1 or body is None:
        return False, 'mk 定义 %d 个（应 1）' % n
    if 'iput' in body:
        return False, 'mk 含 iput（违反只读）'
    if 'AirPosProbe;->ok(I)Z' not in body:
        return False, 'mk 缺采样闸'
    if 'nMK s=' not in body:
        return False, 'mk 缺少输出前缀 nMK'
    return True, 'mk 只读、含采样闸与前缀'


def a4(d):
    s = d['PD']
    if s.count('.method public static airImgForKey(ILjava/lang/String;)I') != 1:
        return False, 'airImgForKey 定义 != 1'
    inv = s.count('invoke-static {v3, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->airImgForKey(ILjava/lang/String;)I')
    if inv != 4:
        return False, 'airImgForKey 调用 %d 处（应 4）——前批成果被破坏' % inv
    for frag, want in (('AirPosProbe;->artD(', 1), ('AirPosProbe;->pcg(', 1)):
        c = s.count(frag)
        if c != want:
            return False, '%s 命中 %d 处（应 %d）——前批成果被破坏' % (frag, c, want)
    return True, '前批（artD/pcg/airImgForKey ×4 调用）均未被破坏'


def run(ov=None):
    d = load(ov)
    msgs = []
    for fn in (a1, a2, a3, a4):
        ok, msg = fn(d)
        msgs.append((fn.__name__, ok, msg))
        if not ok:
            return False, msgs
    return True, msgs


def main():
    ok, msgs = run()
    if not ok:
        for n, o, m in msgs:
            print('  %s %s: %s' % ('✅' if o else '❌', n, m))
        print('❌ 门禁 r6d156 未过')
        return 1
    for n, o, m in msgs:
        print('  ✅ %s: %s' % (n, m))
    neg = []
    s = load()['PD']
    neg.append(('N1 少一个 mk 调用', run({'PD': s.replace('    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->mk(I)V', '', 1)})[0] is False))
    # N2：外科式删掉 mk 方法体内的采样闸
    p = load()['PP']
    i = p.find('.method public static mk(I)V')
    j = p.find('.end method', i)
    body = p[i:j]
    body2 = body.replace('    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z', '', 1)
    neg.append(('N2 mk 缺采样闸', (body2 != body) and run({'PP': p[:i] + body2 + p[j:]})[0] is False))
    neg.append(('N3 破坏前批 airImgForKey', run({'PD': load()['PD'].replace('airImgForKey(ILjava/lang/String;)I', 'airImgForKey(ILjava/lang/String;)V')})[0] is False))
    bad = [n for n, r in neg if not r]
    for n, red in neg:
        print('  %s %s（负样本应变红）' % ('✅' if red else '❌', n))
    if bad:
        print('❌ 门禁敏感性不足：%s' % bad)
        return 2
    print('✅ 门禁 r6d156 通过（4 断言 + 3 负样本）')
    return 0


if __name__ == '__main__':
    sys.exit(main())