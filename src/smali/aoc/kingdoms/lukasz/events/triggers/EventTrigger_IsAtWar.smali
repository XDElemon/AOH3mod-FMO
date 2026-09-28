.class public Laoc/kingdoms/lukasz/events/triggers/EventTrigger_IsAtWar;
.super Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;
.source "EventTrigger_IsAtWar.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 30
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->war:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .line 15
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "IaAtWar"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText2()Ljava/lang/String;
    .registers 2

    .line 20
    const-string v0, ""

    return-object v0
.end method

.method public getText3()Ljava/lang/String;
    .registers 2

    .line 25
    const-string v0, ""

    return-object v0
.end method

.method public outCondition(II)Z
    .registers 4
    .param p1, "iCivID"    # I
    .param p2, "iProvinceID"    # I

    .line 10
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isAtWar()Z

    move-result v0

    return v0
.end method
