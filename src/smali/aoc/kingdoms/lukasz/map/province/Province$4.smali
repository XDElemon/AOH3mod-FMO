.class Laoc/kingdoms/lukasz/map/province/Province$4;
.super Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;
.source "Province.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/province/Province;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/province/Province;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/province/Province;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/province/Province;

    .line 1045
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province$4;->this$0:Laoc/kingdoms/lukasz/map/province/Province;

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;-><init>()V

    return-void
.end method


# virtual methods
.method public drawDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 3
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"    # I

    .line 1047
    return-void
.end method

.method public drawDetailsSea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 3
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"    # I

    .line 1050
    return-void
.end method
