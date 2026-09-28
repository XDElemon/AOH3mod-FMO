.class Laoc/kingdoms/lukasz/map/province/ProvinceBorder$15;
.super Ljava/lang/Object;
.source "ProvinceBorder.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder(I)V
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

    .line 308
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$15;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILspace/earlygrey/shapedrawer/JoinType;F)V
    .registers 9
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nTranslateProvincePosX"    # I
    .param p3, "joinType"    # Lspace/earlygrey/shapedrawer/JoinType;
    .param p4, "lineWidth"    # F

    .line 311
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$15;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    iget-wide v2, v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->animationTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x43d48000    # 425.0f

    div-float/2addr v0, v1

    .line 313
    .local v0, "tempPerc":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1c

    .line 314
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$15;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    new-instance v2, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$15$1;

    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$15$1;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder$15;)V

    iput-object v2, v1, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawProvinceBorder:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;

    goto :goto_26

    .line 322
    :cond_1c
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_SEABYSEA:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 323
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$15;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v1, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawStraightBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 326
    :goto_26
    return-void
.end method
