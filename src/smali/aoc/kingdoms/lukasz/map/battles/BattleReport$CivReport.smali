.class public Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;
.super Ljava/lang/Object;
.source "BattleReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/battles/BattleReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CivReport"
.end annotation


# instance fields
.field public iCasualties:I

.field public iCivID:I

.field public iRetreated:I

.field public iSoldiers:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "iCivID"    # I
    .param p2, "iSoldiers"    # I
    .param p3, "iCasualties"    # I
    .param p4, "iRetreated"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iCivID:I

    .line 31
    iput p2, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iSoldiers:I

    .line 32
    iput p3, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iCasualties:I

    .line 33
    iput p4, p0, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iRetreated:I

    .line 34
    return-void
.end method
