# -*- coding: utf-8 -*-
# r6d262 表生成器：从 B3 单位记录生成 AirModelTables.smali（51 条 + bestIdx/keyOf/genOf）
import os, re, json, collections

UNITS = '/sdcard/GLG/历史23/build_inputs/b3/out/assets/game/units'
OUT = '/sdcard/GLG/历史23/build_inputs/r6d262/_files/AirModelTables.smali'
GRP = {'CN': 0, 'EU': 1, 'RU': 2, 'US': 3}
LET = {'F': 0, 'I': 1, 'A': 2, 'B': 3}   # F战/I截/A攻/B轰 == imgType

records = []
for fn in ['AirFighter.json', 'AirInterceptor.json', 'AirAttacker.json', 'AirBomber.json']:
    p = os.path.join(UNITS, fn)
    s = open(p, encoding='utf-8').read()
    for m in re.finditer(r'\{\s*Name:\s*"([^"]+)"\s*,\s*ImageID:\s*(\d+)\s*,\s*UnitLevel:\s*(\d+)\s*,[^}]*?RequiredTechID:\s*(-?\d+)', s, re.S):
        name, img, lvl, node = m.group(1), int(m.group(2)), int(m.group(3)), int(m.group(4))
        mm = re.match(r'A_([A-Z]{2})_(.+)_([FIAB])$', name)
        assert mm, name
        g = GRP[mm.group(1)]
        t = LET[mm.group(3)]
        assert 70 <= img <= 133, name
        img_t = (img - 70) % 4
        img_g = (img - 70) // 4 % 4
        gen = (img - 70) // 16 + 3
        assert img_t == t, (name, img_t, t)
        assert img_g == g, (name, img_g, g)
        records.append((g, t, gen, node, img, name))

records.sort(key=lambda r: (r[0], r[1], r[2]))
assert len(records) == 51, len(records)
assert len({r[5] for r in records}) == 51

infos = [(r[0] * 4 + r[1]) << 16 | (r[3] << 8) | r[4] for r in records]

def fill_int(v):
    return '0x%x' % v

L = []
L.append('.class public Laoc/kingdoms/lukasz/map/battles/AirModelTables;')
L.append('.super Ljava/lang/Object;')
L.append('.source "AirModelTables.java"')
L.append('')
L.append('# static fields')
L.append('.field public static INFO:[I')
L.append('')
L.append('.field public static KEY:[Ljava/lang/String;')
L.append('')
L.append('# direct methods')
L.append('.method public constructor <init>()V')
L.append('    .registers 1')
L.append('    invoke-direct {p0}, Ljava/lang/Object;-><init>()V')
L.append('    return-void')
L.append('.end method')
L.append('')
L.append('.method static constructor <clinit>()V')
L.append('    .registers 4')
L.append('    const/16 v0, 0x33')
L.append('    new-array v1, v0, [I')
L.append('    const/4 v2, 0x0')
for v in infos:
    L.append('    const v3, %s' % fill_int(v))
    L.append('    aput v3, v1, v2')
    L.append('    add-int/lit8 v2, v2, 0x1')
L.append('    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->INFO:[I')
L.append('    new-array v1, v0, [Ljava/lang/String;')
L.append('    const/4 v2, 0x0')
for r in records:
    L.append('    const-string v3, "%s"' % r[5])
    L.append('    aput-object v3, v1, v2')
    L.append('    add-int/lit8 v2, v2, 0x1')
L.append('    sput-object v1, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->KEY:[Ljava/lang/String;')
L.append('    return-void')
L.append('.end method')
L.append('')
L.append('.method public static bestIdx(III)I')
L.append('    .registers 13')
L.append('    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;')
L.append('    move-result-object v0')
L.append('    mul-int/lit8 v1, p1, 0x4')
L.append('    add-int/2addr v1, p2')
L.append('    const/4 v2, -0x1')
L.append('    const/4 v3, -0x1')
L.append('    const/4 v4, -0x1')
L.append('    const/16 v5, 0x7fff')
L.append('    const/4 v6, 0x0')
L.append(':b4mloop')
L.append('    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->INFO:[I')
L.append('    array-length v8, v7')
L.append('    if-ge v6, v8, :b4mfin')
L.append('    aget v7, v7, v6')
L.append('    ushr-int/lit8 v8, v7, 0x10')
L.append('    if-ne v8, v1, :b4mnext')
L.append('    ushr-int/lit8 v8, v7, 0x8')
L.append('    and-int/lit8 v8, v8, 0x7f')
L.append('    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z')
L.append('    move-result v8')
L.append('    and-int/lit16 v7, v7, 0xff')
L.append('    if-eqz v8, :b4mmin')
L.append('    if-le v7, v3, :b4mnext')
L.append('    move v2, v6')
L.append('    move v3, v7')
L.append('    goto :b4mnext')
L.append(':b4mmin')
L.append('    if-ge v7, v5, :b4mnext')
L.append('    move v4, v6')
L.append('    move v5, v7')
L.append(':b4mnext')
L.append('    add-int/lit8 v6, v6, 0x1')
L.append('    goto :b4mloop')
L.append(':b4mfin')
L.append('    if-gez v2, :b4mbret')
L.append('    return v4')
L.append(':b4mbret')
L.append('    return v2')
L.append('.end method')
L.append('')
L.append('.method public static keyOf(I)Ljava/lang/String;')
L.append('    .registers 2')
L.append('    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->KEY:[Ljava/lang/String;')
L.append('    aget-object v0, v0, p0')
L.append('    return-object v0')
L.append('.end method')
L.append('')
L.append('.method public static genOf(I)I')
L.append('    .registers 2')
L.append('    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirModelTables;->INFO:[I')
L.append('    aget v0, v0, p0')
L.append('    and-int/lit16 v0, v0, 0xff')
L.append('    return v0')
L.append('.end method')

os.makedirs(os.path.dirname(OUT), exist_ok=True)
open(OUT, 'w', encoding='utf-8').write('\n'.join(L) + '\n')

print('records =', len(records))
cnt = collections.Counter((r[0], r[1]) for r in records)
print('per (group,type):', dict(sorted(cnt.items())))
print('sample:', records[:3])
print('OUT =', OUT)
