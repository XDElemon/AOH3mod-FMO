# -*- coding: utf-8 -*-
# r6d023_ownradar.py —— 去掉"敌军飞机身上那个雷达圈"（动画保留）
#   只改 drawAircraftRadar 的可见性闸：myOrDetectedMission → isMyMission
#   动画调用点（drawAirGunFx/drawAirMissileFx）的闸保持不变
import re, sys, io
F = '/tmp/revx/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
PDA = 'Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;'
AM = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
OLD = ('    invoke-static {v2}, ' + PDA + '->myOrDetectedMission(' + AM + ')Z\n'
       '\n'
       '    move-result v1\n'
       '\n'
       '    if-eqz v1, :cond_14\n'
       '\n'
       '    iget-object v3, v2, ' + AM + '->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;\n')
NEW = ('    invoke-static {v2}, ' + PDA + '->isMyMission(' + AM + ')Z # r6d023：雷达圈只画我方飞机\n'
       '\n'
       '    move-result v1\n'
       '\n'
       '    if-eqz v1, :cond_14\n'
       '\n'
       '    iget-object v3, v2, ' + AM + '->sourceAirport:Laoc/kingdoms/lukasz/map/battles/Airport;\n')
ANIM = ('    invoke-static {v1}, ' + PDA + '->myOrDetectedMission(' + AM + ')Z\n'
        '\n'
        '    move-result v2\n'
        '\n'
        '    if-eqz v2, :cond_c\n'
        '\n'
        '    invoke-static {p0, v1}, ' + PDA + '->drawAirGunFx')
RADARFILL = 'sget v1, Laoc/kingdoms/lukasz/textures/Images;->radarFill:I'

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, s): io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    s = rd(F)
    if 'r6d023' in s:
        print('[SKIP] 已打'); return
    assert s.count(OLD) == 1, '雷达圈锚点=%d' % s.count(OLD)
    assert s.count(ANIM) == 1, '动画闸锚点=%d' % s.count(ANIM)
    s = s.replace(OLD, NEW, 1)
    wr(F, s)
    print('  [OK] drawAircraftRadar 闸：myOrDetectedMission → isMyMission')

def body(s, sig):
    i = s.find(sig)
    if i < 0: return ''
    j = s.find('.end method', i)
    return s[i:j]

def chk(src):
    fails = []
    if 'r6d023' not in src: fails.append('81-0 未打')
    d = body(src, '.method public static final drawAircraftRadar(')
    if not d: fails.append('81-1 找不到 drawAircraftRadar')
    else:
        if PDA + '->isMyMission(' not in d: fails.append('81-1 雷达圈闸不是 isMyMission')
        if PDA + '->myOrDetectedMission(' in d: fails.append('81-1 雷达圈仍用 myOrDetectedMission')
    # 动画闸：在同一文件里必须仍存在 myOrDetectedMission 的"动画"调用（后跟 drawAirGunFx / drawAirMissileFx）
    if not re.search(r'myOrDetectedMission\(' + re.escape(AM) + r'\)Z[\s\S]{0,1500}?drawAirGunFx', src):
        fails.append('81-2 敌机动画闸被破坏（drawAirGunFx 前的 myOrDetectedMission 不在）')
    if not re.search(r'myOrDetectedMission\(' + re.escape(AM) + r'\)Z[\s\S]{0,1500}?drawAirMissileFx', src):
        fails.append('81-2 敌机动画闸被破坏（drawAirMissileFx 前的 myOrDetectedMission 不在）')
    if RADARFILL not in src:
        fails.append('81-3 radarFill 绘制链缺失（我方圈被误删）')
    return fails

def gate():
    s = rd(F)
    fails = chk(s)
    neg = 0
    # 负①：把雷达圈闸改回 myOrDetectedMission
    m1 = s.replace(NEW, OLD, 1)
    if m1 != s and chk(m1): neg += 1
    # 负②：把动画闸也改成 isMyMission
    m2 = s.replace(ANIM, ANIM.replace('myOrDetectedMission', 'isMyMission'), 1)
    if m2 != s and chk(m2): neg += 1
    # 负③：删掉 radarFill
    m3 = s.replace('    ' + RADARFILL + '\n', '', 1)
    if m3 != s and chk(m3): neg += 1
    print('== 门禁 81 ==  负样本 %d/3' % neg)
    if neg != 3: fails.append('81 负样本 %d/3' % neg)
    if fails:
        print('  X 不通过：'); [print('    - ' + f) for f in fails]; return False
    print('  OK 全过'); return True

if __name__ == '__main__':
    mode = sys.argv[1] if len(sys.argv) > 1 else 'patch'
    if mode == 'patch': patch(); sys.exit(0)
    sys.exit(0 if gate() else 1)