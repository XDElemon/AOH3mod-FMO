#!/usr/bin/env python3
# r6d257 fix: adFxStep used v11/v12 as a wide scratch pair, but in this method
# (.registers 16, 5 params) v11..v15 ARE p0..p4 -> `move-result-wide v11` clobbered
# p0 (the AirMission object) with a Long low half, then `iput-wide v11, p0, ...`
# tripped the ART verifier: "instance field access on object that has non-reference
# type Long (Low Half)" -> ProvinceDrawArmy rejected -> startup crash.
# Fix: use v9/v10 (locals, exactly like msFxStep does for msFxStepMs).
# Also bump nABOOT to r6d257.
import sys, os, shutil

W = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
PDA = W + '/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PDD = W + '/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali'

def rd(p): return open(p, encoding='utf-8').read()
def bk(p):
    b = p + '.pre_r6d257'
    if not os.path.exists(b):
        shutil.copy2(p, b)

# ---- A) ProvinceDrawArmy.adFxStep: v11 -> v9 (scoped to the method) ----
d = rd(PDA)
t0 = d.index('.method private static adFxStep(')
t1 = d.index('.end method', t0)
seg = d[t0:t1]
old1 = 'move-result-wide v11'
old2 = 'iput-wide v11,'
c1 = seg.count(old1); c2 = seg.count(old2)
assert c1 == 1, ('old1 count', c1)
assert c2 == 1, ('old2 count', c2)
seg2 = seg.replace(old1, 'move-result-wide v9').replace(old2, 'iput-wide v9,')
d2 = d[:t0] + seg2 + d[t1:]
# post checks (scoped)
t0b = d2.index('.method private static adFxStep(')
t1b = d2.index('.end method', t0b)
segN = d2[t0b:t1b]
assert segN.count('move-result-wide v9') == 2, 'new move-result count (stamp+sqrt)'
assert segN.count('iput-wide v9,') == 1, 'new iput count'
assert 'v11' not in segN, 'v11 still in adFxStep'
bk(PDA)
open(PDA, 'w', encoding='utf-8').write(d2)
print('A OK: adFxStep stamp v11 -> v9 (p0-safe)')

# ---- B) AirDefDiag: nABOOT bump ----
dd = rd(PDD)
c = dd.count('"nABOOT v=r6d256"')
assert c == 1, ('naboot count', c)
dd = dd.replace('"nABOOT v=r6d256"', '"nABOOT v=r6d257"', 1)
bk(PDD)
open(PDD, 'w', encoding='utf-8').write(dd)
print('B OK: nABOOT v=r6d257')
print('ALL CHECKS PASSED')