.class public Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "InGame_AirForceOptions.java"


# instance fields
.field public missionType:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;Ljava/lang/String;IIIIII)V
    .registers 11

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;->this$0:Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;

    iput p8, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;->missionType:I

    move-object v0, p0

    move-object v1, p2

    move p0, p3

    move p1, p4

    move p2, p5

    move p3, p6

    move p4, p7

    const/4 p5, 0x1

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method

.method public static pickAirport(I)Laoc/kingdoms/lukasz/map/battles/Airport;
    .registers 9

    # r5c046z4 诊断：按键那一刻的面板侧取值
        # r6c004：诊断探针改为无条件打印（原来只在绘制路径打，按键那一刻看不到）
    sget v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I
    const-string v1, "afp:Hi"
    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    sget v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->a1MemIdx:I
    const-string v1, "afp:Hm"
    invoke-static {v1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    :z_hp2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :cond_55

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    if-eqz v1, :cond_57

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_17

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :cond_17
    if-lez v2, :cond_26

    sget v4, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I

    if-ltz v4, :cond_26

    if-ge v4, v2, :cond_26   # r6c003：下标 ≥ 长度才跳过（原 if-lt ⇒ 有效下标被跳过）

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/Airport;

    return-object v4

    # r6c004：原"点行记忆"分支位于 return 之后（不可达死码），已删除；解析链改由 iActiveID + pin 回写 保证
    :cond_26
    sget v4, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v4, :cond_32

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v5

    if-eqz v5, :cond_32

    const/4 v6, 0x3

    goto :goto_48

    :cond_32
    iget v4, v1, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->selectedAirportProvinceID:I

    if-ltz v4, :cond_3e

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportByProvinceID(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v5

    if-eqz v5, :cond_3e

    const/16 v6,0x8   # r6c004：与"实例空(2)"区分开

    goto :goto_48

    :cond_3e
    if-lez v2, :cond_59

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/Airport;

    const/4 v6, 0x4

    :goto_48
    const/4 v0, 0x1

    if-ne p0, v0, :cond_54

    const-string v0, "afp:src"

    mul-int/lit8 v4, p0, 0xa

    add-int v4, v4, v6

    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    :cond_54
    # r5c046z1: 兜底解析成功后把下标写回 iActiveID（面板随之锁定该机场，消除“串机场”观感）
    const/4 v7, 0x0
    :pin_loop
    if-lt v7, v2, :pin_body   # r6c004：v7<size 才进循环体
    goto :pin_end
    :pin_body
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    if-eq v0, v5, :pin_hit
    add-int/lit8 v7, v7, 0x1
    goto :pin_loop
    :pin_hit
    sput v7, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I
    :pin_end
    return-object v5

    :cond_55
    const/4 v6, 0x1

    goto :goto_5b

    :cond_57
    const/4 v6, 0x2

    goto :goto_5b

    :cond_59
    const/16 v6, 0x9

    :goto_5b
    const-string v0, "afp:n"

    mul-int/lit8 v4, p0, 0xa

    add-int v4, v4, v6

    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const/4 v5, 0x0

    return-object v5
.end method


# virtual methods
.method public actionElement()V
    .registers 11

    const-string v0, "AIRDBG"

    const-string v1, "afp:ent"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_7
    const/4 v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->dbgBtn:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    return-void

    :cond_1d
    const/4 v0, 0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;->pickAirport(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v0

    if-nez v0, :cond_2c

    const-string v1, "AIRDBG"

    const-string v2, "afp:null"

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2c
    iget v1, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    const-string v2, "afp:press ap="

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v2, "afp:mt"

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;->missionType:I

    invoke-static {v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;->missionType:I

    if-nez v1, :cond_59

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->PATROL:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    if-ne v2, v3, :cond_54

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->OFFENSIVE:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    if-eqz v2, :cond_76

    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->stopAirportPatrols(I)I

    goto :goto_76

    :cond_54
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->PATROL:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    iput-object v2, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    goto :goto_76

    :cond_59
    const/4 v2, 0x1

    if-ne v1, v2, :cond_76

    iget-boolean v2, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v0, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z

    const-string v1, "afp:strike new="

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    # r6c003：打击开关只改 autoStrikeOff，不再动 mode / 不再停巡逻（两按钮互不干扰）
:cond_76
    :goto_76
    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;->missionType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_de

    const/4 v2, 0x4

    if-eq v1, v2, :cond_106

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b2

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_87
    if-ge v3, v2, :cond_107

    sget v4, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->selectedMask:I

    if-nez v4, :cond_8f

    const/16 v4, 0xf

    :cond_8f
    const/4 v5, 0x1

    shl-int v5, v5, v3

    and-int v4, v4, v5

    if-eqz v4, :cond_ae

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Laoc/kingdoms/lukasz/map/battles/Airport;->getAvailableAircraft(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_ad

    new-instance v7, Ljava/lang/Exception;

    const-string v4, "MISSION_SKIP_EMPTY"

    invoke-direct {v7, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V    # r6d002：对外版去掉该异常栈噪音（不改逻辑）

    goto :goto_ae

    :cond_ad
    goto :goto_ae

    :cond_ae
    :goto_ae
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_87

    :cond_b2
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v2

    sget v1, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ltz v1, :z_rcl_ok   # r6c004：越界才钳 0（原写法只钳"合法"情形）
    const/4 v1, 0x0
    goto :cond_c9
    :z_rcl_ok
    if-lt v1, v3, :cond_c9
    const/4 v1, 0x0
    :cond_c9
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Airport;

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->AI:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    iput-object v3, v1, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->executeAIAssignment(I)V

    :cond_de
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v1

    if-eqz v1, :cond_105

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v2, :cond_105

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_105

    sget v3, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I

    if-ltz v3, :cond_105

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_105

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    if-eqz v2, :cond_105

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->clearPatrolForAirport(Laoc/kingdoms/lukasz/map/battles/AirForceManager;Laoc/kingdoms/lukasz/map/battles/Airport;)V

    :cond_105
    goto :goto_107

    :cond_106
    goto :goto_107

    :cond_107
    :goto_107
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->selectedMask:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const-string v1, "AIRDBG"

    const-string v2, "afp:done"

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_AirForce()V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_116} :catch_117

    return-void

    :catch_117
    move-exception v0

    const/4 v1, 0x3

    sput v1, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->dbgBtn:I

    instance-of v1, v0, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_123

    const/4 v1, 0x1

    sput v1, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->dbgErr:I

    goto :goto_12e

    :cond_123
    instance-of v1, v0, Ljava/lang/IndexOutOfBoundsException;

    if-eqz v1, :cond_12b

    const/4 v1, 0x2

    sput v1, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->dbgErr:I

    goto :goto_12e

    :cond_12b
    const/4 v1, 0x3

    sput v1, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->dbgErr:I

    :goto_12e
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    return-void

    return-void
.end method

.method public getTextToDraw()Ljava/lang/String;
    .registers 8

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;->missionType:I

    if-eqz v0, :cond_21

    const/4 v5, 0x1

    if-eq v0, v5, :cond_c

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getTextToDraw()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    const-string v1, "\u81ea\u52a8\u6253\u51fb\uff1a\u5173"

    const/4 v2, 0x2

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;->pickAirport(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z

    if-nez v2, :cond_1b

    const-string v1, "\u81ea\u52a8\u6253\u51fb\uff1a\u5f00"

    :cond_1b
    return-object v1

    :cond_1c
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getTextToDraw()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    const-string v1, "\u81ea\u52a8\u5de1\u903b\uff1a\u5173"

    const/4 v2, 0x2

    invoke-static {v2}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;->pickAirport(I)Laoc/kingdoms/lukasz/map/battles/Airport;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    sget-object v3, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->PATROL:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    if-ne v2, v3, :cond_32

    const-string v1, "\u81ea\u52a8\u5de1\u903b\uff1a\u5f00"

    :cond_32
    return-object v1
.end method
