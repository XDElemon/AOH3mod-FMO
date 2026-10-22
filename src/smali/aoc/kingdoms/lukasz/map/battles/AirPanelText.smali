.class public final Laoc/kingdoms/lukasz/map/battles/AirPanelText;
.super Ljava/lang/Object;
.source "AirPanelText.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static droneTag(Z)Ljava/lang/String;
    .registers 1

    .line 39
    if-eqz p0, :cond_5

    .line 40
    const-string p0, "\n\u65e0\u4eba\u673a"

    return-object p0

    .line 42
    :cond_5
    const-string p0, ""

    return-object p0
.end method

.method public static radarInt(F)I
    .registers 2

    .line 31
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-gtz v0, :cond_7

    .line 32
    const/4 p0, 0x0

    return p0

    .line 34
    :cond_7
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method
