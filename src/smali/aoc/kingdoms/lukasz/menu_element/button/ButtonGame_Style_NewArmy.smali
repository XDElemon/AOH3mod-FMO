.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style_NewArmy;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style;
.source "ButtonGame_Style_NewArmy.java"


# instance fields
.field public add:Z

.field public iArmyID:I

.field public iUnitID:I


# direct methods
.method public constructor <init>(IIZLjava/lang/String;IIIIIIZ)V
    .registers 22
    .param p1, "iUnitID"    # I
    .param p2, "iArmyID"    # I
    .param p3, "add"    # Z
    .param p4, "sText"    # Ljava/lang/String;
    .param p5, "fontID"    # I
    .param p6, "iTextPositionX"    # I
    .param p7, "iPosX"    # I
    .param p8, "iPosY"    # I
    .param p9, "nWidth"    # I
    .param p10, "nHeight"    # I
    .param p11, "isClickable"    # Z

    .line 11
    move-object v9, p0

    move-object v0, p0

    move-object v1, p4

    move v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style;-><init>(Ljava/lang/String;IIIIIIZ)V

    .line 13
    move v0, p1

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style_NewArmy;->iUnitID:I

    .line 14
    move v1, p2

    iput v1, v9, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style_NewArmy;->iArmyID:I

    .line 15
    move v2, p3

    iput-boolean v2, v9, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style_NewArmy;->add:Z

    .line 16
    return-void
.end method


# virtual methods
.method public getCurrent()I
    .registers 2

    .line 30
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style_NewArmy;->add:Z

    return v0
.end method

.method public getValue1()I
    .registers 2

    .line 20
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style_NewArmy;->iUnitID:I

    return v0
.end method

.method public getValue2()I
    .registers 2

    .line 25
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style_NewArmy;->iArmyID:I

    return v0
.end method
