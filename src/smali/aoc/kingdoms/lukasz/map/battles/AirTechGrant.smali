.class public final Laoc/kingdoms/lukasz/map/battles/AirTechGrant;
.super Ljava/lang/Object;
.source "AirTechGrant.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static grant(Laoc/kingdoms/lukasz/map/civilization/Civilization;)V
    .registers 6

    .line 28
    if-nez p0, :cond_3

    .line 29
    return-void

    .line 31
    :cond_3
    iget v0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->artGroupOf(I)I

    move-result v0

    .line 32
    const/4 v1, 0x0

    :goto_a
    const/16 v2, 0x40

    if-ge v1, v2, :cond_2d

    .line 33
    add-int/lit8 v2, v1, 0x63

    .line 34
    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->genOf(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_18

    .line 35
    goto :goto_2a

    .line 37
    :cond_18
    invoke-static {v2, v0}, Laoc/kingdoms/lukasz/map/battles/AirTechCiv;->allowedGroup(II)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 38
    goto :goto_2a

    .line 40
    :cond_1f
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 41
    goto :goto_2a

    .line 43
    :cond_26
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setTechnologyResearched(IZ)V

    .line 32
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 45
    :cond_2d
    return-void
.end method
