# -*- coding: utf-8 -*-
# r5c046t_fix.py —— F5（巡逻按钮真正生效：老线和平分支加 mode 门）+ F4（AI 走自己视野：智能线加 aiVis* 门）
# 基线树：/tmp/revs（＝装机 s 的反汇编）
import os, sys, hashlib
AFM = '/tmp/revs/aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
B = 'Laoc/kingdoms/lukasz/map/battles/'

def md5(p): return hashlib.md5(open(p,'rb').read()).hexdigest()

EDITS = []

# H1 新 helper a1VisOk（插在 aiVisAirportPass 之前）
EDITS.append((
'.method private static aiVisAirportPass(IIIF)Z',
'''.method private static a1VisOk(''' + B + '''Airport;II)Z
    .registers 8
    # r5c046t F4: 目标省是否"打击方自己看得见"（雷达 ∨ 机场视野，与老线 aiPickVisibleTarget 同款判据）
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)''' + B.replace('battles/', 'province/').replace('Airport;II', '') + '''Province;
    move-result-object v0
    if-eqz v0, :v_no
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I
    move-result v1
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I
    move-result v2
    const/high16 v3, 0x3f800000    # 1.0f
    invoke-static {v1, v2, p2, v3}, ''' + B + '''AirForceManager;->aiVisRadarPass(IIIF)Z
    move-result v4
    if-nez v4, :v_yes
    invoke-static {v1, v2, p2, v3}, ''' + B + '''AirForceManager;->aiVisAirportPass(IIIF)Z
    move-result v4
    if-nez v4, :v_yes
    :v_no
    const/4 v4, 0x0
    return v4
    :v_yes
    const/4 v4, 0x1
    return v4
.end method
.method private static aiVisAirportPass(IIIF)Z'''))

# F5 老线分支分叉点：插入 mode 门
EDITS.append((
'''    if-eqz v0, :cond_56

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;''',
'''    # r5c046t F5: 巡逻/打击按钮真正生效 —— 和平只巡逻、战时只打击（mode 互斥）
    iget-object v2, p1, ''' + B + '''Airport;->mode:''' + B + '''Airport$Mode;
    sget-object v3, ''' + B + '''Airport$Mode;->PATROL:''' + B + '''Airport$Mode;
    if-ne v2, v3, :t_pat
    if-eqz v0, :t_go
    return-void
    :t_pat
    if-nez v0, :t_go
    return-void
    :t_go
    if-eqz v0, :cond_56

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;'''))

# F4a a1Scan：把恒真的 0x4 门换成"AI 自己看得见"
EDITS.append((
'''    sget-object v7, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1Known:[B

    aget-byte v13, v7, v11

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_150''',
'''    # r5c046t F4: 目标必须"AI 自己看得见"（原 &0x4 门恒真＝无视野过滤）
    invoke-static {v2, v11, p0}, ''' + B + '''AirForceManager;->a1VisOk(''' + B + '''Airport;II)Z

    move-result v13

    if-eqz v13, :cond_150'''))

# F4b a1bPick：候选验收点前插入"AI 自己看得见"
EDITS.append((
'''    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v10

    if-eqz v10, :cond_83''',
'''    # r5c046t F4: 候选项必须"AI 自己看得见"
    invoke-static {p0, v4, p1}, ''' + B + '''AirForceManager;->a1VisOk(''' + B + '''Airport;II)Z

    move-result v10

    if-eqz v10, :cond_4c

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v10

    if-eqz v10, :cond_83'''))

def main():
    src = open(AFM, encoding='utf-8').read()
    before = md5(AFM)
    for i, (old, new) in enumerate(EDITS, 1):
        n = src.count(old)
        if n != 1:
            print('[FAIL] 编辑 %d 锚点命中 %d 次（要求 1）' % (i, n)); return 1
        src = src.replace(old, new, 1)
        print('[OK] 编辑 %d' % i)
    bak = AFM + '.pre_r5c046t'
    if not os.path.exists(bak):
        open(bak, 'w', encoding='utf-8').write(open(AFM, encoding='utf-8').read())
    open(AFM, 'w', encoding='utf-8').write(src)
    print('AFM md5 %s -> %s (%d B)' % (before[:12], md5(AFM)[:12], os.path.getsize(AFM)))
    return 0

if __name__ == '__main__':
    sys.exit(main())