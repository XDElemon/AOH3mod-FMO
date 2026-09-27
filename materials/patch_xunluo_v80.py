# -*- coding: utf-8 -*-
# 巡逻模式（ICBM 式）v80b 补丁 —— 面板保持 4 键，不新增按钮
# 用法: python3 patch_xunluo_v80b.py <smali根目录>

import re, sys, io, os
import sys
BASE = sys.argv[1] if len(sys.argv)>1 else '/root/work/smali'
ROOT = os.path.join(BASE,'aoc/kingdoms/lukasz')
AFM=os.path.join(ROOT,'map/battles/AirForceManager.smali')
QUICK=os.path.join(ROOT,'menusInGame/AirForce/InGame_AirForceQuick.smali')
BTN=os.path.join(ROOT,'menusInGame/AirForce/InGame_AirForceQuick$BtnCmd.smali')
P='aoc/kingdoms/lukasz'

def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p,s): io.open(p,'w',encoding='utf-8').write(s)
def one(src, pat, what):
    m=re.findall(pat, src, re.S)
    if len(m)!=1: raise SystemExit('锚点不唯一/未找到: %s -> %d 处'%(what,len(m)))
    return True

# ---------- 1. AirForceManager: tryPatrolForAirport 整体替换 ----------
src=rd(AFM)
old=re.search(r'\.method private tryPatrolForAirport\(.*?\.end method\n', src, re.S)
if not old: raise SystemExit('未找到 tryPatrolForAirport')
new_try = '''.method private tryPatrolForAirport(L{P}/map/battles/Airport;Ljava/util/Random;)V
    .registers 8

    sget-object v0, L{P}/jakowski/Game;->player:L{P}/jakowski/Player/Player;

    if-eqz v0, :cond_ptend

    iget v0, v0, L{P}/jakowski/Player/Player;->iCivID:I

    iget v1, p1, L{P}/map/battles/Airport;->civID:I

    if-ne v0, v1, :cond_ptend

    iget-object v0, p1, L{P}/map/battles/Airport;->mode:L{P}/map/battles/Airport$Mode;

    sget-object v1, L{P}/map/battles/Airport$Mode;->PATROL:L{P}/map/battles/Airport$Mode;

    if-ne v0, v1, :cond_ptend

    const/4 v2, 0x0

    invoke-direct {{p0, p1, v2}}, L{P}/map/battles/AirForceManager;->hasActivePatrol(L{P}/map/battles/Airport;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ptend

    invoke-virtual {{p2}}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_ptend

    sget-object v2, L{P}/map/battles/AirUnit$AirType;->FIGHTER:L{P}/map/battles/AirUnit$AirType;

    invoke-virtual {{p0, p1, v2}}, L{P}/map/battles/AirForceManager;->getRandomBorderProvince(L{P}/map/battles/Airport;L{P}/map/battles/AirUnit$AirType;)I

    move-result v0

    if-ltz v0, :cond_ptend

    const/4 v2, 0x0

    invoke-static {{p1, v0, v2}}, L{P}/map/battles/AirMission;->createPatrol(L{P}/map/battles/Airport;ILjava/lang/String;)L{P}/map/battles/AirMission;

    move-result-object v1

    iget-object v2, v1, L{P}/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {{v2}}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ptend

    iget-object v2, p0, L{P}/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {{v2, v1}}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "AIRDBG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {{v3}}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pt:go:tgt="

    invoke-virtual {{v3, v4}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {{v3, v0}}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {{v3}}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {{v2, v3}}, L{P}/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ptend
    return-void
.end method
'''.format(P=P)
src = src[:old.start()] + new_try + src[old.end():]

# ---------- 2. getRandomBorderProvince: 拆成 1 参包装 + 2 参本体 ----------
m=re.search(r'\.method public getRandomBorderProvince\(L'+re.escape(P)+r'/map/battles/Airport;\)I.*?\.end method\n', src, re.S)
if not m: raise SystemExit('未找到 getRandomBorderProvince')
body=m.group(0)
# 本体：改签名 + 用 p2 替换 FIGHTER 常量
core=body.replace(
 '.method public getRandomBorderProvince(L%s/map/battles/Airport;)I'%P,
 '.method public getRandomBorderProvince(L%s/map/battles/Airport;L%s/map/battles/AirUnit$AirType;)I'%(P,P))
