#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
门禁 r6d157 —— 国别来源改为"任务/飞机自己的 civ" + aif 取证
4 断言 + 3 负样本
"""
import sys

BASE = '/tmp/w3a/smali/'
PD = BASE + 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PP = BASE + 'aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'
HD = '.method public static final drawAirDivisionAsPlane(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/lang/String;)V'
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
    s = d['PD']
    if s.count('.field public static artCiv:I') != 1:
        return False, 'artCiv 字段 != 1'
    body, n = slice_method(s, HD)
    if n != 1 or body is None:
        return False, 'drawAirDivisionAsPlane 定义 %d' % n
    if body.count('sput v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->artCiv:I') != 1:
        return False, 'artCiv 未被写入（:goto_aa 处 sput 缺失）'
    i_aa = body.find(':goto_aa')
    i_sp = body.find('artCiv:I')
    i_ring = body.find('add-int/lit8 v5, p1')
    if not (i_aa < i_sp < i_ring):
        return False, 'artCiv 写入点不在 :goto_aa 与首次改写 v5 之间（会被覆盖）'
    return True, 'artCiv 字段齐备且在 v5 被覆盖前写入'


def a2(d):
    body, n = slice_method(d['PD'], HK)
    if n != 1 or body is None:
        return False, 'airImgForKey 定义 %d' % n
    if body.count('->artCiv:I') != 1:
        return False, 'airImgForKey 未读取 artCiv'
    if body.count('getKeyCiv') != 1:
        return False, 'airImgForKey 的 key 兜底缺失'
    if body.count('airImgForCiv') != 1:
        return False, 'airImgForKey 未调用 airImgForCiv'
    if body.count('AirPosProbe;->aif(') != 1 or body.count('AirPosProbe;->artD(') != 1:
        return False, 'aif/artD 取证调用缺一'
    if body.count('if-ltz') + body.count('if-gez') != 2:
        return False, '零比较守卫数量 %d（应 2：artCiv、civFromKey）' % (body.count('if-ltz') + body.count('if-gez'))
    return True, 'airImgForKey 三级来源（artCiv→key→RU）+ 双取证调用'


def a3(d):
    body, n = slice_method(d['PP'], '.method public static aif(Ljava/lang/String;IIII)V')
    if n != 1 or body is None:
        return False, 'aif 定义 %d（应 1）' % n
    if 'iput' in body:
        return False, 'aif 含 iput（违反只读）'
    if 'AirPosProbe;->ok(I)Z' not in body:
        return False, 'aif 缺采样闸'
    if 'nAIF src=' not in body:
        return False, 'aif 缺前缀'
    # src==0（无来源）必须强制记录：某分支里不得调用 ok()
    i_force = body.find('const/4 v0, 0x1')
    i_ok = body.find('AirPosProbe;->ok(I)Z')
    if i_force < 0 or i_ok < 0 or i_force > i_ok:
        return False, 'aif 的强制记录分支顺序异常'
    return True, 'aif 只读、含采样闸、src=0 时强制记录'


def a4(d):
    s = d['PD']
    if s.count('AirPosProbe;->mk(I)V') != 3:
        return False, 'mk 调用 != 3（前批被破坏）'
    if s.count('AirPosProbe;->pcg(') != 1:
        return False, 'pcg 调用 != 1（前批被破坏）'
    inv = s.count('invoke-static {v3, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->airImgForKey(ILjava/lang/String;)I')
    if inv != 4:
        return False, 'airImgForKey 调用 %d（应 4）' % inv
    return True, '前批（mk×3 / pcg×1 / airImgForKey×4 调用）均完好'


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
        print('❌ 门禁 r6d157 未过')
        return 1
    for n, o, m in msgs:
        print('  ✅ %s: %s' % (n, m))
    neg = []
    s = load()['PD']
    neg.append(('N1 去掉 artCiv 写入', run({'PD': s.replace('    sput v5, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->artCiv:I', '', 1)})[0] is False))
    neg.append(('N2 去掉 aif 调用', run({'PD': s.replace('AirPosProbe;->aif(', 'AirPosProbe;->aiX(')})[0] is False))
    p = load()['PP']
    i = p.find('.method public static aif(Ljava/lang/String;IIII)V')
    j = p.find('.end method', i)
    b2 = p[i:j].replace('    :log\n', '    :log\n    iput-object p0, p0, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb:Ljava/lang/StringBuilder;\n', 1)
    neg.append(('N3 aif 含 iput', run({'PP': p[:i] + b2 + p[j:]})[0] is False))
    bad = [n for n, r in neg if not r]
    for n, red in neg:
        print('  %s %s（负样本应变红）' % ('✅' if red else '❌', n))
    if bad:
        print('❌ 门禁敏感性不足：%s' % bad)
        return 2
    print('✅ 门禁 r6d157 通过（4 断言 + 3 负样本）')
    return 0


if __name__ == '__main__':
    sys.exit(main())