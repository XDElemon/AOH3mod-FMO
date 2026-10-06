#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# check_r6d177.py —— 回归门禁：口径换算必须“每雷达省只做一次”
# 血案（r6d176→r6d177）：r() 被放进 fogFromRadar 的内层省循环 ⇒ R 被反复乘 f（R→Rf→Rf²…）⇒ 归零 ⇒ 圈内也不亮
import io, re, sys
FOG = '/tmp/w3a/smali/aoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar.smali'
MIS = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
PDA = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
RBM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/RadarBitmap.smali'
MSIG = re.compile(r'\.method[^\n]*?(\w+)\(([^)]*)\)([^\n]*)\n(.*?)\.end method', re.S)

def bodies(txt):
    d = {}
    for m in MSIG.finditer(txt):
        d[m.group(1)] = (m.group(2), m.group(4))
    return d

def checks(T, M, P, R):
    fog = bodies(T); mis = bodies(M); pda = bodies(P); rbm = bodies(R)
    out = []
    b = fog.get('fogFromRadar', ('', ''))[1]
    n = b.count('AirLat;->r(II)I'); i = b.find('AirLat;->r(II)I')
    out.append(('S1 fogFromRadar 内 r() 恰好 1 次', n == 1, 'n=%d' % n))
    out.append(('S2 r() 在内层省循环(:goto_91)之前', i >= 0 and b.find(':goto_91') >= 0 and i < b.find(':goto_91'), 'i=%d loop=%d' % (i, b.find(':goto_91'))))
    out.append(('S3 r() 在 ÷iMapScale(:goto_83) 之后', i >= 0 and b.find(':goto_83') >= 0 and i > b.find(':goto_83'), ''))
    out.append(('S4 fogFromAirports 用 hit()', fog.get('fogFromAirports', ('', ''))[1].count('AirLat;->hit(IIII)Z') == 1, ''))
    d = fog.get('detectEnemyMissions', ('', ''))[1]
    out.append(('S5 detectEnemyMissions r()==2 且极性=圈内才标记',
                d.count('AirLat;->r(II)I') == 2 and 'if-eqz v0, :goto_b2' in d and 'goto/16 :cond_165' in d, ''))
    out.append(('S6 AirMission 仍有 r()', M.count('AirLat;->r(II)I') >= 1, ''))
    out.append(('S7 渲染三处未动', pda['drawAirForceRadar'][1].count('sub-int v11, v5, v6') >= 1
                and pda['drawAirForceRadarIcons'][1].count('sub-int v11, v5, v2') >= 1
                and rbm['refresh'][1].count('mul-float v12, v12, v14') == 1, ''))
    return out

def run(label, T, M, P, R, expect_fail):
    print('=== ' + label + ' ===')
    bad = 0
    for nm, ok, ex in checks(T, M, P, R):
        print(('  \u2705 ' if ok else '  \u274c ') + nm + (('  ' + ex) if ex else ''))
        if not ok: bad += 1
    print('  -> 失败项=%d' % bad)
    if expect_fail:
        print('  \u2705 负样本按预期变红' if bad > 0 else '  \u274c 负样本未变红')
        return bad > 0
    return bad == 0

T = io.open(FOG, encoding='utf-8').read(); M = io.open(MIS, encoding='utf-8').read()
P = io.open(PDA, encoding='utf-8').read(); R = io.open(RBM, encoding='utf-8').read()
ok = run('正检（当前工作树）', T, M, P, R, False)

# N1：把 r() 挪回内层循环（血案形态）
NEW = '    # r6d177: 口径换算每雷达省只做一次（放省内循环里会被反复乘 f \u21d2 R 归零、圈内也不亮）\n    invoke-static {v8, v5}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I\n\n    move-result v8\n\n'
CAL = '    invoke-static {v11, v12, v8, v13}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar;->calcInEllipse(IIII)Z\n'
INJ = '    invoke-static {v8, v5}, Laoc/kingdoms/lukasz/map/battles/AirLat;->r(II)I\n\n    move-result v8\n\n'
bad1 = T.replace(NEW, '', 1).replace(CAL, INJ + CAL, 1)
ok &= run('N1 把 r() 挪回内层循环（r6d176 血案形态）', bad1, M, P, R, True)

# N2：抽掉 hit()（机场迷雾退回裸圆口径）
bad2 = T.replace('AirLat;->hit(IIII)Z', 'PlayerFogOfWar;->calcInEllipse(IIII)Z', 1)
ok &= run('N2 抽掉 hit()（机场迷雾退回裸圆）', bad2, M, P, R, True)

print()
print('\u2705 门禁全部通过（含负样本）' if ok else '\u274c 门禁失败')
sys.exit(0 if ok else 1)
