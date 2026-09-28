.class public Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivDataSerializer;
.super Ljava/lang/Object;
.source "MapScenarios.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/map/MapScenarios;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScenarioCivDataSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/Json$Serializer<",
        "Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;
    .registers 5
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p3, "type"    # Ljava/lang/Class;

    .line 542
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;-><init>()V

    .line 544
    .local v0, "out":Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;
    return-object v0
.end method

.method public bridge synthetic read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    .line 508
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivDataSerializer;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;Ljava/lang/Class;)Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;Ljava/lang/Class;)V
    .registers 6
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "data"    # Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;
    .param p3, "knownType"    # Ljava/lang/Class;

    .line 512
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    .line 513
    const-string v0, "CivTAG"

    iget-object v1, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CivTAG:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 514
    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CivID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CivID"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 515
    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->PCID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PCID"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CPID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CPID"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 518
    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Gold:I

    sget v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->DEFAULT_VALUE:I

    if-eq v0, v1, :cond_3c

    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Gold:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Gold"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    :cond_3c
    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Legacy:I

    sget v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->DEFAULT_VALUE:I

    if-eq v0, v1, :cond_4d

    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Legacy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Legacy"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 520
    :cond_4d
    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->TechnologyID:I

    sget v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->DEFAULT_VALUE:I

    if-eq v0, v1, :cond_5e

    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->TechnologyID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "TechnologyID"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
    :cond_5e
    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Population:I

    if-eqz v0, :cond_6d

    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Population:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Population"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 523
    :cond_6d
    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Economy:I

    if-eqz v0, :cond_7c

    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Economy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Economy"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 524
    :cond_7c
    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->TaxEff:I

    if-eqz v0, :cond_8b

    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->TaxEff:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "TaxEff"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 525
    :cond_8b
    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Manpower:I

    if-eqz v0, :cond_9a

    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Manpower:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Manpower"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 527
    :cond_9a
    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CCL:I

    if-eqz v0, :cond_a9

    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->CCL:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "CCL"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 528
    :cond_a9
    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->MAL:I

    if-eqz v0, :cond_b8

    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->MAL:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MAL"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 529
    :cond_b8
    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->MAGL:I

    if-eqz v0, :cond_c7

    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->MAGL:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "MAGL"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 530
    :cond_c7
    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->SCL:I

    if-eqz v0, :cond_d6

    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->SCL:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SCL"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 532
    :cond_d6
    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->NRL:I

    if-eqz v0, :cond_e5

    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->NRL:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "NRL"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 533
    :cond_e5
    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Nukes:I

    if-eqz v0, :cond_f4

    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Nukes:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Nukes"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 535
    :cond_f4
    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->v:I

    if-eqz v0, :cond_103

    iget v0, p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "v"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 537
    :cond_103
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    .line 538
    return-void
.end method

.method public bridge synthetic write(Lcom/badlogic/gdx/utils/Json;Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 4

    .line 508
    check-cast p2, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivDataSerializer;->write(Lcom/badlogic/gdx/utils/Json;Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;Ljava/lang/Class;)V

    return-void
.end method
