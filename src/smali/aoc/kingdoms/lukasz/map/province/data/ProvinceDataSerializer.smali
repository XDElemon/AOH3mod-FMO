.class public Laoc/kingdoms/lukasz/map/province/data/ProvinceDataSerializer;
.super Ljava/lang/Object;
.source "ProvinceDataSerializer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Json$Serializer<",
        "Laoc/kingdoms/lukasz/map/province/data/ProvinceData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    .registers 5
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p3, "type"    # Ljava/lang/Class;

    .line 21
    new-instance v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;-><init>()V

    .line 23
    .local v0, "out":Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    return-object v0
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceDataSerializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/province/data/ProvinceData;Ljava/lang/Class;)V
    .registers 6
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "data"    # Laoc/kingdoms/lukasz/map/province/data/ProvinceData;
    .param p3, "knownType"    # Ljava/lang/Class;

    .line 10
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    .line 12
    iget v0, p2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->c:I

    if-eqz v0, :cond_12

    iget v0, p2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    :cond_12
    iget v0, p2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->o:I

    if-eqz v0, :cond_21

    iget v0, p2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "o"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    :cond_21
    iget v0, p2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->w:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_31

    iget v0, p2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "w"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    :cond_31
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 17
    return-void
.end method

.method public bridge synthetic write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 4

    .line 6
    check-cast p2, Laoc/kingdoms/lukasz/map/province/data/ProvinceData;

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/data/ProvinceDataSerializer;->write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/province/data/ProvinceData;Ljava/lang/Class;)V

    return-void
.end method
