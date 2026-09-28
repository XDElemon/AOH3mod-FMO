.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_BonusesColor;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;
.source "ButtonStatsRectIMG_BonusesColor.java"


# instance fields
.field public bonusColors:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIILcom/badlogic/gdx/graphics/Color;)V
    .registers 10
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "sText2"    # Ljava/lang/String;
    .param p3, "imageID"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "nHeight"    # I
    .param p8, "maxIconWidth"    # I
    .param p9, "nColor"    # Lcom/badlogic/gdx/graphics/Color;

    .line 10
    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 12
    iput-object p9, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_BonusesColor;->bonusColors:Lcom/badlogic/gdx/graphics/Color;

    .line 13
    return-void
.end method


# virtual methods
.method public getColorBonus()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 17
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_BonusesColor;->bonusColors:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method
