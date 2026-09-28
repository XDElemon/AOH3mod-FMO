.class Laoc/kingdoms/lukasz/map/province/Province$1;
.super Ljava/lang/Object;
.source "Province.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/Province$Fog_DrawLandProvince;


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

    .line 148
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province$1;->this$0:Laoc/kingdoms/lukasz/map/province/Province;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawLandProvinceFog(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 3
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "fProvinceAlpha"    # F

    .line 148
    return-void
.end method
