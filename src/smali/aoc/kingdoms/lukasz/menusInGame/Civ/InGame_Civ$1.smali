.class Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;
.source "InGame_Civ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;III)V
    .registers 5
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;
    .param p2, "iCivID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I

    .line 172
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;

    invoke-direct {p0, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;-><init>(III)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 175
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    .line 177
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Civ(Z)V

    .line 179
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Court()V

    .line 180
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    .line 181
    return-void
.end method
