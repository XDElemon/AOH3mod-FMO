.class Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "EventOutcome_SetCiv2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2;->updateCiv(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2;
    .param p2, "taskKey"    # Ljava/lang/String;
    .param p3, "id"    # I

    .line 25
    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2$1;->this$0:Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 7

    .line 28
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2$1;->taskKey:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v0

    .line 30
    .local v0, "civData":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    iget v1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2$1;->id:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_SetCiv2$1;->taskKey:Ljava/lang/String;

    iget v3, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    iget v4, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    iget v5, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    invoke-virtual {v1, v2, v3, v4, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivilizationTAG(Ljava/lang/String;III)V

    .line 31
    return-void
.end method
