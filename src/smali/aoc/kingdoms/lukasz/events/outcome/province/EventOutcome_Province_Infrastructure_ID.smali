.class public Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_ID;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_Province_Infrastructure_ID.java"


# instance fields
.field public provID:I

.field public value:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "provID"    # I
    .param p2, "value"    # I

    .line 13
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 14
    iput p1, p0, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_ID;->provID:I

    .line 15
    iput p2, p0, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_ID;->value:I

    .line 16
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 50
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 4

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Infrastructure"

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

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_ID;->value:I

    if-lez v1, :cond_c

    const-string v1, "+"

    goto :goto_e

    :cond_c
    const-string v1, ""

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_ID;->value:I

    int-to-float v1, v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringRight2(I)Ljava/lang/String;
    .registers 3
    .param p1, "bonus_duration"    # I

    .line 40
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_ID;->provID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 41
    :catch_b
    move-exception v0

    .line 42
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 45
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateProvince(I)V
    .registers 5
    .param p1, "iProvinceID"    # I

    .line 21
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_ID;->provID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_ID;->provID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/events/outcome/province/EventOutcome_Province_Infrastructure_ID;->value:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setInfrastructure(I)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 24
    goto :goto_1b

    .line 22
    :catch_17
    move-exception v0

    .line 23
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 25
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1b
    return-void
.end method
