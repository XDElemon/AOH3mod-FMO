.class public Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;
.super Ljava/lang/Object;
.source "Diplomacy_RelationsAction.java"


# instance fields
.field public iCivID:I

.field public iTurnID:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "iCivID"    # I
    .param p2, "iTurnID"    # I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    .line 9
    iput v0, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iTurnID:I

    .line 12
    iput p1, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iCivID:I

    .line 13
    iput p2, p0, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy_RelationsAction;->iTurnID:I

    .line 14
    return-void
.end method
