# -*- coding: utf-8 -*-
# R5c020b：改用「单行唯一锚点 + 插入」写法（这些文件指令间有空行，多行锚点不可靠）
import io, os, shutil

R = '/tmp/w3a/smali/'
AF = R + 'aoc/kingdoms/lukasz/map/battles/Airport.smali'
FM = R + 'aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
SA = R + 'aoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport.smali'
SG = R + 'aoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager.smali'
LG = R + 'aoc/kingdoms/lukasz/jakowski/SaveLoad/LoadSavedGameManager.smali'
BM = R + 'aoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission.smali'

def load(p):
    b = p + '.pre_r5c020'
    if not os.path.exists(b):
        shutil.copy2(p, b)
    return io.open(p, encoding='utf-8').read()

def rep1(t, old, new, tag):
    c = t.count(old)
    assert c == 1, '锚点不唯一: %s (count=%d)' % (tag, c)
    print('  OK', tag)
    return t.replace(old, new)

t = load(AF)
t = rep1(t, u'.field public totalLost:I\n',
         u'.field public totalLost:I\n\n'
         u'# R5c020: 自动打击开关（每机场）。反向语义：false=开启（旧档/新建机场默认 false ⇒行为不变）\n'
         u'.field public autoStrikeOff:Z\n',
         'Airport 字段')
t = rep1(t, u'    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->prefPayload:I\n',
         u'    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->prefPayload:I\n'
         u'    # R5c020: 此处 v0 仍为 0 ⇒ autoStrikeOff=false（=开启）\n'
         u'    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z\n',
         'Airport 构造器默认值')
io.open(AF, 'w', encoding='utf-8').write(t)

t = load(FM)
t = rep1(t, u'    if-eqz v2, :bs_ap_next\n',
         u'    if-eqz v2, :bs_ap_next\n'
         u'    # R5c020: 自动打击开关（每机场，攻击机线）——关掉则跳过该机场（只影响新派发）\n'
         u'    iget-boolean v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z\n'
         u'    if-nez v3, :bs_ap_next\n',
         'a1bScan 攻击机线门')
t = rep1(t, u'    if-eqz v2, :sc_ap_next\n',
         u'    if-eqz v2, :sc_ap_next\n'
         u'    # R5c020: 自动打击开关（每机场，轰炸线）——关掉则跳过该机场（借 v4，随后即被覆盖）\n'
         u'    iget-boolean v4, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z\n'
         u'    if-nez v4, :sc_ap_next\n',
         'a1Scan 轰炸线门')
io.open(FM, 'w', encoding='utf-8').write(t)

t = load(SA)
t = rep1(t, u'.field public totalLost:I\n',
         u'.field public totalLost:I\n\n'
         u'# R5c020: 自动打击开关（反向语义，见 Airport.autoStrikeOff）\n'
         u'.field public autoStrikeOff:Z\n',
         'Save_Airport 字段')
io.open(SA, 'w', encoding='utf-8').write(t)

t = load(SG)
t = rep1(t, u'    iput v8, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->prefPayload:I\n',
         u'    iput v8, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->prefPayload:I\n'
         u'    # R5c020: 自动打击开关\n'
         u'    iget-boolean v8, v6, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z\n'
         u'    iput-boolean v8, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->autoStrikeOff:Z\n',
         '存档写出')
io.open(SG, 'w', encoding='utf-8').write(t)

t = load(LG)
t = rep1(t, u'    iput v12, v11, Laoc/kingdoms/lukasz/map/battles/Airport;->prefPayload:I\n',
         u'    iput v12, v11, Laoc/kingdoms/lukasz/map/battles/Airport;->prefPayload:I\n'
         u'    # R5c020: 自动打击开关\n'
         u'    iget-boolean v12, v7, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Airport;->autoStrikeOff:Z\n'
         u'    iput-boolean v12, v11, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z\n',
         '读档读入')
io.open(LG, 'w', encoding='utf-8').write(t)

t = load(BM)
# 8) 保留原“设 mode=OFFENSIVE”两行不动（它本来就等于默认值、无副作用），在其后插入翻转逻辑
t = rep1(t, u'    iput-object v2, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;\n',
         u'    iput-object v2, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;\n'
         u'    # R5c020: 自动打击开关（每机场）——翻转 autoStrikeOff（按钮从此真的生效）\n'
         u'    iget-boolean v2, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z\n'
         u'    xor-int/lit8 v2, v2, 0x1\n'
         u'    iput-boolean v2, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z\n',
         '按钮=翻转开关')
# 9) 动态文案：先插分派，再把 :gt1 块插到 :cond_9 之前
t = rep1(t, u'    if-eqz v0, :cond_9\n',
         u'    if-eqz v0, :cond_9\n'
         u'    # R5c020: missionType==1 = 自动打击 ⇒ 动态文案「自动打击：开/关」\n'
         u'    const/4 v5, 0x1\n'
         u'    if-ne v0, v5, :gt1\n',
         '文案分派')
GT1 = (u'\n'
       u':gt1\n'
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
       u':gt1_ret\n'
       u'    return-object v1\n'
       u'\n'
       u'    :cond_9\n')
t = rep1(t, u'\n    :cond_9\n', GT1, '文案 gt1 块')
io.open(BM, 'w', encoding='utf-8').write(t)

print('OK: r5c020b 完成（9 组）')