.class public Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_AirForceOptions.java"


# static fields
.field public static a1MemIdx:I

.field public static dbgBtn:I

.field public static dbgErr:I

.field public static iActiveID:I

.field public static lTime:J

.field public static lastVisible:Z

.field public static selectedMask:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->a1MemIdx:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->dbgBtn:I

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->selectedMask:I

    return-void
.end method

.method public constructor <init>()V
    .registers 31

    move-object/from16 v8, p0

    invoke-direct {v8}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v13, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX()I

    move-result v11

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v12, v0, v1

    const/4 v14, 0x0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_69a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_69a

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/Airport;

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "AirForceOptions"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    move v5, v14

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v10, v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v15, 0x6

    add-int v7, v7, v15

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v14, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "AirForceSelectHint"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v13

    move/from16 v19, v13

    move/from16 v20, v14

    sub-int v2, v10, v13

    sub-int v2, v2, v13

    move/from16 v21, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v2, v2, v4

    move/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v14, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "AirForceAirport"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->iActiveID:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v3, Laoc/kingdoms/lukasz/map/battles/Airport;->maxCapacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v13

    move/from16 v19, v13

    move/from16 v20, v14

    sub-int v2, v10, v13

    sub-int v2, v2, v13

    move/from16 v21, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v2, v2, v4

    move/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v14, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v5, v10, v13

    sub-int v5, v5, v13

    div-int/lit8 v6, v5, 0x6

    sub-int v4, v5, v6

    sub-int v4, v4, v1

    add-int v7, v13, v5

    sub-int v7, v7, v6

    add-int v7, v7, v1

    const/16 v27, 0xe9

    add-int v2, v13, v27

    add-int/lit8 v3, v2, 0x18

    add-int/lit8 v26, v14, 0x3c

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/Icon;

    const/16 v17, 0x0
    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForTypeP(I)I
    move-result v17

    move/from16 v18, v3

    move/from16 v19, v26

    const/16 v20, 0x9c

    const/16 v21, 0x64

    const/16 v22, 0x12d

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menu_element/Icon;-><init>(IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/Icon;

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->airsSlot:I

    move/from16 v18, v2

    add-int/lit8 v19, v14, 0x2c

    const/16 v20, 0xcd

    const/16 v21, 0x84

    const/16 v22, 0xc8

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menu_element/Icon;-><init>(IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    const/16 v17, 0x2
    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airNameForTypeP(I)Ljava/lang/String;
    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v19, 0x6

    add-int/lit8 v20, v13, 0x3

    add-int/lit8 v21, v14, 0x46

    const/16 v22, 0x50

    const/16 v23, 0x20

    invoke-direct/range {v16 .. v23}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AirType."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    new-instance v16, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnSelect;

    move-object/from16 v17, v8

    move-object/from16 v18, v25

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    add-int/lit8 v20, v13, 0x6

    move/from16 v21, v13

    const/16 v27, 0xd4

    add-int v22, v14, v27

    sub-int v23, v4, v1

    sub-int v23, v23, v1

    const/16 v24, 0x1

    const/16 v25, 0x2
    invoke-static/range {v25 .. v25}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airNameForTypeP(I)Ljava/lang/String;
    move-result-object v25

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnSelect;-><init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;Ljava/lang/String;IIIIIILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    new-instance v16, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnBuild;

    move-object/from16 v17, v8

    const-string v18, "\u5efa\u9020"

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v20, 0x4

    move/from16 v21, v7

    const/16 v25, 0xd4

    add-int v22, v14, v25

    sub-int v23, v6, v1

    sub-int v23, v23, v1

    const/16 v24, 0x1

    const/16 v25, 0x2
    invoke-static/range {v25 .. v25}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airNameForTypeP(I)Ljava/lang/String;
    move-result-object v25

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnBuild;-><init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;Ljava/lang/String;IIIIIILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    const/16 v27, 0x125

    add-int v14, v14, v27

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v5, v10, v13

    sub-int v5, v5, v13

    div-int/lit8 v6, v5, 0x6

    sub-int v4, v5, v6

    sub-int v4, v4, v1

    add-int v7, v13, v5

    sub-int v7, v7, v6

    add-int v7, v7, v1

    const/16 v27, 0xe9

    add-int v2, v13, v27

    add-int/lit8 v3, v2, 0x18

    add-int/lit8 v26, v14, 0x3c

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/Icon;

    const/16 v17, 0x3
    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForTypeP(I)I
    move-result v17

    move/from16 v18, v3

    move/from16 v19, v26

    const/16 v20, 0x9c

    const/16 v21, 0x64

    const/16 v22, 0x12e

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menu_element/Icon;-><init>(IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/Icon;

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->airsSlot:I

    move/from16 v18, v2

    add-int/lit8 v19, v14, 0x2c

    const/16 v20, 0xcd

    const/16 v21, 0x84

    const/16 v22, 0xc8

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menu_element/Icon;-><init>(IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    const/16 v17, 0x1
    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airNameForTypeP(I)Ljava/lang/String;
    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v19, 0x6

    add-int/lit8 v20, v13, 0x3

    add-int/lit8 v21, v14, 0x46

    const/16 v22, 0x50

    const/16 v23, 0x20

    invoke-direct/range {v16 .. v23}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AirType."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    new-instance v16, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnSelect;

    move-object/from16 v17, v8

    move-object/from16 v18, v25

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    add-int/lit8 v20, v13, 0x6

    move/from16 v21, v13

    const/16 v27, 0xd4

    add-int v22, v14, v27

    sub-int v23, v4, v1

    sub-int v23, v23, v1

    const/16 v24, 0x2

    const/16 v25, 0x1
    invoke-static/range {v25 .. v25}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airNameForTypeP(I)Ljava/lang/String;
    move-result-object v25

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnSelect;-><init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;Ljava/lang/String;IIIIIILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    new-instance v16, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnBuild;

    move-object/from16 v17, v8

    const-string v18, "\u5efa\u9020"

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v20, 0x4

    move/from16 v21, v7

    const/16 v25, 0xd4

    add-int v22, v14, v25

    sub-int v23, v6, v1

    sub-int v23, v23, v1

    const/16 v24, 0x2

    const/16 v25, 0x1
    invoke-static/range {v25 .. v25}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airNameForTypeP(I)Ljava/lang/String;
    move-result-object v25

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnBuild;-><init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;Ljava/lang/String;IIIIIILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    const/16 v27, 0x125

    add-int v14, v14, v27

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v5, v10, v13

    sub-int v5, v5, v13

    div-int/lit8 v6, v5, 0x6

    sub-int v4, v5, v6

    sub-int v4, v4, v1

    add-int v7, v13, v5

    sub-int v7, v7, v6

    add-int v7, v7, v1

    const/16 v27, 0xe9

    add-int v2, v13, v27

    add-int/lit8 v3, v2, 0x18

    add-int/lit8 v26, v14, 0x3c

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/Icon;

    const/16 v17, 0x2
    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForTypeP(I)I
    move-result v17

    move/from16 v18, v3

    move/from16 v19, v26

    const/16 v20, 0x9c

    const/16 v21, 0x64

    const/16 v22, 0x12f

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menu_element/Icon;-><init>(IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/Icon;

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->airsSlot:I

    move/from16 v18, v2

    add-int/lit8 v19, v14, 0x2c

    const/16 v20, 0xcd

    const/16 v21, 0x84

    const/16 v22, 0xc8

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menu_element/Icon;-><init>(IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    const/16 v17, 0x0
    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airNameForTypeP(I)Ljava/lang/String;
    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v19, 0x6

    add-int/lit8 v20, v13, 0x3

    add-int/lit8 v21, v14, 0x46

    const/16 v22, 0x50

    const/16 v23, 0x20

    invoke-direct/range {v16 .. v23}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AirType."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    new-instance v16, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnSelect;

    move-object/from16 v17, v8

    move-object/from16 v18, v25

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    add-int/lit8 v20, v13, 0x6

    move/from16 v21, v13

    const/16 v27, 0xd4

    add-int v22, v14, v27

    sub-int v23, v4, v1

    sub-int v23, v23, v1

    const/16 v24, 0x3

    const/16 v25, 0x0
    invoke-static/range {v25 .. v25}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airNameForTypeP(I)Ljava/lang/String;
    move-result-object v25

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnSelect;-><init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;Ljava/lang/String;IIIIIILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    new-instance v16, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnBuild;

    move-object/from16 v17, v8

    const-string v18, "\u5efa\u9020"

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v20, 0x4

    move/from16 v21, v7

    const/16 v25, 0xd4

    add-int v22, v14, v25

    sub-int v23, v6, v1

    sub-int v23, v23, v1

    const/16 v24, 0x3

    const/16 v25, 0x0
    invoke-static/range {v25 .. v25}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airNameForTypeP(I)Ljava/lang/String;
    move-result-object v25

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnBuild;-><init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;Ljava/lang/String;IIIIIILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    const/16 v27, 0x125

    add-int v14, v14, v27

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v5, v10, v13

    sub-int v5, v5, v13

    div-int/lit8 v6, v5, 0x6

    sub-int v4, v5, v6

    sub-int v4, v4, v1

    add-int v7, v13, v5

    sub-int v7, v7, v6

    add-int v7, v7, v1

    const/16 v27, 0xe9

    add-int v2, v13, v27

    add-int/lit8 v3, v2, 0x18

    add-int/lit8 v26, v14, 0x3c

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/Icon;

    const/16 v17, 0x1
    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airImgForTypeP(I)I
    move-result v17

    move/from16 v18, v3

    move/from16 v19, v26

    const/16 v20, 0x9c

    const/16 v21, 0x64

    const/16 v22, 0x12c

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menu_element/Icon;-><init>(IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/Icon;

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->airsSlot:I

    move/from16 v18, v2

    add-int/lit8 v19, v14, 0x2c

    const/16 v20, 0xcd

    const/16 v21, 0x84

    const/16 v22, 0xc8

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menu_element/Icon;-><init>(IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    const/16 v17, 0x3
    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airNameForTypeP(I)Ljava/lang/String;
    move-result-object v17

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v19, 0x6

    add-int/lit8 v20, v13, 0x3

    add-int/lit8 v21, v14, 0x46

    const/16 v22, 0x50

    const/16 v23, 0x20

    invoke-direct/range {v16 .. v23}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->values()[Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AirType."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    new-instance v16, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnSelect;

    move-object/from16 v17, v8

    move-object/from16 v18, v25

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    add-int/lit8 v20, v13, 0x6

    move/from16 v21, v13

    const/16 v27, 0xd4

    add-int v22, v14, v27

    sub-int v23, v4, v1

    sub-int v23, v23, v1

    const/16 v24, 0x0

    const/16 v25, 0x3
    invoke-static/range {v25 .. v25}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airNameForTypeP(I)Ljava/lang/String;
    move-result-object v25

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnSelect;-><init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;Ljava/lang/String;IIIIIILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    new-instance v16, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnBuild;

    move-object/from16 v17, v8

    const-string v18, "\u5efa\u9020"

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v20, 0x4

    move/from16 v21, v7

    const/16 v25, 0xd4

    add-int v22, v14, v25

    sub-int v23, v6, v1

    sub-int v23, v23, v1

    const/16 v24, 0x0

    const/16 v25, 0x3
    invoke-static/range {v25 .. v25}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->airNameForTypeP(I)Ljava/lang/String;
    move-result-object v25

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnBuild;-><init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;Ljava/lang/String;IIIIIILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    const/16 v27, 0x125

    add-int v14, v14, v27

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v5, v10, v13

    sub-int v5, v5, v13

    div-int/lit8 v6, v5, 0x6

    add-int v7, v13, v5

    sub-int v7, v7, v6

    add-int v7, v7, v1

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/Icon;

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->airsPayNuke:I

    add-int/lit8 v18, v13, 0xa

    add-int/lit8 v19, v14, 0x28

    const/16 v20, 0x79

    const/16 v21, 0x79

    const/16 v22, 0xc9

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menu_element/Icon;-><init>(IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    const-string v17, "\u8f70\u70b8\u673a\u5f00\u542f\u6838\u6302\u8f7d"

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v19, 0x0

    add-int/lit8 v20, v13, 0x8

    const/16 v27, 0xa1

    add-int v21, v14, v27

    const/16 v22, 0x108

    const/16 v23, 0x2c

    invoke-direct/range {v16 .. v23}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticRed;

    const-string v17, "\u540e\u679c\u4e25\u91cd\u614e\u542f"

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v19, 0x0

    const/16 v27, 0x124

    add-int v20, v13, v27

    const/16 v27, 0xa1

    add-int v21, v14, v27

    const/16 v22, 0x100

    const/16 v23, 0x2c

    invoke-direct/range {v16 .. v23}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticRed;-><init>(Ljava/lang/String;IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnNuke;

    move-object/from16 v17, v8

    const-string v18, "\u5f00\u542f"

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v20, 0x6

    move/from16 v21, v7

    const/16 v27, 0x80

    add-int v22, v14, v27

    sub-int v23, v6, v1

    sub-int v23, v23, v1

    invoke-direct/range {v16 .. v23}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnNuke;-><init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;Ljava/lang/String;IIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/button/Button;

    const-string v17, ""

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v19, 0x0

    add-int/lit8 v20, v13, 0x8

    const/16 v27, 0x80

    add-int v21, v14, v27

    const/16 v22, 0x21c

    const/16 v23, 0x1

    invoke-direct/range {v16 .. v23}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>(Ljava/lang/String;IIIIIZ)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v27, 0xf4

    add-int v14, v14, v27

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/Icon;

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->airsPatrol:I

    add-int/lit8 v18, v13, 0xa

    add-int/lit8 v19, v14, 0x8

    const/16 v20, 0x44

    const/16 v21, 0x44

    const/16 v22, 0xce

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menu_element/Icon;-><init>(IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;

    move-object/from16 v17, v8

    const-string v18, "\u81ea\u52a8\u5de1\u903b"

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v20, 0x6

    add-int/lit8 v21, v13, 0x50

    move/from16 v22, v14

    sub-int v23, v10, v13

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, -0x54

    const/16 v24, 0x0

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;-><init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;Ljava/lang/String;IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setHeight(I)V

    const/16 v27, 0x64

    add-int v14, v14, v27

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/Icon;

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->airsAttack:I

    add-int/lit8 v18, v13, 0xa

    add-int/lit8 v19, v14, 0x8

    const/16 v20, 0x44

    const/16 v21, 0x44

    const/16 v22, 0xcf

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menu_element/Icon;-><init>(IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;

    move-object/from16 v17, v8

    const-string v18, "\u81ea\u52a8\u6253\u51fb"

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v20, 0x6

    add-int/lit8 v21, v13, 0x50

    move/from16 v22, v14

    sub-int v23, v10, v13

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, -0x54

    const/16 v24, 0x1

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;-><init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;Ljava/lang/String;IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setHeight(I)V

    const/16 v27, 0x64

    add-int v14, v14, v27

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/Icon;

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->airsReturn:I

    add-int/lit8 v18, v13, 0xa

    add-int/lit8 v19, v14, 0x8

    const/16 v20, 0x44

    const/16 v21, 0x44

    const/16 v22, 0xd0

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menu_element/Icon;-><init>(IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;

    move-object/from16 v17, v8

    const-string v18, "\u7d27\u6025\u53ec\u56de"

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v20, 0x6

    add-int/lit8 v21, v13, 0x50

    move/from16 v22, v14

    sub-int v23, v10, v13

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, -0x54

    const/16 v24, 0x3

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;-><init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;Ljava/lang/String;IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setHeight(I)V

    const/16 v27, 0x64

    add-int v14, v14, v27

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/Icon;

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->airsCancel:I

    add-int/lit8 v18, v13, 0xa

    add-int/lit8 v19, v14, 0x8

    const/16 v20, 0x44

    const/16 v21, 0x44

    const/16 v22, 0xd1

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menu_element/Icon;-><init>(IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v16, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;

    move-object/from16 v17, v8

    const-string v18, "\u53d6\u6d88"

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v20, 0x6

    add-int/lit8 v21, v13, 0x50

    move/from16 v22, v14

    sub-int v23, v10, v13

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, -0x54

    const/16 v24, 0x4

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnMission;-><init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;Ljava/lang/String;IIIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setHeight(I)V

    const/16 v27, 0x64

    add-int v14, v14, v27

    goto :goto_6fe

    :cond_69a
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "AirForce"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    move v5, v14

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v10, v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v15, v15, 0x6

    add-int v7, v7, v15

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v14, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "AirForceNoAirports"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v18, v13

    move/from16 v19, v13

    move/from16 v20, v14

    sub-int v2, v10, v13

    sub-int v2, v2, v13

    move/from16 v21, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v2, v2, v4

    move/from16 v22, v2

    invoke-direct/range {v16 .. v22}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v14, v0

    :goto_6fe
    new-instance v16, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnClose;

    move-object/from16 v17, v8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "AirForceClose"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    move/from16 v20, v13

    move/from16 v21, v13

    move/from16 v22, v14

    move/from16 v23, v10

    invoke-direct/range {v16 .. v23}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$BtnClose;-><init>(Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;Ljava/lang/String;IIIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v14, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v12

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    new-instance v16, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    move-object/from16 v2, v16

    move v3, v1

    move v4, v1

    move v5, v10

    move v6, v0

    invoke-direct/range {v2 .. v6}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v14, v9

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$FlagTitle;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "AirForceOptions"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions$FlagTitle;-><init>(Ljava/lang/String;Ljava/lang/String;ZZI)V

    move-object v9, v0

    move v13, v12

    move v12, v10

    move v10, v11

    move v11, v13

    move v13, v15

    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v8 .. v16}, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .registers 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_AirForce(Z)V

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "menuIsActive"    # Z
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_20

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    add-int p2, v0, v1

    :cond_20
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public setVisible(Z)V
    .registers 4
    .param p1, "visible"    # Z

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->lastVisible:Z

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    move v1, p1

    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->lastVisible:Z

    if-eqz v1, :cond_10

    if-nez v0, :cond_10

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/AirForce/InGame_AirForceOptions;->lTime:J

    :cond_10
    return-void
.end method

.method public update()V
    .registers 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->update()V

    return-void
.end method
