#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
门禁 r6d158 —— airImgForKey 极性修正（if-gez）+ artD 无条件记录
4 断言 + 3 负样本
"""
import sys

BASE = '/tmp/w3a/smali/'
PD = BASE + 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PP = BASE + 'aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'
HK = '.method public static airImgForKey(ILjava/lang/String;)I'


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
    body, n = slice_method(d['PD'], HK)
    if n != 1 or body is None:
        return False, 'airImgForKey 定义 %d' % n
    if body.count('if-ltz') != 0:
        return False, 'airImgForKey 仍含 if-ltz（极性风险：vA<0 才跳）'
    if body.count('if-gez') != 2:
        return False, 'if-gez 数量 %d（应 2：artCiv、civFromKey）' % body.count('if-gez')
    if ':src1' not in body or ':src2' not in body or ':go' not in body:
        return False, '三级来源标签 :src1/:src2/:go 不齐'
    return True, '极性正确（两处 if-gez，零 if-ltz）'


def a2(d):
    body, n = slice_method(d['PD'], HK)
    i1 = body.find('if-gez v3, :src1')
    i2 = body.find('if-gez v0, :src2')
    if i1 < 0 or i2 < 0 or i1 > i2:
        return False, '两处极性判断顺序异常'
    if body.find('sget v3, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->artCiv:I') > i1:
        return False, 'artCiv 读取应在第一处判断之前'
    if body.count('AirPosProbe;->aif(') != 1 or body.count('AirPosProbe;->artD(') != 1:
        return False, 'aif/artD 调用缺一'
    return True, '来源顺序正确（artCiv→key→RU）且双取证调用在'


def a3(d):
    body, n = slice_method(d['PP'], '.method public static artD(Ljava/lang/String;IIII)V')
    if n != 1 or body is None:
        return False, 'artD 定义 %d' % n
    if 'const/16 v0, 0x1' not in body:
        return False, 'artD 未改为恒真采样（0x1）'
    if 'const/16 v0, 0x10' in body:
        return False, 'artD 仍是 0x10 采样'
    if 'iput' in body:
        return False, 'artD 含 iput'
    return True, 'artD 恒真记录（ok(1)）且只读'


def a4(d):
    s = d['PD']
    for frag, want in (('AirPosProbe;->mk(I)V', 3), ('AirPosProbe;->pcg(', 1),
                       ('invoke-static {v3, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->airImgForKey(ILjava/lang/String;)I', 4),
                       ('->artCiv:I', 2)):
        c = s.count(frag)
        if c != want:
            return False, '%s 命中 %d（应 %d）——前批被破坏' % (frag, c, want)
    return True, '前批遗产完好（mk×3 / pcg×1 / 取图调用×4 / artCiv×3）'


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
        print('❌ 门禁 r6d158 未过')
        return 1
    for n, o, m in msgs:
        print('  ✅ %s: %s' % (n, m))
    neg = []
    s = load()['PD']
    neg.append(('N1 极性回退（改回 if-ltz）', run({'PD': s.replace('if-gez v3, :src1', 'if-ltz v3, :src1', 1)})[0] is False))
    neg.append(('N2 去掉 artCiv 来源', run({'PD': s.replace('    if-gez v3, :src1\n', '', 1)})[0] is False))
    p = load()['PP']
    neg.append(('N3 artD 采样回退', run({'PP': p.replace('const/16 v0, 0x1\n\n    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z', 'const/16 v0, 0x10\n\n    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z', 1)})[0] is False))
    bad = [n for n, r in neg if not r]
    for n, red in neg:
        print('  %s %s（负样本应变红）' % ('✅' if red else '❌', n))
    if bad:
        print('❌ 门禁敏感性不足：%s' % bad)
        return 2
    print('✅ 门禁 r6d158 通过（4 断言 + 3 负样本）')
    return 0


if __name__ == '__main__':
    sys.exit(main())