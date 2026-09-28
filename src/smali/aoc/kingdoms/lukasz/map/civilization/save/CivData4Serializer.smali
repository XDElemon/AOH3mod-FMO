.class public Laoc/kingdoms/lukasz/map/civilization/save/CivData4Serializer;
.super Ljava/lang/Object;
.source "CivData4Serializer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Json$Serializer<",
        "Laoc/kingdoms/lukasz/map/civilization/save/CivData4;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/civilization/save/CivData4;
    .registers 5
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p3, "type"    # Ljava/lang/Class;

    .line 33
    new-instance v0, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;-><init>()V

    .line 35
    .local v0, "out":Laoc/kingdoms/lukasz/map/civilization/save/CivData4;
    return-object v0
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/civilization/save/CivData4Serializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/civilization/save/CivData4;Ljava/lang/Class;)V
    .registers 7
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "data"    # Laoc/kingdoms/lukasz/map/civilization/save/CivData4;
    .param p3, "knownType"    # Ljava/lang/Class;

    .line 12
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    .line 14
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->c:I

    if-eqz v0, :cond_12

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    :cond_12
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->g:I

    if-eqz v0, :cond_21

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "g"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    :cond_21
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->m:I

    if-eqz v0, :cond_30

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "m"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    :cond_30
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->s:I

    if-eqz v0, :cond_3f

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :cond_3f
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->n:I

    if-eqz v0, :cond_4e

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->n:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "n"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    :cond_4e
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->u:I

    if-eqz v0, :cond_5d

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->u:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "u"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    :cond_5d
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->b:I

    if-eqz v0, :cond_6c

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "b"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    :cond_6c
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->t:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7c

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "t"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    :cond_7c
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->r:I

    if-eq v0, v1, :cond_8b

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "r"

    invoke-virtual {p1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    :cond_8b
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->y:I

    if-eq v0, v1, :cond_9a

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    :cond_9a
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_aa

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "e"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    :cond_aa
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->d:I

    if-eqz v0, :cond_b9

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "d"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    :cond_b9
    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->v:I

    if-eqz v0, :cond_c8

    iget v0, p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "v"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    :cond_c8
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 29
    return-void
.end method

.method public bridge synthetic write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 4

    .line 8
    check-cast p2, Laoc/kingdoms/lukasz/map/civilization/save/CivData4;

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/civilization/save/CivData4Serializer;->write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/civilization/save/CivData4;Ljava/lang/Class;)V

    return-void
.end method
