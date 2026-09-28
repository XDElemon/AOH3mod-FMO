.class public Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_ID_CoreRemove;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_Province_ID_CoreRemove.java"


# instance fields
.field public civA:Ljava/lang/String;

.field public provID:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "provID"    # I
    .param p2, "civA"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 14
    iput p1, p0, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_ID_CoreRemove;->provID:I

    .line 15
    iput-object p2, p0, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_ID_CoreRemove;->civA:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 60
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->core:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 4

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Remove"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Core"

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
    .registers 3

    .line 38
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_ID_CoreRemove;->civA:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, "idA":I
    if-lez v0, :cond_11

    .line 41
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 44
    :cond_11
    const-string v1, " -- "

    return-object v1
.end method

.method public getStringRight2(I)Ljava/lang/String;
    .registers 3
    .param p1, "bonus_duration"    # I

    .line 50
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_ID_CoreRemove;->provID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 51
    :catch_b
    move-exception v0

    .line 52
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 55
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateCiv(II)V
    .registers 5
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 21
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_ID_CoreRemove;->civA:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v0

    .line 23
    .local v0, "idA":I
    if-lez v0, :cond_11

    .line 24
    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_ID_CoreRemove;->provID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->removeCore(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 28
    .end local v0    # "idA":I
    :cond_11
    goto :goto_16

    .line 26
    :catch_12
    move-exception v0

    .line 27
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 29
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_16
    return-void
.end method
