.class public Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;
.super Ljava/lang/Object;
.source "Flag_Division.java"


# instance fields
.field public iLayers:I

.field public sName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "sName"    # Ljava/lang/String;
    .param p2, "iLayers"    # I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;->sName:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;->iLayers:I

    .line 9
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;->sName:Ljava/lang/String;

    .line 10
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;->iLayers:I

    .line 11
    return-void
.end method
