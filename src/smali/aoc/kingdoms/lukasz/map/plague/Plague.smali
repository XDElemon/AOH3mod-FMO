.class public Laoc/kingdoms/lukasz/map/plague/Plague;
.super Ljava/lang/Object;
.source "Plague.java"


# instance fields
.field public EXPANSION_MODIFIER:F

.field public EXPANSION_SCORE:F

.field public fB:F

.field public fDeathRate:F

.field public fDevastation:F

.field public fG:F

.field public fR:F

.field public iDeaths:I

.field public iDurationTurnsLeft:I

.field public iDurationTurnsLeft_BEGINNING:I

.field public iImageID:I

.field public iPlagueID_InGame:I

.field public iProvincesSize:I

.field public lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lProvinces_Active:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public nS:Z

.field public sName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iPlagueID_InGame:I

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces:Ljava/util/List;

    .line 19
    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iProvincesSize:I

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    .line 23
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDeathRate:F

    .line 24
    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft:I

    .line 25
    iput v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDevastation:F

    .line 27
    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDeaths:I

    .line 29
    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iImageID:I

    .line 31
    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft_BEGINNING:I

    .line 42
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->nS:Z

    .line 46
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;FFFIFIFIF)V
    .registers 14
    .param p1, "outbreakProvince"    # I
    .param p2, "sName"    # Ljava/lang/String;
    .param p3, "fR"    # F
    .param p4, "fG"    # F
    .param p5, "fB"    # F
    .param p6, "nPlagueID_InGame"    # I
    .param p7, "fDeathRate"    # F
    .param p8, "iDurationTurnsLeft"    # I
    .param p9, "EXPANSION_MODIFIER"    # F
    .param p10, "iImageID"    # I
    .param p11, "fDevastation"    # F

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iPlagueID_InGame:I

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces:Ljava/util/List;

    .line 19
    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iProvincesSize:I

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    .line 23
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDeathRate:F

    .line 24
    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft:I

    .line 25
    iput v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDevastation:F

    .line 27
    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDeaths:I

    .line 29
    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iImageID:I

    .line 31
    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft_BEGINNING:I

    .line 42
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->nS:Z

    .line 49
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v0, p2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->sName:Ljava/lang/String;

    .line 50
    iput p6, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iPlagueID_InGame:I

    .line 52
    iput p3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fR:F

    .line 53
    iput p4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fG:F

    .line 54
    iput p5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fB:F

    .line 56
    iput p10, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iImageID:I

    .line 58
    iput p11, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDevastation:F

    .line 60
    iput p7, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDeathRate:F

    .line 61
    iput p8, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft:I

    .line 62
    iput p8, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft_BEGINNING:I

    .line 64
    iput p9, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_MODIFIER:F

    .line 66
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/plague/Plague;->addProvince(I)V

    .line 67
    return-void
.end method


# virtual methods
.method protected final addProvince(I)V
    .registers 13
    .param p1, "nProvinceID"    # I

    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iProvincesSize:I

    if-ge v0, v1, :cond_17

    .line 227
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_14

    .line 228
    return-void

    .line 226
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 232
    .end local v0    # "i":I
    :cond_17
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->t:I

    .line 234
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    if-eqz v0, :cond_28

    .line 235
    return-void

    .line 238
    :cond_28
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    new-instance v1, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v2, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iPlagueID_InGame:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft:I

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v6, 0x1770

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x461c4000    # 10000.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x3f200000    # 0.625f

    add-float/2addr v5, v6

    mul-float v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;-><init>(IIFI)V

    iput-object v1, v0, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    .line 240
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->nS:Z

    const/4 v1, 0x1

    if-nez v0, :cond_ad

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v2, :cond_ad

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-lez v0, :cond_ad

    .line 241
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->nS:Z

    .line 243
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->SEND_NOTIFICATION_CHANCE:I

    if-ge v0, v2, :cond_ad

    .line 244
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    new-instance v10, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->DISEASE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->sName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Disease"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->disease:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    iget-object v8, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->sName:Ljava/lang/String;

    move-object v2, v10

    move v9, p1

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;Ljava/lang/String;I)V

    invoke-virtual {v0, v10}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->addNotification(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;)V

    .line 249
    :cond_ad
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    move-result-object v0

    iget v2, v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->n:I

    add-int/2addr v2, v1

    iput v2, v0, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->n:I

    .line 251
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iProvincesSize:I

    .line 255
    return-void
