.class Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$5;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;
.source "InGame_BuildingsGroupID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;IZIIIIIZZZZ)V
    .registers 27
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;
    .param p2, "nProvinceID"    # I
    .param p3, "built"    # Z
    .param p4, "building"    # I
    .param p5, "buildingID"    # I
    .param p6, "iPosX"    # I
    .param p7, "iPosY"    # I
    .param p8, "nWidth"    # I
    .param p9, "isClickable"    # Z
    .param p10, "dueToTech"    # Z
    .param p11, "dueToReligion"    # Z
    .param p12, "dueToGovernment"    # Z

    .line 282
    move-object v12, p0

    move-object v13, p1

    iput-object v13, v12, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$5;->this$0:Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID;

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;-><init>(IZIIIIIZZZZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 4

    .line 285
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 286
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyTree(Z)V

    goto :goto_30

    .line 289
    :cond_f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyChoose(Z)V

    .line 290
    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$5;->getValue1()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredTechID:[I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroupID$5;->getValue2()I

    move-result v2

    aget v0, v0, v2

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->centerToTechID:I

    .line 291
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_TechnologyTree(ZZ)V

    .line 293
    :goto_30
    return-void
.end method
