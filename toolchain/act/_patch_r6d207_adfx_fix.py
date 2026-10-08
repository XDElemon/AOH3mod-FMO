#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""_patch_r6d207_adfx_fix.py —— 修 AD-3 弹迹不显示
根因：airDivisionAtProvinceID 对飞行中的 mission = -1（创建即 -1，起飞后 -1）
      ⇒ 旧入口第⑤道守卫 if-gez v1,:done 把飞行目标全挡掉 ⇒ 弹迹从不绘制
修法：① 目标坐标：先 getAirSpriteX/Y，失败才退回省（省>=0 才退，否则退）
      ② 迷雾门：目标省>=0 判目标省；否则判发射省（adFxSrc）
      ③ 新增探针 adFxDbg（限 8 行）：nADZ s= f= p= sx= sy=
"""
import os, re, sys, shutil

TREE = sys.argv[1] if len(sys.argv) > 1 else "/tmp/w3a/smali"
NL = "\n\n"
PDA = os.path.join(TREE, "aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali")
DIAG = os.path.join(TREE, "aoc/kingdoms/lukasz/map/battles/AirDefDiag.smali")

NEW_ENTRY = """\
# ============================================================
# r6d206/r6d207 · AD-3：防空导弹可见弹迹（阵地 → 目标）
#   r6d207 修：飞行中的 mission airDivisionAtProvinceID=-1 ⇒ 不得要求“在省里”
#   口径：A③ 弹迹 / B② 横跨整回合 / C 迷雾外可见 / D 尾迹黄（弹头不动）
# ============================================================
.method public static drawAdMissileFx(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirMission;)V
    .registers 16

    if-eqz p1, :done

    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I

    if-ltz v0, :done

    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I

    if-lez v0, :done

    # r6d207 探针（限 8 行）：进入即记录 src/fly/prov/spriteX/spriteY
    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I

    iget v3, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFlyHours:I

    iget v4, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteX(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v5

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteY(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxDbg(IIIII)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    if-eqz v0, :done

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    # —— 目标省（飞行中为 -1，允许）
    iget v1, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->airDivisionAtProvinceID:I

    # —— 目标 x：先 sprite，失败才退回省
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteX(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v6

    if-gez v6, :tx_prov

    goto :tx_ok

    :tx_prov
    if-ltz v1, :done

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v6

    if-gez v6, :done

    :tx_ok
    # —— 目标 y：同上
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirSpriteY(Laoc/kingdoms/lukasz/map/battles/AirMission;)I

    move-result v7

    if-gez v7, :ty_prov

    goto :ty_ok

    :ty_prov
    if-ltz v1, :done

    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v7

    if-gez v7, :done

    :ty_ok
    # —— 迷雾门（C口径）：目标省未知（飞行中）时判发射省
    if-ltz v1, :fog_t

    iget v3, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I

    goto :fog_go

    :fog_t
    move v3, v1

    :fog_go
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    if-eqz v4, :fog_ok

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v5

    if-nez v5, :done

    :fog_ok
    # —— 源：阵地省中心
    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I

    invoke-static {v2, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosX(IF)I

    move-result v8

    if-gez v8, :done

    iget v2, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxSrc:I

    invoke-static {v2, v0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getAirDrawPosY(IF)I

    move-result v9

    if-gez v9, :done

    # —— 两端各 +20px（与飞机导弹一致）
    add-int/lit8 v8, v8, 0x14

    add-int/lit8 v9, v9, 0x14

    add-int/lit8 v6, v6, 0x14

    add-int/lit8 v7, v7, 0x14

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    if-eqz v4, :done

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v8

    div-float v11, v11, v0

    sub-float v11, v11, v5

    float-to-int v8, v11

    int-to-float v11, v9

    div-float v11, v11, v0

    sub-float v11, v11, v10

    float-to-int v9, v11

    int-to-float v11, v6

    div-float v11, v11, v0

    sub-float v11, v11, v5

    float-to-int v6, v11

    int-to-float v11, v7

    div-float v11, v11, v0

    sub-float v11, v11, v10

    float-to-int v7, v11

    invoke-static {p1, v8, v9, v6, v7}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxStep(Laoc/kingdoms/lukasz/map/battles/AirMission;IIII)V

    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/AirMission;->adFxInit:I

    const/4 v1, 0x1

    if-ne v0, v1, :done

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adFxDrawTrail(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/map/battles/AirMission;)V

    :done
    return-void
.end method
"""

DBG = """\
# ============================================================
# r6d207 · AD-3 探针（限 8 行）：nADZ s=src f=flyHours p=provID sx= spriteX sy= spriteY
# ============================================================
.method public static adFxDbg(IIIII)V
    .registers 13

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adDbgN:I

    const/16 v1, 0x8

    if-ge v0, v1, :skip

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nADZ s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " f="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " p="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adDbgN:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->adDbgN:I

    :skip
    return-void
.end method
"""

def main():
    s = open(PDA, encoding='utf-8').read()
    # 1) 字段 adDbgN
    if 'adDbgN:I' not in s:
        a = '.field public static adBmp'
        if s.count(a) == 1:
            s = s.replace(a, '.field public static adDbgN:I' + NL + a, 1)
        else:  # 退而求其次：插在第一个 .method 之前
            i = s.find('.method')
            s = s[:i] + '.field public static adDbgN:I' + NL + NL + s[i:]
        print('  ✅ 字段 adDbgN 已加')
    # 2) 探针方法
    if 'adFxDbg(IIIII)V' not in s:
        a2 = '.method public static drawAdMissileFx('
        assert s.count(a2) == 1, 'drawAdMissileFx 锚点异常'
        s = s.replace(a2, DBG.strip() + NL + NL + a2, 1)
        print('  ✅ 探针 adFxDbg 已加')
    # 3) 替换入口方法
    i = s.find('.method public static drawAdMissileFx(')
    j = s.find('.end method', i)
    assert i != -1 and j != -1, '入口方法范围异常'
    old = s[i:j + len('.end method')]
    s = s[:i] + NEW_ENTRY.strip() + s[j + len('.end method'):]
    print('  ✅ 入口已替换（r6d207 修：不要求目标在省）')
    shutil.copy2(PDA, PDA + '.pre_r6d207')
    open(PDA, 'w', encoding='utf-8').write(s)

    # 4) 自证串
    d = open(DIAG, encoding='utf-8').read()
    d2 = re.sub(r'nABOOT v=r6d\d+', 'nABOOT v=r6d207', d)
    if d2 != d:
        open(DIAG, 'w', encoding='utf-8').write(d2)
        print('  ✅ nABOOT → r6d207')

if __name__ == "__main__":
    main()