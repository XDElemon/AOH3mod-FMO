#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d150：给所有"可能画部队/停靠飞机"的路径入口打"谁在跑"计数器探针。
- 探针方法 hit1()..hit6() 无参（调用点不需要任何寄存器 ⇒ 插入零风险）
- 每 60 次记一条：nHIT k=<编号>  （走 dWrite）
- 采集一轮后，我们就知道真正生效的是哪条绘制路径，再对那条加"位置明细"探针。
"""
import re

POS = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'
PDA = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'

# ---------- 1) 生成 hit1..hit6 ----------
t = open(POS, encoding='utf-8').read()
NEW = []
for k in range(1, 7):
    NEW.append('''
.method public static hit%d()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x3c

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->ok(I)Z

    move-result v0

    if-nez v0, :end

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->sb()Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "nHIT k=%d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->w(Ljava/lang/StringBuilder;)V

    :end

    return-void
.end method
''' % k)
t = t + ''.join(NEW)
open(POS, 'w', encoding='utf-8').write(t)
print('已加 hit1..hit6')

# ---------- 2) 在候选绘制方法入口插入探针 ----------
d = open(PDA, encoding='utf-8').read()

CAND = [
    ('.method public static final drawAirForce(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V', 1),
    ('.method public static final drawAirportIcons(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V', 2),
    ('.method public static final drawAirForceBuildingIcons(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V', 3),
    ('.method public static final drawProvinceArmyWithFlag(II)V', 4),
    ('.method public static final drawProvinceArmy_Units(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILcom/badlogic/gdx/graphics/Color;F)V', 5),
    ('.method private static final drawProvincesArmy_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V', 6),
]
for header, k in CAND:
    i = d.find(header)
    assert i >= 0, '找不到 ' + header
    eol = d.index('\n', i)
    ins = '\n\n    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->hit%d()V' % k
    assert ('hit%d()V' % k) not in d[i:i + 3000], '该处已插过'
    d = d[:eol] + ins + d[eol:]
    print('已插入 hit%d ->' % k, header.split()[-1])
open(PDA, 'w', encoding='utf-8').write(d)