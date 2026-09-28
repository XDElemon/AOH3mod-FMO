.class public Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsCapital;
.super Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;
.source "EventTrigger_ProvinceIsCapital.java"


# instance fields
.field public provID:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "provID"    # I

    .line 10
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;-><init>()V

    .line 11
    iput p1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsCapital;->provID:I

    .line 12
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 40
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->capital:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsCapital;->provID:I

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

    const-string v2, "IsCapital"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText2()Ljava/lang/String;
    .registers 2

    .line 30
    const-string v0, ""

    return-object v0
.end method

.method public getText3()Ljava/lang/String;
    .registers 2

    .line 35
    const-string v0, ""

    return-object v0
.end method

.method public outCondition(II)Z
    .registers 4
    .param p1, "iCivID"    # I
    .param p2, "iProvinceID"    # I

    .line 16
    iget v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsCapital;->provID:I

    if-ltz v0, :cond_d

    .line 17
    iget v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_ProvinceIsCapital;->provID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    return v0

    .line 20
    :cond_d
    const/4 v0, 0x0

    return v0
.end method