core=core.replace('''    sget-object v0, L%s/map/battles/AirUnit$AirType;->FIGHTER:L%s/map/battles/AirUnit$AirType;

    invoke-virtual {p0, p1, v0}, L%s/map/battles/AirForceManager;->getProvincesInRange('''%(P,P,P),
'''    invoke-virtual {p0, p1, p2}, L%s/map/battles/AirForceManager;->getProvincesInRange('''%P)
if 'FIGHTER' in core: raise SystemExit('FIGHTER 常量未被替换')
core=core.replace('.param p1, "airport"    # L%s/map/battles/Airport;'%P,
                  '.param p1, "airport"    # L%s/map/battles/Airport;\n    .param p2, "type"    # L%s/map/battles/AirUnit$AirType;'%(P,P))
wrapper='''.method public getRandomBorderProvince(L{P}/map/battles/Airport;)I
    .registers 3

    sget-object v0, L{P}/map/battles/AirUnit$AirType;->FIGHTER:L{P}/map/battles/AirUnit$AirType;

    invoke-virtual {{p0, p1, v0}}, L{P}/map/battles/AirForceManager;->getRandomBorderProvince(L{P}/map/battles/Airport;L{P}/map/battles/AirUnit$AirType;)I

    move-result v0

    return v0
.end method

'''.format(P=P)
src = src[:m.start()] + wrapper + core + src[m.end():]

# ---------- 3. 追加 toggleAirportPatrol / startDivisionPatrol ----------
extra='''

.method public toggleAirportPatrol(I)I
    .registers 5

    invoke-virtual {{p0, p1}}, L{P}/map/battles/AirForceManager;->getAirportByProvinceID(I)L{P}/map/battles/Airport;

    move-result-object v0

    if-eqz v0, :cond_tapfail

    iget-object v1, v0, L{P}/map/battles/Airport;->mode:L{P}/map/battles/Airport$Mode;

    sget-object v2, L{P}/map/battles/Airport$Mode;->PATROL:L{P}/map/battles/Airport$Mode;

    if-ne v1, v2, :cond_tapon

    sget-object v2, L{P}/map/battles/Airport$Mode;->OFFENSIVE:L{P}/map/battles/Airport$Mode;

    iput-object v2, v0, L{P}/map/battles/Airport;->mode:L{P}/map/battles/Airport$Mode;

    const/4 v3, 0x0

    return v3

    :cond_tapon
    sget-object v2, L{P}/map/battles/Airport$Mode;->PATROL:L{P}/map/battles/Airport$Mode;

    iput-object v2, v0, L{P}/map/battles/Airport;->mode:L{P}/map/battles/Airport$Mode;

    const/4 v3, 0x1

    return v3

    :cond_tapfail
    const/4 v3, -0x1

    return v3
.end method

.method public startDivisionPatrol(Ljava/lang/String;I)I
    .registers 9

    invoke-virtual {{p0, p2}}, L{P}/map/battles/AirForceManager;->getAirportByProvinceID(I)L{P}/map/battles/Airport;

    move-result-object v0

    if-eqz v0, :cond_sdpfail

    invoke-direct {{p0, v0, p1}}, L{P}/map/battles/AirForceManager;->hasActivePatrol(L{P}/map/battles/Airport;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_sdpbusy

    invoke-static {{p1}}, L{P}/map/province/ProvinceDrawArmy;->getKeyOrd(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v2, :cond_sdpt1

    sget-object v2, L{P}/map/battles/AirUnit$AirType;->INTERCEPTOR:L{P}/map/battles/AirUnit$AirType;

    goto :goto_sdptype

    :cond_sdpt1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_sdpt2

    sget-object v2, L{P}/map/battles/AirUnit$AirType;->BOMBER:L{P}/map/battles/AirUnit$AirType;

    goto :goto_sdptype

    :cond_sdpt2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_sdpt3

    sget-object v2, L{P}/map/battles/AirUnit$AirType;->ATTACKER:L{P}/map/battles/AirUnit$AirType;

    goto :goto_sdptype

    :cond_sdpt3
    sget-object v2, L{P}/map/battles/AirUnit$AirType;->FIGHTER:L{P}/map/battles/AirUnit$AirType;

    :goto_sdptype
    invoke-virtual {{p0, v0, v2}}, L{P}/map/battles/AirForceManager;->getRandomBorderProvince(L{P}/map/battles/Airport;L{P}/map/battles/AirUnit$AirType;)I

    move-result v3

    if-ltz v3, :cond_sdpfail

    invoke-static {{v0, v3, p1}}, L{P}/map/battles/AirMission;->createPatrol(L{P}/map/battles/Airport;ILjava/lang/String;)L{P}/map/battles/AirMission;

    move-result-object v4

    iget-object v5, v4, L{P}/map/battles/AirMission;->assignedAircraft:Ljava/util/List;

    invoke-interface {{v5}}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_sdpnoair

    iget-object v5, p0, L{P}/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {{v5, v4}}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v5, L{P}/jakowski/Game;->gameThread:L{P}/jakowski/GameThreads/GameThread;

    if-eqz v5, :cond_sdpplay

    const/4 v6, 0x1

    iput-boolean v6, v5, L{P}/jakowski/GameThreads/GameThread;->play:Z

    :cond_sdpplay
    const-string v5, "AIRDBG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {{v6}}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pt:div:tgt="

    invoke-virtual {{v6, v7}}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {{v6, v3}}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {{v6}}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {{v5, v6}}, L{P}/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_sdpnoair
    const/4 v3, -0x3

    return v3

    :cond_sdpbusy
    const/4 v3, -0x2

    return v3

    :cond_sdpfail
    const/4 v3, -0x1

    return v3
.end method
'''.format(P=P)
src = src.rstrip('\n') + '\n' + extra
wr(AFM, src)
print('[1/3] AirForceManager.smali 已改：tryPatrolForAirport / getRandomBorderProvince(×2) / toggleAirportPatrol / startDivisionPatrol')



