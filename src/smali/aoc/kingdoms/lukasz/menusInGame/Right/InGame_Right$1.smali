.class Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$1;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;
.source "InGame_Right.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;Ljava/lang/String;IIIIIIIII)V
    .registers 25
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "iWidth"    # I
    .param p8, "eventType"    # I
    .param p9, "id"    # I
    .param p10, "missionImage"    # I
    .param p11, "iRespondTurnID"    # I

    .line 64
    move-object v11, p0

    move-object v12, p1

    iput-object v12, v11, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;

    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;-><init>(Ljava/lang/String;IIIIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 5

    .line 67
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Event()Z

    move-result v0

    if-eqz v0, :cond_17

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$1;->getCurrent()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 68
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Event(Z)V

    .line 69
    return-void

    .line 72
    :cond_17
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Missions/MissionTree;->lMissions:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$1;->getCurrent()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Missions/Mission;->event:Laoc/kingdoms/lukasz/events/Event;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$1;->getValue1()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$1;->getCurrent()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Event(Laoc/kingdoms/lukasz/events/Event;II)V

    .line 73
    return-void
.end method

.method public getSFX()I
    .registers 3

    .line 77
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Event()Z

    move-result v0

    if-eqz v0, :cond_15

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$1;->getCurrent()I

    move-result v1

    if-ne v0, v1, :cond_15

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->getSFX()I

    move-result v0

    goto :goto_17

    :cond_15
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->EVENT:I

    :goto_17
    return v0
.end method
