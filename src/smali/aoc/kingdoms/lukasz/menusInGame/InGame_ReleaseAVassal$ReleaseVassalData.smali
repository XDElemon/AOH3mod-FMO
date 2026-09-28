.class public Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;
.super Ljava/lang/Object;
.source "InGame_ReleaseAVassal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReleaseVassalData"
.end annotation


# instance fields
.field public changeGovernment:Z

.field public changeReligion:Z

.field public iCivID:I

.field public iLordID:I

.field public lProvinces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public liberateVassal:Z

.field public playAsVassal:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->lProvinces:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->playAsVassal:Z

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->changeGovernment:Z

    .line 58
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->changeReligion:Z

    .line 59
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->liberateVassal:Z

    .line 61
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .param p1, "iLordID"    # I
    .param p2, "iCivID"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->lProvinces:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->playAsVassal:Z

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->changeGovernment:Z

    .line 58
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->changeReligion:Z

    .line 59
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->liberateVassal:Z

    .line 64
    iput p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iLordID:I

    .line 65
    iput p2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ReleaseAVassal$ReleaseVassalData;->iCivID:I

    .line 66
    return-void
.end method
