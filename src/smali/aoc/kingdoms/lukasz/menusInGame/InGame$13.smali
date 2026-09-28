.class Laoc/kingdoms/lukasz/menusInGame/InGame$13;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;
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
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame;II)V
    .registers 4
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame;
    .param p2, "iPosY"    # I
    .param p3, "nHeight"    # I

    .line 1225
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame$13;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;-><init>(II)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 2

    .line 1233
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1234
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Touch;->selectArmiesMode:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Touch;->selectArmiesMode:Z

    goto :goto_18

    .line 1237
    :cond_d
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->outlinerInView:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;->outlinerInView:Z

    .line 1239
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Right()V

    .line 1241
    :goto_18
    return-void
.end method

.method public getPosX()I
    .registers 3

    .line 1245
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame$13;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame$13;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->minusElementID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->topRightPadding:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame$13;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSFX()I
    .registers 2

    .line 1228
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_TOP:I

    return v0
.end method
