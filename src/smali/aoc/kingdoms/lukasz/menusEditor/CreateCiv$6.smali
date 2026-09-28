.class Laoc/kingdoms/lukasz/menusEditor/CreateCiv$6;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "CreateCiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusEditor/CreateCiv;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusEditor/CreateCiv;Ljava/lang/String;IIIIIZ)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusEditor/CreateCiv;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "isClickable"    # Z

    .line 220
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$6;->this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 4

    .line 233
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->createCivGroup()Laoc/kingdoms/lukasz/menu/Menu;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 234
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->createCivGroup()Laoc/kingdoms/lukasz/menu/Menu;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    goto :goto_59

    .line 237
    :cond_17
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->createCivReligion()Laoc/kingdoms/lukasz/menu/Menu;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 238
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->createCivFlag()Laoc/kingdoms/lukasz/menu/Menu;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 239
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->createCivGroup()Laoc/kingdoms/lukasz/menu/Menu;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->createCivGroup()Laoc/kingdoms/lukasz/menu/Menu;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 240
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->createCivGroup()Laoc/kingdoms/lukasz/menu/Menu;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$6;->this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getPosX()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$6;->this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->setPosX(I)V

    .line 242
    :goto_59
    return-void
.end method

.method public getTextToDraw()Ljava/lang/String;
    .registers 4

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;->getTextToDraw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/RulersManager;->groups:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->GroupID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLanguage()V
    .registers 4

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Group"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$6;->setText(Ljava/lang/String;)V

    .line 224
    return-void
.end method
