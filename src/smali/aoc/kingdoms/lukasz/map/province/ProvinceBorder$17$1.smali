.class Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17$1;
.super Ljava/lang/Object;
.source "ProvinceBorder.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceBorder$DrawProvinceBorder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILspace/earlygrey/shapedrawer/JoinType;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17;)V
    .registers 2
    .param p1, "this$1"    # Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17;

    .line 350
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17$1;->this$1:Laoc/kingdoms/lukasz/map/province/ProvinceBorder$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILspace/earlygrey/shapedrawer/JoinType;F)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nTranslateProvincePosX"    # I
    .param p3, "joinType"    # Lspace/earlygrey/shapedrawer/JoinType;
    .param p4, "lineWidth"    # F

    .line 354
    return-void
.end method
