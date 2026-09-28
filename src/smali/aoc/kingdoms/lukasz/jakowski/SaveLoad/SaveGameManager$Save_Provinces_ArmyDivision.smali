.class public Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyDivision;
.super Ljava/lang/Object;
.source "SaveGameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Save_Provinces_ArmyDivision"
.end annotation


# instance fields
.field public c:I

.field public g:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

.field public k:Ljava/lang/String;

.field public p:I

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;",
            ">;"
        }
    .end annotation
.end field

.field public t:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyDivision;->r:Ljava/util/List;

    return-void
.end method
