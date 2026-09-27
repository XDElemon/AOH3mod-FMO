# -*- coding: utf-8 -*-
# r5c042_fix.py —— 自动拦截判读探针（只加探针，不改逻辑）
#   助手 AFM.dspLogAp(String,Airport) → "AIRDBG: <tag> ap=<省> ta=<总机数> dp=<在飞数>"
#   ① nDSPTc 入口计数（e5i）      → 与 nDSPT0 对比：多少次被前置闸门（省无效/已有chaser/4h重试窗）吃掉
#   ② nDSPT4 "无可用机"出口       → ta/dp 区分「没机」「全在忙」「机型不符」
#   ③ nDSPT8 选中机场时           → 若始终不出现 ⇒ 排除法判定为「超程」
#   注：本方法 p0=v15（参数），临时寄存器只能用 v8/v9（三处插入点均为死）
import io, os, sys, shutil, time

AFM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
TS = time.strftime('%Y-%m-%d %H:%M')

HELPER = u'''
.method public static dspLogAp(Ljava/lang/String;Laoc/kingdoms/lukasz/map/battles/Airport;)V
    .registers 5

    if-eqz p1, :dla_ret

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraftDeployed:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "AIRDBG"

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :dla_ret
    return-void
.end method
'''

A_OLD = '    const/4 v5, 0x0\n    sput v5, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dspTried:I\n'
A_NEW = A_OLD + ('    const-string v8, "nDSPTc"\n    const/4 v9, 0x1\n'
                 '    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V\n')

B_OLD = '    :dsp_noplane\n    const/4 v5, 0x0\n'
B_NEW = B_OLD + ('    const-string v8, "nDSPT4"\n'
                 '    invoke-static {v8, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dspLogAp(Ljava/lang/String;Laoc/kingdoms/lukasz/map/battles/Airport;)V\n')

C_OLD = '    move v13, v5\n    move-object v14, v7\n'
C_NEW = C_OLD + ('    const-string v8, "nDSPT8"\n'
                 '    invoke-static {v8, v7}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->dspLogAp(Ljava/lang/String;Laoc/kingdoms/lukasz/map/battles/Airport;)V\n')


def main():
    print('=== r5c042_fix.py %s ===' % TS)
    b = AFM + '.pre_r5c042'
    if not os.path.exists(b):
        shutil.copy2(AFM, b)
        print('[BK] %s' % b.split('/')[-1])
    s = io.open(AFM, encoding='utf-8').read()
    if 'dspLogAp' in s:
        print('[FATAL] 已打过 r5c042')
        sys.exit(1)
    bs = s.find('.method public static dispatchAutoIntercept(')
    be = s.find('\n.end method', bs)
    body = s[bs:be]
    for old, new, tag in ((A_OLD, A_NEW, '① 入口计数 nDSPTc'),
                          (B_OLD, B_NEW, '② 无可用机 nDSPT4'),
                          (C_OLD, C_NEW, '③ 选中机场 nDSPT8')):
        n = body.count(old)
        if n != 1:
            print('[FATAL] %s 锚点 %d 次' % (tag, n))
            sys.exit(1)
        body = body.replace(old, new, 1)
        print('[OK] %s' % tag)
    s = s[:bs] + body + s[be:]
    if not s.endswith('\n'):
        s += '\n'
    s += HELPER
    io.open(AFM, 'w', encoding='utf-8').write(s)
    print('[OK] 助手 dspLogAp（EOF 追加）')
    t = io.open(AFM, encoding='utf-8').read()
    for k in ('"nDSPTc"', '"nDSPT4"', '"nDSPT8"'):
        assert t.count(k) == 1, k
    assert t.count('.method public static dspLogAp(') == 1
    assert t.count('->dspLogAp(') == 2
    print('=== 自检通过 ===')
    print('DONE', TS)


if __name__ == '__main__':
    main()