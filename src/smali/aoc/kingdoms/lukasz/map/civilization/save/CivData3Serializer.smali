.class public Laoc/kingdoms/lukasz/map/civilization/save/CivData3Serializer;
.super Ljava/lang/Object;
.source "CivData3Serializer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Json$Serializer<",
        "Laoc/kingdoms/lukasz/map/civilization/save/CivData3;",
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
.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/civilization/save/CivData3;
    .registers 5
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p3, "type"    # Ljava/lang/Class;

    .line 23
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;-><init>()V

    .line 25
    .local v0, "out":Laoc/kingdoms/lukasz/map/civilization/save/CivData3;
    return-object v0
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3Serializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/civilization/save/CivData3;Ljava/lang/Class;)V
    .registers 7
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "data"    # Laoc/kingdoms/lukasz/map/civilization/save/CivData3;
    .param p3, "knownType"    # Ljava/lang/Class;

    .line 10
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    .line 12
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->a:I

    if-eqz v0, :cond_12

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "a"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    :cond_12
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->w:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_24

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->w:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "w"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    :cond_24
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->e:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_35

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->e:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "e"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    :cond_35
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->t:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_46

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->t:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v2, "t"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    :cond_46
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->c:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_57

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;->c:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :cond_57
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 19
    return-void
.end method

.method public bridge synthetic write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 4

    .line 6
    check-cast p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData3;

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/civilization/save/CivData3Serializer;->write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/civilization/save/CivData3;Ljava/lang/Class;)V

    return-void
.end method
