.class Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "MenuTitleIMG_War.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War$1;->this$0:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 102
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Wars()V

    .line 103
    return-void
.end method
