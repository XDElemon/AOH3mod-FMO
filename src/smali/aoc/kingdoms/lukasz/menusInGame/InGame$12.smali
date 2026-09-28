.class Laoc/kingdoms/lukasz/menusInGame/InGame$12;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonTopSpeed;
.source "InGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame;III)V
    .registers 5
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame;
    .param p2, "imageID"    # I
    .param p3, "iPosY"    # I
    .param p4, "nHeight"    # I

    .line 1206
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame$12;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame;

    invoke-direct {p0, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopSpeed;-><init>(III)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 4

    .line 1214
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->updateSpeedMinus()V

    .line 1215
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Laoc/kingdoms/lukasz/menu/MenuManager;->TOAST_TIME:J

    .line 1216
    return-void
.end method

.method public getPosX()I
    .registers 3

    .line 1220
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame$12;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame$12;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->plusElementID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame$12;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSFX()I
    .registers 2

    .line 1209
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_TOP:I

    return v0
.end method
