# -*- coding: utf-8 -*-
# B4 资源生成器：从 r6d260.apk 提取 list_common / Bundle×3 → 追加 → 输出 STAGE
import os
from zipfile import ZipFile

A = '/sdcard/GLG/历史23/build_apk/dbg_signed77_v119_r6d260.apk'
OUT = '/sdcard/GLG/历史23/build_inputs/b4/out'

EV_ID = 'af_tech_breakthrough'
EV_FILE = EV_ID + '.txt'

EV_TXT = '''id=af_tech_breakthrough
title=af_tech_breakthrough.t
desc=af_tech_breakthrough.d
image=44.png
popUp=true
possible_to_run=false
only_once=false
trigger_and
next_and
random_chance=0
trigger_and_end

option_btn
name=b4_af_opt_a
ai=10
bonus_duration=10
bonus_research_points=5.0
option_end
option_btn
name=b4_af_opt_b
ai=5
bonus_duration=10
bonus_monthly_legacy=0.6
option_end
'''

KEYS = {
    'af_tech_breakthrough.t': (
        '航空技术突破',
        'Aviation Breakthrough',
        '航空技術突破'),
    'af_tech_breakthrough.d': (
        '我们的工程师攻克了新一代航空技术。此刻值得举杯——但更值得选择如何用它。',
        'Our engineers have mastered a new generation of aviation technology. A moment worth toasting - but far more worth deciding how to use.',
        '我們的工程師攻克了新一代航空技術。此刻值得舉杯——但更值得選擇如何用它。'),
    'b4_af_opt_a': (
        '趁热打铁（+研究）',
        'Press the advantage (research)',
        '趁熱打鐵（+研究）'),
    'b4_af_opt_b': (
        '沉淀成果（+月遗产）',
        'Consolidate the legacy (monthly legacy)',
        '沉澱成果（+月遺產）'),
}
BUNDLE_ORDER = ['Bundle.properties', 'Bundle_cn_sp.properties', 'Bundle_cn_tr.properties']

z = ZipFile(A)
names = set(z.namelist())

# --- list_common ---
lc_path = 'assets/game/events/list_common.txt'
assert lc_path in names, 'missing ' + lc_path
lc = z.read(lc_path).decode('utf-8')
assert EV_FILE not in lc, 'already registered'
nl = ''
if lc.endswith('\r\n'):
    nl = '\r\n'; lc2 = lc[:-2]
elif lc.endswith('\n'):
    nl = '\n'; lc2 = lc[:-1]
else:
    lc2 = lc
lc2 = lc2 + EV_FILE + ';' + nl
assert lc2.count(EV_FILE) == 1

# --- bundles ---
bundle_new = {}
for bn in BUNDLE_ORDER:
    p = 'assets/game/languages/' + bn
    assert p in names, 'missing ' + p
    t = z.read(p).decode('utf-8')
    for k in KEYS:
        assert k not in t, 'key exists: %s in %s' % (k, bn)
    if not t.endswith('\n'):
        t = t + '\n'
    lines = []
    for i, k in enumerate(KEYS):
        vals = KEYS[k]
        v = vals[0] if bn == 'Bundle_cn_sp' else (vals[1] if bn == 'Bundle' else vals[2])
        lines.append('%s = %s' % (k, v))
    t = t + '\n'.join(lines) + '\n'
    bundle_new[bn] = t

# --- write stage ---
def w(rel, text):
    p = os.path.join(OUT, rel)
    os.makedirs(os.path.dirname(p), exist_ok=True)
    open(p, 'w', encoding='utf-8').write(text)

w('assets/game/events/common/' + EV_FILE, EV_TXT)
w('assets/game/events/list_common.txt', lc2)
for bn, t in bundle_new.items():
    w('assets/game/languages/' + bn, t)

print('lc tail repr:', repr(lc2[-60:]))
print('bundle tails:')
for bn in BUNDLE_ORDER:
    print(' ', bn, repr(bundle_new[bn][-40:]))
print('stage files:')
for r, d, fs in os.walk(OUT):
    for f in fs:
        print(' ', os.path.join(r, f))
print('GEN OK')