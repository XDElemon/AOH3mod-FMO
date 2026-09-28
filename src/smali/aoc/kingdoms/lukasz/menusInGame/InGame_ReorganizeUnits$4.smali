.class Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits$4;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonArmy;
.source "InGame_ReorganizeUnits.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;Ljava/lang/String;IIIIIIII)V
    .registers 23
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;
    .param p2, "nArmy"    # Ljava/lang/String;
    .param p3, "numOfRegiments"    # I
    .param p4, "iCivID"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "niUnitTypeID"    # I
    .param p8, "nArmyID"    # I
    .param p9, "iID"    # I
    .param p10, "iProvinceID"    # I

    .line 128
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits$4;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmy;-><init>(Ljava/lang/String;IIIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 4

    .line 131
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits$4;->getCurrent()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    .line 132
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReorganizeUnits$4;->getCurrent()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeRegiment(I)V

    .line 133
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ReorganizeUnits()V

    .line 134
    return-void
.end method
