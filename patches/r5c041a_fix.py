# -*- coding: utf-8 -*-
# r5c041a_fix.py —— 修 r5c041 的 ART 校验错误：给引用形参喂了整数常量
#   const/4 v6,0x1 → sget-object v6, AirUnit$AirType->BOMBER:...
#   const/4 v6,0x2 → sget-object v6, AirUnit$AirType->FIGHTER:...
import io, os, sys, shutil, time

AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
TS = time.strftime('%Y-%m-%d %H:%M')
INV = u'    invoke-static {p1, v6}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->pickIdleDivKey(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/lang/String;'
PAIR = [(u'    const/4 v6, 0x1\n\n' + INV,
         u'    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;\n\n' + INV,
         '轰炸 → BOMBER'),
        (u'    const/4 v6, 0x2\n\n' + INV,
         u'    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;\n\n' + INV,
         '巡逻 → FIGHTER')]


def main():
    print('=== r5c041a_fix.py %s ===' % TS)
    b = AFM + '.pre_r5c041a'
    if not os.path.exists(b):
        shutil.copy2(AFM, b)
        print('[BK] %s' % b.split('/')[-1])
    s = io.open(AFM, encoding='utf-8').read()
    for old, new, tag in PAIR:
        if s.count(new) == 1 and s.count(old) == 0:
            print('[SKIP] %s（已修）' % tag)
            continue
        if s.count(old) != 1:
            print('[FATAL] %s 锚点 %d 次' % (tag, s.count(old)))
            sys.exit(1)
        s = s.replace(old, new, 1)
        print('[OK] %s' % tag)
    io.open(AFM, 'w', encoding='utf-8').write(s)
    t = io.open(AFM, encoding='utf-8').read()
    body = t[t.find('.method private executeAIAssignmentForAirport('):]
    body = body[:body.find('\n.end method')]
    assert body.count('->BOMBER:Laoc') == 1 and body.count('->FIGHTER:Laoc') == 1
    assert 'const/4 v6, 0x1' not in body and 'const/4 v6, 0x2' not in body
    print('=== 自检通过（两处均为 sget-object AirType）===')
    print('DONE', TS)


if __name__ == '__main__':
    main()