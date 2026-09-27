# -*- coding: utf-8 -*-
# r5c038_fix.py —— P1c：AI 出动可见性
#   C1  新增 AFM.curAirRealX / curAirRealY（Real 域插值坐标，纯函数），替换 detectEnemyMissions 的"当前省"门
#   C2  新增 ProvinceDrawArmy.myOrDetectedMission（己方 ∨ 已侦测），替换 2 处渲染门的调用目标
# 纪律：锚点唯一 + 防重复 + 不动 .registers；每个 invoke 后紧跟其 move-result
import io, os, re, sys, shutil, time

T = '/tmp/w3a/smali'
AFM = T + '/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
FOW = T + '/aoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar.smali'
PDA = T + '/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
TS = time.strftime('%Y-%m-%d %H:%M')

NEW_AFM = u'''
.method public static curAirRealX(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 7

    if-eqz p0, :carx_bad

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz v0, :carx_bad

    if-ltz v1, :carx_bad

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v2, :carx_bad

    if-eqz v3, :carx_bad

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v0

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I

    move-result v1

    sub-int v1, v1, v0

    int-to-float v1, v1

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v5, v2, :carx_go

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    :carx_go
    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int v0, v0, v1

    return v0

    :carx_bad
    const/4 v0, -0x1

    return v0
.end method

.method public static curAirRealY(Laoc/kingdoms/lukasz/map/battles/AirMission;)I
    .registers 7

    if-eqz p0, :cary_bad

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->sourceProvinceID:I

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    if-ltz v0, :cary_bad

    if-ltz v1, :cary_bad

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v2, :cary_bad

    if-eqz v3, :cary_bad

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v0

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I

    move-result v1

    sub-int v1, v1, v0

    int-to-float v1, v1

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->flightProgress:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->state:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;->RETURNING:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;

    if-ne v5, v2, :cary_go

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    :cary_go
    mul-float v1, v1, v4

    float-to-int v1, v1

    add-int v0, v0, v1

    return v0

    :cary_bad
    const/4 v0, -0x1

    return v0
.end method
'''

NEW_PDA = u'''
.method public static myOrDetectedMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z
    .registers 5

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->isMyMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z

    move-result v0

    if-eqz v0, :modm_chk

    const/4 v0, 0x1

    return v0

    :modm_chk
    if-eqz p0, :modm_no

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->airDetSeen:Ljava/util/HashSet;

    if-eqz v1, :modm_no

    iget-wide v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->missionID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :modm_no
    const/4 v0, 0x0

    return v0
.end method
'''

# ── C1：侦测门替换（正则，容忍空行分布差异；锚点含 if-ltz v5, :cond_176 ⇒ 全树唯一）
FOW_RE = re.compile(
    r'    iget v5, v4, [^\n]*airDivisionAtProvinceID:I\n'
    r'    if-ltz v5, :cond_176\n'
    r'\n'
    r'    invoke-static \{v5\}, [^\n]*Game;->getProvince\(I\)[^\n]*\n'
    r'\n'
    r'    move-result-object v12\n'
    r'\n'
    r'    if-eqz v12, :cond_176\n'
    r'\n'
    r'    invoke-virtual \{v12\}, [^\n]*getCenterX_Real\(\)I\n'
    r'\n'
    r'    move-result v13\n'
    r'\n'
    r'    invoke-virtual \{v12\}, [^\n]*getCenterY_Real\(\)I\n'
    r'\n'
    r'    move-result v14\n'
)
FOW_NEW = (u'    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->curAirRealX(Laoc/kingdoms/lukasz/map/battles/AirMission;)I\n'
           u'\n'
           u'    move-result v13\n'
           u'\n'
           u'    invoke-static {v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->curAirRealY(Laoc/kingdoms/lukasz/map/battles/AirMission;)I\n'
           u'\n'
           u'    move-result v14\n'
           u'\n'
           u'    if-ltz v13, :cond_176\n')

ISMY_A = u'    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->isMyMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z'
ISMY_B = u'    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->isMyMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z'
MYOR_A = u'    invoke-static {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->myOrDetectedMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z'
MYOR_B = u'    invoke-static {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->myOrDetectedMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z'


def rd(p):
    return io.open(p, encoding='utf-8').read()


def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)


def rep_once(path, old, new, tag):
    s = rd(path)
    n = s.count(old)
    if n != 1:
        print('[FATAL] %s 锚点出现 %d 次（要求 1）' % (tag, n))
        sys.exit(1)
    wr(path, s.replace(old, new, 1))
    print('[OK] %s' % tag)


def append_methods(path, blob, marker, tag):
    s = rd(path)
    if marker in s:
        print('[SKIP] %s 已存在' % tag)
        return
    if not s.endswith('\n'):
        s += '\n'
    wr(path, s + blob)
    print('[OK] %s（EOF 追加）' % tag)


def main():
    print('=== r5c038_fix.py (P1c) %s ===' % TS)
    # 备份
    for p in (AFM, FOW, PDA):
        b = p + '.pre_r5c038'
        if not os.path.exists(b):
            shutil.copy2(p, b)
            print('[BK] %s' % b.split('/')[-1])
    # 防重复
    if 'curAirRealX' in rd(AFM) or 'myOrDetectedMission' in rd(PDA):
        print('[FATAL] 已打过 r5c038 补丁')
        sys.exit(1)

    # ── C1
    s = rd(FOW)
    n = len(FOW_RE.findall(s))
    if n != 1:
        print('[FATAL] C1 侦测门锚点匹配 %d 次（要求 1）' % n)
        sys.exit(1)
    io.open(FOW, 'w', encoding='utf-8').write(FOW_RE.sub(FOW_NEW.replace('\\', '\\\\'), s, count=1))
    print('[OK] C1 侦测门 → curAirRealX/Y')
    append_methods(AFM, NEW_AFM, 'curAirRealX', 'C1 AFM.curAirRealX/curAirRealY')

    # ── C2
    append_methods(PDA, NEW_PDA, 'myOrDetectedMission', 'C2 PDA.myOrDetectedMission')
    rep_once(PDA, ISMY_A, MYOR_A, 'C2 主层门(1949) → myOrDetectedMission')
    rep_once(PDA, ISMY_B, MYOR_B, 'C2 雷达层门(2994) → myOrDetectedMission')

    # ── 自检
    afm, pda, fow = rd(AFM), rd(PDA), rd(FOW)
    assert afm.count('.method public static curAirRealX(') == 1
    assert afm.count('.method public static curAirRealY(') == 1
    assert pda.count('->myOrDetectedMission(') == 3, pda.count('->myOrDetectedMission(')  # 1 定义 + 2 调用
    assert pda.count('->isMyMission(') == 2, pda.count('->isMyMission(')                  # 1 定义 + 1 helper 内调用
    assert 'airDivisionAtProvinceID:I\n\n    if-ltz v5, :cond_176' not in fow
    assert fow.count('curAirRealX(') == 1 and fow.count('curAirRealY(') == 1
    print('=== 自检通过 ===')
    print('DONE', TS)


if __name__ == '__main__':
    main()