.class Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "Button_OutlinerRelations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 94
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations$1;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerRelations;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 97
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Right()V

    .line 99
    return-void
.end method
