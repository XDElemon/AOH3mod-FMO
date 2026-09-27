# -*- coding: utf-8 -*-
# r5c039_fix.py —— P1c-2：定位探针 + 可见性放宽(打我方者必见) + 修"打中立国"
#   [定位] detectEnemyMissions 内 6 个 logOnce 探针：inDE_A..F（哪道前置门放行）
#   [可见] myOrDetectedMission += "（目标省属于玩家）⇒ 可见"
#   [选靶] AFM.getEnemyProvincesInRange += DiplomacyManager.isAtWar(机场文明, 省文明) 过滤（禁打中立国）
import io, os, re, sys, shutil, time

T = '/tmp/w3a/smali'
FOW = T + '/aoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar.smali'
PDA = T + '/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
AFM = T + '/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
TS = time.strftime('%Y-%m-%d %H:%M')
SIG_DET = '.method public static detectEnemyMissions()V'


def rd(p):
    return io.open(p, encoding='utf-8').read()


def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)


def probe(key, ra, rb):
    return ['    const-string %s, "AIRDBG"' % ra, '',
            '    const-string %s, "%s"' % (rb, key), '',
            '    invoke-static {%s, %s}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->logOnce(Ljava/lang/String;Ljava/lang/String;)I' % (ra, rb),
            '']


def insert_after(lines, key, block, tag, only_in_method=None):
    """在方法体内、内容等于 key 的行之后插入 block（要求唯一命中）"""
    hits = []
    for i, l in enumerate(lines):
        if only_in_method is not None and not (only_in_method[0] <= i <= only_in_method[1]):
            continue
        if l.strip() == key:
            hits.append(i)
    if len(hits) != 1:
        print('[FATAL] %s 锚点"%s"命中 %d 次（要求 1）' % (tag, key, len(hits)))
        sys.exit(1)
    i = hits[0]
    return lines[:i + 1] + block + lines[i + 1:]


NEW_MO = u'''.method public static myOrDetectedMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z
    .registers 5

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->isMyMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v0

    if-eqz v0, :modm_chk

    const/4 v0, 0x1

    return v0

    :modm_chk
    if-eqz p0, :modm_no

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->airDetSeen:Ljava/util/HashSet;

    if-nez v1, :modm_tgt

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :modm_tgt

    const/4 v0, 0x1

    return v0

    :modm_tgt
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz v0, :modm_no

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    if-eqz v1, :modm_no

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v1, :modm_no

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :modm_no

    const/4 v0, 0x1

    return v0

    :modm_no
    const/4 v0, 0x0

    return v0
.end method
'''

AFM_ANCHOR = u'''    if-eqz v4, :cond_d

    iget v5, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-eq v4, v5, :cond_d

    if-ltz v4, :cond_d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
'''
AFM_NEW = u'''    if-eqz v4, :cond_d

    iget v5, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-eq v4, v5, :cond_d

    if-ltz v4, :cond_d

    invoke-static {v5, v4}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
'''


def main():
    print('=== r5c039_fix.py (P1c-2) %s ===' % TS)
    for p in (FOW, PDA, AFM):
        b = p + '.pre_r5c039'
        if not os.path.exists(b):
            shutil.copy2(p, b)
            print('[BK] %s' % b.split('/')[-1])
    if 'inDE_A' in rd(FOW) or 'modm_tgt' in rd(PDA):
        print('[FATAL] 已打过 r5c039')
        sys.exit(1)

    # ── [定位] 6 个探针（限定在 detectEnemyMissions 方法体内）
    s = rd(FOW)
    lines = s.split('\n')
    ms = [i for i, l in enumerate(lines) if l.startswith(SIG_DET)][0]
    me = [i for i in range(ms, len(lines)) if lines[i].startswith('.end method')][0]
    rng = (ms, me)
    plans = [
        ('if-eqz v4, :cond_176', probe('inDE_A', 'v12', 'v13'), 'inDE_A 任务非空'),
        ('if-lez v5, :cond_176', probe('inDE_B', 'v12', 'v13'), 'inDE_B 有存活机'),
        ('if-eq v5, v1, :cond_176', probe('inDE_C', 'v12', 'v13'), 'inDE_C 是敌方'),
        ('if-eqz v6, :cond_176', probe('inDE_D', 'v12', 'v13'), 'inDE_D 交战中'),
        (':cond_4f', probe('inDE_E', 'v12', 'v13'), 'inDE_E 状态=在途/执行'),
        ('if-ltz v13, :cond_176', probe('inDE_F', 'v12', 'v5'), 'inDE_F 坐标有效'),
    ]
    for key, blk, tag in plans:
        lines = insert_after(lines, key, blk, tag, only_in_method=rng)
        ms, me = rng
        me += len(blk)
        rng = (ms, me)
    wr(FOW, '\n'.join(lines))
    print('[OK] 探针 inDE_A..F 已插入')

    # ── [可见] myOrDetectedMission 重写（+ 目标省属于玩家 ⇒ 可见）
    p = rd(PDA)
    m = re.search(r'^\.method public static myOrDetectedMission\([\s\S]*?^\.end method\n', p, re.M)
    if not m:
        print('[FATAL] myOrDetectedMission 未找到')
        sys.exit(1)
    wr(PDA, p[:m.start()] + NEW_MO + p[m.end():])
    print('[OK] myOrDetectedMission 重写（含"目标是我方省⇒可见"）')

    # ── [选靶] 禁打中立国
    a = rd(AFM)
    n = a.count(AFM_ANCHOR)
    if n != 1:
        print('[FATAL] getEnemyProvincesInRange 锚点 %d 次' % n)
        sys.exit(1)
    wr(AFM, a.replace(AFM_ANCHOR, AFM_NEW, 1))
    print('[OK] getEnemyProvincesInRange += isAtWar(机场文明, 省文明)')

    # 自检
    f, pd, af = rd(FOW), rd(PDA), rd(AFM)
    for k in ('inDE_A', 'inDE_B', 'inDE_C', 'inDE_D', 'inDE_E', 'inDE_F'):
        assert f.count('"%s"' % k) == 1, k
    assert 'modm_tgt' in pd and 'iCivID' in pd
    assert af.count('DiplomacyManager;->isAtWar(II)Z') == 2, af.count('DiplomacyManager;->isAtWar(II)Z')
    print('=== 自检通过 ===')
    print('DONE', TS)


if __name__ == '__main__':
    main()