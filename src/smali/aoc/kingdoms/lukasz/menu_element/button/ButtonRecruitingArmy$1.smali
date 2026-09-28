.class Laoc/kingdoms/lukasz/menu_element/button/ButtonRecruitingArmy$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "ButtonRecruitingArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/button/ButtonRecruitingArmy;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonRecruitingArmy;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu_element/button/ButtonRecruitingArmy;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menu_element/button/ButtonRecruitingArmy;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRecruitingArmy$1;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonRecruitingArmy;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .line 56
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_ProvinceInfo()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 57
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ProvinceInfo(Z)V

    .line 59
    :cond_e
    return-void
.end method
