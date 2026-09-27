# -*- coding: utf-8 -*-
# r5c043_fix.py —— 修 dispatchAutoIntercept 的两处射程门反写（必须同批改）
#   3544| if-nez v5, :dsp_rng_f  → if-eqz v5, :dsp_rng_f   （不在截击机圈 ⇒ 才去试战斗机圈）
#   3555| if-nez v5, :dsp_loop   → if-eqz v5, :dsp_loop    （不在战斗机圈 ⇒ 才跳过该机场）
# 依据：if-nez＝值≠0才跳（同方法内 3517/3527 与 3592 可为旁证）；修后候选 ⇔ (I ∨ F) ⇔ 距离 ≤ 半径
import io, os, re, sys, shutil, time

AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
TS = time.strftime('%Y-%m-%d %H:%M')

# 以"contains → move-result → if"三行做锚点，用跳转标签区分两处
A_OLD = ('    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z\n'
         '    move-result v5\n'
         '    if-nez v5, :dsp_rng_f\n')
A_NEW = A_OLD.replace('if-nez v5, :dsp_rng_f', 'if-eqz v5, :dsp_rng_f')
B_OLD = ('    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z\n'
         '    move-result v5\n'
         '    if-nez v5, :dsp_loop\n')
B_NEW = B_OLD.replace('if-nez v5, :dsp_loop', 'if-eqz v5, :dsp_loop')


def main():
    print('=== r5c043_fix.py %s ===' % TS)
    b = AFM + '.pre_r5c043'
    if not os.path.exists(b):
        shutil.copy2(AFM, b)
        print('[BK] %s' % b.split('/')[-1])
    s = io.open(AFM, encoding='utf-8').read()
    bs = s.find('.method public static dispatchAutoIntercept(')
    be = s.find('\n.end method', bs)
    body = s[bs:be]
    for old, new, tag in ((A_OLD, A_NEW, '① 截击机圈门 if-nez → if-eqz'),
                          (B_OLD, B_NEW, '② 战斗机圈门 if-nez → if-eqz')):
        n = body.count(old)
        if n != 1:
            print('[FATAL] %s 锚点 %d 次' % (tag, n))
            sys.exit(1)
        body = body.replace(old, new, 1)
        print('[OK] %s' % tag)
    s = s[:bs] + body + s[be:]
    io.open(AFM, 'w', encoding='utf-8').write(s)
    t = io.open(AFM, encoding='utf-8').read()
    body = t[t.find('.method public static dispatchAutoIntercept('):]
    body = body[:body.find('\n.end method')]
    assert 'if-eqz v5, :dsp_rng_f' in body and 'if-eqz v5, :dsp_loop' in body
    assert 'if-nez v5, :dsp_rng_f' not in body
    print('=== 自检通过（两处均为 if-eqz）===')
    print('DONE', TS)


if __name__ == '__main__':
    main()