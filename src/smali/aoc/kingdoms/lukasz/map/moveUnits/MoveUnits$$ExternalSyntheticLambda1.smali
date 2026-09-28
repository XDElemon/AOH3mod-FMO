.class public final synthetic Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .registers 4

    .line 0
    check-cast p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->getFCost()F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method
