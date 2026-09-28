.class public Laoc/kingdoms/lukasz/units/Hitbox;
.super Ljava/lang/Object;
.source "Hitbox.java"


# instance fields
.field private iHeight:I

.field private iPosX:I

.field private iPosY:I

.field private iWidth:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "iPosX"    # I
    .param p2, "iPosY"    # I
    .param p3, "iWidth"    # I
    .param p4, "iHeight"    # I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iPosX:I

    .line 12
    iput p2, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iPosY:I

    .line 13
    iput p3, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iWidth:I

    .line 14
    iput p4, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iHeight:I

    .line 15
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .line 44
    iget v0, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iHeight:I

    return v0
.end method

.method public getPosX()I
    .registers 2

    .line 20
    iget v0, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iPosX:I

    return v0
.end method

.method public getPosY()I
    .registers 2

    .line 28
    iget v0, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iPosY:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 36
    iget v0, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iWidth:I

    return v0
.end method

.method public setHeight(I)V
    .registers 2
    .param p1, "iHeight"    # I

    .line 48
    iput p1, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iHeight:I

    .line 49
    return-void
.end method

.method public setPosX(I)V
    .registers 2
    .param p1, "iPosX"    # I

    .line 24
    iput p1, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iPosX:I

    .line 25
    return-void
.end method

.method public setPosY(I)V
    .registers 2
    .param p1, "iPosY"    # I

    .line 32
    iput p1, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iPosY:I

    .line 33
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .param p1, "iWidth"    # I

    .line 40
    iput p1, p0, Laoc/kingdoms/lukasz/units/Hitbox;->iWidth:I

    .line 41
    return-void
.end method
