.class Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$14;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegiment;
.source "InGame_Battle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIIIIIZZ)V
    .registers 23
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;
    .param p2, "nCivID"    # I
    .param p3, "imageID"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "id"    # I
    .param p7, "offsetY"    # I
    .param p8, "attackRange"    # I
    .param p9, "secondLine"    # Z
    .param p10, "defenders"    # Z

    .line 389
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$14;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegiment;-><init>(IIIIIIIZZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 2

    .line 397
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$14;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->updateAnimationStatus()V

    .line 398
    return-void
.end method

.method public getBattleRegiment(II)Laoc/kingdoms/lukasz/map/battles/BattleRegiment;
    .registers 4
    .param p1, "battleID"    # I
    .param p2, "id"    # I

    .line 392
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    return-object v0
.end method
