#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
r6d161 —— 陆军一列 / 飞机一列

现象（用户实测）：战争省份里陆军师多时，空军师被排到图标列很深处（j=12 ⇒ sy=392px），
飞机贴图看起来"跑到别的省份"。根因：Province.updateArmyPosY() 里陆军与空军**共用同一个 j 槽位计数**。

修法：
  A1  Province.updateArmyPosY()  : 新增 jAir(v5)，key 以 "airhq_" 开头的师用它算 iShiftY，陆军原逻辑不动
  A2  ArmyDivision.defaultShiftX() : 空军师返回值 +0x38(+56px) —— 写在这里，所有写入者(iShiftX)自动带上
  A3  AirPosProbe.up(I)          : 加 ax=（空军师 iShiftX）取证
"""
import os
import shutil

ROOT = '/tmp/w3a/smali/'
BATCH = 'r6d161'
REVX = '/tmp/revx/'
PROV = ROOT + 'aoc/kingdoms/lukasz/map/province/Province.smali'
ARMY = ROOT + 'aoc/kingdoms/lukasz/map/army/ArmyDivision.smali'
PROBE = ROOT + 'aoc/kingdoms/lukasz/map/battles/AirPosProbe.smali'

BAD = []


def rd(p):
    return open(p, encoding='utf-8').read()


def wr(p, s):
    open(p, 'w', encoding='utf-8').write(s)


def backup(p):
    b = p + '.pre_' + BATCH
    if not os.path.exists(b):
        shutil.copy2(p, b)
        print('  备份 ->', b)
    os.makedirs(REVX, exist_ok=True)
    shutil.copy2(p, REVX + os.path.basename(p) + '.pre_' + BATCH)


def rep(path, old, new, tag, expect=1):
    """替换（幂等：若 new 已在且 old 不在，视为已应用）"""
    s = rd(path)
    c = s.count(old)
    if c == 0 and s.count(new) >= 1:
        print('  [%s] 已应用，跳过' % tag)
        return
    if c != expect:
        BAD.append('%s: 锚点命中 %d（应 %d）' % (tag, c, expect))
        print('  [%s] ✗ 锚点命中 %d（应 %d）' % (tag, c, expect))
        return
    wr(path, s.replace(old, new, 1))
    print('  [%s] ✓' % tag)


# ================= A1  Province.updateArmyPosY =================
rep(PROV,
    '.method public final updateArmyPosY()V\n    .registers 6\n',
    '.method public final updateArmyPosY()V\n    .registers 7\n',
    'A1a 寄存器 6->7')

S_SPAN_OLD = '''    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirPosProbe;->up(I)V

    const/4 v0, 0x0

    .local v0, "i":I

    const/4 v1, 0x0

    .local v1, "j":I'''

S_SPAN_NEW = S_SPAN_OLD + '''

    const/4 v5, 0x0

    .local v5, "jAir":I'''
rep(PROV, S_SPAN_OLD, S_SPAN_NEW, 'A1b jAir 初始化')

F_OLD = '''    check-cast v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    mul-int v3, v3, v1'''

AIR = '''    # === r6d161：空军师与陆军错开（空军用自己的槽位计数 v5）===
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v3, :r6d161_ground

    const-string v4, "airhq_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :r6d161_ground

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v3

    mul-int v3, v3, v5

    mul-int/lit8 v4, v5, 0x2

    add-int/2addr v3, v4

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY:I

    invoke-static {p0, v2, v0, v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->upyPr(Laoc/kingdoms/lukasz/map/province/Province;Laoc/kingdoms/lukasz/map/army/ArmyDivision;III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :r6d161_ground
    # === r6d161 end ===
''' + F_OLD
rep(PROV, F_OLD, AIR, 'A1c 空军独立槽位')

# ================= A2  ArmyDivision.defaultShiftX =================
D_OLD = '''.method public final defaultShiftX()I
    .registers 2

    .line 390
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyWidth(I)I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method'''

D_NEW = '''.method public final defaultShiftX()I
    .registers 4

    .line 390
    iget v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyWidth:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyWidth(I)I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    # === r6d161：空军师横向另起一列（右移 56px）===
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    if-eqz v1, :r6d161_done

    const-string v2, "airhq_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :r6d161_done

    const/16 v1, 0x38

    add-int/2addr v0, v1

    :r6d161_done
    # === r6d161 end ===
    return v0
.end method'''
rep(ARMY, D_OLD, D_NEW, 'A2 空军横向列')

# ================= A3  AirPosProbe.up：ax= 取证 =================
P1_OLD = '''    const/4 v12, 0x0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;'''
P1_NEW = '''    const/4 v12, 0x0
    const/4 v13, 0x0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;'''
rep(PROBE, P1_OLD, P1_NEW, 'A3a v13 置零')

P2_OLD = '''    iget v3, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I
'''
P2_NEW = '''    iget v3, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftY_Scaled:I

    iget v13, v6, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iShiftX:I
'''
rep(PROBE, P2_OLD, P2_NEW, 'A3b 采 ax')

P3_OLD = '''    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mx="'''
P3_NEW = '''    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ax="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mx="'''
rep(PROBE, P3_OLD, P3_NEW, 'A3c 写 ax')

print()
if BAD:
    print('❌ 有锚点未命中，未完成：')
    for b in BAD:
        print('  -', b)
    raise SystemExit(1)

# 备份只在全部成功时做（避免半成品备份）
for p in (PROV, ARMY, PROBE):
    backup(p)
print('✅ r6d161 三处编辑完成')