BTN = os.path.join(ROOT,'menusInGame/AirForce/InGame_AirForceQuick$BtnCmd.smali')

src=rd(BTN)
m=re.search(r'\.method public actionElement\(\)V.*?\.end method\n', src, re.S)
if not m: raise SystemExit('未找到 actionElement')
new='''.method public actionElement()V
    .registers 8

    iget v0, p0, L{P}/menu_element/Icon;->id:I

    sget-object v1, L{P}/jakowski/Game;->menuManager:L{P}/menu/MenuManager;

    if-eqz v1, :cond_qend

    const/4 v2, 0x0

    if-eq v0, v2, :cond_strike

    const/4 v2, 0x1

    if-eq v0, v2, :cond_divpat

    const/4 v2, 0x2

    if-eq v0, v2, :cond_ret

    const-string v2, "\\u5df2\\u53d6\\u6d88\\u9009\\u4e2d"

    invoke-virtual {{v1, v2}}, L{P}/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    const-string v2, "AIRDBG"

    const-string v3, "quk:cxl"

    invoke-static {{v2, v3}}, L{P}/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {{}}, L{P}/jakowski/Game;->clearActiveArmy()V

    const/4 v2, -0x1

    invoke-static {{v2}}, L{P}/jakowski/Game;->setActiveProvinceID(I)V

    :cond_qend
    return-void

    :cond_strike
    sget-object v2, L{P}/jakowski/Game;->activeArmy:Ljava/util/List;

    if-eqz v2, :cond_nodiv

    invoke-interface {{v2}}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_nodiv

    const/4 v3, 0x0

    invoke-interface {{v2, v3}}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L{P}/jakowski/Game$HoveredArmy;

    if-eqz v2, :cond_nodiv

    iget-object v3, v2, L{P}/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    if-eqz v3, :cond_nodiv

    iget v4, v2, L{P}/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ltz v4, :cond_nodiv

    const/4 v5, 0x1

    sput v5, L{P}/map/battles/AirForceManager;->pendingMissionMode:I

    invoke-static {{}}, L{P}/map/battles/AirForceManager;->getInstance()L{P}/map/battles/AirForceManager;

    move-result-object v5

    if-eqz v5, :cond_nodiv

    iput v4, v5, L{P}/map/battles/AirForceManager;->selectedAirportProvinceID:I

    sput v4, L{P}/jakowski/Game;->iActiveProvince:I

    const/4 v5, 0x1

    sput-boolean v5, L{P}/jakowski/Game;->chooseProvinceMode:Z

    const/4 v5, 0x0

    sput v5, L{P}/menusInGame/Province/InGame_ProvinceArmy;->chooseProvinceExtraY:I

    const-string v5, "\\u70b9\\u9009\\u76ee\\u6807\\u7701\\u4efd"

    invoke-virtual {{v1, v5}}, L{P}/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    const-string v5, "AIRDBG"

    const-string v6, "quk:stk"

    invoke-static {{v5, v6}}, L{P}/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_divpat
    sget-object v2, L{P}/jakowski/Game;->activeArmy:Ljava/util/List;

    if-eqz v2, :cond_nodiv

    invoke-interface {{v2}}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_nodiv

    const/4 v3, 0x0

    invoke-interface {{v2, v3}}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L{P}/jakowski/Game$HoveredArmy;

    if-eqz v2, :cond_nodiv

    iget-object v3, v2, L{P}/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    if-eqz v3, :cond_nodiv

    iget v4, v2, L{P}/jakowski/Game$HoveredArmy;->iProvinceID:I

    if-ltz v4, :cond_nodiv

    invoke-static {{}}, L{P}/map/battles/AirForceManager;->getInstance()L{P}/map/battles/AirForceManager;

    move-result-object v5

    if-eqz v5, :cond_nodiv

    invoke-virtual {{v5, v3, v4}}, L{P}/map/battles/AirForceManager;->startDivisionPatrol(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_patfail

    const-string v6, "\\u5df2\\u8fdb\\u5165\\u5de1\\u903b"

    invoke-virtual {{v1, v6}}, L{P}/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    return-void

    :cond_patfail
    const-string v6, "\\u65e0\\u6cd5\\u5de1\\u903b\\uff1a\\u65e0\\u53ef\\u7528\\u6218\\u673a\\u6216\\u822a\\u7a0b\\u5185\\u65e0\\u7701\\u4efd"

    invoke-virtual {{v1, v6}}, L{P}/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    return-void

    :cond_ret
    sget-object v2, L{P}/jakowski/Game;->activeArmy:Ljava/util/List;

    if-eqz v2, :cond_nomis

    invoke-interface {{v2}}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_nomis

    const/4 v3, 0x0

    invoke-interface {{v2, v3}}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, L{P}/jakowski/Game$HoveredArmy;

    if-eqz v2, :cond_nomis

    iget-object v3, v2, L{P}/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;

    if-eqz v3, :cond_nomis

    invoke-static {{v3}}, L{P}/map/battles/AirForceManager;->getAirMissionByKey(Ljava/lang/String;)L{P}/map/battles/AirMission;

    move-result-object v4

    if-eqz v4, :cond_nomis

    invoke-virtual {{v4}}, L{P}/map/battles/AirMission;->forceReturn()V

    const-string v5, "\\u8fd4\\u822a\\u6307\\u4ee4\\u5df2\\u4e0b\\u8fbe"

    invoke-virtual {{v1, v5}}, L{P}/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    const-string v5, "AIRDBG"

    const-string v6, "quk:rt"

    invoke-static {{v5, v6}}, L{P}/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_nomis
    const-string v5, "\\u8be5\\u5e08\\u5f53\\u524d\\u65e0\\u4efb\\u52a1"

    invoke-virtual {{v1, v5}}, L{P}/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    return-void

    :cond_nodiv
    const-string v5, "\\u8bf7\\u5148\\u9009\\u4e2d\\u7a7a\\u519b\\u5e08"

    invoke-virtual {{v1, v5}}, L{P}/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    return-void
.end method
'''.format(P=P)
src = src[:m.start()] + new + src[m.end():]
wr(BTN, src)
print('[2/2] BtnCmd.actionElement 已重写：id0 打击 / id1 师级巡逻 / id2 返航 / 其余 取消（面板仍为 4 键，构造器零改动）')
