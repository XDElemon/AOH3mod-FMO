# -*- coding: utf-8 -*-
# r6d036_fixhop.py —— ①菜单查询异常隔离（止血闪退）②dur<=0 兜底（让飞机重新换省）
import re, sys, io
AM = '/tmp/revx/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
AMC = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'

HELPER = (
'.method private static safeEscapeMenu()Z\n'
'    .registers 3\n'
'\n'
'    # r6d036：菜单可见性查询的异常隔离（原来越界会崩整局）\n'
'    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;\n'
'\n'
'    if-eqz v0, :ssm_false\n'
'\n'
'    :try_start\n'
'    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Escape()Z\n'
'\n'
'    move-result v1\n'
'\n'
'    :try_end\n'
'    .catch Ljava/lang/Exception; {:try_start .. :try_end} :ssm_catch\n'
'    return v1\n'
'\n'
'    :ssm_false\n'
'    const/4 v1, 0x0\n'
'\n'
'    return v1\n'
'\n'
'    :ssm_catch\n'
'    const/4 v1, 0x0\n'
'\n'
'    return v1\n'
'.end method\n\n')

OLD_CALL = ('    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Escape()Z\n'
            '\n'
            '    move-result v3\n')
NEW_CALL = ('    invoke-static {}, ' + AMC + '->safeEscapeMenu()Z\n'
            '\n'
            '    move-result v3\n')

ANCH = ('    iget v12, p0, ' + AMC + '->airDivSegDurMs:I\n'
        '\n'
        '    if-lez v12, :cond_128\n')
FIXBLK = (
'    # r6d036：dur<=0 时兜底 1000ms，否则永不换省\n'
'    if-gtz v12, :ssd_ok\n'
'\n'
'    const/16 v12, 0x3e8\n'
'\n'
'    iput v12, p0, ' + AMC + '->airDivSegDurMs:I\n'
'\n'
'    :ssd_ok\n'
+ ANCH)

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    a = rd(AM)
    if 'r6d036' in a: print('[SKIP]'); return
    i = a.find('.method private updateAnimClock()V'); j = a.find('.end method', i)
    body = a[i:j]
    assert body.count(OLD_CALL) == 1, 'getVisibleInGame_Escape 调用点=%d' % body.count(OLD_CALL)
    body = body.replace(OLD_CALL, NEW_CALL, 1)
    a = a[:i] + body + a[j:]
    # 插 helper（放在 updateAnimClock 之前）
    a = a[:i] + HELPER + a[i:]
    # 换省门兜底
    k = a.find('.method public moveDivisionAlongFlight()V'); l = a.find('.end method', k)
    mbody = a[k:l]
    assert mbody.count(ANCH) == 1, '换省门锚点=%d' % mbody.count(ANCH)
    mbody = mbody.replace(ANCH, FIXBLK, 1)
    wr(AM, a[:k] + mbody + a[l:])
    print('  [OK] AirMission: +safeEscapeMenu()Z；updateAnimClock 改走它；换省门加 dur 兜底')

def dur_fix(dur):
    return 1000 if dur <= 0 else dur

def hop(anim, dur):
    d = dur_fix(dur)
    return anim >= d and d > 0

def chk():
    f = []
    a = rd(AM)
    if '.method private static safeEscapeMenu()Z' not in a: f.append('96-1 缺 safeEscapeMenu')
    h = a[a.find('.method private static safeEscapeMenu()Z'):]; h = h[:h.find('.end method')]
    if '.catch Ljava/lang/Exception;' not in h: f.append('96-1 safeEscapeMenu 无异常兜底')
    if h.count(':ssm_catch') != 2 or 'const/4 v1, 0x0' not in h: f.append('96-1 catch 分支未返回 false')
    u = a[a.find('.method private updateAnimClock()V'):]; u = u[:u.find('.end method')]
    if '->safeEscapeMenu()Z' not in u: f.append('96-2 updateAnimClock 未改走 safeEscapeMenu')
    if 'getVisibleInGame_Escape' in u: f.append('96-2 updateAnimClock 仍直调原生方法（会崩）')
    m = a[a.find('.method public moveDivisionAlongFlight()V'):]; m = m[:m.find('.end method')]
    if 'if-gtz v12, :ssd_ok' not in m: f.append('96-3 缺 dur 兜底（或极性错）')
    if 'const/16 v12, 0x3e8' not in m: f.append('96-3 兜底值未写入')
    if 'if-lez v12, :cond_128' not in m: f.append('96-3 原换省门被破坏')
    if m.count(':ssd_ok') != 2: f.append('96-3 :ssd_ok 标签数异常')
    if dur_fix(0) != 1000 or dur_fix(5000) != 5000: f.append('96A dur 兜底模拟错')
    if not hop(1000, 1000) or hop(200, 1000): f.append('96A 换省判定模拟错')
    reg = int(re.search(r'\.registers (\d+)', h).group(1))
    bad = sorted(x for x in set(int(x) for x in re.findall(r'\bv(\d+)\b', h)) if x >= reg)
    if bad: f.append('96-1 safeEscapeMenu 寄存器越界 v%s' % bad)
    return f

def gate():
    fails = chk(); neg = 0
    o = rd(AM)
    hseg = o[o.find('.method private static safeEscapeMenu()Z'):]; hseg = hseg[:hseg.find('.end method')]
    wr(AM, o.replace(hseg, hseg.replace('    .catch Ljava/lang/Exception; {:try_start .. :try_end} :ssm_catch\n', '', 1), 1))
    if chk(): neg += 1
    mseg = o[o.find('.method public moveDivisionAlongFlight()V'):]; mseg = mseg[:mseg.find('.end method')]
    wr(AM, o.replace(mseg, mseg.replace('    if-gtz v12, :ssd_ok\n', '    if-lt v12, :ssd_ok\n', 1), 1))
    if chk(): neg += 1
    wr(AM, o.replace(hseg, hseg, 1))
    us = o[o.find('.method private updateAnimClock()V'):]; us = us[:us.find('.end method')]
    wr(AM, o.replace(us, us.replace('    invoke-static {}, ' + AMC + '->safeEscapeMenu()Z\n',
                                    '    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;\n\n    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Escape()Z\n', 1), 1))
    if chk(): neg += 1
    wr(AM, o)
    print('== 门禁 96 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('96 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + x) for x in fails]; return False
    print('  OK 全过（含 dur 兜底/换省模拟器）'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)