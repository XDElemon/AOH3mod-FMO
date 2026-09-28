.class Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$3;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;
.source "InGame_AllianceSpecialReformHRE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sText2"    # Ljava/lang/String;
    .param p4, "imageID"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "nHeight"    # I
    .param p9, "maxIconWidth"    # I

    .line 108
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 4

    .line 112
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 113
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyTree(Z)V

    goto :goto_24

    .line 116
    :cond_f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyChoose(Z)V

    .line 117
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->hre:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_HRE;->HRE_REFORM_COST_REQUIRED_TECH:[I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/AllianceSpecial/InGame_AllianceSpecialReformHRE;->reformID:I

    aget v0, v0, v2

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->centerToTechID:I

    .line 118
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_TechnologyTree(ZZ)V

    .line 120
    :goto_24
    return-void
.end method
