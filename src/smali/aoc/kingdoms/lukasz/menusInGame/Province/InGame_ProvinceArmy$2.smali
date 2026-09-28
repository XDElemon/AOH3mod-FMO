.class Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$2;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral;
.source "InGame_ProvinceArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;Ljava/lang/String;IIIIIIIIILjava/lang/String;I)V
    .registers 29
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;
    .param p2, "sName"    # Ljava/lang/String;
    .param p3, "iCivID"    # I
    .param p4, "iAttack"    # I
    .param p5, "iDefense"    # I
    .param p6, "iPosX"    # I
    .param p7, "iPosY"    # I
    .param p8, "imageID"    # I
    .param p9, "iDay"    # I
    .param p10, "iMonth"    # I
    .param p11, "iYear"    # I
    .param p12, "sIMG"    # Ljava/lang/String;
    .param p13, "combatExperience"    # I

    .line 186
    move-object v13, p0

    move-object/from16 v14, p1

    iput-object v14, v13, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;

    move-object v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, p13

    invoke-direct/range {v0 .. v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral;-><init>(Ljava/lang/String;IIIIIIIIILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 6

    .line 194
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Generals()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 195
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Generals(Z)V

    goto :goto_57

    .line 198
    :cond_f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmyKeyID(Ljava/lang/String;)I

    move-result v0

    .line 200
    .local v0, "tDivID":I
    if-ltz v0, :cond_3a

    .line 201
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->iActiveID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I

    sput v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignProvinceID:I

    .line 202
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->key:Ljava/lang/String;

    sput-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignArmyKey:Ljava/lang/String;

    goto :goto_4a

    .line 205
    :cond_3a
    const/4 v2, -0x1

    sput v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->assignProvinceID:I

    .line 206
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ArmyNotFound"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    .line 209
    :goto_4a
    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Generals;->backButton:Z

    .line 210
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Generals()V

    .line 211
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Generals(Z)V

    .line 213
    .end local v0    # "tDivID":I
    :goto_57
    return-void
.end method

.method public actionElementPPM()V
    .registers 1

    .line 189
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceArmy;->centerToArmy()V

    .line 190
    return-void
.end method
