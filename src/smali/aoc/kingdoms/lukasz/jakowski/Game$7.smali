.class Laoc/kingdoms/lukasz/jakowski/Game$7;
.super Ljava/lang/Object;
.source "Game.java"

# interfaces
.implements Laoc/kingdoms/lukasz/jakowski/Game$MapDistance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/Game;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 3201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistanceFromProvinceToProvince(II)F
    .registers 4
    .param p1, "provA"    # I
    .param p2, "provB"    # I

    .line 3209
    const/4 v0, 0x0

    return v0
.end method

.method public getManhattanDistance(II)F
    .registers 4
    .param p1, "provA"    # I
    .param p2, "provB"    # I

    .line 3204
    const/4 v0, 0x0

    return v0
.end method
