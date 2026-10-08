#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# r6d139: 修 AirDefense 的极性/口径错误（含审查 E1–E4 + 自查出 4 处同类反向）
import io, shutil, sys

P = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/AirDefense.smali'
shutil.copyfile(P, P + '.pre_r6d139')
txt = io.open(P, encoding='utf-8').read()

# 助记符语义（Dalvik）：if-ltz=vA<0 跳；if-gez=vA>=0 跳；if-gtz=vA>0 跳；if-lez=vA<=0 跳
FIX = [
    # E1 airDefenseAt：AAA id 未解析(<0) 才应早退
    ('    sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I\n\n    if-gez v2, :ret',
     '    sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I\n\n    if-ltz v2, :ret'),

    # fireProvince：炮数 <=0 才退（原 if-gtz = 有炮就退，反）
    ('    move-result v0\n\n    if-gtz v0, :ret\n\n    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince',
     '    move-result v0\n\n    if-lez v0, :ret\n\n    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince'),

    # tick：省份 id <0 才跳过（原 if-gez = 有效省反而跳过）
    ('    move-result v3\n\n    if-gez v3, :next\n\n    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->fireProvince(II)V',
     '    move-result v3\n\n    if-ltz v3, :next\n\n    invoke-static {p0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDefense;->fireProvince(II)V'),

    # fireAtMission：命中 需 rnd < chance ⇒ 只有 rnd>=chance 才跳走
    ('    cmpl-float v7, v7, v6\n\n    if-ltz v7, :snext',
     '    cmpl-float v7, v7, v6\n\n    if-gez v7, :snext'),

    # fireAtMission：hp<=0 才击落（原 if-gtz = 还活着就标死）
    ('    cmpl-float v10, v10, v9\n\n    if-gtz v10, :kill',
     '    cmpl-float v10, v10, v9\n\n    if-lez v10, :kill'),

    # fireAtMission：命中数为 0 才不写日志（原 if-gtz = 有命中反而不写）
    ('    :done\n\n    if-gtz v3, :ret\n\n    invoke-virtual {p1}',
     '    :done\n\n    if-lez v3, :ret\n\n    invoke-virtual {p1}'),

    # inRange：位置未知(<0) 才 false
    ('    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I\n\n    if-gez v0, :no',
     '    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I\n\n    if-ltz v0, :no'),

    # inRange：同省 ⇒ true
    ('    if-ne v0, v2, :hit', '    if-eq v0, v2, :hit'),

    # inRange：d² > 300² ⇒ false（原 if-le = 在射程内反而 false）
    ('    if-le v4, v5, :no', '    if-gt v4, v5, :no'),

    # pickAlive：size<=0 才返回 null（原 if-gtz = 有飞机反而返回 null）
    ('    move-result v2\n\n    if-gtz v2, :null',
     '    move-result v2\n\n    if-lez v2, :null'),
]

fail = []
for old, new in FIX:
    n = txt.count(old)
    if n != 1:
        fail.append('命中 %d 次（应为 1）: %s' % (n, old.strip().splitlines()[-1]))
        continue
    txt = txt.replace(old, new, 1)

if fail:
    print('❌ 未应用：')
    for f in fail:
        print('   ' + f)
    sys.exit(1)

io.open(P, 'w', encoding='utf-8').write(txt)
print('✅ 已修 %d 处（备份 %s）' % (len(FIX), P + '.pre_r6d139'))

# 复核：这些"反向"写法不应再出现
bad = {
    'airDefenseAt 反向守卫': 'sget v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->AAA_BUILDING_ID:I\n\n    if-gez',
    'tick 反向守卫': 'if-gez v3, :next',
    'pickAlive 反向守卫': 'if-gtz v2, :null',
    '击杀反向': 'if-gtz v10, :kill',
    '命中口径反向': 'if-ltz v7, :snext',
}
for k, v in bad.items():
    print(('   OK  ' if v not in txt else '   BAD ') + k)