.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Value;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;
.source "ButtonGame_Value.java"


# instance fields
.field public id:I


# direct methods
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
    invoke-direct/range {p0 .. p7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 10
    iput p8, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Value;->id:I

    .line 11
    return-void
.end method


# virtual methods
.method public getCurrent()I
    .registers 2

    .line 15
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Value;->id:I

    return v0
.end method
