.class Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "InGame_ProvinceInfo_Army.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo_Army;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 77
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceInfo_Army()V

    .line 78
    return-void
.end method
