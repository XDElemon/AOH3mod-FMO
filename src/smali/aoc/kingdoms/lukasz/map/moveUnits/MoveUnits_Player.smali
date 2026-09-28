.class public Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits_Player;
.super Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
.source "MoveUnits_Player.java"


# direct methods
.method public constructor <init>(IIILjava/lang/String;II)V
    .registers 7
    .param p1, "nCivID"    # I
    .param p2, "iFromProvinceID"    # I
    .param p3, "iToProvinceID"    # I
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "extraArmyY"    # I
    .param p6, "iFromProvinceIDExtra"    # I

    .line 12
    invoke-direct/range {p0 .. p6}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;-><init>(IIILjava/lang/String;II)V

    .line 13
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;IZZ)V
    .registers 8
    .param p1, "nCivID"    # I
    .param p2, "iFromProvinceID"    # I
    .param p3, "iToProvinceID"    # I
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "extraArmyY"    # I
    .param p6, "inRetreat"    # Z
    .param p7, "landOnly"    # Z

    .line 8
    invoke-direct/range {p0 .. p7}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;-><init>(IIILjava/lang/String;IZZ)V

    .line 9
    return-void
.end method


# virtual methods
.method public getWas(I)Z
    .registers 3
    .param p1, "nProvinceID"    # I

    .line 19
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->wasPlayer:Z

    return v0
.end method

.method public setWas(IZ)V
    .registers 4
    .param p1, "nProvinceID"    # I
    .param p2, "nWas"    # Z

    .line 24
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iput-boolean p2, v0, Laoc/kingdoms/lukasz/map/province/Province;->wasPlayer:Z

    .line 25
    return-void
.end method
