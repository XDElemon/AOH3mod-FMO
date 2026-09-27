# -*- coding: utf-8 -*-
# r5c046r_fix.py —— 只改 InGame_AirForceOptions$BtnMission：
#   R1 pickAirport 整段替换为带参新版（省反查不再被空列表短路）
#   R2 3 处调用点改为 pickAirport(I)（1=按键侧 / 2=显示侧）
#   R3 afp:mt（机型） R4 afp:strike new=（翻转结果） R5 afp:done（收尾）
# 依据：r6s5/调研_r5c046r_按键全链探针_v3定稿.md
import sys, os, hashlib

BTN_REL = 'aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'
BTN = 'Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;'
AIR = 'Laoc/kingdoms/lukasz/map/battles/Airport;'
AFM = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
DBG = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
PLR = 'Laoc/kingdoms/lukasz/jakowski/Player/Player;'
GAME = 'Laoc/kingdoms/lukasz/jakowski/Game;'
OPT = 'Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;'

INV_OLD = 'invoke-static {}, ' + BTN + '->pickAirport()' + AIR
INV_NEW = 'invoke-static {%s}, ' + BTN + '->pickAirport(I)' + AIR

PICK_NEW = [
    '.method public static pickAirport(I)' + AIR,
    '    .registers 8',
    '',
    '    sget-object v0, ' + GAME + '->player:' + PLR,
    '    if-eqz v0, :pn_f1',
    '',
    '    invoke-static {}, ' + AFM + '->getInstance()' + AFM,
    '    move-result-object v1',
    '    if-eqz v1, :pn_f2',
    '',
    '    iget v0, v0, ' + PLR + '->iCivID:I',
    '    invoke-virtual {v1, v0}, ' + AFM + '->getAirportsForCiv(I)Ljava/util/List;',
    '    move-result-object v3',
    '',
    '    const/4 v2, 0x0',
    '    if-eqz v3, :pn_nolist',
    '',
    '    invoke-interface {v3}, Ljava/util/List;->size()I',
    '    move-result v2',
    '    :pn_nolist',
    '    if-lez v2, :pn_noid',
    '',
    '    sget v4, ' + OPT + '->iActiveID:I',
    '    if-ltz v4, :pn_noid',
    '',
    '    if-lt v4, v2, :pn_noid',
    '',
    '    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;',
    '    move-result-object v4',
    '    check-cast v4, ' + AIR,
    '    return-object v4',
    '    :pn_noid',
    '    iget v4, v1, ' + AFM + '->selectedAirportProvinceID:I',
    '    if-ltz v4, :pn_nosp',
    '',
    '    invoke-virtual {v1, v4}, ' + AFM + '->getAirportByProvinceID(I)' + AIR,
    '    move-result-object v5',
    '    if-eqz v5, :pn_nosp',
    '',
    '    const/4 v6, 0x2',
    '    goto :pn_ok',
    '    :pn_nosp',
    '    sget v4, ' + GAME + '->iActiveProvince:I',
    '    if-ltz v4, :pn_noap',
    '',
    '    invoke-virtual {v1, v4}, ' + AFM + '->getAirportByProvinceID(I)' + AIR,
    '    move-result-object v5',
    '    if-eqz v5, :pn_noap',
    '',
    '    const/4 v6, 0x3',
    '    goto :pn_ok',
    '    :pn_noap',
    '    if-lez v2, :pn_f9',
    '',
    '    const/4 v4, 0x0',
    '    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;',
    '    move-result-object v5',
    '    check-cast v5, ' + AIR,
    '    const/4 v6, 0x4',
    '    :pn_ok',
    '    const/4 v0, 0x1',
    '    if-ne p0, v0, :pn_ret',
    '',
    '    const-string v0, "afp:src"',
    '    mul-int/lit8 v4, p0, 0xa',
    '    add-int v4, v4, v6',
    '    invoke-static {v0, v4}, ' + DBG + '->e5i(Ljava/lang/String;I)V',
    '    :pn_ret',
    '    return-object v5',
    '    :pn_f1',
    '    const/4 v6, 0x1',
    '    goto :pn_fail',
    '    :pn_f2',
    '    const/4 v6, 0x2',
    '    goto :pn_fail',
    '    :pn_f9',
    '    const/16 v6, 0x9',
    '    :pn_fail',
    '    const-string v0, "afp:n"',
    '    mul-int/lit8 v4, p0, 0xa',
    '    add-int v4, v4, v6',
    '    invoke-static {v0, v4}, ' + DBG + '->e5i(Ljava/lang/String;I)V',
    '    const/4 v5, 0x0',
    '    return-object v5',
    '.end method',
]


def load(p):
    return open(p, encoding='utf-8').read().split('\n')


