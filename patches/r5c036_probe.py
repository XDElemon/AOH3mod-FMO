# -*- coding: utf-8 -*-
# r5c036_probe.py —— 定位批（纯探针）：钉死"有钱空机却不造"的静默早退点
#   ① Airport.p1bStat 增打 C=maxCapacity、L=level（容量从存档读，老档可能为 0）
#   ② AFM.updateAIBuildUp 增打 p1bZ = 是否到达 startBuild 调用点（机型 ordinal）
#   ③ 同行增打 p1bW = startBuild 的返回值（0=被静默拒绝，1=成功）
import io, os, shutil, sys

B = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles'
AP = B + '/Airport.smali'
AF = B + '/AirForceManager.smali'
MARK = 'r5c036 probe'


def rd(p):
    return io.open(p, encoding='utf-8').read()


def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)


def one(text, old, new, tag):
    n = text.count(old)
    assert n == 1, '%s: 锚点不唯一 (%d)' % (tag, n)
    print('  [OK] %-40s (1处)' % tag)
    return text.replace(old, new, 1)


def main():
    ap, af = rd(AP), rd(AF)
    if MARK in ap and MARK in af:
        print('r5c036 已应用（幂等退出）')
        return 0
    for f in (AP, AF):
        if not os.path.exists(f + '.pre_r5c036'):
            shutil.copy2(f, f + '.pre_r5c036')
            print('backup ->', f.split('/')[-1] + '.pre_r5c036')

    # ① p1bStat：在 T 之后插 C（容量）/ L（等级）
    anc = ('    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V\n'
           '\n'
           '    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;\n')
    add = ('    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V\n'
           '\n'
           '    # r5c036 probe: 容量（从存档读回，老档可能为 0）\n'
           '    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->maxCapacity:I\n'
           '\n'
           '    const-string v2, "C"\n'
           '\n'
           '    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag('
           'Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\n'
           '\n'
           '    move-result-object v2\n'
           '\n'
           '    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V\n'
           '\n'
           '    # r5c036 probe: 等级\n'
           '    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->level:I\n'
           '\n'
           '    const-string v2, "L"\n'
           '\n'
           '    invoke-static {p1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag('
           'Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;\n'
           '\n'
           '    move-result-object v2\n'
           '\n'
           '    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V\n'
           '\n'
           '    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;\n')
    ap = one(ap, anc, add, '① p1bStat +C/+L')

    # ② updateAIBuildUp：startBuild 之前插 p1bZ
    anc2 = ('    invoke-virtual {p1, v6}, Laoc/kingdoms/lukasz/map/battles/Airport;->startBuild('
            'Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Z\n')
    add2 = ('    # r5c036 probe: 到达 startBuild 调用点\n'
            '    const-string v8, "p1bZ"\n'
            '\n'
            '    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I\n'
            '\n'
            '    move-result v9\n'
            '\n'
            '    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V\n'
            '\n' + anc2)
    af = one(af, anc2, add2, '② updateAIBuildUp +p1bZ')

    # ③ move-result v7 之后插 p1bW（startBuild 返回值）
    anc3 = ('    move-result v7\n'
            '\n'
            '    if-eqz v7, :p1b_u_skip\n')
    add3 = ('    move-result v7\n'
            '\n'
            '    # r5c036 probe: startBuild 返回值（0=静默拒绝）\n'
            '    const-string v8, "p1bW"\n'
            '\n'
            '    invoke-static {v8, v7}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V\n'
            '\n'
            '    if-eqz v7, :p1b_u_skip\n')
    af = one(af, anc3, add3, '③ updateAIBuildUp +p1bW')

    wr(AP, ap)
    wr(AF, af)
    print('r5c036 探针完成')
    return 0


if __name__ == '__main__':
    sys.exit(main())