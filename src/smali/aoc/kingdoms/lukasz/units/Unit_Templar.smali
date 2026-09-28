.class public Laoc/kingdoms/lukasz/units/Unit_Templar;
.super Laoc/kingdoms/lukasz/units/Unit;
.source "Unit_Templar.java"


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I

    .line 8
    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/units/Unit;-><init>(II)V

    .line 9
    return-void
.end method
