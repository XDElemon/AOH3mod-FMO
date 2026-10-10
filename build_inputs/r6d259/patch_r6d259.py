# -*- coding: utf-8 -*-
# r6d259: disable country-based army card image (early return in AirForceManager.armyCardImgFor)
# Policy: keep old body as unreachable code (rollback-friendly); keep 9 call sites (inert).
from pathlib import Path
import shutil, hashlib

TREES = [
    '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali',
    '/root/history23_repo/src/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali',
]
OLD = ('.method public static armyCardImgFor(I)I\n'
       '    .registers 8\n\n'
       '    const/16 v0, 0x42\n')
NEW = ('.method public static armyCardImgFor(I)I\n'
       '    .registers 8\n\n'
       '    # r6d259: country-based card image disabled -> return original\n'
       '    return p0\n\n'
       '    const/16 v0, 0x42\n')

for f in TREES:
    p = Path(f)
    t = p.read_text(encoding='utf-8')
    c = t.count(OLD)
    assert c == 1, ('anchor count %d in %s' % (c, f))
    assert 'r6d259' not in t, 'already patched: %s' % f
    bak = p.with_name(p.name + '.pre_r6d259')
    if not bak.exists():
        shutil.copy2(p, bak)
    t2 = t.replace(OLD, NEW, 1)
    p.write_text(t2, encoding='utf-8')
    print('patched:', f)
    print('   md5:', hashlib.md5(t2.encode()).hexdigest())
print('DONE')