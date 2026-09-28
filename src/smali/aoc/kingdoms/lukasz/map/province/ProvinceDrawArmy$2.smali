.class Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$2;
.super Ljava/lang/Object;
.source "ProvinceDrawArmy.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawArmyINT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateDrawArmy(I)Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawArmyINT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawArmy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"    # I
    .param p3, "nArmyID"    # I

    .line 411
    return-void
.end method
