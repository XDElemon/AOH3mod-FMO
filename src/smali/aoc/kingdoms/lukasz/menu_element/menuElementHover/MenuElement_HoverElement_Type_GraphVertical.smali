.class public Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_GraphVertical;
.super Ljava/lang/Object;
.source "MenuElement_HoverElement_Type_GraphVertical.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;


# instance fields
.field public graphVertical:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v9, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->NUM_OF_PROVINCES_BY_CONTINENT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 16
    const-string v2, "Civilizations"

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 17
    const-string v3, "Provinces"

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0xc8

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    iput-object v9, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_GraphVertical;->graphVertical:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    .line 22
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

    .line 29
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_GraphVertical;->graphVertical:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, p3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 30
    return-void
.end method

.method public getHeight()I
    .registers 2

    .line 39
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_GraphVertical;->graphVertical:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 34
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_GraphVertical;->graphVertical:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v0

    return v0
.end method
