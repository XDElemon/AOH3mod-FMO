.class Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes$5;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;
.source "InGame_Nukes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sText2"    # Ljava/lang/String;
    .param p4, "imageID"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "nHeight"    # I
    .param p9, "maxIconWidth"    # I

    .line 178
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes$5;->this$0:Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public getColorBonus()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 181
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getTextToDraw()Ljava/lang/String;
    .registers 4

    .line 186
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes$5;->iCurrent:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getAtomicBombCost(I)F

    move-result v1

    float-to-int v1, v1

    if-eq v0, v1, :cond_40

    .line 187
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getAtomicBombCost(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes$5;->iCurrent:I

    .line 189
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getAtomicBombCost(I)F

    move-result v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes$5;->sText2:Ljava/lang/String;

    .line 190
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes$5;->sText2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 191
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_Nukes$5;->iTextBonusW:I

    .line 194
    :cond_40
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;->getTextToDraw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
