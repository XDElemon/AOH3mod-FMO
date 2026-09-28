.class public Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ConstructionCostOver;
.super Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;
.source "EventTrigger_CivAdvisor_ConstructionCostOver.java"


# instance fields
.field public advisorType:I

.field public value:F


# direct methods
.method public constructor <init>(IF)V
    .registers 3
    .param p1, "advisorType"    # I
    .param p2, "value"    # F

    .line 12
    invoke-direct {p0}, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_Value;-><init>()V

    .line 13
    iput p1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ConstructionCostOver;->advisorType:I

    .line 14
    iput p2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ConstructionCostOver;->value:F

    .line 15
    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 49
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 4

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ConstructionCostOver;->advisorType:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisorGroupName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ConstructionCost"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText2()Ljava/lang/String;
    .registers 4

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ConstructionCostOver;->value:F

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText3()Ljava/lang/String;
    .registers 5

    .line 38
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v1, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ConstructionCostOver;->advisorType:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    const-string v1, ": "

    const-string v2, "Currently"

    const-string v3, " ["

    if-nez v0, :cond_44

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "NoAdvisor"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 42
    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iget v2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ConstructionCostOver;->advisorType:I

    .line 43
    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    return-object v0
.end method

.method public outCondition(II)Z
    .registers 6
    .param p1, "iCivID"    # I
    .param p2, "iProvinceID"    # I

    .line 19
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    iget v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ConstructionCostOver;->advisorType:I

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 20
    return v1

    .line 23
    :cond_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    iget v0, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ConstructionCostOver;->advisorType:I

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getAdvisor(II)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/advisors/Advisor;->ConstructionCost:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/events/triggers/EventTrigger_CivAdvisor_ConstructionCostOver;->value:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_23

    const/4 v1, 0x1

    :cond_23
    return v1
.end method
