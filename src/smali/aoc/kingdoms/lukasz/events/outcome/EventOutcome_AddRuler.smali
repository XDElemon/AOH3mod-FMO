.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;
.super Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.source "EventOutcome_AddRuler.java"


# instance fields
.field public BornDay:I

.field public BornMonth:I

.field public BornYear:I

.field public imageID:Ljava/lang/String;

.field public sName:Ljava/lang/String;

.field public sSurname:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .registers 7
    .param p1, "sName"    # Ljava/lang/String;
    .param p2, "sSurname"    # Ljava/lang/String;
    .param p3, "imageID"    # Ljava/lang/String;
    .param p4, "BornDay"    # I
    .param p5, "BornMonth"    # I
    .param p6, "BornYear"    # I

    .line 21
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;-><init>()V

    .line 22
    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->sName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->sSurname:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->imageID:Ljava/lang/String;

    .line 26
    iput p4, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->BornDay:I

    .line 27
    iput p5, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->BornMonth:I

    .line 28
    iput p6, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->BornYear:I

    .line 29
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 58
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->council:I

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 4

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Ruler"

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

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->sName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->sSurname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCiv(II)V
    .registers 16
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 34
    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->BornYear:I

    .line 36
    .local v0, "nBornYear":I
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sub-int/2addr v1, v0

    const/16 v2, 0xa

    if-lt v1, v2, :cond_10

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sub-int/2addr v1, v0

    const/16 v2, 0x63

    if-le v1, v2, :cond_23

    .line 37
    :cond_10
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_YEARS_OLD_MIN:I

    sub-int/2addr v1, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_YEARS_OLD_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    sub-int v0, v1, v2

    .line 40
    :cond_23
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    new-instance v12, Laoc/kingdoms/lukasz/map/Ruler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->sName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->sSurname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->imageID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->BornDay:I

    iget v6, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddRuler;->BornMonth:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v12

    move v2, p1

    move v7, v0

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/map/Ruler;-><init>(ILjava/lang/String;Ljava/lang/String;IIIIZZ)V

    iput-object v12, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6a

    .line 43
    .end local v0    # "nBornYear":I
    goto :goto_6e

    .line 41
    :catch_6a
    move-exception v0

    .line 42
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 44
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_6e
    return-void
.end method
