.class public Laoc/kingdoms/lukasz/menu/ColorPicker;
.super Ljava/lang/Object;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;,
        Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;,
        Laoc/kingdoms/lukasz/menu/ColorPicker$Box;
    }
.end annotation


# static fields
.field public static ACTIVE_CIV_ID:I

.field public static activeColor:Lcom/badlogic/gdx/graphics/Color;

.field public static activeRGB:I

.field public static hueColor:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

.field private final RGB_TEXT_SCALE:F

.field private activeClose:Z

.field private activeHUE:Z

.field private activeMove:Z

.field private activeResize:Z

.field private activeSV:Z

.field private colorSVPos:Lcom/badlogic/gdx/graphics/Color;

.field private fAlpha:F

.field private fontID:I

.field private hsv:[F

.field private hueVal:F

.field private iActiveColorID:I

.field private iBTextWidth:I

.field private iGTextWidth:I

.field private iHUEWidth:I

.field private iLastHUEPosY:I

.field private iLastSVPosX:I

.field private iLastSVPosY:I

.field private iPosX:I

.field private iPosY:I

.field private iRGBTextWidth:I

.field private iRTextWidth:I

.field private iResizeHeight:I

.field private iSVHeight:I

.field private iStartPosX:I

.field private iStartPosY:I

.field private iStartResizeHeight:I

.field private lColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private lColorsBoxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu/ColorPicker$Box;",
            ">;"
        }
    .end annotation
.end field

.field private lRGBBoxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu/ColorPicker$Box;",
            ">;"
        }
    .end annotation
