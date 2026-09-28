.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle_General;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle;
.source "Text_StaticBG_RulerTitle_General.java"


# instance fields
.field public iCivID:I

.field public iProvinceID:I

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .registers 8
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p6, "iProvinceID"    # I
    .param p7, "iCivID"    # I

    .line 10
    invoke-direct/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle;-><init>(Ljava/lang/String;IIII)V

    .line 11
    iput p6, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle_General;->iProvinceID:I

    .line 12
    iput p7, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle_General;->iCivID:I

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;II)V
    .registers 9
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p6, "key"    # Ljava/lang/String;
    .param p7, "iProvinceID"    # I
    .param p8, "iCivID"    # I

    .line 16
    invoke-direct/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle;-><init>(Ljava/lang/String;IIII)V

    .line 17
    iput-object p6, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle_General;->key:Ljava/lang/String;

    .line 18
    iput p7, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle_General;->iProvinceID:I

    .line 19
    iput p8, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle_General;->iCivID:I

    .line 20
    return-void
.end method
