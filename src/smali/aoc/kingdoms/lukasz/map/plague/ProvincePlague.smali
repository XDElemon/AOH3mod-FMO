.class public Laoc/kingdoms/lukasz/map/plague/ProvincePlague;
.super Ljava/lang/Object;
.source "ProvincePlague.java"


# instance fields
.field public deaths:I

.field public id:I

.field public sinceTurnID:I

.field public turnsLeft:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    .line 8
    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->sinceTurnID:I

    .line 9
    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->deaths:I

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->turnsLeft:F

    .line 12
    return-void
.end method

.method public constructor <init>(IIFI)V
    .registers 6
    .param p1, "iPlagueID_InGame"    # I
    .param p2, "iSinceTurnID"    # I
    .param p3, "iDurationTurnsLeft"    # F
    .param p4, "iDeaths"    # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    .line 8
    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->sinceTurnID:I

    .line 9
    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->deaths:I

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->turnsLeft:F

    .line 15
    iput p1, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    .line 16
    iput p2, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->sinceTurnID:I

    .line 17
    iput p3, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->turnsLeft:F

    .line 18
    iput p4, p0, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->deaths:I

    .line 19
    return-void
.end method
