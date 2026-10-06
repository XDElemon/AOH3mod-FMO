#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# check_r6d178.py —— 命中判定探针门禁
# 目标：logHit 存在且只做日志（无副作用）；调用点必须恰好夹在 cmpl-float 与 if-gez 之间；原命中计数与 logAD 未被破坏。
import io, re, sys
AD = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
MSIG = re.compile(r'\.method[^\n]*?(\w+)\(([^)]*)\)([^\n]*)\n(.*?)\.end method', re.S)

def bodies(txt):
    d = {}
    for m in MSIG.finditer(txt):
        d[m.group(1)] = m.group(4)
    return d

def checks(t):
    d = bodies(t); out = []
    lh = d.get('logHit', '')
    fp = d.get('fireProvince', '')
    out.append(('S1 logHit(IFFI)V 恰好 1 个', t.count('.method public static logHit(IFFI)V') == 1, ''))
    need = ['mul-float v1, p1, v0', 'mul-float v2, p2, v0', 'float-to-int v1, v1',
            'float-to-int v2, v2', 'if-gez p3, :miss', 'AirDbgLog;->dWrite(Ljava/lang/String;)V',
            'const/high16 v0, 0x447a0000']
    miss = [k for k in need if k not in lh]
    out.append(('S2 logHit 探针内容完整', len(miss) == 0, '缺=%s' % miss))
    i0 = fp.find('cmpl-float v9, v7, v8'); i1 = fp.find('AirDefense;->logHit(IFFI)V'); i2 = fp.find('if-gez v9, :snext')
    out.append(('S3 调用点夹在 cmpl 与 if-gez 之间', i0 >= 0 and i1 > i0 and i2 > i1, 'i=%d/%d/%d' % (i0, i1, i2)))
    calls = re.findall(r'->(\w+)\(', lh)
    allowed = set(['<init>', 'append', 'toString', 'dWrite'])
    bad = [c for c in calls if c not in allowed]
    out.append(('S4 logHit 无副作用（只 StringBuilder + dWrite）', len(bad) == 0, '越界调用=%s' % bad))
    out.append(('S5 原命中计数与 logAD 未动', ('add-int/lit8 v3, v3, 0x1' in fp) and ('AirDefense;->logAD(IIIII)V' in fp), ''))
    out.append(('S6 logHit 不改游戏状态（无 sput/iput）', ('sput' not in lh) and ('iput' not in lh), ''))
    return out

def run(label, t, expect_fail):
    print('=== ' + label + ' ===')
    bad = 0
    for nm, ok, ex in checks(t):
        print(('  \u2705 ' if ok else '  \u274c ') + nm + (('  ' + ex) if ex else ''))
        if not ok: bad += 1
    print('  -> 失败项=%d' % bad)
    if expect_fail:
        print('  \u2705 负样本按预期变红' if bad > 0 else '  \u274c 负样本未变红')
        return bad > 0
    return bad == 0

T = io.open(AD, encoding='utf-8').read()
ok = run('正检', T, False)
bad1 = T.replace('    invoke-static {p1, v8, v7, v9}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->logHit(IFFI)V\n\n', '', 1)
ok &= run('N1 抽掉探针调用', bad1, True)
bad2 = T.replace('if-gez p3, :miss', 'if-lez p3, :miss', 1)
ok &= run('N2 把 h= 的判定极性改反', bad2, True)
bad3 = T.replace('    mul-float v1, p1, v0\n\n', '', 1)
ok &= run('N3 删掉 chance 缩放（内容缺失）', bad3, True)
print()
print('\u2705 门禁全部通过（含负样本）' if ok else '\u274c 门禁失败')
sys.exit(0 if ok else 1)
