.class Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "Text_StaticBG_Mission_Right.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;
    .param p2, "taskKey"    # Ljava/lang/String;
    .param p3, "id"    # I

    .line 109
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .line 112
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Right()V

    .line 114
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Event()Z

    move-result v0

    if-eqz v0, :cond_19

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Mission_Right$1;->id:I

    if-ne v0, v1, :cond_19

    .line 115
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Event(Z)V

    .line 117
    :cond_19
    return-void
.end method
