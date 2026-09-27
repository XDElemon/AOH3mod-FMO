# -*- coding: utf-8 -*-
# r5c038b_fix.py —— 修正 r5c038a 的两处判据反写（极性）
#   ① PlayerFogOfWar.detectEnemyMissions: if-gez v13, :cond_176 → if-ltz v13, :cond_176（坐标无效⇒跳过）
#   ② ProvinceDrawArmy.myOrDetectedMission: if-nez v0, :modm_chk → if-eqz v0, :modm_chk（非己方⇒去查 airDetSeen）
import io, os, sys, shutil, time

FOW = '/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar.smali'
PDA = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
TS = time.strftime('%Y-%m-%d %H:%M')

REPL = [
    (FOW, u'    if-gez v13, :cond_176\n', u'    if-ltz v13, :cond_176\n', '① 侦测门 if-gez → if-ltz'),
    (PDA, u'    if-nez v0, :modm_chk\n', u'    if-eqz v0, :modm_chk\n', '② helper if-nez → if-eqz'),
]


def main():
    print('=== r5c038b_fix.py %s ===' % TS)
    for p in (FOW, PDA):
        b = p + '.pre_r5c038b'
        if not os.path.exists(b):
            shutil.copy2(p, b)
            print('[BK] %s' % b.split('/')[-1])
    for p, old, new, tag in REPL:
        s = io.open(p, encoding='utf-8').read()
        if new in s and old not in s:
            print('[SKIP] %s（已修）' % tag)
            continue
        n = s.count(old)
        if n != 1:
            print('[FATAL] %s 锚点 %d 次（要求 1）' % (tag, n))
            sys.exit(1)
        io.open(p, 'w', encoding='utf-8').write(s.replace(old, new, 1))
        print('[OK] %s' % tag)
    # 自检
    fow, pda = io.open(FOW, encoding='utf-8').read(), io.open(PDA, encoding='utf-8').read()
    assert 'if-gez v13, :cond_176' not in fow and 'if-ltz v13, :cond_176' in fow
    assert 'if-nez v0, :modm_chk' not in pda and 'if-eqz v0, :modm_chk' in pda
    print('=== 自检通过 ===')
    print('DONE', TS)


if __name__ == '__main__':
    main()