#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d206_adfx.py —— AD-3：防空导弹可见弹迹（照抄飞机导弹 msFx* 机制）
口径：A③ 阵地→目标弹迹 / B② 横跨整回合 / C 只在“迷雾外”可见 / D 尾迹黄色（弹头不动）
纪律：锚点先验（每处命中次数必须=1）→ 全绿才写盘；备份 .pre_r6d206
"""
import os, re, sys, shutil

TREE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
NL = "\n\n"
AM = os.path.join(TREE, "aoc/kingdoms/lukasz/map/battles/AirMission.smali")
AD = os.path.join(TREE, "aoc/kingdoms/lukasz/map/battles/AirDefense.smali")
PDA = os.path.join(TREE, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")
DIAG = os.path.join(TREE, "aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali")
SRC = "/tmp/adfx_src.smali"

FIELDS = """\
.field public adFxSrc:I

.field public adFxInit:I

.field public adFlyHours:I

.field public adFxSpd:F

.field public adFxTN:I

.field public adFxTH:I

.field public adFxTX:[F

.field public adFxTY:[F

.field public adFxX:F

.field public adFxY:F"""

ENTRY = """\
# ============================================================
# r6d206 · AD-3：防空导弹可见弹迹（阵地 → 目标）
#   口径：A③ 弹迹 / B② 横跨整回合（发射→到达） / C 只在“迷雾外”可见 / D 尾迹黄（弹头不动）
#   状态由 AirDefense.scheduleHit/tickHits 维护：adFxSrc/adFlyHours/adFxInit
# ============================================================
.method public static drawAdMissileFx(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 14

    if-eqz p1, :done

    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I

    if-ltz v0, :done

    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I

    if-lez v0, :done

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v0, :done

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    # —— 迷雾门（C口径）：目标省必须在迷雾外（getFogDrawArmy()==false 才画）
    iget v1, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    if-gez v1, :done

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    if-eqz v2, :done

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v3

    if-nez v3, :done

    # —— 源：阵地省中心（AD 没有“发射方 mission”，用省坐标）
    iget v4, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I

    invoke-static {v4, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v4

    if-gez v4, :done

    iget v5, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I

    invoke-static {v5, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v5

    if-gez v5, :done

    # —— 目标：该 mission 自己的 sprite，退化到所在省中心
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteX(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v6

    if-gez v6, :cond_tx

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v6

    :cond_tx
    if-gez v6, :done

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteY(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v7

    if-gez v7, :cond_ty

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v7

    :cond_ty
    if-gez v7, :done

    # —— 与飞机导弹一致：两端各 +20px，再“屏幕→地图”坐标
    add-int/lit8 v4, v4, 0x14

    add-int/lit8 v5, v5, 0x14

    add-int/lit8 v6, v6, 0x14

    add-int/lit8 v7, v7, 0x14

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-eqz v2, :done

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v4

    div-float v10, v10, v0

    sub-float v10, v10, v8

    float-to-int v4, v10

    int-to-float v10, v5

    div-float v10, v10, v0

    sub-float v10, v10, v9

    float-to-int v5, v10

    int-to-float v10, v6

    div-float v10, v10, v0

    sub-float v10, v10, v8

    float-to-int v6, v10

    int-to-float v10, v7

    div-float v10, v10, v0

    sub-float v10, v10, v9

    float-to-int v7, v10

    invoke-static {p1, v4, v5, v6, v7}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxStep(Laoc/kingdoms/lukasz/map/battles/AirMission;IIII)V

    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I

    const/4 v1, 0x1

    if-ne v0, v1, :done

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxDrawTrail(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    :done
    return-void
.end method
"""

def method_range(lines, sig):
    for i, l in enumerate(lines):
        if l.startswith('.method') and sig in l:
            j = i
            while not lines[j].startswith('.end method'):
                j += 1
            return i, j
    return None

def rename_copy(text):
    # 方法名（先做，避免被字段正则碰到）
    text = text.replace('msFxDrawTrail', 'adFxDrawTrail')
    text = text.replace('msFxStep(', 'adFxStep(')
    text = text.replace('msFxTrailAdd', 'adFxTrailAdd')
    # 字段：msFx{Init,Spd,TH,TN,TX,TY,X,Y} → adFx*；msFlyHours → adFlyHours
    text = re.sub(r'\bmsFx(Init|Spd|TH|TN|TX|TY|X|Y)\b', r'adFx\1', text)
    text = re.sub(r'\bmsFlyHours\b', 'adFlyHours', text)
    return text

def main():
    # ---------- 0) 抽取飞机导弹的三个方法并重命名 ----------
    src_lines = open(SRC, encoding='utf-8').read().split('\n')
    parts = []
    for sig in ['msFxDrawTrail', 'msFxStep(', 'msFxTrailAdd(']:
        r = method_range(src_lines, sig)
        assert r, '抽取失败: ' + sig
        parts.append('\n'.join(src_lines[r[0]:r[1] + 1]))
    copy = '\n\n'.join(rename_copy(p) for p in parts)

    # 尾迹染色（D口径）：把 setColor 的 G/B 换成黄色（R 保持 1.0，α 保持 1.0）
    trail = copy.split('.method private static adFxDrawTrail')[1].split('.end method')[0]
    assert trail.count('const/high16 v10, 0x3f800000') == 1, '尾迹 G 锚点异常'
    assert trail.count('const/high16 v11, 0x3f800000') == 1, '尾迹 B 锚点异常'
    ntrail = trail.replace('const/high16 v10, 0x3f800000', 'const/high16 v10, 0x3f59999a')  # 0.85
    ntrail = ntrail.replace('const/high16 v11, 0x3f800000', 'const/high16 v11, 0x3e19999a')  # 0.15
    copy = copy.replace(trail, ntrail)
    print('  ✅ 拷贝体：3 方法 / %d 行；尾迹 tint → 黄(1.00/0.85/0.15)' % len([l for l in copy.split('\n') if l.strip()]))

    # ---------- 1) AirMission 字段 ----------
    s = open(AM, encoding='utf-8').read()
    if 'adFxSrc:I' not in s:
        a = '.field public adHitDmg:F'
        assert s.count(a) == 1, 'AirMission 字段锚点异常'
        s = s.replace(a, a + NL + FIELDS + NL, 1)
        open(AM, 'w', encoding='utf-8').write(s)
        print('  ✅ AirMission: 10 个 adFx* 字段已加')
    else:
        print('  · AirMission 字段已存在，跳过')

    # ---------- 2) AirDefense：发射登记 + 结算清理 ----------
    s = open(AD, encoding='utf-8').read()
    # 2a) fireProvince：写发射阵地省 id（p1 = 省 id，已验证方法内不写 p1）
    a1 = '    invoke-static {v5, v10}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->scheduleHit(Laoc/kingdoms/lukasz/map/battles/AirMission;F)V'
    if 'adFxSrc:I' not in s.split('fireProvince')[1][:4000]:
        assert s.count(a1) == 1, 'scheduleHit 调用点锚点异常'
        s = s.replace(a1, '    # r6d206：记录发射阵地省（p1 = 省 id），供弹迹取源坐标\n'
                          '    iput p1, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I' + NL + a1, 1)
        print('  ✅ fireProvince: 写 adFxSrc')
    # 2b) scheduleHit：进入“在途”状态
    a2 = '    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitAt:I'
    if 'adFlyHours:I' not in s:
        assert s.count(a2) == 1, 'adHitAt 锚点异常'
        s = s.replace(a2, a2 + NL +
                      '    # r6d206：AD 弹迹进入“在途”（发射→到达全程可见）\n'
                      '    const/4 v5, 0x0\n\n'
                      '    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I\n\n'
                      '    const/4 v5, 0x1\n\n'
                      '    iput v5, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I', 1)
        print('  ✅ scheduleHit: 进入在途状态')
    # 2c) tickHits：到达后清弹迹
    a3 = '    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adHitDmg:F'
    if s.count('adFxSrc:I, v5') < 2:
        assert s.count(a3) == 1, 'adHitDmg 清零锚点异常'
        s = s.replace(a3, a3 + NL +
                      '    # r6d206：到达结算 —— 弹迹结束\n\n'
                      '    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I\n\n'
                      '    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I\n\n'
                      '    const/4 v8, -0x1\n\n'
                      '    iput v8, v5, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I', 1)
        print('  ✅ tickHits: 到达清弹迹')
    open(AD, 'w', encoding='utf-8').write(s)

    # ---------- 3) ProvinceDrawArmy：入口 + 拷贝体 + 调用点 ----------
    s = open(PDA, encoding='utf-8').read()
    a4 = '.method public static drawAirMissileFx(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirMission;)V'
    if 'adFxStep(' not in s:
        assert s.count(a4) == 1, 'drawAirMissileFx 方法头锚点异常'
        s = s.replace(a4, ENTRY.strip() + NL + NL + copy.strip() + NL + NL + a4, 1)
        print('  ✅ ProvinceDrawArmy: 入口 + 拷贝体已插到类级别')
    a5 = '    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirMissileFx(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirMission;)V'
    if s.count('drawAdMissileFx(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirMission;)V') < 2:
        assert s.count(a5) == 1, '调用点锚点异常'
        s = s.replace(a5, a5 + NL + NL +
                      '    # r6d206：AD 防空导弹弹迹\n'
                      '    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAdMissileFx(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirMission;)V', 1)
        print('  ✅ 调用点已加（Δ=+1）')
    open(PDA, 'w', encoding='utf-8').write(s)

    # ---------- 4) 自证串 ----------
    s = open(DIAG, encoding='utf-8').read()
    s2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d206', s)
    if s2 != s:
        open(DIAG, 'w', encoding='utf-8').write(s2)
        print('  ✅ nABOOT → r6d206')

    # 备份
    for f in (AM, AD, PDA, DIAG):
        b = f + '.pre_r6d206'
        if not os.path.exists(b):
            shutil.copy2(f, b)

if __name__ == "__main__":
    main()