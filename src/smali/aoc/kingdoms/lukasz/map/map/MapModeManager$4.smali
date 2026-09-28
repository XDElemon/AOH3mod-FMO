.class Laoc/kingdoms/lukasz/map/map/MapModeManager$4;
.super Ljava/lang/Object;
.source "MapModeManager.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapModeManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/map/MapModeManager;

    .line 313
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$4;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 3
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 316
    const/4 v0, 0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->updateDiplomacyProvinceColor(Z)V

    .line 317
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Diplomacy(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 318
    return-void
.end method
