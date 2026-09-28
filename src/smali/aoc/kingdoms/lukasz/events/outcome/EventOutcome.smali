.class public Laoc/kingdoms/lukasz/events/outcome/EventOutcome;
.super Ljava/lang/Object;
.source "EventOutcome.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage()I
    .registers 2

    .line 16
    const/4 v0, -0x1

    return v0
.end method

.method public getStringLeft()Ljava/lang/String;
    .registers 2

    .line 9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringRight()Ljava/lang/String;
    .registers 2

    .line 10
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringRight2(I)Ljava/lang/String;
    .registers 3
    .param p1, "bonus_duration"    # I

    .line 11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue1()I
    .registers 2

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public getValue2()F
    .registers 2

    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public update()V
    .registers 1

    .line 5
    return-void
.end method

.method public updateCiv(II)V
    .registers 3
    .param p1, "iCivID"    # I
    .param p2, "bonus_duration"    # I

    .line 6
    return-void
.end method

.method public updateProvince(I)V
    .registers 2
    .param p1, "iProvinceID"    # I

    .line 7
    return-void
.end method
