.class Laoc/kingdoms/lukasz/map/province/ProvinceDraw$38;
.super Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;
.source "ProvinceDraw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->buildBiggestCitiesLines_Province(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(III)V
    .registers 4
    .param p1, "nCivID"    # I
    .param p2, "iFromProvinceID"    # I
    .param p3, "iToProvinceID"    # I

    .line 2813
    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/map/moveUnits/other/MoveUnits_BiggestCities;-><init>(III)V

    return-void
.end method


# virtual methods
.method public canBeUsedInPath(IIZI)Z
    .registers 6
    .param p1, "nCivID"    # I
    .param p2, "nProvinceID"    # I
    .param p3, "moveToFriendlyProvince"    # Z
    .param p4, "toProvinceID"    # I

    .line 2821
    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getWasteland()I

    move-result v0

    if-ltz v0, :cond_c

    .line 2822
    const/4 v0, 0x0

    return v0

    .line 2825
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public isFriendlyProvince(II)Z
    .registers 4
    .param p1, "nCivID"    # I
    .param p2, "toProvinceID"    # I

    .line 2816
    const/4 v0, 0x1

    return v0
.end method
