.class public Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
.super Ljava/lang/Object;
.source "GlyphLayout_Game.java"


# instance fields
.field public height:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    .line 9
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    return-void
.end method


# virtual methods
.method public getHeight()F
    .registers 2

    .line 39
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    return v0
.end method

.method public getWidth()F
    .registers 2

    .line 35
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    return v0
.end method

.method public setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z
    .registers 6
    .param p1, "font"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
    .param p2, "str"    # Ljava/lang/CharSequence;

    .line 13
    const/4 v0, 0x0

    if-eqz p2, :cond_1c

    :try_start_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1c

    .line 14
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;-><init>()V

    .line 16
    .local v1, "glyphLayout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    .line 17
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    .line 18
    iget v2, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    .line 19
    .end local v1    # "glyphLayout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    nop

    .line 26
    const/4 v0, 0x1

    return v0

    .line 21
    :cond_1c
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    .line 22
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_26

    .line 23
    return v0

    .line 27
    :catch_26
    move-exception v1

    .line 31
    return v0
.end method
