.class Laoc/kingdoms/lukasz/map/map/MapCities$5;
.super Ljava/lang/Object;
.source "MapCities.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/map/MapCities$CapitalCityName;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/map/MapCities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapCities;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapCities;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/map/MapCities;

    .line 173
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapCities$5;->this$0:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFII)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"    # I
    .param p3, "fAlpha"    # F
    .param p4, "nPosX"    # I
    .param p5, "nPosY"    # I

    .line 175
    return-void
.end method
