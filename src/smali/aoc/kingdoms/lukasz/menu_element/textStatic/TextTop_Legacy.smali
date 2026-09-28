.class public Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Legacy;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;
.source "TextTop_Legacy.java"


# instance fields
.field public lastValuePerMonth:F


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p1, "imageID"    # I
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sText2"    # Ljava/lang/String;
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I

    .line 11
    invoke-direct/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 8
    const v0, -0x368c6e9b

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Legacy;->lastValuePerMonth:F

    .line 12
    return-void
.end method


# virtual methods
.method public getTextToDraw()Ljava/lang/String;
    .registers 10

    .line 16
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Legacy;->lastValue:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x1

    const-string v4, ""

    const/high16 v5, 0x42c80000    # 100.0f

    const/16 v6, 0xa

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8c

    .line 17
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    const v1, 0x461c4000    # 10000.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_53

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v1, v7

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Legacy;->setText(Ljava/lang/String;)V

    goto :goto_80

    .line 21
    :cond_53
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    cmpg-float v1, v1, v5

    if-gez v1, :cond_78

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    const/16 v1, 0xa

    goto :goto_79

    :cond_78
    const/4 v1, 0x1

    :goto_79
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Legacy;->setText(Ljava/lang/String;)V

    .line 24
    :goto_80
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Legacy;->lastValue:F

    .line 27
    :cond_8c
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Legacy;->lastValuePerMonth:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getLegacyPerMonth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e0

    .line 28
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getLegacyPerMonth()F

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Legacy;->lastValuePerMonth:F

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Legacy;->lastValuePerMonth:F

    const/4 v7, 0x0

    cmpl-float v1, v1, v7

    if-lez v1, :cond_ba

    const-string v4, "+"

    :cond_ba
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Legacy;->lastValuePerMonth:F

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Legacy;->lastValuePerMonth:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_d1

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Legacy;->lastValuePerMonth:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_cf

    const/16 v3, 0x64

    goto :goto_d1

    :cond_cf
    const/16 v3, 0xa

    :cond_d1
    :goto_d1
    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop_Legacy;->setText2(Ljava/lang/String;)V

    .line 32
    :cond_e0
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextTop;->getTextToDraw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
