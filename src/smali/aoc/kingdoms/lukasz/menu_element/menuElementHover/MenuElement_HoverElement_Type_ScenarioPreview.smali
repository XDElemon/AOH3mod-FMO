.class public Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ScenarioPreview;
.super Ljava/lang/Object;
.source "MenuElement_HoverElement_Type_ScenarioPreview.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;


# instance fields
.field public buttonPreview:Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "scenarioID"    # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;-><init>(III)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ScenarioPreview;->buttonPreview:Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;

    .line 16
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nAlpha"    # F
    .param p5, "iMaxWidth"    # I

    .line 22
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ScenarioPreview;->buttonPreview:Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 23
    return-void
.end method

.method public getHeight()I
    .registers 2

    .line 32
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ScenarioPreview;->buttonPreview:Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHeight2()I
    .registers 2

    .line 37
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ScenarioPreview;->buttonPreview:Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 27
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ScenarioPreview;->buttonPreview:Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Preview;->getWidth()I

    move-result v0

    return v0
.end method
