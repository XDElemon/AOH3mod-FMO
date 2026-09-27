# -*- coding: utf-8 -*-
# r5c046m_fix.py —— F1：轰炸机（BOMBER）不再计入空战火力；攻击机/战斗机/截击机保留
#   依据《调研_r5c046_轰炸机打飞机_v3定稿.md》：H1 helper + L1/L2 循环守卫 + G1 放宽 v11 门
import os, sys, hashlib
AM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirMission.smali'
B  = 'Laoc/kingdoms/lukasz/map/battles/'

def md5(p): return hashlib.md5(open(p,'rb').read()).hexdigest()

EDITS = [
# H1 helper
('.method private static agilityMul(' + B + 'AirMission;)F',
 '''.method private static a1ShootAir(''' + B + '''AirUnit;)Z
    .registers 3
    # r5c046m F1: 该机能否"对空开火"（轰炸机=false；战斗机/截击机/攻击机=true）
    iget-object v0, p0, ''' + B + '''AirUnit;->type:''' + B + '''AirUnit$AirType;
    sget-object v1, ''' + B + '''AirUnit$AirType;->BOMBER:''' + B + '''AirUnit$AirType;
    if-eq v0, v1, :p3b_no
    const/4 v0, 0x1
    return v0
    :p3b_no
    const/4 v0, 0x0
    return v0
.end method
.method private static agilityMul(''' + B + '''AirMission;)F'''),
# L1 我方火力循环
('''    iget v14, v0, ''' + B + '''AirUnit;->airAttack:F
    add-float/2addr v10, v14
    add-int/lit8 v4, v4, 0x1
    goto :act_m1''',
 '''    iget v14, v0, ''' + B + '''AirUnit;->airAttack:F
    invoke-static {v0}, ''' + B + '''AirMission;->a1ShootAir(''' + B + '''AirUnit;)Z
    move-result v12
    if-eqz v12, :act_m1x    # r5c046m F1: 轰炸机不计入我方火力
    add-float/2addr v10, v14
    :act_m1x
    add-int/lit8 v4, v4, 0x1
    goto :act_m1'''),
# L2 敌方火力循环（还击）
('''    iget v14, v0, ''' + B + '''AirUnit;->airAttack:F
    add-float/2addr v11, v14
    add-int/lit8 v4, v4, 0x1
    goto :act_e1''',
 '''    iget v14, v0, ''' + B + '''AirUnit;->airAttack:F
    invoke-static {v0}, ''' + B + '''AirMission;->a1ShootAir(''' + B + '''AirUnit;)Z
    move-result v12
    if-eqz v12, :act_e1x    # r5c046m F1: 轰炸机不再"还击"
    add-float/2addr v11, v14
    :act_e1x
    add-int/lit8 v4, v4, 0x1
    goto :act_e1'''),
# G1 放宽 v11 门（否则纯轰炸任务免疫我方攻击）
('''    cmpl-float v1, v11, v0
    if-lez v1, :act_ret''',
 '''    # r5c046m F1: 放宽"敌方必须能还击"的门（v11<=0 时仍允许我方开火）'''),
]

def main():
    src = open(AM, encoding='utf-8').read()
    before = md5(AM)
    for i, (old, new) in enumerate(EDITS, 1):
        n = src.count(old)
        if n != 1:
            print('[FAIL] 编辑 %d 锚点命中 %d 次（要求 1）' % (i, n)); return 1
        src = src.replace(old, new, 1)
        print('[OK] 编辑 %d' % i)
    open(AM, 'w', encoding='utf-8').write(src)
    print('AirMission.smali md5 %s -> %s  (%d B)' % (before[:12], md5(AM)[:12], os.path.getsize(AM)))
    return 0

if __name__ == '__main__':
    sys.exit(main())