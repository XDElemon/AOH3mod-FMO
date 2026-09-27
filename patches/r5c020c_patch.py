# -*- coding: utf-8 -*-
# R5c020c：只做 BtnMission 两处（前 7 组已写入）
import io, os, shutil
BM = '/tmp/w3a/smali/aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'
b = BM + '.pre_r5c020'
if not os.path.exists(b):
    shutil.copy2(BM, b)
t = io.open(BM, encoding='utf-8').read()

def rep1(old, new, tag):
    global t
    c = t.count(old)
    assert c == 1, '锚点不唯一: %s (count=%d)' % (tag, c)
    t = t.replace(old, new)
    print('  OK', tag)

# 8) 翻转开关：插在 missionType==1 判定之后（保留原有 mode=OFFENSIVE 两行不动，无副作用）
rep1(u'    if-ne v1, v2, :cond_59\n',
     u'    if-ne v1, v2, :cond_59\n'
     u'    # R5c020: 自动打击开关（每机场）——翻转 autoStrikeOff（按钮从此真的生效）\n'
     u'    iget-boolean v2, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z\n'
     u'    xor-int/lit8 v2, v2, 0x1\n'
     u'    iput-boolean v2, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z\n',
     '按钮=翻转开关')

# 9a) 文案分派
rep1(u'    if-eqz v0, :cond_9\n',
     u'    if-eqz v0, :cond_9\n'
     u'    # R5c020: missionType==1 = 自动打击 ⇒ 动态文案「自动打击：开/关」\n'
     u'    const/4 v5, 0x1\n'
     u'    if-ne v0, v5, :gt1\n',
     '文案分派')

# 9b) gt1 块（插在 :cond_9 标签之前）
GT1 = (u'\n'
       u'    :gt1\n'
       u'    const-string v1, "\\u81ea\\u52a8\\u6253\\u51fb\\uff1a\\u5173"\n'
       u'    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;\n'
       u'    move-result-object v2\n'
       u'    if-eqz v2, :gt1_ret\n'
       u'    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;\n'
       u'    if-eqz v3, :gt1_ret\n'
       u'    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I\n'
       u'    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;\n'
       u'    move-result-object v2\n'
       u'    if-eqz v2, :gt1_ret\n'
       u'    sget v3, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I\n'
       u'    if-ltz v3, :gt1_ret\n'
       u'    invoke-interface {v2}, Ljava/util/List;->size()I\n'
       u'    move-result v4\n'
       u'    if-ge v3, v4, :gt1_ret\n'
       u'    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;\n'
       u'    move-result-object v2\n'
       u'    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;\n'
       u'    if-eqz v2, :gt1_ret\n'
       u'    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z\n'
       u'    if-nez v2, :gt1_ret\n'
       u'    const-string v1, "\\u81ea\\u52a8\\u6253\\u51fb\\uff1a\\u5f00"\n'
       u'    :gt1_ret\n'
       u'    return-object v1\n'
       u'\n'
       u'    :cond_9\n')
rep1(u'\n    :cond_9\n', GT1, '文案 gt1 块')

io.open(BM, 'w', encoding='utf-8').write(t)
print('OK: r5c020c 完成（BtnMission 两处）')