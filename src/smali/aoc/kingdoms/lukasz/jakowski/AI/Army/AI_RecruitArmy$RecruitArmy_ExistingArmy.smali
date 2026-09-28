.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;
.super Ljava/lang/Object;
.source "AI_RecruitArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecruitArmy_ExistingArmy"
.end annotation


# instance fields
.field public armyID:I

.field public provinceID:I

.field public regimentsSize:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "provinceID"    # I
    .param p2, "armyID"    # I
    .param p3, "regimentsSize"    # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->provinceID:I

    .line 90
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->armyID:I

    .line 91
    iput p3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_RecruitArmy$RecruitArmy_ExistingArmy;->regimentsSize:I

    .line 92
    return-void
.end method
