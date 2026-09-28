.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active_Value;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;
.source "ButtonStatsRectIMG_Active_Value.java"


# instance fields
.field public lastValue:F


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .registers 10
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "imageID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "maxIconWidth"    # I
    .param p8, "id"    # I

    .line 8
    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active;-><init>(Ljava/lang/String;IIIIIII)V

    .line 5
    const v0, -0x368c6e94    # -997654.75f

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Active_Value;->lastValue:F

    .line 9
    return-void
.end method