.end method

.method protected final getDeaths()I
    .registers 2

    .line 292
    iget v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDeaths:I

    return v0
.end method

.method protected final getDurationPercLEFT()F
    .registers 3

    .line 276
    iget v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft:I

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft_BEGINNING:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected final getDurationPercLEFT(I)F
    .registers 4
    .param p1, "nNumOfTurns"    # I

    .line 280
    int-to-float v0, p1

    iget v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft_BEGINNING:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected final getNumOfProvinces_Active()I
    .registers 2

    .line 300
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getNumOfProvinces_Total()I
    .registers 2

    .line 296
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected final getOutbreakProvinceID()I
    .registers 3

    .line 285
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_d} :catch_e

    return v0

    .line 286
    :catch_e
    move-exception v0

    .line 287
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, -0x1

    return v1
.end method

.method protected final getPlagueID_InGame()I
    .registers 2

    .line 272
    iget v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iPlagueID_InGame:I

    return v0
.end method

.method protected final getPlagueName()Ljava/lang/String;
    .registers 4

    .line 261
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->sName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    return-object v0

    .line 262
    :catch_3
    move-exception v0

    .line 263
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Plague"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final getSpreadScore(I)I
    .registers 7
    .param p1, "nProvinceID"    # I

    .line 206
    const/4 v0, 0x0

    .line 208
    .local v0, "tempScore":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v1, v2, :cond_35

    .line 209
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    if-nez v2, :cond_32

    .line 210
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v3, 0x1

    :cond_31
    add-int/2addr v0, v3

    .line 208
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 214
    .end local v1    # "k":I
    :cond_35
    const/4 v1, 0x0

    .restart local v1    # "k":I
    :goto_36
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_69

    .line 215
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    if-nez v2, :cond_66

    .line 216
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v2

    if-eqz v2, :cond_64

    const/4 v2, 0x1

    goto :goto_65

    :cond_64
    const/4 v2, 0x2

    :goto_65
    add-int/2addr v0, v2

    .line 214
    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 220
    .end local v1    # "k":I
    :cond_69
    return v0
.end method

