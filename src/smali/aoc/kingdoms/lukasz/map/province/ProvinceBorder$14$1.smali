.class Laoc/kingdoms/lukasz/map/province/ProvinceBorder$14$1;
.super Ljava/lang/Object;
.source "ProvinceBorder.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceBorder$14;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILspace/earlygrey/shapedrawer/JoinType;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$14;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder$14;)V
    .registers 2
    .param p1, "this$1"    # Laoc/kingdoms/lukasz/map/province/ProvinceBorder$14;

    .line 286
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$14$1;->this$1:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILspace/earlygrey/shapedrawer/JoinType;F)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nTranslateProvincePosX"    # I
    .param p3, "joinType"    # Lspace/earlygrey/shapedrawer/JoinType;
    .param p4, "lineWidth"    # F

    .line 289
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/CFG;->COLOR_PROVINCE_DASHED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 290
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$14$1;->this$1:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$14;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$14;->this$0:Laoc/kingdoms/lukasz/map/province/ProvinceBorder;

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/map/province/ProvinceBorder;->drawInnerBorder(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V

    .line 293
    return-void
.end method
