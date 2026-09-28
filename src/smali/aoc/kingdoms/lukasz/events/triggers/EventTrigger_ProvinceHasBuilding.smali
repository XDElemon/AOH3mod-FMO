.class public Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;
.super Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;
.source "EventTrigger_ProvinceHasBuilding.java"


# instance fields
.field public building:I

.field public buildingID:I

.field public provID:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "provID"    # I
    .param p2, "building"    # I
    .param p3, "buildingID"    # I

    .line 14
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;-><init>()V

    .line 15
    iput p1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->provID:I

    .line 16
    iput p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->building:I

    .line 17
    iput p3, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->buildingID:I

    .line 18
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 46
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buildings:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->provID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "BuildingConstructed"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText2()Ljava/lang/String;
    .registers 4

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->building:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    iget v2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->buildingID:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText3()Ljava/lang/String;
    .registers 5

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Currently"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->provID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->building:I

    iget v3, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->buildingID:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public outCondition(II)Z
    .registers 6
    .param p1, "iCivID"    # I
    .param p2, "iProvinceID"    # I

    .line 22
    iget v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->provID:I

    if-ltz v0, :cond_13

    .line 23
    iget v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->provID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->building:I

    iget v2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceHasBuilding;->buildingID:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/map/province/Province;->buildingBuilt(II)Z

    move-result v0

    return v0

    .line 26
    :cond_13
    const/4 v0, 0x0

    return v0
.end method
