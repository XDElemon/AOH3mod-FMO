.class public Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsDataSerializer;
.super Ljava/lang/Object;
.source "CivilizationEventsDataSerializer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Json$Serializer<",
        "Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;
    .registers 7
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p3, "type"    # Ljava/lang/Class;

    .line 32
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;-><init>()V

    .line 33
    .local v0, "data":Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;
    const-string v1, "e"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->e:I

    .line 34
    const-string v1, "g"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->g:I

    .line 35
    const-string v1, "t"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->t:I

    .line 36
    const-string v1, "m"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->m:I

    .line 37
    const-string v1, "d"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->d:I

    .line 38
    return-object v0
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsDataSerializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;Ljava/lang/Class;)V
    .registers 6
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "object"    # Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;
    .param p3, "knownType"    # Ljava/lang/Class;

    .line 11
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    .line 12
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->e:I

    if-eqz v0, :cond_12

    .line 13
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "e"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    :cond_12
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->g:I

    if-eqz v0, :cond_21

    .line 16
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "g"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :cond_21
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->t:I

    if-eqz v0, :cond_30

    .line 19
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "t"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    :cond_30
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->m:I

    if-eqz v0, :cond_3f

    .line 22
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "m"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    :cond_3f
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->d:I

    if-eqz v0, :cond_4e

    .line 25
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "d"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    :cond_4e
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 28
    return-void
.end method

.method public bridge synthetic write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 4

    .line 7
    check-cast p2, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsDataSerializer;->write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/civilization/stats/CivilizationEventsData;Ljava/lang/Class;)V

    return-void
.end method