.method protected final runDisease()V
    .registers 13

    .line 72
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_25a

    .line 73
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    if-eqz v1, :cond_256

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v1, v1, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->id:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/plague/Plague;->getPlagueID_InGame()I

    move-result v2

    if-ne v1, v2, :cond_256

    .line 74
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v1

    .line 76
    .local v1, "nPopBefore":I
    int-to-float v2, v1

    iget v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDeathRate:F

    const v4, 0x3ea66666    # 0.325f

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/plague/Plague;->getDurationPercLEFT()F

    move-result v5

    mul-float v5, v5, v4

    const v4, 0x3e666666    # 0.225f

    add-float/2addr v5, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    const v6, 0x3f0ccccd    # 0.55f

    mul-float v4, v4, v6

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v4, v6

    add-float/2addr v5, v4

    mul-float v3, v3, v5

    mul-float v2, v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->DISEASE_MAX_DEATH_RATE_REDUCTION:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->DiseaseDeathRate:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DiseaseDeathRate:F

    add-float/2addr v4, v5

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getInfrastructure()I

    move-result v5

    int-to-float v5, v5

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->infrastructure:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Infrastructure;->INFRASTRUCTURE_DISEASE_DEATH_RATE_PER_LVL:F

    mul-float v5, v5, v7

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    mul-float v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 78
    .local v2, "nDeaths":I
    if-lez v2, :cond_1ce

    .line 79
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "k":I
    :goto_ea
    if-ltz v3, :cond_14f

    .line 80
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationCivID(I)I

    move-result v5

    iget-object v7, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationID(I)I

    move-result v7

    int-to-double v7, v7

    int-to-float v9, v2

    iget-object v10, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationID(I)I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v1

    div-float/2addr v10, v11

    mul-float v9, v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v7, v9

    double-to-int v7, v7

    invoke-virtual {v4, v5, v7}, Laoc/kingdoms/lukasz/map/province/Province;->setPopulationOfCivID(II)Z

    .line 79
    add-int/lit8 v3, v3, -0x1

    goto :goto_ea

    .line 83
    .end local v3    # "k":I
    :cond_14f
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v3

    sub-int/2addr v1, v3

    .line 85
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v4, v3, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->deaths:I

    add-int/2addr v4, v1

    iput v4, v3, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->deaths:I

    .line 86
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    move-result-object v3

    iget v4, v3, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->d:I

    add-int/2addr v4, v1

    iput v4, v3, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->d:I

    .line 88
    iget v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDeaths:I

    add-int/2addr v3, v1

    iput v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDeaths:I

    .line 90
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getDevastation()F

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDevastation:F

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v8, 0x4b

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    const/high16 v8, 0x3f400000    # 0.75f

    add-float/2addr v7, v8

    mul-float v5, v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->setDevastation(F)V

    .line 94
    :cond_1ce
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v4, v3, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->turnsLeft:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v5

    div-float/2addr v5, v6

    const v6, 0x3d851eb8    # 0.065f

    mul-float v5, v5, v6

    const/high16 v6, 0x3f600000    # 0.875f

    sub-float/2addr v6, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->DISEASE_DAYS_LEFT_RANDOM:I

    invoke-virtual {v5, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v5, v7

    add-float/2addr v6, v5

    sub-float/2addr v4, v6

    iput v4, v3, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->turnsLeft:F

    .line 96
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    iget v3, v3, Laoc/kingdoms/lukasz/map/plague/ProvincePlague;->turnsLeft:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_256

    .line 97
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v4, v3, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->t:I

    .line 98
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    const/4 v4, 0x0

    iput-object v4, v3, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    .line 100
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 72
    .end local v1    # "nPopBefore":I
    .end local v2    # "nDeaths":I
    :cond_256
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 105
    .end local v0    # "i":I
    :cond_25a
    iget v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDeathRate:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->DISEASE_DEATH_RATE_CHANGE_PER_DAY:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->DISEASE_DEATH_RATE_CHANGE_PER_DAY_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x461c4000    # 10000.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->fDeathRate:F

    .line 106
    return-void
.end method

.method protected final setPlagueID_InGame(I)V
    .registers 2
    .param p1, "iPlagueID_InGame"    # I

    .line 268
    iput p1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iPlagueID_InGame:I

    .line 269
    return-void
.end method

.method protected final spreadDisease()V
    .registers 5

    .line 109
    iget v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->iDurationTurnsLeft:I

    if-lez v0, :cond_78

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_78

    .line 110
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3eb33333    # 0.35f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    .line 111
    return-void

    .line 114
    :cond_21
    iget v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_SCORE:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ed9999a    # 0.425f

    mul-float v1, v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_MODIFIER:F

    mul-float v1, v1, v2

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/plague/Plague;->getDurationPercLEFT()F

    move-result v3

    mul-float v3, v3, v2

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v3, v2

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_SCORE:F

    .line 116
    iget v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_MODIFIER:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v2, 0x45ba

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x47c35000    # 100000.0f

    div-float/2addr v1, v2

    const v2, 0x3f6ccccd    # 0.925f

    sub-float/2addr v2, v1

    mul-float v0, v0, v2

    iput v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_MODIFIER:F

    .line 118
    iget v0, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_SCORE:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_78

    .line 119
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_SCORE:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 121
    .local v0, "nRand":I
    if-lez v0, :cond_78

    .line 122
    iget v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_SCORE:F

    int-to-float v2, v0

    sub-float/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->EXPANSION_SCORE:F

    .line 124
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/plague/Plague;->spreadDisease(I)V

    .line 128
    .end local v0    # "nRand":I
    :cond_78
    return-void
.end method

.method protected final spreadDisease(I)V
    .registers 9
    .param p1, "nNumOfProvinces"    # I

    .line 132
    int-to-float v0, p1

    :try_start_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3c6978d5    # 0.01425f

    mul-float v1, v1, v2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int p1, v0

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v0, "tPossibleSpreadProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v1, "tPossibleSpreadProvinces_Scores":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_20c

    .line 138
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 139
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_40
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_b3

    .line 140
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    if-nez v4, :cond_b0

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->t:I

    sub-int/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->PLAGUE_PAUSE_FOR_X_DAYS:I

    if-le v4, v5, :cond_b0

    .line 141
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_b0
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .end local v3    # "k":I
    :cond_b3
    goto/16 :goto_208

    .line 146
    :cond_b5
    const/4 v3, 0x0

    .restart local v3    # "k":I
    :goto_b6
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_148

    .line 147
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v4

    if-gez v4, :cond_144

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    if-nez v4, :cond_144

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->t:I

    sub-int/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->PLAGUE_PAUSE_FOR_X_DAYS:I

    if-le v4, v5, :cond_144

    .line 148
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvinces(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_144
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_b6

    .line 153
    .end local v3    # "k":I
    :cond_148
    iget-object v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getLevelOfPort()I

    move-result v3

    if-gtz v3, :cond_175

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringProvincesSize()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_208

    .line 154
    :cond_175
    const/4 v3, 0x0

    .restart local v3    # "k":I
    :goto_176
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_208

    .line 155
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v4

    if-gez v4, :cond_204

    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provincePlague:Laoc/kingdoms/lukasz/map/plague/ProvincePlague;

    if-nez v4, :cond_204

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceData10(I)Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/data/ProvinceData10;->t:I

    sub-int/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->plagues:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Plagues;->PLAGUE_PAUSE_FOR_X_DAYS:I

    if-le v4, v5, :cond_204

    .line 156
    iget-object v4, p0, Laoc/kingdoms/lukasz/map/plague/Plague;->lProvinces_Active:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getNeighboringSeaProvinces(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_204
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_176

    .line 137
    .end local v3    # "k":I
    :cond_208
    :goto_208
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_21

    .line 163
    .end local v2    # "i":I
    :cond_20c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_287

    .line 164
    const/4 v2, 0x0

    .line 166
    .local v2, "tTotalScore":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_219
    if-ltz v3, :cond_238

    .line 167
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/map/plague/Plague;->getSpreadScore(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    add-int/lit8 v4, v4, 0x1

    .line 169
    .local v4, "tempScore":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/2addr v2, v4

    .line 166
    .end local v4    # "tempScore":I
    add-int/lit8 v3, v3, -0x1

    goto :goto_219

    .line 174
    .end local v3    # "i":I
    :cond_238
    if-lez v2, :cond_287

    .line 175
    :goto_23a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_282

    if-lez p1, :cond_282

    .line 176
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 178
    .local v3, "tRandScore":I
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "tCurrentScore":I
    :goto_24a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_281

    .line 179
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v5, v6

    .line 181
    if-le v5, v3, :cond_27e

    .line 182
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Laoc/kingdoms/lukasz/map/plague/Plague;->addProvince(I)V

    .line 184
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v2, v6

    .line 186
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 187
    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 189
    add-int/lit8 p1, p1, -0x1

    .line 190
    goto :goto_281

    .line 178
    :cond_27e
    add-int/lit8 v4, v4, 0x1

    goto :goto_24a

    .line 193
    .end local v3    # "tRandScore":I
    .end local v4    # "i":I
    .end local v5    # "tCurrentScore":I
    :cond_281
    :goto_281
    goto :goto_23a

    .line 195
    :cond_282
    if-lez p1, :cond_287

    .line 196
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/map/plague/Plague;->spreadDisease(I)V
    :try_end_287
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_287} :catch_288

    .line 202
    .end local v0    # "tPossibleSpreadProvinces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1    # "tPossibleSpreadProvinces_Scores":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "tTotalScore":I
    :cond_287
    goto :goto_28c

    .line 200
    :catch_288
    move-exception v0

    .line 201
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 203
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_28c
    return-void
.end method
