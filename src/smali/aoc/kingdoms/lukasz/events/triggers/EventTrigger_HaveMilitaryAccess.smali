.class public Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveMilitaryAccess;
.super Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;
.source "EventTrigger_HaveMilitaryAccess.java"


# instance fields
.field public civA:Ljava/lang/String;

.field public civB:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "civA"    # Ljava/lang/String;
    .param p2, "civB"    # Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;-><init>()V

    .line 12
    iput-object p1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveMilitaryAccess;->civA:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveMilitaryAccess;->civB:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 45
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->militaryAccess:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .line 30
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "MilitaryAccess"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText2()Ljava/lang/String;
    .registers 4

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveMilitaryAccess;->civA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveMilitaryAccess;->civB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText3()Ljava/lang/String;
    .registers 2

    .line 40
    const-string v0, ""

    return-object v0
.end method

.method public outCondition(II)Z
    .registers 6
    .param p1, "iCivID"    # I
    .param p2, "iProvinceID"    # I

    .line 18
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveMilitaryAccess;->civA:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v0

    .line 19
    .local v0, "idA":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_HaveMilitaryAccess;->civB:Ljava/lang/String;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v1

    .line 21
    .local v1, "idB":I
    if-lez v0, :cond_1b

    if-lez v1, :cond_1b

    .line 22
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->haveMilitaryAccess(I)Z

    move-result v2

    return v2

    .line 25
    :cond_1b
    const/4 v2, 0x0

    return v2
.end method
