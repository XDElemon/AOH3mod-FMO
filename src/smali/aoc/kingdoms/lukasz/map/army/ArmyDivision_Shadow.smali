.class public Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;
.super Ljava/lang/Object;
.source "ArmyDivision_Shadow.java"


# instance fields
.field public extraY:I

.field public iArmyWidth:I

.field public iProvinceID:I

.field public sArmy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "sArmy"    # Ljava/lang/String;
    .param p2, "iProvinceID"    # I
    .param p3, "extraY"    # I

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->extraY:I

    .line 18
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->sArmy:Ljava/lang/String;

    .line 19
    iput p2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->iProvinceID:I

    .line 20
    iput p3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->extraY:I

    .line 22
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->updateArmyWidth_Just()V

    .line 24
    return-void
.end method


# virtual methods
.method protected final updateArmyWidth_Just()V
    .registers 4

    .line 28
    :try_start_0
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    .line 30
    .local v0, "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontArmy_GlyphLayout:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->sArmy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 31
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->iArmyWidth:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 32
    return-void

    .line 33
    .end local v0    # "glyphLayout":Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
    :catch_12
    move-exception v0

    .line 34
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 37
    .end local v0    # "ex":Ljava/lang/Exception;
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iput v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision_Shadow;->iArmyWidth:I

    .line 38
    return-void
.end method
