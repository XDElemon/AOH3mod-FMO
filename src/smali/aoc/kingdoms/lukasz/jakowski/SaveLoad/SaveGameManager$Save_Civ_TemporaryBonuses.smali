.class public Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_TemporaryBonuses;
.super Ljava/lang/Object;
.source "SaveGameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Save_Civ_TemporaryBonuses"
.end annotation


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2049
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Civ_TemporaryBonuses;->b:Ljava/util/List;

    return-void
.end method
