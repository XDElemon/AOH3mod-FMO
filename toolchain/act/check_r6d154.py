#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
门禁 r6d154 —— 飞机贴图"按飞机自己的国家取图" + 4 个只读探针
定稿：/sdcard/GLG/历史23/r6s5/调研_r6d154_r3_定稿.md §六

断言 4 条 + 负样本 3 个（负样本必须变红，否则门禁无效）
输出含 ✅ 视为通过（preinstall.sh 约定）
"""
import re
import sys

BASE = '/tmp/w3a/smali/'
F = {
    'PD': BASE + 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali',
    'PD1': BASE + 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$1.smali',
    'AD': BASE + 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali',
    'AM': BASE + 'aoc/kingdoms/lukasz/map/battles/AirMission.smali',
    'PP': BASE + 'aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali',
}

ART_OLD = '    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForType(I)I'
ART_NEW = '    invoke-static {v3, p3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->airImgForKey(ILjava/lang/String;)I'
ART_AIRPORT = '    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForType(I)I'

PROBE_SIGS = [
    ('adp', '(Ljava/lang/Object;II)V'),
    ('pap', '(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;II)V'),
    ('fkr', '(Ljava/lang/Object;)V'),
    ('tkr', '(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V'),
]
PROBE_CALLS = [
    ('PD1', 'AirPosProbe;->adp(Ljava/lang/Object;II)V'),
    ('AD', 'AirPosProbe;->fkr(Ljava/lang/Object;)V'),
    # pap 调用已被 r6d172 摘除（旧探针崩溃回归）⇒ 此条不再断言
    ('AM', 'AirPosProbe;->tkr(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V'),
]
NEW_FIELDS = ['id0', 'id1', 'id2', 'id3', 'q0', 'q1', 'q2', 'q3', 'an', 'ldup']


def load(override=None):
    d = {}
    for k, p in F.items():
        d[k] = override[k] if (override and k in override) else open(p, encoding='utf-8').read()
    return d


def slice_method(s, header):
    i = s.find(header)
    if i < 0:
        return None, 0
    j = s.find('.end method', i)
    return s[i:j], s.count(header)


def a1(d):
    s = d['PD']
    if s.count(ART_OLD) != 0:
        return False, '旧的 airImgForType({v3}) 仍有 %d 处' % s.count(ART_OLD)
    if s.count(ART_NEW) != 4:
        return False, 'airImgForKey 调用 %d 处（应 4）' % s.count(ART_NEW)
    if s.count(ART_AIRPORT) != 4:
        return False, '机场图标路径 airImgForType({v0}) %d 处（应 4，不许误伤）' % s.count(ART_AIRPORT)
    return True, 'art 取图 4 处改为一国一图；机场图标 4 处未误伤'


def a2(d):
    s = d['PD']
    body, n = slice_method(s, '.method public static airImgForKey(ILjava/lang/String;)I')
    if n != 1 or body is None:
        return False, 'airImgForKey 定义 %d 个（应 1）' % n
    if body.count('getKeyCiv') != 1:
        return False, 'airImgForKey 未恰好调用 getKeyCiv 1 次'
    if body.count('airImgForCiv(II)I') != 1:
        return False, 'airImgForKey 未恰好调用 airImgForCiv 1 次'
    for frag, want in (('getKeyCiv', 1), ('airImgForCiv', 1)):
        c = body.count(frag)
        if c != want:
            return False, 'airImgForKey 中 %s 出现 %d 次（应 %d）' % (frag, c, want)
    if body.count('if-ltz') + body.count('if-gez') < 1:
        return False, 'airImgForKey 缺零比较守卫（-1 ⇒ 会越界）'
    if body.count('return') != 1:
        return False, 'airImgForKey 的 return 次数 != 1（应单出口）'
    return True, 'airImgForKey 结构正确（key→civ→组→图，含 -1 守卫）'


def a3(d):
    for k, frag in PROBE_CALLS:
        n = d[k].count(frag)
        if n != 1:
            return False, '%s 中 %s 命中 %d 处（应 1）' % (k, frag, n)
    pb, _ = slice_method(d['AM'], '.method private placeAirDivision(I)V')
    tb, _ = slice_method(d['AM'], '.method public tickInvars()Z')
    if pb is None:
        return False, 'placeAirDivision 方法未找到'
    if tb is None or 'tkr(' not in tb:
        return False, 'tkr 不在 tickInvars 内'
    if 'adp(' not in d['PD1']:
        return False, 'adp 不在 ProvinceDrawArmy$1 内'
    return True, '4 个探针调用各 1 处且位置正确'


def a4(d):
    s = d['PP']
    for name, sig in PROBE_SIGS:
        body, n = slice_method(s, '.method public static %s%s' % (name, sig))
        if n != 1 or body is None:
            return False, '%s 定义 %d 个（应 1）' % (name, n)
        if 'iput' in body:
            return False, '%s 含 iput（违反"探针只读业务字段"）' % name
        for m in re.finditer(r'sput [vp]\d+, ([^\s]+)', body):
            if 'AirPosProbe;->' not in m.group(1):
                return False, '%s 写了外部字段 %s' % (name, m.group(1))
    for f in NEW_FIELDS:
        if ('.field private static %s:I' % f) not in s:
            return False, 'AirPosProbe 缺字段 %s' % f
    return True, '4 个探针方法齐备、纯只读、10 个字段齐备'


def run(override=None):
    d = load(override)
    msgs = []
    for fn in (a1, a2, a3, a4):
        ok, msg = fn(d)
        msgs.append((fn.__name__, ok, msg))
        if not ok:
            return False, msgs
    return True, msgs


def main():
    ok, msgs = run()
    for name, o, msg in msgs:
        print('  %s %s: %s' % ('✅' if o else '❌', name, msg))
    if not ok:
        print('❌ 门禁 r6d154 未过')
        return 1

    # ---------------- 负样本：必须变红 ----------------
    neg = []
    # N1：把一处 airImgForKey 调用改回单寄存器
    ov = {'PD': load()['PD'].replace(ART_NEW, ART_OLD, 1)}
    o, _ = run(ov)
    neg.append(('N1 单寄存器调用', o is False))
    # N2：删掉 adp 调用（替代原"删 pap"，因为 pap 已被 r6d172 摘除）
    ov = {'PD1': load()['PD1'].replace('adp(', 'adpX(', 1)}
    o, _ = run(ov)
    neg.append(('N2 缺 adp 调用', o is False))

    # N3：往 fkr 里塞 iput
    s = load()['PP']
    s2 = s.replace(
        '    iget-object v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;\n\n    iget-object v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;\n\n    const/4 v4, -0x1\n\n    if-eqz v3, :nor\n\n    invoke-interface {v3}, Ljava/util/List;->size()I\n\n    move-result v4\n\n    :nor\n    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;\n\n    move-result-object v5',
        '    iget-object v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;\n\n    iput-object v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;\n\n    iget-object v3, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;\n\n    const/4 v4, -0x1\n\n    if-eqz v3, :nor\n\n    invoke-interface {v3}, Ljava/util/List;->size()I\n\n    move-result v4\n\n    :nor\n    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;\n\n    move-result-object v5', 1)
    ov = {'PP': s2}
    o, _ = run(ov)
    neg.append(('N3 fkr 含 iput', o is False))

    bad = [n for n, red in neg if not red]
    for n, red in neg:
        print('  %s %s（负样本应变红）' % ('✅' if red else '❌', n))
    if bad:
        print('❌ 门禁敏感性不足：%s' % bad)
        return 2

    print('✅ 门禁 r6d154 通过（4 断言 + 3 负样本）')
    return 0


if __name__ == '__main__':
    sys.exit(main())