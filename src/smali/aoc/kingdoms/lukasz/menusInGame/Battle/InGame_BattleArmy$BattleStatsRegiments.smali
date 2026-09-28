.class public Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy$BattleStatsRegiments;
.super Ljava/lang/Object;
.source "InGame_BattleArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BattleStatsRegiments"
.end annotation


# instance fields
.field public armyID:I

.field public iCivID:I

.field public numOfRegiments:I

.field public numOfUnits:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;

.field public unitTypeID:I


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;IIII)V
    .registers 7
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;
    .param p2, "unitTypeID"    # I
    .param p3, "armyID"    # I
    .param p4, "numOfUnits"    # I
    .param p5, "iCivID"    # I

    .line 28
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy$BattleStatsRegiments;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p2, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy$BattleStatsRegiments;->unitTypeID:I

    .line 30
    iput p3, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy$BattleStatsRegiments;->armyID:I

    .line 31
    iput p4, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy$BattleStatsRegiments;->numOfUnits:I

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy$BattleStatsRegiments;->numOfRegiments:I

    .line 33
    iput p5, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy$BattleStatsRegiments;->iCivID:I

    .line 34
    return-void
.end method
