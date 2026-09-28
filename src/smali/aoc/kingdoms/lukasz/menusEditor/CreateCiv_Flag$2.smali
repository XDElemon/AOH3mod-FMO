.class Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$2;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;
.source "CreateCiv_Flag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;Ljava/lang/String;IIIIIIZ)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "nHeight"    # I
    .param p9, "isClickable"    # Z

    .line 64
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag$2;->this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv_Flag;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;-><init>(Ljava/lang/String;IIIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 4

    .line 67
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 68
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->hideColorPicker()V

    .line 71
    :cond_15
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->updateDivision(Z)V

    .line 72
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildCreateCivFlag()V

    .line 74
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->brush:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    .line 75
    return-void
.end method
