# -*- coding: utf-8 -*-
# r5c038a_fix.py —— 修正 r5c038 的 VerifyError：Long.valueOf 之后必须是 move-result-object
import io, os, sys, shutil, time

PDA = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
TS = time.strftime('%Y-%m-%d %H:%M')
OLD = (u'    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;\n'
       u'\n'
       u'    move-result v2\n')
NEW = (u'    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;\n'
       u'\n'
       u'    move-result-object v2\n')


def main():
    print('=== r5c038a_fix.py %s ===' % TS)
    s = io.open(PDA, encoding='utf-8').read()
    b = PDA + '.pre_r5c038a'
    if not os.path.exists(b):
        shutil.copy2(PDA, b)
        print('[BK] %s' % b.split('/')[-1])
    if 'move-result-object v2\n\n    invoke-interface {v1, v2}' in s:
        print('[SKIP] 已修')
        return
    n = s.count(OLD)
    if n != 1:
        print('[FATAL] 锚点 %d 次（要求 1）' % n)
        sys.exit(1)
    io.open(PDA, 'w', encoding='utf-8').write(s.replace(OLD, NEW, 1))
    print('[OK] move-result → move-result-object')


if __name__ == '__main__':
    main()