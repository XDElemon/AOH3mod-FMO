.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$52;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor_No;
.source "InGame_Court.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;II)V
    .registers 4
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I

    .line 2245
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court$52;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/menu_element/button/ButtonAdvisor_No;-><init>(II)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 2248
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_23

    .line 2249
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_AdvisorRecruit()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1c

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->iActiveAdvisorTypeID:I

    if-ne v0, v1, :cond_1c

    .line 2250
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_AdvisorRecruit(Z)V

    goto :goto_23

    .line 2253
    :cond_1c
    sput v1, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;->iActiveAdvisorTypeID:I

    .line 2254
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_AdvisorRecruit()V

    .line 2257
    :cond_23
    :goto_23
    return-void
.end method
