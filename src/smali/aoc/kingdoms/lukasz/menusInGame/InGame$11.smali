.class Laoc/kingdoms/lukasz/menusInGame/InGame$11;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonTopDate;
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
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame;Ljava/lang/String;II)V
    .registers 5
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosY"    # I
    .param p4, "nHeight"    # I

    .line 1187
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame$11;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame;

    invoke-direct {p0, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopDate;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 1195
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    .line 1196
    return-void
.end method

.method public getPosX()I
    .registers 3

    .line 1200
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getDatePadding()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame$11;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSFX()I
    .registers 2

    .line 1190
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    if-eqz v0, :cond_9

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_TOP:I

    goto :goto_b

    :cond_9
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->PLAY:I

    :goto_b
    return v0
.end method
