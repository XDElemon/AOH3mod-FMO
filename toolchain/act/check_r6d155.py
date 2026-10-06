#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
门禁 r6d155 —— 构建标记 + 取图诊断（不改绘制规则）
4 断言 + 3 负样本（负样本必须变红）
"""
import re
import sys

BASE = '/tmp/w3a/smali/'
F = {
    'PD': BASE + 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali',
    'AD': BASE + 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali',
    'PP': BASE + 'aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali',
}
MARK = 'AIRBUILD r6d155'


def load(ov=None):
    return {k: (ov[k] if (ov and k in ov) else open(p, encoding='utf-8').read()) for k, p in F.items()}


def slice_method(s, header):
    i = s.find(header)
    if i < 0:
        return None, 0
    j = s.find('.end method', i)
    return s[i:j], s.count(header)


def a1(d):  # 构建标记
    s = d['AD']
    if s.count(MARK) != 1:
        return False, '构建标记出现 %d 次（应 1）' % s.count(MARK)
    body, n = slice_method(s, '.method public static boot()V')
    if n != 1 or body is None or 'AIRBUILD' not in body:
        return False, '构建标记不在 boot() 内'
    if 'BOOT2 dbg=' not in body:
        return False, 'BOOT2 行丢失'
    if body.count('dWrite') < 2:
        return False, 'boot() 内 dWrite 次数偏少（应 ≥2：BOOT2 + AIRBUILD）'
    return True, 'boot() 内含 AIRBUILD r6d155 且 BOOT2 保留'


def a2(d):  # airImgForKey
    body, n = slice_method(d['PD'], '.method public static airImgForKey(ILjava/lang/String;)I')
    if n != 1 or body is None:
        return False, 'airImgForKey 定义 %d 个' % n
    for frag, want in (('getKeyCiv', 1), ('airImgForCiv(II)I', 1), ('AirPosProbe;->artD(', 1),
                       ('return v2', 1), ('.registers 6', 0)):
        if want == 0:
            continue
        c = body.count(frag)
        if c != want:
            return False, 'airImgForKey 中 %s 出现 %d 次（应 %d）' % (frag, c, want)
    if body.count('if-ltz') + body.count('if-gez') < 1:
        return False, 'airImgForKey 缺零比较守卫'
    if 'return v0' in body:
        return False, 'airImgForKey 仍以 v0 返回（旧版残留）'
    return True, 'airImgForKey 结构正确（key→civ→组→图 + artD 诊断）'


def a3(d):  # 探针方法
    s = d['PP']
    for name, sig in (('artD', '(Ljava/lang/String;IIII)V'), ('pcg', '(ILjava/lang/Object;ILjava/lang/String;)V')):
        body, n = slice_method(s, '.method public static %s%s' % (name, sig))
        if n != 1 or body is None:
            return False, '%s 定义 %d 个（应 1）' % (name, n)
        if 'iput' in body:
            return False, '%s 含 iput（违反只读）' % name
    ab, _ = slice_method(s, '.method public static artD(Ljava/lang/String;IIII)V')
    if 'artGroupOf(I)I' not in ab:
        return False, 'artD 未计算美术组'
    if 'AirPosProbe;->ok(I)Z' not in ab:
        return False, 'artD 缺采样闸'
    return True, 'artD/pcg 齐备、纯只读、含组计算与采样'


def a4(d):  # 插入点
    body, n = slice_method(d['PD'], '.method public static final drawProvinceArmyWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V')
    if n != 1 or body is None:
        return False, 'drawProvinceArmyWithFlag 定义 %d 个' % n
    if body.count('AirPosProbe;->pcg(') != 1:
        return False, 'pcg 调用 %d 处（应 1）' % body.count('AirPosProbe;->pcg(')
    i_pcg = body.find('AirPosProbe;->pcg(')
    i_plane = body.find('drawAirDivisionAsPlane')
    i_grp = body.find('dgAirGroup:I')
    if not (i_grp < i_pcg < i_plane):
        return False, 'pcg 未插在 dgAirGroup 写入与 drawAirDivisionAsPlane 之间'
    return True, 'pcg 恰 1 处且位于组写入之后、绘制之前'


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
    for n, o, m in msgs:
        print('  %s %s: %s' % ('✅' if o else '❌', n, m))
    if not ok:
        print('❌ 门禁 r6d155 未过')
        return 1

    neg = []
    s = load()['AD'].replace(MARK, 'AIRBUILD r6dXXX', 1)
    neg.append(('N1 标记改错', run({'AD': s})[0] is False))
    s = load()['PD'].replace('AirPosProbe;->artD(', 'AirPosProbe;->artX(', 1)
    neg.append(('N2 缺 artD 调用', run({'PD': s})[0] is False))
    s = load()['PP'].replace(
        '    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I',
        '    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I\n\n    iput-object p3, v0, Laoc/kingdoms/lukasz/map/province/Province;->lArmies:Ljava/util/concurrent/CopyOnWriteArrayList;', 1)
    neg.append(('N3 pcg 含 iput', run({'PP': s})[0] is False))

    for n, red in neg:
        print('  %s %s（负样本应变红）' % ('✅' if red else '❌', n))
    if [n for n, r in neg if not r]:
        print('❌ 门禁敏感性不足')
        return 2
    print('✅ 门禁 r6d155 通过（4 断言 + 3 负样本）')
    return 0


if __name__ == '__main__':
    sys.exit(main())