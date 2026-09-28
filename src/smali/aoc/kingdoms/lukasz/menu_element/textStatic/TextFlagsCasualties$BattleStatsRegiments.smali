.class public Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;
.super Ljava/lang/Object;
.source "TextFlagsCasualties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BattleStatsRegiments"
.end annotation


# instance fields
.field public armyID:I

.field public numOfUnits:I

.field public unitTypeID:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "unitTypeID"    # I
    .param p2, "armyID"    # I
    .param p3, "numOfUnits"    # I

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    .line 460
    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->armyID:I

    .line 461
    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->numOfUnits:I

    .line 462
    return-void
.end method
