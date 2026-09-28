.class Laoc/kingdoms/lukasz/map/province/ProvinceBorder$19;
.super Ljava/lang/Object;
.source "ProvinceBorder.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->updateDrawProvinceBorder_ActiveCivilizationBorder()V
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

    .line 405
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$19;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILspace/earlygrey/shapedrawer/JoinType;F)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nTranslateProvincePosX"    # I
    .param p3, "joinType"    # Lspace/earlygrey/shapedrawer/JoinType;
    .param p4, "lineWidth"    # F

    .line 408
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 409
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$19;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_ACTIVE_PROVINCE_BORDER2:Lcom/badlogic/gdx/graphics/Color;

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawStraightBorder_Shape(ILspace/earlygrey/shapedrawer/JoinType;FLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 410
    return-void
.end method
