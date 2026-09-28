.class Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;
.super Ljava/lang/Object;
.source "ProvinceBorder.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_ActiveProvince()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    .line 374
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILspace/earlygrey/shapedrawer/JoinType;F)V
    .registers 11
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nTranslateProvincePosX"    # I
    .param p3, "joinType"    # Lspace/earlygrey/shapedrawer/JoinType;
    .param p4, "lineWidth"    # F

    .line 377
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_51

    .line 379
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getIsWastelandBorder()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 380
    :cond_1c
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v0, p2, p3, p4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawStraightBorder_Shape(ILspace/earlygrey/shapedrawer/JoinType;F)V

    .line 381
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    .line 382
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    .line 385
    :cond_2b
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->activeProvince_Animation_Data:Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/animation/ProvinceAnimation;->getBorderAlpha()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 386
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->iLineOffset:I

    invoke-virtual {v0, p1, v1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawDashedBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto :goto_78

    .line 389
    :cond_51
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getIsCivilizationBorder()Z

    move-result v0

    if-nez v0, :cond_61

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->getIsWastelandBorder()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 390
    :cond_61
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_INNER_BORDERS:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_73

    .line 391
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v0, p2, p3, p4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawStraightBorder_Shape(ILspace/earlygrey/shapedrawer/JoinType;F)V

    goto :goto_78

    .line 394
    :cond_73
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$18;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v0, p2, p3, p4}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawStraightBorder_Shape2(ILspace/earlygrey/shapedrawer/JoinType;F)V

    .line 398
    :cond_78
    :goto_78
    return-void
.end method
