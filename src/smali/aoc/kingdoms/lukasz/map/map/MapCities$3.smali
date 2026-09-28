.class Laoc/kingdoms/lukasz/map/map/MapCities$3;
.super Ljava/lang/Object;
.source "MapCities.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/map/MapCities$CitiesInGame;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapCities;->updateCitiesInGame()V
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

    .line 149
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapCities$3;->this$0:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .registers 4
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nScale"    # F

    .line 152
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities$3;->this$0:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    .line 153
    return-void
.end method
