.class Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$7;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;
.source "InGame_ReleaseAVassal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;Ljava/lang/String;IIIIIIZI)V
    .registers 23
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "nHeight"    # I
    .param p9, "isClickable"    # Z
    .param p10, "imageID"    # I

    .line 250
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$7;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;

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

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Image;-><init>(Ljava/lang/String;IIIIIIZI)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 6

    .line 253
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "Provinces"

    const-string v2, ": "

    if-lez v0, :cond_341

    .line 254
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-lez v0, :cond_5f

    .line 255
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;I)V

    .line 256
    return-void

    .line 259
    :cond_5f
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_69
    if-ltz v0, :cond_bc

    .line 260
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iLordID:I

    if-ne v2, v3, :cond_b9

    .line 261
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V

    .line 262
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->lProvinces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->addCore(I)V

    .line 259
    :cond_b9
    add-int/lit8 v0, v0, -0x1

    goto :goto_69

    .line 266
    .end local v0    # "i":I
    :cond_bc
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->liberateVassal:Z

    if-eqz v0, :cond_d2

    .line 267
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V

    goto :goto_e1

    .line 270
    :cond_d2
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iLordID:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setPuppetOfCivID(I)V

    .line 273
    :goto_e1
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    const/high16 v2, 0x41c80000    # 25.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_fb

    .line 274
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    .line 277
    :cond_fb
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_113

    .line 278
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    .line 281
    :cond_113
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_12b

    .line 282
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iput v2, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fDiplomacy:F

    .line 286
    :cond_12b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_12c
    :try_start_12c
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iLordID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_16e

    .line 287
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iLordID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lTechResearched:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16b

    .line 288
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v2

    if-nez v2, :cond_16b

    .line 289
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addTechnology(IZ)V
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_16b} :catch_16f

    .line 286
    :cond_16b
    add-int/lit8 v0, v0, 0x1

    goto :goto_12c

    .line 295
    .end local v0    # "i":I
    :cond_16e
    goto :goto_170

    .line 293
    :catch_16f
    move-exception v0

    .line 297
    :goto_170
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->selectedCivTAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a8

    .line 298
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->buildLaws()V

    .line 300
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->initMaxLaws()V

    .line 301
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->initGoodsProduced()V

    .line 303
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateBestUnits()V

    .line 305
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_SelectCivilization_Add_List;->selectedCivTAG:Ljava/lang/String;

    .line 308
    :cond_1a8
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->changeReligion:Z

    if-eqz v0, :cond_1df

    .line 309
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iLordID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    if-eq v0, v2, :cond_1df

    .line 310
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iLordID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v2

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setReligionID_UpdateBonuses(I)V

    .line 314
    :cond_1df
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->changeGovernment:Z

    if-eqz v0, :cond_244

    .line 315
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iLordID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v2

    if-eq v0, v2, :cond_244

    .line 316
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$7$1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeGovernmentType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iLordID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iLordID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v4

    invoke-direct {v0, p0, v2, v3, v4}, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$7$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$7;Ljava/lang/String;II)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    .line 328
    :cond_244
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_2a9

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    if-eq v0, v2, :cond_26d

    goto :goto_2a9

    .line 332
    :cond_26d
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_2b4

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    if-ne v0, v2, :cond_2b4

    .line 333
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/province/Province;->setIsCapital(Z)V

    goto :goto_2b4

    .line 329
    :cond_2a9
    :goto_2a9
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->moveCapital_ToLargestProvince()V

    .line 337
    :cond_2b4
    :goto_2b4
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->playAsVassal:Z

    if-eqz v0, :cond_2e3

    .line 338
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    .line 340
    invoke-static {}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame;->clearPlayerData()V

    .line 342
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->updateCurrentSituation()V

    .line 343
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->updateArmyImgID()V

    .line 345
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Right()V

    .line 346
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Wars()V

    .line 347
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Messages()V

    .line 348
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Notifications()V

    .line 351
    :cond_2e3
    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->buildCivilizationRanking()V

    .line 353
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iLordID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    .line 354
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    .line 356
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->liberateVassal:Z

    if-eqz v1, :cond_2ff

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Liberation"

    goto :goto_305

    :cond_2ff
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getVassal()Ljava/lang/String;

    move-result-object v2

    :goto_305
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoCrown:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    .line 359
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CurrentSituation(Z)V

    .line 361
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RELEASE_VASSAL:I

    if-ne v0, v1, :cond_335

    .line 362
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    .line 365
    :cond_335
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v0

    if-nez v0, :cond_36b

    .line 366
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->action1()V

    goto :goto_36b

    .line 370
    :cond_341
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;->releaseVassalData:Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->lProvinces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;I)V

    .line 372
    :cond_36b
    :goto_36b
    return-void
.end method

.method public buildElementHover()V
    .registers 7

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getReleaseAVassal()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->vassal:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 384
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;Z)V

    iput-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$7;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 385
    return-void
.end method
