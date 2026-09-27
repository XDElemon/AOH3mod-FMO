# -*- coding: utf-8 -*-
# r5c039a_fix.py —— 修 r5c039 引入的两处反写（同批必须成对改）
#   ① if-nez v1, :modm_tgt → if-eqz v1, :modm_tgt  （airDetSeen 为 null ⇒ 直接去查目标省；同时消掉 NPE 路径）
#   ② if-nez v0, :modm_tgt → if-eqz v0, :modm_tgt  （contains 为假 ⇒ 才去查目标省；为真 ⇒ fall-through return true）
import io, os, sys, shutil, time

PDA = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
TS = time.strftime('%Y-%m-%d %H:%M')
A_OLD = u'''    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->airDetSeen:Ljava/util/HashSet;

    if-nez v1, :modm_tgt
'''
A_NEW = u'''    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->airDetSeen:Ljava/util/HashSet;

    if-eqz v1, :modm_tgt
'''
B_OLD = u'''    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :modm_tgt
'''
B_NEW = u'''    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :modm_tgt
'''


def main():
    print('=== r5c039a_fix.py %s ===' % TS)
    b = PDA + '.pre_r5c039a'
    if not os.path.exists(b):
        shutil.copy2(PDA, b)
        print('[BK] %s' % b.split('/')[-1])
    s = io.open(PDA, encoding='utf-8').read()
    changed = 0
    for old, new, tag in ((A_OLD, A_NEW, '① airDetSeen 判空极性'), (B_OLD, B_NEW, '② contains 判空极性')):
        if new in s and old not in s:
            print('[SKIP] %s（已修）' % tag)
            continue
        if s.count(old) != 1:
            print('[FATAL] %s 锚点 %d 次' % (tag, s.count(old)))
            sys.exit(1)
        s = s.replace(old, new, 1)
        changed += 1
        print('[OK] %s' % tag)
    if changed:
        io.open(PDA, 'w', encoding='utf-8').write(s)
    t = io.open(PDA, encoding='utf-8').read()
    assert 'if-eqz v1, :modm_tgt' in t and 'if-eqz v0, :modm_tgt' in t
    assert 'if-nez v1, :modm_tgt' not in t and 'if-nez v0, :modm_tgt' not in t
    print('=== 自检通过（两处均为 if-eqz）===')
    print('DONE', TS)


if __name__ == '__main__':
    main()