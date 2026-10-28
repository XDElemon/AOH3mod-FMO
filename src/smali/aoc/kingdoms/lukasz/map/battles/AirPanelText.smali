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

    .line 76
    if-eqz p0, :cond_5

    .line 77
    const-string p0, "\n\u65e0\u4eba\u673a"

    return-object p0

    .line 79
    :cond_5
    const-string p0, ""

    return-object p0
.end method

.method public static missileLine(I)Ljava/lang/String;
    .registers 5

    .line 48
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string v1, "\n\u5bfc\u5f39\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->canAAMissile(I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 51
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileSpeed(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 52
    const-string v3, "\u901f\u5ea6 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, " \u00b7 \u5c04\u7a0b "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileRangeOf(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, " \u00b7 \u8f7d\u5f39 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->missileCountOf(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "AAM"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/MissileTypeIds;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 56
    if-ltz v1, :cond_52

    .line 57
    const-string v3, " \u00b7 \u8fd1\u70b8 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/MissileTypes;->fuseRadiusOf(I)F

    move-result v1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    :cond_52
    goto :goto_58

    .line 60
    :cond_53
    const-string v1, "\u65e0\u7a7a\u7a7a\u5f39"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :goto_58
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->canAGMissile(I)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 63
    const-string v1, "\uff5c\u7a7a\u5730\uff1a\u6709"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_63
    invoke-static {p0}, Laoc/kingdoms/lukasz/map/battles/AirModelStats;->hasGun(I)Z

    move-result p0

    if-eqz p0, :cond_6e

    .line 66
    const-string p0, "\uff5c\u673a\u70ae\uff1a\u540c\u7701"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_6e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_72
    .catchall {:try_start_0 .. :try_end_72} :catchall_73

    return-object p0

    .line 69
    :catchall_73
    move-exception p0

    .line 70
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
