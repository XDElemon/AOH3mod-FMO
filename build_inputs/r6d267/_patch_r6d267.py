# -*- coding: utf-8 -*-
# r6d267：修复"J11 编制自动变 J20"——哨兵 0 撞车
#  ① AirUnit 构造器：modelAid 默认 -1（未盖章哨兵）
#  ② sync 补章守卫：>0 跳过 → >=0 跳过
#  ③ 更新/创建两处：编制 aID 落库前钳位（<0 → 0）
import os
TREES = ['/tmp/w3a/smali', '/root/history23_repo/src/smali']
AFM = 'aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
AU = 'aoc/kingdoms/lukasz/map/battles/AirUnit.smali'

def load(p):
    with open(p, encoding='utf-8') as f: return f.read()

def rep_once(s, old, new, tag):
    c = s.count(old)
    if c != 1:
        raise SystemExit('ANCHOR FAIL [%s]: expect 1 got %d :: %r' % (tag, c, old[:120]))
    return s.replace(old, new, 1)

au = load(os.path.join(TREES[0], AU))
au2 = rep_once(au, '    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->civID:I\n',
    '    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->civID:I\n\n'
    '    const/4 v0, -0x1\n\n'
    '    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirUnit;->modelAid:I\n', 'E1-ctor')

afm = load(os.path.join(TREES[0], AFM))
afm2 = rep_once(afm, 'if-gtz v5, :r6d265_astamped', 'if-gez v5, :r6d265_astamped', 'E2-guard')

upd_old = ('    iput v5, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I\n'
           '    iput v12, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I\n')
upd_new = ('    iput v5, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I\n'
           '    if-gez v12, :r6d267_u_ok\n'
           '    const/4 v12, 0x0\n'
           '    :r6d267_u_ok\n'
           '    iput v12, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I\n')
afm2 = rep_once(afm2, upd_old, upd_new, 'E3-update-clamp')

cre_old = ':r6d265_bcreate\n    add-int/lit8 v3, v9, 0x7\n'
cre_new = (':r6d265_bcreate\n'
           '    if-gez v12, :r6d267_c_ok\n'
           '    const/4 v12, 0x0\n'
           '    :r6d267_c_ok\n'
           '    add-int/lit8 v3, v9, 0x7\n')
afm2 = rep_once(afm2, cre_old, cre_new, 'E4-create-clamp')

for rel, text in ((AU, au2), (AFM, afm2)):
    for t in TREES:
        p = os.path.join(t, rel)
        b = p + '.pre_r6d267'
        if not os.path.exists(b):
            import shutil; shutil.copy2(p, b)
        if load(p) != text:
            with open(p, 'w', encoding='utf-8') as f:
                f.write(text)

print('PATCHED 2 files')
print('guard:', afm2.count('if-ltz v5, :r6d265_astamped'))
print('clampU:', afm2.count('r6d267_u_ok'), ' clampC:', afm2.count('r6d267_c_ok'))
print('DONE')