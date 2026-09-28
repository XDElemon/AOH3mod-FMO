.class Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonWonder2;
.source "InGame_Wonders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders;IIII)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "wonderID"    # I
    .param p5, "iProvinceID"    # I

    .line 66
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonWonder2;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 69
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CurrentSituation(Z)V

    .line 71
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders$1;->iProvinceID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonder;->iProvinceID:I

    .line 72
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Wonder()V

    .line 73
    return-void
.end method
