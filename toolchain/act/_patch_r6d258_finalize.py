#!/usr/bin/env python3
# r6d258 finalize batch: F1 NaN guard / F2 lastMissileMs isolate / F3 COW radarProvinces /
# F4 adFxSrc<-1 guard / F5 AirDbgLog sampling gates + smpN field / F6 nABOOT bump.
# All new code comments are ASCII on purpose (transfer safety).
import re, sys, os, shutil

W = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
PDM = W + '/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PAD = W + '/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
AFM = W + '/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
ADL = W + '/aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
PDD = W + '/aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali'
NL = chr(10)

def rd(p): return open(p, encoding='utf-8').read()
def bk(p):
    b = p + '.pre_r6d258'
    if not os.path.exists(b):
        shutil.copy2(p, b)

def die(msg, s=None, pos=None):
    if s is not None and pos is not None:
        print('--- context repr ---')
        print(repr(s[max(0,pos-160):pos+160]))
    print('FATAL:', msg)
    sys.exit(1)

d = rd(PDM); a = rd(PAD); f = rd(AFM); g = rd(ADL); dd = rd(PDD)

# =====================================================================
# F1a) adFxStep NaN guard (insert between "double-to-float v8, v9" and "move v7, v1")
# =====================================================================
old1 = '    double-to-float v8, v9' + NL + '    move v7, v1'
c = d.count(old1)
assert c == 1, ('F1a anchor', c)
new1 = ('    double-to-float v8, v9' + NL
        + '    # r6d258: d==0 -> straight to contact settle (avoid 0-div NaN)' + NL
        + '    const/4 v9, 0x0' + NL
        + '    cmpl-float v9, v8, v9' + NL
        + '    if-eqz v9, :d0c' + NL
        + '    move v7, v1')
d = d.replace(old1, new1, 1)

# F1b) :d0c label before contact settle block
old1b = '    if-nez v9, :pp_done' + NL + '    iget v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F'
c = d.count(old1b)
assert c == 1, ('F1b anchor', c)
new1b = ('    if-nez v9, :pp_done' + NL
         + '    :d0c' + NL
         + '    iget v9, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F')
d = d.replace(old1b, new1b, 1)
assert d.count(':d0c') == 2, 'F1 label count'
print('F1 OK: NaN guard + :d0c (ref=1 def=1)')

# =====================================================================
# F2) AirDefense.scheduleHit: drop lastMissileMs write (3 lines -> comment)
# =====================================================================
pat2 = re.compile(r'\n\s*invoke-static \{\}, Ljava/lang/System;->currentTimeMillis\(\)J'
                  r'\n\s*move-result-wide v2'
                  r'\n\s*iput-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->lastMissileMs:J')
m = pat2.findall(a)
assert len(m) == 1, ('F2 anchor', len(m))
a = pat2.sub('\n    # r6d258: lastMissileMs no longer written by AD (isolate from A2A gx probe)', a, 1)
assert 'lastMissileMs:J' not in a, 'F2 residual'
print('F2 OK: scheduleHit lastMissileMs write removed')

# =====================================================================
# F3) AirForceManager: radarProvinces HashSet -> CopyOnWriteArraySet
# =====================================================================
idx3 = f.index('iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->radarProvinces:Ljava/util/Set;')
w0 = max(0, idx3 - 500)
win = f[w0:idx3]
n3 = win.count('Ljava/util/HashSet;')
assert n3 == 2, ('F3 window tokens', n3)
win = win.replace('Ljava/util/HashSet;', 'Ljava/util/concurrent/CopyOnWriteArraySet;')
f = f[:w0] + win + f[idx3:]
assert f.count('Ljava/util/concurrent/CopyOnWriteArraySet;') == 2, 'F3 result'
print('F3 OK: radarProvinces -> CopyOnWriteArraySet')

# =====================================================================
# F4) drawAdMissileFx: guard adFxSrc<0 (settled this frame) before getProvince
# =====================================================================
# scope check: :done appears once inside drawAdMissileFx
s4 = d.index('.method public static drawAdMissileFx(')
e4 = d.index('.end method', s4)
slice4 = d[s4:e4]
assert slice4.count(NL + '    :done' + NL) == 1, 'F4 :done count in slice'
i4 = d.index('\u5224\u8272')
seg4 = d[i4:i4 + 400]
mo = re.search(r'(iget v2, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I)(\s*)(invoke-static \{v2\}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince)', seg4)
assert mo, 'F4 anchor'
seg4n = (seg4[:mo.start()] + mo.group(1) + NL
         + '    # r6d258: settled this frame -> adFxSrc==-1 -> skip rest (avoid getProvince(-1))' + NL
         + '    if-ltz v2, :done' + mo.group(2) + mo.group(3) + seg4[mo.end():])
d = d[:i4] + seg4n + d[i4 + 400:]
assert d.count('if-ltz v2, :done') == 1, 'F4 result'
print('F4 OK: adFxSrc-1 guard inserted')


# F5a) AirDbgLog: add field smpN:I
# =====================================================================
c = g.count('.field private static tickMs:J')
assert c == 1, ('F5a anchor', c)
g = g.replace('.field private static tickMs:J',
              '.field private static tickMs:J' + NL + NL + '.field public static smpN:I', 1)

