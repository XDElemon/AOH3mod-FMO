.class public Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;
.super Ljava/lang/Object;
.source "InGame_BattleArmyDefenders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BattleStatsRegiments"
.end annotation


# instance fields
.field armyID:I

.field iCivID:I

.field numOfRegiments:I

.field numOfUnits:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;

.field unitTypeID:I


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;IIII)V
    .registers 7
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;
    .param p2, "unitTypeID"    # I
    .param p3, "armyID"    # I
    .param p4, "numOfUnits"    # I
    .param p5, "iCivID"    # I

    .line 28
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p2, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->unitTypeID:I

    .line 30
    iput p3, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->armyID:I

    .line 31
    iput p4, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->numOfUnits:I

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->numOfRegiments:I

    .line 33
    iput p5, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->iCivID:I

    .line 34
    return-void
.end method
