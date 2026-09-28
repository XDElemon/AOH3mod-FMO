.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexCivilization;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_AnnexCivilization.java"


# instance fields
.field public annexCivTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "annexCivTag"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexCivilization;->annexCivTag:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexCivilization;->annexCivTag:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 56
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 4

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Annexation"

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

.method public getStringRight()Ljava/lang/String;
    .registers 4

    .line 44
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexCivilization;->annexCivTag:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v0

    .line 46
    .local v0, "annexCivID":I
    if-lez v0, :cond_1b

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    if-lez v1, :cond_1b

    .line 47
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 50
    :cond_1b
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "None"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateCiv(II)V
    .registers 7
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 19
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AnnexCivilization;->annexCivTag:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v0

    .line 21
    .local v0, "annexCivID":I
    if-eq v0, p1, :cond_3b

    if-lez v0, :cond_3b

    .line 22
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_3b

    .line 24
    :try_start_16
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v2

    .line 26
    .local v2, "pID":I
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p1}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    .line 28
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->removeArmyCivID(I)V

    .line 29
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p1}, Laoc/kingdoms/lukasz/map/province/Province;->addCore(I)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_33} :catch_34

    .line 32
    goto :goto_38

    .line 30
    .end local v2    # "pID":I
    :catch_34
    move-exception v2

    .line 31
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 22
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 35
    .end local v1    # "i":I
    :cond_3b
    return-void
.end method