# F5b) dKey sampling gate (insert right before :try_start_8)
oldk = '    if-eqz p1, :cond_67' + NL + NL + '    :try_start_8'
assert g.count(oldk) == 1, 'F5b combo anchor'
BLOCK_KEY = NL.join([
'    # r6d258: sampling gate for legacy noisy families (afd/afp/arf/um + AIRDBG except nMS)',
'    const-string v2, "afd:"',
'    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z',
'    move-result v1',
'    if-eqz v1, :r258_t1',
'    const/16 v1, 0xff',
'    goto :r258_noisy',
'    :r258_t1',
'    const-string v2, "afp:"',
'    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z',
'    move-result v1',
'    if-eqz v1, :r258_t2',
'    const/16 v1, 0xff',
'    goto :r258_noisy',
'    :r258_t2',
'    const-string v2, "arf:"',
'    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z',
'    move-result v1',
'    if-eqz v1, :r258_t3',
'    const/16 v1, 0xff',
'    goto :r258_noisy',
'    :r258_t3',
'    const-string v2, "um:"',
'    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z',
'    move-result v1',
'    if-eqz v1, :r258_t4',
'    const/16 v1, 0xff',
'    goto :r258_noisy',
'    :r258_t4',
'    const-string v2, "AIRDBG"',
'    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z',
'    move-result v1',
'    if-nez v1, :r258_pass',
'    const-string v2, "nMS"',
'    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z',
'    move-result v1',
'    if-eqz v1, :r258_pass',
'    const/16 v1, 0x3f',
'    :r258_noisy',
'    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->smpN:I',
'    add-int/lit8 v0, v0, 0x1',
'    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->smpN:I',
'    and-int v0, v0, v1',
'    if-eqz v0, :r258_pass',
'    const/4 v0, 0x0',
'    return v0',
'    :r258_pass'])
g = g.replace(oldk, '    if-eqz p1, :cond_67' + NL + NL + BLOCK_KEY + NL + '    :try_start_8', 1)

# F5c) dWrite sampling gate (insert before the aircfg_diag.txt const-string)
anchorW = '    const-string v0, "/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/aircfg_diag.txt"'
c = g.count(anchorW)
assert c == 1, ('F5c anchor', c)
BLOCK_W = NL.join([
'    # r6d258: sampling gate (nMK/nAIF/nHIT/nUPX/nUPY/upy:/nADW => 1/64)',
'    const-string v0, "nMK "',
'    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z',
'    move-result v1',
'    if-eqz v1, :r258_w1',
'    goto :r258_wnoise',
'    :r258_w1',
'    const-string v0, "nAIF "',
'    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z',
'    move-result v1',
'    if-eqz v1, :r258_w2',
'    goto :r258_wnoise',
'    :r258_w2',
'    const-string v0, "nHIT "',
'    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z',
'    move-result v1',
'    if-eqz v1, :r258_w3',
'    goto :r258_wnoise',
'    :r258_w3',
'    const-string v0, "nUPX "',
'    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z',
'    move-result v1',
'    if-eqz v1, :r258_w4',
'    goto :r258_wnoise',
'    :r258_w4',
'    const-string v0, "nUPY "',
'    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z',
'    move-result v1',
'    if-eqz v1, :r258_w5',
'    goto :r258_wnoise',
'    :r258_w5',
'    const-string v0, "upy:"',
'    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z',
'    move-result v1',
'    if-eqz v1, :r258_w6',
'    goto :r258_wnoise',
'    :r258_w6',
'    const-string v0, "nADW "',
'    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z',
'    move-result v1',
'    if-eqz v1, :r258_wpass',
'    :r258_wnoise',
'    sget v0, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->smpN:I',
'    add-int/lit8 v0, v0, 0x1',
'    sput v0, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->smpN:I',
'    and-int/lit8 v0, v0, 0x3f',
'    if-eqz v0, :r258_wpass',
'    return-void',
'    :r258_wpass'])
g = g.replace(anchorW, BLOCK_W + NL + anchorW, 1)
assert g.count('smpN') == 5, ('F5 smpN count', g.count('smpN'))
print('F5 OK: smpN field + dKey gate + dWrite gate')

# =====================================================================
# F6) AirDefDiag nABOOT bump
# =====================================================================
c = dd.count('"nABOOT v=r6d257"')
assert c == 1, ('F6 anchor', c)
dd = dd.replace('"nABOOT v=r6d257"', '"nABOOT v=r6d258"', 1)
print('F6 OK: nABOOT v=r6d258')

# =====================================================================
# write all (after every check passed)
# =====================================================================
bk(PDM); bk(PAD); bk(AFM); bk(ADL); bk(PDD)
open(PDM, 'w', encoding='utf-8').write(d)
open(PAD, 'w', encoding='utf-8').write(a)
open(AFM, 'w', encoding='utf-8').write(f)
open(ADL, 'w', encoding='utf-8').write(g)
open(PDD, 'w', encoding='utf-8').write(dd)
print('WROTE: PDM / AirDefense / AirForceManager / AirDbgLog / AirDefDiag')
print('ALL CHECKS PASSED')