.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonCurrentSituation_Value;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonCurrentSituation;
.source "ButtonCurrentSituation_Value.java"


# instance fields
.field public id:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIIZI)V
    .registers 10
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "imageID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "maxIconWidth"    # I
    .param p8, "row"    # Z
    .param p9, "id"    # I

    .line 8
    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonCurrentSituation;-><init>(Ljava/lang/String;IIIIIIZ)V

    .line 10
    iput p9, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonCurrentSituation_Value;->id:I

    .line 11
    return-void
.end method


# virtual methods
.method public getCurrent()I
    .registers 2

    .line 15
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonCurrentSituation_Value;->id:I

    return v0
.end method
