.class Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$2;
.super Laoc/kingdoms/lukasz/menu_element/Empty;
.source "InGame_LegaciesEmpty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty;IIII)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I

    .line 58
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 61
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    .line 62
    return-void
.end method