.end field

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 46
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    .line 73
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ACTIVE_CIV_ID:I

    .line 277
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hueColor:Lcom/badlogic/gdx/graphics/Color;

    .line 278
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x64

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->visible:Z

    .line 37
    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fontID:I

    .line 41
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeHUE:Z

    .line 42
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeSV:Z

    .line 43
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeResize:Z

    .line 44
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeMove:Z

    .line 45
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeClose:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iActiveColorID:I

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    .line 57
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->colorSVPos:Lcom/badlogic/gdx/graphics/Color;

    .line 66
    const v1, 0x3f666666    # 0.9f

    iput v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->RGB_TEXT_SCALE:F

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    .line 280
    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_126

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    .line 281
    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hueVal:F

    .line 284
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 286
    .local v0, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v2, "G 255"

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 287
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iRGBTextWidth:I

    .line 289
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateRGBWidth()V

    .line 291
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v5, v2, v3

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iRGBTextWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v6, v2, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v7, v2, v3

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;IIII)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v5, v2, v3

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iRGBTextWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v6, v2, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v7, v2, v3

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;IIII)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    new-instance v8, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x2

    add-int v5, v2, v3

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iRGBTextWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v6, v2, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v7, v2, v3

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;IIII)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->NONE_ACTION:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateColorPicker_Action(Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V

    .line 296
    return-void

    nop

    :array_126
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final HSVtoRGB([FLcom/badlogic/gdx/graphics/Color;)V
    .registers 15
    .param p1, "hsv"    # [F
    .param p2, "rgbOut"    # Lcom/badlogic/gdx/graphics/Color;

    .line 705
    const/4 v0, 0x0

    aget v0, p1, v0

    .local v0, "h":F
    const/4 v1, 0x1

    aget v1, p1, v1

    .local v1, "s":F
    const/4 v2, 0x2

    aget v2, p1, v2

    .line 710
    .local v2, "v":F
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-nez v3, :cond_15

    .line 712
    move v3, v2

    .local v3, "b":F
    move v5, v2

    .local v5, "g":F
    move v6, v2

    .local v6, "r":F
    goto/16 :goto_58

    .line 714
    .end local v3    # "b":F
    .end local v5    # "g":F
    .end local v6    # "r":F
    :cond_15
    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v0, v3

    .line 715
    float-to-int v3, v0

    .line 716
    .local v3, "i":I
    int-to-float v5, v3

    sub-float v5, v0, v5

    .line 717
    .local v5, "f":F
    sub-float v6, v4, v1

    mul-float v6, v6, v2

    .line 718
    .local v6, "p":F
    mul-float v7, v1, v5

    sub-float v7, v4, v7

    mul-float v7, v7, v2

    .line 719
    .local v7, "q":F
    sub-float v8, v4, v5

    mul-float v8, v8, v1

    sub-float v8, v4, v8

    mul-float v8, v8, v2

    .line 721
    .local v8, "t":F
    packed-switch v3, :pswitch_data_62

    .line 748
    move v9, v2

    .line 749
    .local v9, "r":F
    move v10, v6

    .line 750
    .local v10, "g":F
    move v11, v7

    move v6, v9

    move v5, v10

    move v3, v11

    .local v11, "b":F
    goto :goto_58

    .line 743
    .end local v9    # "r":F
    .end local v10    # "g":F
    .end local v11    # "b":F
    :pswitch_38
    move v9, v8

    .line 744
    .restart local v9    # "r":F
    move v10, v6

    .line 745
    .restart local v10    # "g":F
    move v11, v2

    .line 746
    .restart local v11    # "b":F
    move v6, v9

    move v5, v10

    move v3, v11

    goto :goto_58

    .line 738
    .end local v9    # "r":F
    .end local v10    # "g":F
    .end local v11    # "b":F
    :pswitch_3f
    move v9, v6

    .line 739
    .restart local v9    # "r":F
    move v10, v7

    .line 740
    .restart local v10    # "g":F
    move v11, v2

    .line 741
    .restart local v11    # "b":F
    move v5, v10

    move v3, v11

    goto :goto_58

    .line 733
    .end local v9    # "r":F
    .end local v10    # "g":F
    .end local v11    # "b":F
    :pswitch_45
    move v9, v6

    .line 734
    .restart local v9    # "r":F
    move v10, v2

    .line 735
    .restart local v10    # "g":F
    move v11, v8

    .line 736
    .restart local v11    # "b":F
    move v5, v10

    move v3, v11

    goto :goto_58

    .line 728
    .end local v9    # "r":F
    .end local v10    # "g":F
    .end local v11    # "b":F
    :pswitch_4b
    move v9, v7

    .line 729
    .restart local v9    # "r":F
    move v10, v2

    .line 730
    .restart local v10    # "g":F
    move v11, v6

    .line 731
    .restart local v11    # "b":F
    move v6, v9

    move v5, v10

    move v3, v11

    goto :goto_58

    .line 723
    .end local v9    # "r":F
    .end local v10    # "g":F
    .end local v11    # "b":F
    :pswitch_52
    move v9, v2

    .line 724
    .restart local v9    # "r":F
    move v10, v8

    .line 725
    .restart local v10    # "g":F
    move v11, v6

    .line 726
    .restart local v11    # "b":F
    move v6, v9

    move v5, v10

    move v3, v11

    .line 755
    .end local v7    # "q":F
    .end local v8    # "t":F
    .end local v9    # "r":F
    .end local v10    # "g":F
    .end local v11    # "b":F
    .local v3, "b":F
    .local v5, "g":F
    .local v6, "r":F
    :goto_58
    iput v6, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 756
    iput v5, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 757
    iput v3, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 758
    iput v4, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 759
    return-void

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_52
        :pswitch_4b
        :pswitch_45
        :pswitch_3f
        :pswitch_38
    .end packed-switch
.end method

.method private final getPickerHue_InnerShadowWidth()I
    .registers 2

    .line 323
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private final setActiveRGB_Box(II)V
    .registers 6
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    .line 608
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_86

    .line 609
    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_82

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_82

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v2

    add-int/2addr v1, v2

    if-lt p2, v1, :cond_82

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-gt p2, v1, :cond_82

    .line 610
    sput v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    .line 611
    return-void

    .line 608
    :cond_82
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 615
    .end local v0    # "i":I
    :cond_86
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    .line 616
    return-void
.end method

.method private final showKeyboard()V
    .registers 7

    .line 599
    sget v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    if-ltz v0, :cond_56

    .line 600
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v0, :cond_d

    .line 601
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    .line 603
    :cond_d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->COLORPICKER:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    const/high16 v3, 0x437f0000    # 255.0f

    const-string v4, ""

    if-nez v2, :cond_32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    :goto_26
    mul-float v4, v4, v3

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_53

    :cond_32
    sget v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_45

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    goto :goto_26

    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    goto :goto_26

    :goto_53
    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->showKeyboard(Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;Ljava/lang/String;)V

    .line 605
    :cond_56
    return-void
.end method

.method private final updateColorSVPos(I)V
    .registers 4
    .param p1, "nPosY"    # I

    .line 644
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v1

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    .line 645
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->colorSVPos:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_16

    .line 647
    :cond_12
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->colorSVPos:Lcom/badlogic/gdx/graphics/Color;

    .line 649
    :goto_16
    return-void
.end method

.method private final updateHUE(I)V
    .registers 7
    .param p1, "screenY"    # I

    .line 619
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 620
    .local v0, "perc":F
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float v3, v3, v0

    iput v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hueVal:F

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 621
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    const/4 v4, 0x2

    aput v1, v3, v4

    const/4 v3, 0x1

    aput v1, v2, v3

    .line 622
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    sget-object v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->hueColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->HSVtoRGB([FLcom/badlogic/gdx/graphics/Color;)V

    .line 623
    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    invoke-direct {p0, v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateSV(II)V

    .line 625
    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int v1, p1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastHUEPosY:I

    .line 626
    return-void
.end method

.method private final updateSV(II)V
    .registers 8
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    .line 629
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 630
    .local v0, "sat":F
    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int v1, p2, v1

    int-to-float v1, v1

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    .line 632
    .local v2, "val":F
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    const/4 v3, 0x0

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hueVal:F

    aput v4, v1, v3

    .line 633
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    const/4 v3, 0x1

    aput v0, v1, v3

    .line 634
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 636
    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int v1, p2, v1

    invoke-direct {p0, v1}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateColorSVPos(I)V

    .line 638
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    sget-object v3, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v1, v3}, Laoc/kingdoms/lukasz/menu/ColorPicker;->HSVtoRGB([FLcom/badlogic/gdx/graphics/Color;)V

    .line 640
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateRGBWidth()V

    .line 641
    return-void
.end method


# virtual methods
.method public final RGBtoHSV(III)V
    .registers 14
    .param p1, "R"    # I
    .param p2, "G"    # I
    .param p3, "B"    # I

    .line 670
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    .line 671
    .local v0, "x":F
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 673
    .local v1, "val":F
    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpl-float v5, v0, v1

    if-nez v5, :cond_24

    .line 674
    iget-object v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    const/4 v6, 0x0

    aput v6, v5, v4

    .line 675
    iget-object v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    aput v6, v5, v3

    goto :goto_57

    .line 678
    :cond_24
    float-to-int v5, v0

    if-ne p1, v5, :cond_2b

    sub-int v5, p2, p3

    :goto_29
    int-to-float v5, v5

    goto :goto_34

    :cond_2b
    float-to-int v5, v0

    if-ne p2, v5, :cond_31

    sub-int v5, p3, p1

    goto :goto_29

    :cond_31
    sub-int v5, p1, p2

    goto :goto_29

    .line 679
    .local v5, "f":F
    :goto_34
    float-to-int v6, v0

    if-ne p1, v6, :cond_3a

    const/high16 v6, 0x40400000    # 3.0f

    goto :goto_41

    :cond_3a
    float-to-int v6, v0

    if-ne p2, v6, :cond_3f

    const/4 v6, 0x5

    goto :goto_40

    :cond_3f
    const/4 v6, 0x1

    :goto_40
    int-to-float v6, v6

    .line 681
    .local v6, "i":F
    :goto_41
    iget-object v7, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    sub-float v8, v1, v0

    div-float v8, v5, v8

    sub-float v8, v6, v8

    const/high16 v9, 0x42700000    # 60.0f

    mul-float v8, v8, v9

    rem-float/2addr v8, v2

    aput v8, v7, v4

    .line 682
    iget-object v7, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    sub-float v8, v1, v0

    div-float/2addr v8, v1

    aput v8, v7, v3

    .line 685
    .end local v5    # "f":F
    .end local v6    # "i":F
    :goto_57
    iget-object v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    const/high16 v6, 0x437f0000    # 255.0f

    div-float v7, v1, v6

    const/4 v8, 0x2

    aput v7, v5, v8

    .line 686
    iget-object v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    aget v5, v5, v4

    iput v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hueVal:F

    .line 688
    iget-object v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    aget v3, v5, v3

    iget v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    int-to-float v5, v5

    mul-float v3, v3, v5

    float-to-int v3, v3

    iput v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    .line 689
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    aget v3, v3, v8

    neg-float v3, v3

    iget v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    int-to-float v5, v5

    mul-float v3, v3, v5

    iget v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    .line 691
    iget v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    int-to-float v3, v3

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    aget v4, v5, v4

    div-float/2addr v4, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    int-to-float v2, v2

    mul-float v4, v4, v2

    sub-float/2addr v3, v4

    float-to-int v2, v3

    iput v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastHUEPosY:I

    .line 693
    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    add-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    add-int/2addr v3, v4

    invoke-direct {p0, v2, v3}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateSV(II)V

    .line 694
    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastHUEPosY:I

    add-int/2addr v2, v3

    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateHUE(I)V

    .line 696
    sget-object v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    int-to-float v3, p1

    div-float/2addr v3, v6

    iput v3, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 697
    sget-object v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    int-to-float v3, p2

    div-float/2addr v3, v6

    iput v3, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 698
    sget-object v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    int-to-float v3, p3

    div-float/2addr v3, v6

    iput v3, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 700
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateRGBWidth()V

    .line 701
    return-void
.end method

.method public final buildColors()V
    .registers 13

    .line 299
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getColorBoxWidth()I

    move-result v5

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    const/4 v3, 0x0

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 304
    .local v0, "oR":Ljava/util/Random;
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    .local v1, "i":I
    :goto_52
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    if-ge v1, v2, :cond_9d

    .line 305
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getColorBoxWidth()I

    move-result v10

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int v11, v4, v6

    move-object v6, v3

    move-object v7, p0

    move v8, v1

    invoke-direct/range {v6 .. v11}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v6, 0x100

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v4, v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v8, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v9, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    invoke-direct {v3, v4, v8, v6, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getColorBoxWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_52

    .line 310
    .end local v1    # "i":I
    :cond_9d
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 22
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I

    .line 327
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v11, v8, v8, v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 328
    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v1, v0, p2

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getHeight()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    iget v5, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    .line 330
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 331
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerHUE:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v4, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    iget v5, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 333
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e8ccccd    # 0.275f

    const/4 v13, 0x0

    invoke-direct {v0, v13, v13, v13, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 334
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPickerHue_InnerShadowWidth()I

    move-result v4

    iget v5, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 335
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v1, v2

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPickerHue_InnerShadowWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPickerHue_InnerShadowWidth()I

    move-result v4

    iget v5, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 337
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 338
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    add-int v2, v1, p2

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v4, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    iget v5, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 340
    sget-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hueColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 341
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerSV:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    add-int v2, v1, p2

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v4, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    iget v5, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 343
    iget-boolean v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeMove:Z

    const/4 v14, 0x1

    if-eqz v0, :cond_f5

    .line 344
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 345
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    add-int/2addr v1, v14

    add-int v2, v1, p2

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    goto :goto_114

    .line 348
    :cond_f5
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f533333    # 0.825f

    invoke-direct {v0, v13, v13, v13, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 349
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    add-int/2addr v1, v14

    add-int v2, v1, p2

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    .line 352
    :goto_114
    iget-boolean v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeResize:Z

    if-eqz v0, :cond_14a

    .line 353
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 354
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v1, v1, p2

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v11, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto/16 :goto_1f3

    .line 357
    :cond_14a
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f2ccccd    # 0.675f

    invoke-direct {v0, v8, v8, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 358
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v1, v1, p2

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v11, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 360
    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    add-int v0, v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int/2addr v1, v2

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    neg-int v3, v3

    invoke-static {v11, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    move-result v0

    if-nez v0, :cond_195

    .line 361
    return-void

    .line 365
    :cond_195
    iget-object v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->colorSVPos:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 366
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerSVPos:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->pickerSVPos:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/2addr v2, v12

    sub-int/2addr v1, v2

    add-int v1, v1, p2

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->pickerSVPos:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/2addr v3, v12

    sub-int/2addr v2, v3

    invoke-virtual {v0, v11, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 368
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 371
    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    invoke-virtual {v11, v13, v13, v13, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 372
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int/2addr v1, v14

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastHUEPosY:I

    add-int/2addr v3, v1

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 375
    :goto_1f3
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 376
    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    add-int v0, v0, p2

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int/2addr v1, v14

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v3, v12

    invoke-static {v11, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 377
    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    add-int v0, v0, p2

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int/2addr v1, v14

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v3, v12

    invoke-static {v11, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 379
    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v0, v1

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    add-int v3, v0, p2

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v1

    add-int v4, v0, v1

    iget-object v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v5

    iget-object v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v7, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iRTextWidth:I

    const/4 v2, 0x0

    const-string v17, "R"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v18, v7

    move-object/from16 v7, v17

    move-object v15, v9

    move/from16 v9, v18

    invoke-virtual/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu/ColorPicker;->drawRGBText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILjava/lang/String;Ljava/lang/String;I)V

    .line 380
    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v0, v1

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    add-int v3, v0, p2

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v1

    add-int v4, v0, v1

    iget-object v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v5

    iget-object v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iGTextWidth:I

    const/4 v2, 0x1

    const-string v7, "G"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu/ColorPicker;->drawRGBText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILjava/lang/String;Ljava/lang/String;I)V

    .line 381
    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v0, v1

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    add-int v3, v0, p2

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v1

    add-int v4, v0, v1

    iget-object v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v5

    iget-object v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iBTextWidth:I

    const/4 v2, 0x2

    const-string v7, "B"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu/ColorPicker;->drawRGBText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILjava/lang/String;Ljava/lang/String;I)V

    .line 383
    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    add-int v0, v0, p2

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v2

    invoke-virtual {v10, v11, v0, v1}, Laoc/kingdoms/lukasz/menu/ColorPicker;->drawColorBoxes(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 384
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e333333    # 0.175f

    invoke-direct {v0, v13, v13, v13, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 385
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget-object v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v4, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v4

    iget-object v4, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v4

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    iget-object v5, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v14

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 387
    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iActiveColorID:I

    if-ltz v0, :cond_41a

    .line 388
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v13, v13, v13, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 389
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget-object v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iActiveColorID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v3

    iget-object v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    iget v4, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iActiveColorID:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v4

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    iget-object v5, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v14

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v5

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 392
    :cond_41a
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    invoke-direct {v0, v13, v13, v13, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 393
    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    add-int v0, v0, p2

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v3

    iget-object v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v2

    iget-object v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    iget-object v4, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v14

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v3

    invoke-static {v11, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 395
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 397
    iget-boolean v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeClose:Z

    if-eqz v0, :cond_46e

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->btnh_close:I

    goto :goto_470

    :cond_46e
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    :goto_470
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPosY()I

    move-result v2

    invoke-virtual {v0, v11, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 398
    return-void
.end method

.method public final drawColorBoxes(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 424
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_c4

    .line 425
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 426
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    .line 427
    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    add-int v7, p2, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v1

    add-int v8, p3, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v9

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v10

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 429
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 430
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v3

    add-int v4, v1, v3

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v1

    add-int v5, p3, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v7

    const/4 v6, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 424
    :cond_c0
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 433
    .end local v0    # "i":I
    :cond_c4
    return-void
.end method

.method public final drawRGBText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILjava/lang/String;Ljava/lang/String;I)V
    .registers 25
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "boxID"    # I
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "sLeft"    # Ljava/lang/String;
    .param p8, "sRight"    # Ljava/lang/String;
    .param p9, "nRightWidth"    # I

    .line 401
    move-object v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_COLOR_PICKER_RGB_BG:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 402
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 404
    sget v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    move/from16 v12, p2

    if-ne v1, v12, :cond_2b

    .line 405
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_LOADING_SPLIT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_30

    .line 407
    :cond_2b
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_LOADING_SPLIT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 409
    :goto_30
    invoke-static {v7, v8, v9, v10, v11}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 411
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 412
    add-int/lit8 v1, v8, -0x1

    add-int/lit8 v2, v9, -0x1

    add-int/lit8 v3, v10, 0x2

    add-int/lit8 v4, v11, 0x2

    invoke-static {v7, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 414
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 416
    iget v2, v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fontID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v4, v8, v1

    div-int/lit8 v1, v11, 0x2

    add-int/2addr v1, v9

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int v5, v1, v3

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f6147ae    # 0.88f

    const v3, 0x3f570a3d    # 0.84f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v6, v3, v3, v1, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 418
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 419
    iget v3, v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fontID:I

    add-int v1, v8, v10

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v4

    move/from16 v14, p9

    int-to-float v4, v14

    mul-float v4, v4, v2

    float-to-int v2, v4

    sub-int v4, v1, v2

    div-int/lit8 v1, v11, 0x2

    add-int/2addr v1, v9

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    sget-object v6, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    move v2, v3

    move-object/from16 v3, p8

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 420
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 421
    return-void
.end method

.method public final getActiveColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 808
    sget-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public final getColorBoxWidth()I
    .registers 3

    .line 886
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public getColorPickerAction()Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;
    .registers 2

    .line 849
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    return-object v0
.end method

.method public final getHeight()I
    .registers 3

    .line 804
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method public final getPosX()I
    .registers 2

    .line 782
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    return v0
.end method

.method public final getPosY()I
    .registers 2

    .line 796
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    return v0
.end method

.method public final getVisible()Z
    .registers 2

    .line 812
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->visible:Z

    return v0
.end method

.method public final getWidth()I
    .registers 3

    .line 800
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iRGBTextWidth:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method public final hideColorPicker()V
    .registers 2

    .line 816
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->visible:Z

    .line 818
    new-instance v0, Laoc/kingdoms/lukasz/menu/ColorPicker$8;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu/ColorPicker$8;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    .line 825
    return-void
.end method

.method public final setActiveRGBColor(FFF)V
    .registers 7
    .param p1, "R"    # F
    .param p2, "G"    # F
    .param p3, "B"    # F

    .line 652
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p1, v0

    float-to-int v1, v1

    mul-float v2, p2, v0

    float-to-int v2, v2

    mul-float v0, v0, p3

    float-to-int v0, v0

    invoke-virtual {p0, v1, v2, v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setActiveRGBColor(III)V

    .line 653
    return-void
.end method

.method public final setActiveRGBColor(III)V
    .registers 5
    .param p1, "R"    # I
    .param p2, "G"    # I
    .param p3, "B"    # I

    .line 657
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-nez v0, :cond_8

    sget v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    if-ltz v0, :cond_10

    .line 658
    :cond_8
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    .line 659
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    .line 662
    :cond_10
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu/ColorPicker;->RGBtoHSV(III)V

    .line 663
    return-void
.end method

.method public final setHueWidth(I)V
    .registers 2
    .param p1, "iHUEWidth"    # I

    .line 853
    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    .line 854
    return-void
.end method

.method public final setPosX(I)V
    .registers 4
    .param p1, "iPosX"    # I

    .line 772
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pickerSV:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_22

    .line 773
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pickerSV:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int p1, v0, v1

    goto :goto_2c

    .line 774
    :cond_22
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_2c

    .line 775
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p1, v0, 0x2

    .line 778
    :cond_2c
    :goto_2c
    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    .line 779
    return-void
.end method

.method public final setPosY(I)V
    .registers 4
    .param p1, "iPosY"    # I

    .line 786
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pickerSV:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_22

    .line 787
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pickerSV:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int p1, v0, v1

    goto :goto_2c

    .line 788
    :cond_22
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_2c

    .line 789
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p1, v0, 0x2

    .line 792
    :cond_2c
    :goto_2c
    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    .line 793
    return-void
.end method

.method public final setResizeHeight(I)V
    .registers 2
    .param p1, "iResizeHeight"    # I

    .line 890
    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iResizeHeight:I

    .line 891
    return-void
.end method

.method public final setSVHeight(I)V
    .registers 8
    .param p1, "iSVHeight"    # I

    .line 857
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerSV:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_17

    .line 858
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerSV:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    goto :goto_38

    .line 860
    :cond_17
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPosY()I

    move-result v0

    add-int/2addr v0, p1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    if-le v0, v1, :cond_38

    .line 861
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPosY()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    sub-int p1, v0, v1

    .line 864
    :cond_38
    :goto_38
    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    .line 866
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_3b
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_6a

    .line 867
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->setWidth(I)V

    .line 868
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->setVisible(Z)V

    .line 866
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 871
    .end local v0    # "i":I
    :cond_6a
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .restart local v0    # "i":I
    :goto_71
    if-lez v0, :cond_da

    .line 872
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v4

    if-le v1, v4, :cond_91

    .line 873
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->setVisible(Z)V

    goto :goto_d7

    .line 876
    :cond_91
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->setVisible(Z)V

    .line 878
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v4

    if-le v1, v4, :cond_d7

    .line 879
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->setWidth(I)V

    .line 871
    :cond_d7
    :goto_d7
    add-int/lit8 v0, v0, -0x1

    goto :goto_71

    .line 883
    .end local v0    # "i":I
    :cond_da
    return-void
.end method

.method public final setVisible(ZLaoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V
    .registers 4
    .param p1, "visible"    # Z
    .param p2, "nAction"    # Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    .line 828
    if-eqz p2, :cond_6

    .line 829
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateColorPicker_Action(Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V

    goto :goto_d

    .line 832
    :cond_6
    new-instance v0, Laoc/kingdoms/lukasz/menu/ColorPicker$9;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu/ColorPicker$9;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    .line 840
    :goto_d
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->visible:Z

    .line 842
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-nez v0, :cond_17

    sget v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    if-ltz v0, :cond_1f

    .line 843
    :cond_17
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    .line 844
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    .line 846
    :cond_1f
    return-void
.end method

.method public final touch(II)V
    .registers 9
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    .line 460
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeHUE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5a

    .line 461
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    if-gt p2, v0, :cond_e

    .line 462
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    add-int/lit8 p2, v0, 0x1

    goto :goto_1b

    .line 464
    :cond_e
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    if-le p2, v0, :cond_1b

    .line 465
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int p2, v0, v1

    .line 468
    :cond_1b
    :goto_1b
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2f

    .line 469
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int p1, v0, v1

    goto :goto_48

    .line 471
    :cond_2f
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_48

    .line 472
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int p1, v0, v1

    .line 475
    :cond_48
    :goto_48
    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateHUE(I)V

    .line 476
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateSV(II)V

    goto/16 :goto_456

    .line 478
    :cond_5a
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeSV:Z

    if-eqz v0, :cond_97

    .line 479
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    if-ge p2, v0, :cond_65

    .line 480
    iget p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    goto :goto_72

    .line 482
    :cond_65
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    if-le p2, v0, :cond_72

    .line 483
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int p2, v0, v1

    .line 486
    :cond_72
    :goto_72
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    if-ge p1, v0, :cond_79

    .line 487
    iget p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    goto :goto_86

    .line 489
    :cond_79
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_86

    .line 490
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int p1, v0, v1

    .line 493
    :cond_86
    :goto_86
    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateSV(II)V

    .line 495
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    sub-int v0, p1, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    .line 496
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int v0, p2, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    goto/16 :goto_456

    .line 498
    :cond_97
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeResize:Z

    if-eqz v0, :cond_a6

    .line 499
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int v0, p2, v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iStartPosY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setSVHeight(I)V

    .line 501
    return-void

    .line 503
    :cond_a6
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeMove:Z

    const/high16 v2, 0x3f400000    # 0.75f

    if-eqz v0, :cond_bd

    .line 504
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iStartPosX:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setPosX(I)V

    .line 505
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iStartPosY:I

    sub-int v0, p2, v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setPosY(I)V

    .line 507
    iput v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    .line 508
    return-void

    .line 510
    :cond_bd
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iActiveColorID:I

    const/high16 v3, 0x437f0000    # 255.0f

    if-ltz v0, :cond_17e

    .line 511
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c4
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17c

    .line 512
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_178

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_178

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_178

    .line 513
    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iActiveColorID:I

    .line 515
    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    if-eq v1, v2, :cond_17c

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    if-eq v1, v2, :cond_17c

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    if-eq v1, v2, :cond_17c

    .line 516
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v4, v4, v3

    float-to-int v3, v4

    invoke-virtual {p0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/ColorPicker;->RGBtoHSV(III)V

    goto :goto_17c

    .line 511
    :cond_178
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c4

    .end local v0    # "i":I
    :cond_17c
    :goto_17c
    goto/16 :goto_456

    .line 522
    :cond_17e
    sget v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    if-ltz v0, :cond_18a

    .line 523
    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setActiveRGB_Box(II)V

    .line 524
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->showKeyboard()V

    goto/16 :goto_456

    .line 526
    :cond_18a
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeClose:Z

    if-eqz v0, :cond_194

    .line 527
    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    .line 528
    iput p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    goto/16 :goto_456

    .line 531
    :cond_194
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iResizeHeight:I

    sub-int/2addr v0, v4

    if-lt p1, v0, :cond_1c8

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v4

    if-gt p1, v0, :cond_1c8

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iResizeHeight:I

    sub-int/2addr v0, v4

    if-lt p2, v0, :cond_1c8

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v4

    if-gt p2, v0, :cond_1c8

    .line 532
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeResize:Z

    .line 534
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int v0, p2, v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iStartPosY:I

    .line 535
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iStartResizeHeight:I

    .line 537
    iput v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    .line 538
    return-void

    .line 541
    :cond_1c8
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    if-lt p1, v0, :cond_1ed

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iResizeHeight:I

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_1ed

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    if-lt p2, v0, :cond_1ed

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iResizeHeight:I

    add-int/2addr v0, v2

    if-gt p2, v0, :cond_1ed

    .line 542
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeMove:Z

    .line 544
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    sub-int v0, p1, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iStartPosX:I

    .line 545
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int v0, p2, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iStartPosY:I

    .line 546
    return-void

    .line 549
    :cond_1ed
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    const/4 v2, -0x1

    if-lt p1, v0, :cond_22b

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v0, v4

    if-gt p1, v0, :cond_22b

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    if-lt p2, v0, :cond_22b

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v4

    if-gt p2, v0, :cond_22b

    .line 550
    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateHUE(I)V

    .line 551
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    add-int/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    add-int/2addr v3, v4

    invoke-direct {p0, v0, v3}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateSV(II)V

    .line 553
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeHUE:Z

    .line 555
    sput v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    .line 556
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    goto/16 :goto_456

    .line 559
    :cond_22b
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    if-lt p1, v0, :cond_25b

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v4

    if-gt p1, v0, :cond_25b

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    if-lt p2, v0, :cond_25b

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v4

    if-gt p2, v0, :cond_25b

    .line 560
    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateSV(II)V

    .line 561
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeSV:Z

    .line 563
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    sub-int v0, p1, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    .line 564
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int v0, p2, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    .line 566
    sput v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    .line 567
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    goto/16 :goto_456

    .line 570
    :cond_25b
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v4

    add-int/2addr v0, v4

    if-lt p1, v0, :cond_3a2

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v4

    add-int/2addr v0, v4

    if-gt p1, v0, :cond_3a2

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v4

    add-int/2addr v0, v4

    if-lt p2, v0, :cond_3a2

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v4

    add-int/2addr v0, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    if-gt p2, v0, :cond_3a2

    .line 571
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2ac
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_399

    .line 572
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_395

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v4

    add-int/2addr v1, v4

    if-lt p1, v1, :cond_395

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    if-gt p1, v1, :cond_395

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v4

    add-int/2addr v1, v4

    if-lt p2, v1, :cond_395

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    if-gt p2, v1, :cond_395

    .line 573
    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iActiveColorID:I

    .line 575
    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v4, v4, v3

    float-to-int v4, v4

    if-eq v1, v4, :cond_399

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v4, v4, v3

    float-to-int v4, v4

    if-eq v1, v4, :cond_399

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v4, v4, v3

    float-to-int v4, v4

    if-eq v1, v4, :cond_399

    .line 576
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v4, v4, v3

    float-to-int v4, v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v5, v5, v3

    float-to-int v3, v5

    invoke-virtual {p0, v1, v4, v3}, Laoc/kingdoms/lukasz/menu/ColorPicker;->RGBtoHSV(III)V

    goto :goto_399

    .line 571
    :cond_395
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2ac

    .line 582
    .end local v0    # "i":I
    :cond_399
    :goto_399
    sput v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    .line 583
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    goto/16 :goto_456

    .line 586
    :cond_3a2
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v2

    add-int/2addr v0, v2

    if-lt p1, v0, :cond_420

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_420

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v2

    add-int/2addr v0, v2

    if-lt p2, v0, :cond_420

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    if-gt p2, v0, :cond_420

    .line 587
    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setActiveRGB_Box(II)V

    .line 589
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->showKeyboard()V

    goto :goto_456

    .line 591
    :cond_420
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_456

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_456

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    if-lt p2, v0, :cond_456

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    if-gt p2, v0, :cond_456

    .line 592
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeClose:Z

    .line 595
    :cond_456
    :goto_456
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;->update()V

    .line 596
    return-void
.end method

.method public final touchUp()V
    .registers 5

    .line 438
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeResize:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 439
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    mul-int v0, v0, v2

    int-to-float v0, v0

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iStartResizeHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    .line 440
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    mul-int v0, v0, v2

    int-to-float v0, v0

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iStartResizeHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    .line 441
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastHUEPosY:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    mul-int v0, v0, v2

    int-to-float v0, v0

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iStartResizeHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastHUEPosY:I

    goto :goto_74

    .line 443
    :cond_30
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeClose:Z

    if-eqz v0, :cond_74

    .line 444
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_74

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_74

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    if-lt v0, v2, :cond_74

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_74

    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setVisible(ZLaoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V

    .line 449
    :cond_74
    :goto_74
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeSV:Z

    .line 450
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeHUE:Z

    .line 451
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeResize:Z

    .line 452
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeMove:Z

    .line 453
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeClose:Z

    .line 454
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iActiveColorID:I

    .line 456
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    .line 457
    return-void
.end method

.method public final updateColorPicker_Action(Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V
    .registers 4
    .param p1, "nAction"    # Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    .line 105
    sget-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker$10;->$SwitchMap$aoc$kingdoms$lukasz$menu$ColorPicker$PickerAction:[I

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    .line 204
    new-instance v0, Laoc/kingdoms/lukasz/menu/ColorPicker$7;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu/ColorPicker$7;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    goto :goto_43

    .line 186
    :pswitch_13
    new-instance v0, Laoc/kingdoms/lukasz/menu/ColorPicker$6;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu/ColorPicker$6;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    .line 201
    goto :goto_43

    .line 170
    :pswitch_1b
    new-instance v0, Laoc/kingdoms/lukasz/menu/ColorPicker$5;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu/ColorPicker$5;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    .line 183
    goto :goto_43

    .line 156
    :pswitch_23
    new-instance v0, Laoc/kingdoms/lukasz/menu/ColorPicker$4;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu/ColorPicker$4;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    .line 167
    goto :goto_43

    .line 140
    :pswitch_2b
    new-instance v0, Laoc/kingdoms/lukasz/menu/ColorPicker$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu/ColorPicker$3;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    .line 153
    goto :goto_43

    .line 124
    :pswitch_33
    new-instance v0, Laoc/kingdoms/lukasz/menu/ColorPicker$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu/ColorPicker$2;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    .line 137
    goto :goto_43

    .line 107
    :pswitch_3b
    new-instance v0, Laoc/kingdoms/lukasz/menu/ColorPicker$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu/ColorPicker$1;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    .line 121
    nop

    .line 217
    :goto_43
    return-void

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_33
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
    .end packed-switch
.end method

.method public final updateColors()V
    .registers 10

    .line 313
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 315
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1a
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 316
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v3, v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v7, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v8, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 318
    .end local v0    # "i":I
    :cond_4b
    return-void
.end method

.method public final updateRGBWidth()V
    .registers 5

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getTextWidth(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iRTextWidth:I

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getTextWidth(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iGTextWidth:I

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getTextWidth(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iBTextWidth:I

    .line 767
    return-void
.end method
