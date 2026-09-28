.class Laoc/kingdoms/lukasz/menusEditor/CreateCiv$3;
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

    .line 145
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$3;->this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv;

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

    .line 148
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->createCivFlag()Laoc/kingdoms/lukasz/menu/Menu;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 149
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->createCivFlag()Laoc/kingdoms/lukasz/menu/Menu;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    goto :goto_52

    .line 152
    :cond_17
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->createCivReligion()Laoc/kingdoms/lukasz/menu/Menu;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 153
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->createCivGroup()Laoc/kingdoms/lukasz/menu/Menu;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 154
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->createCivFlag()Laoc/kingdoms/lukasz/menu/Menu;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    .line 156
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildCreateCivFlag()V

    .line 157
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->createCivFlag()Laoc/kingdoms/lukasz/menu/Menu;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$3;->this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getPosX()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv$3;->this$0:Laoc/kingdoms/lukasz/menusEditor/CreateCiv;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/Menu;->setPosX(I)V

    .line 159
    :goto_52
    return-void
.end method
