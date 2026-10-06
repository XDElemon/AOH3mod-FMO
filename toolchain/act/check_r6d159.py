#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
门禁 r6d159 —— 位置自动取证（posD：重复绘制自检 + 缩放<0.75 无条件记录）
4 断言 + 3 负样本
"""
import sys

BASE = '/tmp/w3a/smali/'
PD = BASE + 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PP = BASE + 'aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'
HD = '.method public static final drawProvinceArmyWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V'


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
        return False, 'drawProvinceArmyWithFlag 定义 %d' % n
    if body.count('AirPosProbe;->posD(') != 1:
        return False, 'posD 调用 %d 处（应 1）' % body.count('AirPosProbe;->posD(')
    i_pos = body.find('AirPosProbe;->posD(')
    i_y = body.find('getArmyPosY(II)I')
    i_key = body.find('->key:Ljava/lang/String;')
    if not (0 <= i_y < i_pos < i_key):
        return False, 'posD 未插在"取完坐标"与"读 key"之间'
    if 'AirPosProbe;->hit4()V' not in body:
        return False, 'hit4 丢失（该处是"会执行"的证明点）'
    return True, 'posD 恰 1 处且位于证明会执行的路径上'


def a2(d):
    body, n = slice_method(d['PP'], '.method public static posD(IIIILjava/lang/Object;)V')
    if n != 1 or body is None:
        return False, 'posD 定义 %d' % n
    for frag in ('nPOSDUP p=', 'nPOS p=', 'const/high16 v5, 0x3f400000', 'ok(I)Z', 'iShiftY_Scaled'):
        if frag not in body:
            return False, 'posD 缺要素：%s' % frag
    if 'iput' in body:
        return False, 'posD 含 iput（违反只读）'
    # 只允许写自己的静态字段
    import re
    for m in re.finditer(r'sput[^\n]* AirPosProbe;->(\w+)', body):
        if m.group(1) not in ('pp', 'pk'):
            return False, 'posD 写了意外字段 %s' % m.group(1)
    if '.field private static pk:Ljava/lang/String;' not in d['PP'] or '.field private static pp:I' not in d['PP']:
        return False, 'pk/pp 字段缺失'
    return True, 'posD 结构正确（重复自检 + 缩放阈值 + 采样）'


def a3(d):
    body, _ = slice_method(d['PP'], '.method public static posD(IIIILjava/lang/Object;)V')
    i_dup = body.find('nPOSDUP')
    i_gate = body.find('const/16 v2, 0x1e')
    if not (0 < i_dup < i_gate):
        return False, '重复自检分支应在采样闸之前（保证无条件）'
    i_thr = body.find('const/high16 v5, 0x3f400000')
    if i_thr < 0 or body.find('if-gez v6, :do_log') < 0:
        return False, '缩放阈值分支缺失或极性可疑（应 if-gez 表示 scale>=0.75 才走采样）'
    return True, '无条件路径与阈值路径顺序正确'


def a4(d):
    s = d['PD']
    for frag, want in (('AirPosProbe;->mk(I)V', 3), ('AirPosProbe;->pcg(', 1),
                       ('invoke-static {v3, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->airImgForKey(ILjava/lang/String;)I', 4)):
        c = s.count(frag)
        if c != want:
            return False, '%s 命中 %d（应 %d）——前批被破坏' % (frag, c, want)
    q = d['PP']
    if 'if-gez v3, :src1' not in q and 'if-gez v3, :src1' not in s:
        return False, '极性修正（if-gez）缺失'
    return True, '前批遗产完好（mk/pcg/取图调用/极性修正）'


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
        print('❌ 门禁 r6d159 未过')
        return 1
    for n, o, m in msgs:
        print('  ✅ %s: %s' % (n, m))
    neg = []
    s = load()['PD']
    neg.append(('N1 去掉 posD 调用', run({'PD': s.replace('    invoke-static {p1, p2, v0, v6, v8}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->posD(IIIILjava/lang/Object;)V\n\n', '', 1)})[0] is False))
    p = load()['PP']
    i = p.find('.method public static posD(IIIILjava/lang/Object;)V')
    j = p.find('.end method', i)
    b = p[i:j]
    b2 = b.replace('const-string v3, "nPOSDUP p="', 'const-string v3, "noDUP p="', 1)
    neg.append(('N2 去掉重复自检前缀（功能破坏）', b2 != b and run({'PP': p[:i] + b2 + p[j:]})[0] is False))
    b3 = b.replace('    if-nez v2, :no_dup\n', '    if-nez v2, :no_dup\n    iput p0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I\n', 1)
    neg.append(('N3 posD 含 iput', run({'PP': p[:i] + b3 + p[j:]})[0] is False))
    bad = [n for n, r in neg if not r]
    for n, red in neg:
        print('  %s %s（负样本应变红）' % ('✅' if red else '❌', n))
    if bad:
        print('❌ 门禁敏感性不足：%s' % bad)
        return 2
    print('✅ 门禁 r6d159 通过（4 断言 + 3 负样本）')
    return 0


if __name__ == '__main__':
    sys.exit(main())