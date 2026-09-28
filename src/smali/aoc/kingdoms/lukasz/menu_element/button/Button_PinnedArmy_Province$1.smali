.class Laoc/kingdoms/lukasz/menu_element/button/Button_PinnedArmy_Province$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "Button_PinnedArmy_Province.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/button/Button_PinnedArmy_Province;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu_element/button/Button_PinnedArmy_Province;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu_element/button/Button_PinnedArmy_Province;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menu_element/button/Button_PinnedArmy_Province;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 120
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PinnedArmy_Province$1;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button_PinnedArmy_Province;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 123
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceInfo_Army()V

    .line 124
    return-void
.end method
