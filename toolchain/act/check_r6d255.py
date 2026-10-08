#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""check_r6d255.py -- r6d255 静态门禁（A2A 纯追踪 + 接触结算 + 乙兜底 + 速度钩子）
断言 S1-S6 + 负样本 N1-N3（负样本必须"把血案复原后变红"）。
"""
import re, sys
W = '/tmp/w3a/smali'
PDA = W + '/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PDM = W + '/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
PAD = W + '/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
PDD = W + '/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali'

fails = []
def ok(name, cond, extra=''):
    print(('✅ ' if cond else '❌ ') + name + (('  ' + extra) if extra else ''))
    if not cond:
        fails.append(name)

def method_text(s, marker):
    i = s.index(marker)
    j = s.index('.end method', i)
    return s[i:j]

# ---------------- load ----------------
dm = open(PDM, encoding='utf-8').read()
da = open(PDA, encoding='utf-8').read()
dd = open(PAD, encoding='utf-8').read()
dg = open(PDD, encoding='utf-8').read()

# ---------------- S1 field ----------------
ok('S1 msFxStepMs field', dm.count('.field public msFxStepMs:J') == 1)

# ---------------- S2 helper ----------------
h = method_text(dm, '.method public static msFxContact')
ok('S2a helper exists', dm.count('.method public static msFxContact') == 1)
ok('S2b hit log', h.count('"nMS hit t="') == 1)
ok('S2c damage call', h.count('applyAirDamage') == 1)
ok('S2d cleanup fields', ('strikeKind:I' in h) and ('strikeProgress:F' in h) and ('strikeTargetMissionID:J' in h) and ('msFxInit:I' in h))
if ('applyAirDamage' in h) and ('"nMS hit t="' in h) and ('strikeKind:I' in h):
    ok('S2e order dmg<log<cleanup', h.index('applyAirDamage') < h.index('"nMS hit t="') < h.rindex('strikeKind:I'))
else:
    ok('S2e order dmg<log<cleanup', False)
ok('S2f v0 object-only hygiene', ('const/4 v0' not in h) and ('iput v0' not in h))

# ---------------- S3 missileTick ----------------
mt = method_text(dm, '.method private missileTick()V')
ok('S3a old hit gone', mt.count('"nMS hit t="') == 0)
ok('S3b old miss gone', mt.count('"nMS miss t="') == 0)
ok('S3c lost fb logs', mt.count('"nMS lost t="') == 1 and mt.count('"nMS fb t="') == 1)
ok('S3d msFxStepMs read', 'msFxStepMs:J' in mt)
ok('S3e grace/hard consts', ('add-int/lit8 v3, v2, 0xc' in mt) and ('add-int/lit8 v3, v2, 0x30' in mt))
ok('S3f recent window', '0x2710' in mt)
seg = mt[mt.index(':msl_loop'):mt.index(':msl_clean')] if ':msl_loop' in mt else ''
ok('S3g msl labels', (':msl_lost' in mt) and (':msl_fb' in mt) and (':msl_clean' in mt))
ok('S3h branch directions', ('if-ge v0, v3, :msl_f2' in seg) and ('if-ge v0, v3, :msl_fb' in seg) and ('if-lt v0, v3' not in seg))

# ---------------- S4 msFxStep ----------------
st = method_text(da, '.method private static msFxStep')
ok('S4a speed hook call', st.count('msSpd()F') == 1)
ok('S4b contact call', st.count('msFxContact') == 1)
ok('S4c step stamp', st.count('msFxStepMs') == 1)
ok('S4d old engine gone', (st.count('0x3f666666') == 0) and (st.count('msFxSpd') == 0))
ok('S4e contact branch opcodes', ('if-eqz v10, :msc' in st) and ('if-eqz v9, :msc' in st))
ok('S4f min-step opcode', 'if-gtz v9, :st_ok' in st)
ok('S4g v6 object-only hygiene', len(re.findall(r'\bv6\b', st)) == 3)

# ---------------- S5 speed getters ----------------
ok('S5a msSpd getter', dd.count('.method public static msSpd()F') == 1)
ok('S5b adSpd getter', dd.count('.method public static adSpd()F') == 1)
g = method_text(dd, '.method public static msSpd()F')
ok('S5c msSpd body', '0x42870000' in g)
g2 = method_text(dd, '.method public static adSpd()F')
ok('S5d adSpd body', '0x42870000' in g2)

# ---------------- S6 version ----------------
ok('S6 nABOOT r6d255', (dg.count('nABOOT v=r6d255') == 1) and (dg.count('r6d254') == 0))

# ---------------- N1-N3 negative samples ----------------
def neg(name, text, mutate, must_fail_pred):
    """mutate on copy; the predicate that SHOULD hold on good text must fail on mutated"""
    t2 = mutate(text)
    ok(name, (t2 != text) and (not must_fail_pred(t2)))

mt_mut = mt
neg('N1 grace const mutation caught',
    mt, lambda t: t.replace('add-int/lit8 v3, v2, 0xc', 'add-int/lit8 v3, v2, 0x18', 1),
    lambda t: ('add-int/lit8 v3, v2, 0xc' in t))
neg('N2 branch-flip caught',
    mt, lambda t: t.replace('if-ge v0, v3, :msl_f2', 'if-lt v0, v3, :msl_f2', 1),
    lambda t: ('if-ge v0, v3, :msl_f2' in t) and ('if-lt v0, v3' not in t))
neg('N3 hard const mutation caught',
    mt, lambda t: t.replace('add-int/lit8 v3, v2, 0x30', 'add-int/lit8 v3, v2, 0x60', 1),
    lambda t: ('add-int/lit8 v3, v2, 0x30' in t))

print()
if fails:
    print('❌ check_r6d255 未过：%d 项' % len(fails))
    sys.exit(1)
print('✅ check_r6d255 ALL PASS（S1-S6 + N1-N3）')
sys.exit(0)