def save(p, l):
    open(p, 'w', encoding='utf-8').write('\n'.join(l))


def mrange(bl, header):
    s = None
    for i, x in enumerate(bl):
        if x.startswith(header):
            s = i
            break
    if s is None:
        return None, None
    for j in range(s + 1, len(bl)):
        if bl[j].startswith('.end method'):
            return s, j
    return None, None


def main():
    root = sys.argv[1] if len(sys.argv) > 1 else '/tmp/w3a/smali'
    P = os.path.join(root, BTN_REL)
    bl = load(P)
    m0 = hashlib.md5(open(P, 'rb').read()).hexdigest()

    # ---------- R1：整段替换 pickAirport ----------
    s, e = mrange(bl, '.method public static pickAirport(')
    if s is None:
        print('[FAIL] R1 找不到 pickAirport')
        return 1
    bl[s:e + 1] = PICK_NEW
    print('[OK] R1 pickAirport 已替换为带参新版（%d 行）' % len(PICK_NEW))

    # ---------- R2：3 处调用点 ----------
    hits = [i for i, x in enumerate(bl) if INV_OLD in x]
    if len(hits) != 3:
        print('[FAIL] R2 调用点命中 %d（要求 3）' % len(hits))
        return 1
    n = 0
    for i in hits:
        reg = None
        for t in range(i + 1, i + 4):
            if 'move-result-object' in bl[t]:
                reg = bl[t].split()[-1]
                break
        if reg is None:
            print('[FAIL] R2 第 %d 个调用点后找不到 move-result-object' % (n + 1))
            return 1
        who = '0x1' if reg == 'v0' else '0x2'
        bl[i] = '    const/4 %s, %s\n    ' % (reg, who) + (INV_NEW % reg)
        n += 1
    print('[OK] R2 %d 处调用点已改为 pickAirport(I)' % n)

    # ---------- R3：afp:mt（机型） ----------
    k = None
    for i, x in enumerate(bl):
        if ('->e5i(Ljava/lang/String;I)V' in x) and ('{v2, v1}' in x):
            k = i
            break
    if k is None:
        print('[FAIL] R3 找不到 afp:press 探针')
        return 1
    bl[k + 1:k + 1] = ['', '    const-string v2, "afp:mt"',
                       '    iget v1, p0, ' + BTN + '->missionType:I',
                       '    invoke-static {v2, v1}, ' + DBG + '->e5i(Ljava/lang/String;I)V']
    print('[OK] R3 afp:mt')

    # ---------- R4：afp:strike new=（翻转结果） ----------
    k = None
    for i, x in enumerate(bl):
        if 'iput-boolean v2, v0, ' + AIR + '->autoStrikeOff:Z' in x:
            k = i
            break
    if k is None:
        print('[FAIL] R4 找不到 autoStrikeOff 写入点')
        return 1
    bl[k + 1:k + 1] = ['', '    const-string v1, "afp:strike new="',
                       '    invoke-static {v1, v2}, ' + DBG + '->e5i(Ljava/lang/String;I)V']
    print('[OK] R4 afp:strike new=')

    # ---------- R5：afp:done（收尾） ----------
    k = None
    for i, x in enumerate(bl):
        if 'MenuManager;->rebuildInGame_AirForce()V' in x:
            k = i
            break
    if k is None:
        print('[FAIL] R5 找不到 rebuildInGame_AirForce 调用')
        return 1
    bl[k:k] = ['    const-string v1, "AIRDBG"', '',
               '    const-string v2, "afp:done"', '',
               '    invoke-static {v1, v2}, ' + DBG + '->dKey(Ljava/lang/String;Ljava/lang/String;)I', '']
    print('[OK] R5 afp:done')

    save(P, bl)
    # ---------- 后置断言 ----------
    t = '\n'.join(load(P))
    checks = [
        ('.method public static pickAirport(I)' + AIR in t, 'R1 带参签名'),
        (t.count('->pickAirport(I)') == 3, 'R2 调用点 3 个'),
        ('afp:src' in t and 'afp:n' in t, 'R1 失败/来源探针'),
        ('afp:mt' in t, 'R3 afp:mt'),
        ('afp:strike new=' in t, 'R4 翻转探针'),
        ('afp:done' in t, 'R5 收尾探针'),
        ('afp:ent' in t and 'afp:press ap=' in t, '保留 q 批探针'),
    ]
    bad = [n for ok, n in checks if not ok]
    if bad:
        print('[FAIL] 后置断言失败：%s' % '; '.join(bad))
        return 1
    print('[OK] 全部后置断言通过')
    print('%s md5 %s -> %s' % (os.path.basename(BTN_REL), m0, hashlib.md5(open(P, 'rb').read()).hexdigest()))
    return 0


if __name__ == '__main__':
    sys.exit(main())