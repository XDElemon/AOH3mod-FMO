.class public final synthetic Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;


# direct methods
.method public synthetic constructor <init>(Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter$$ExternalSyntheticLambda0;->f$0:Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter$$ExternalSyntheticLambda0;->f$0:Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_Set_Counter;->lambda$updateCiv$0$aoc-kingdoms-lukasz-events-outcome-EventOutcome_Set_Counter(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
