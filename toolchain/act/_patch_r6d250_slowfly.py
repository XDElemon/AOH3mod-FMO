#!/usr/bin/env python3
# r6d250: fix hour metric (TURN*24+HOUR), slow square (euclid*2 ~30px/s), floor 4h,
#        re-add target smoothing. ASCII-only to survive transport.
import sys
W = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
PAD = W + '/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
PDA = W + '/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PDD = W + '/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali'

# ---------- 1) metric: now = TURN_ID*24 + HOUR ----------
s = open(PAD, encoding='utf-8').read()
NL = chr(10)
old1 = ('    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I' + NL + NL
        + '    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I' + NL + NL
        + '    add-int/2addr v0, v1' + NL)
c = s.count(old1)
print('metric sites:', c)
assert c == 2, c
new1 = ('    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I' + NL + NL
        + '    mul-int/lit8 v0, v0, 0x18' + NL + NL
        + '    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->HOUR:I' + NL + NL
        + '    add-int/2addr v0, v1' + NL)
s = s.replace(old1, new1)
print('metric fixed x2')

# ---------- 2) knob: replace 0x992 block ----------
i = s.find('0x992')
assert i > 0, 'knob'
ls = s.rfind(NL, 0, i) + 1
line_txt = s[ls:s.find(NL, ls)]
indent = line_txt[:len(line_txt) - len(line_txt.lstrip())]
k = s.find('div-int v8, v8, v9', i)
assert k > 0
k2 = s.find(NL, k) + 1
new2 = (indent + '# r6d250: flightH = euclid px * 2 (~30 px/s at speed5)' + NL + NL
        + indent + 'mul-int/lit8 v8, v8, 0x2' + NL)
s = s[:ls] + new2 + s[k2:]
print('knob: 0x992 -> euclid*2')

# ---------- 3) floor 1 -> 4 ----------
a = s.find(':dl_min')
assert a > 0
w = s[a-400:a]
assert w.count('const/16 v2, 0x1') == 1, 'f1'
s = s[:a-400] + w.replace('const/16 v2, 0x1', 'const/16 v2, 0x4') + s[a:]
a = s.find(':dl_min')
w = s[a:a+300]
assert w.count('const/16 v1, 0x1') == 1, 'f2'
s = s[:a] + w.replace('const/16 v1, 0x1', 'const/16 v1, 0x4') + s[a+300:]
print('floor -> 4h')
open(PAD, 'w', encoding='utf-8').write(s)

# ---------- 4) PCC target smoothing ----------
s2 = open(PDA, encoding='utf-8').read()
if '->adFxTgtX:F' not in s2:
    anchor = '    :no_conv'
    assert s2.count(anchor) == 1, 'nc'
    lines = [
        '# r6d250: smooth target (+-8px/frame)',
        'iget v4, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTgtX:F',
        'iget v5, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTgtY:F',
        'int-to-float v2, v6',
        'int-to-float v3, v7',
        'iget v1, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I',
        'if-eqz v1, :tgs_raw',
        'sub-float v1, v2, v4',
        'const v11, 0x41000000',
        'cmpl-float v12, v1, v11',
        'if-lez v12, :tgs_xb',
        'move v1, v11',
        ':tgs_xb',
        'const v11, 0xc1000000',
        'cmpl-float v12, v1, v11',
        'if-gez v12, :tgs_xc',
        'move v1, v11',
        ':tgs_xc',
        'add-float v4, v4, v1',
        'sub-float v1, v3, v5',
        'const v11, 0x41000000',
        'cmpl-float v12, v1, v11',
        'if-lez v12, :tgs_yb',
        'move v1, v11',
        ':tgs_yb',
        'const v11, 0xc1000000',
        'cmpl-float v12, v1, v11',
        'if-gez v12, :tgs_yc',
        'move v1, v11',
        ':tgs_yc',
        'add-float v5, v5, v1',
        'goto :tgs_wr',
        ':tgs_raw',
        'move v4, v2',
        'move v5, v3',
        ':tgs_wr',
        'iput v4, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTgtX:F',
        'iput v5, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxTgtY:F',
        'float-to-int v6, v4',
        'float-to-int v7, v5',
    ]
    blk = NL + NL.join('    ' + l for l in lines) + NL
    s2 = s2.replace(anchor, anchor + blk, 1)
    open(PDA, 'w', encoding='utf-8').write(s2)
    print('smoothing block added')
else:
    print('smoothing already present')

# ---------- 5) nABOOT ----------
d = open(PDD, encoding='utf-8').read()
import re
d2 = re.sub(r'nABOOT v=r6d[0-9]+', 'nABOOT v=r6d250', d)
assert d2 != d
open(PDD, 'w', encoding='utf-8').write(d2)
print('nABOOT r6d250')

# ---------- verify ----------
s = open(PAD, encoding='utf-8').read()
print('CHECK 0x992:', s.count('0x992'))
print('CHECK knob:', s.count('mul-int/lit8 v8, v8, 0x2'))
print('CHECK floor4:', s.count('const/16 v2, 0x4'), s.count('const/16 v1, 0x4'))
print('CHECK metric24:', s.count('mul-int/lit8 v0, v0, 0x18'))
s2 = open(PDA, encoding='utf-8').read()
print('CHECK smooth:', s2.count('->adFxTgtX:F'))
