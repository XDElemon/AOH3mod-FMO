.class public Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_HideUI.java"


# static fields
.field public static addDate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI;->addDate:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 12

    .line 22
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    sget-boolean v1, Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI;->addDate:Z

    if-eqz v1, :cond_1b

    .line 26
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI$1;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getCurrentDate()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Laoc/kingdoms/lukasz/menusInGame/InGame;->topStatsHeight:I

    invoke-direct {v1, p0, v2, v3, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_1b
    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI$2;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v9, v2, 0x4

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v10, v2, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI;IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setClickable(Z)V

    .line 57
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_HideUI;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 58
    return-void
.end method
