.class public Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;
.super Ljava/lang/Object;
.source "ProvinceDrawArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProvinceDrawDetailsINT"
.end annotation


# instance fields
.field public iHeight:I

.field public iShiftX:I

.field public iShiftY:I

.field public iTextWidth:I

.field public iWidth:I

.field public sText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const-string v0, ""

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;->sText:Ljava/lang/String;

    .line 419
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;->iTextWidth:I

    .line 421
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;->iShiftX:I

    .line 422
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;->iShiftY:I

    .line 423
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;->iWidth:I

    .line 424
    iput v0, p0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy$ProvinceDrawDetailsINT;->iHeight:I

    return-void
.end method


# virtual methods
.method public buildHover(I)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    .registers 3
    .param p1, "nProvinceID"    # I

    .line 428
    const/4 v0, 0x0

    return-object v0
.end method

.method public drawDetails(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 3
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"    # I

    .line 426
    return-void
.end method

.method public drawDetailsSea(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .registers 3
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nProvinceID"    # I

    .line 427
    return-void
.end method
