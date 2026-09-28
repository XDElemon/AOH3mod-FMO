.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style_Value;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style;
.source "ButtonGame_Style_Value.java"


# instance fields
.field public id:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIIZI)V
    .registers 10
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I
    .param p3, "iTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "nHeight"    # I
    .param p8, "isClickable"    # Z
    .param p9, "id"    # I

    .line 14
    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style;-><init>(Ljava/lang/String;IIIIIIZ)V

    .line 16
    iput p9, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style_Value;->id:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIZI)V
    .registers 9
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "fontID"    # I
    .param p3, "iTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "isClickable"    # Z
    .param p8, "id"    # I

    .line 8
    invoke-direct/range {p0 .. p7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 10
    iput p8, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style_Value;->id:I

    .line 11
    return-void
.end method


# virtual methods
.method public getCurrent()I
    .registers 2

    .line 21
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style_Value;->id:I

    return v0
.end method
