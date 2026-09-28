.class Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps$3;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMainDescripted;
.source "EditorMaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps;Ljava/lang/String;Ljava/lang/String;IIIIIZZ)V
    .registers 23
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sDesc"    # Ljava/lang/String;
    .param p4, "fontID"    # I
    .param p5, "iTextPositionX"    # I
    .param p6, "iPosX"    # I
    .param p7, "iPosY"    # I
    .param p8, "nWidth"    # I
    .param p9, "isClickable"    # Z
    .param p10, "checkBox"    # Z

    .line 66
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps$3;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainDescripted;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIZZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 69
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    .line 70
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMainDescripted;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 76
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps$3;->getCurrent()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->Icon:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps$3;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps$3;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps$3;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Map;->lMaps:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMaps$3;->getCurrent()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Map_Data;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data;->Icon:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 77
    return-void
.end method
