.class public Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;
.super Ljava/lang/Object;
.source "Flag_GameData.java"


# instance fields
.field public iDivisionID:I

.field public lDivisionColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field public lOverlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    return-void
.end method
