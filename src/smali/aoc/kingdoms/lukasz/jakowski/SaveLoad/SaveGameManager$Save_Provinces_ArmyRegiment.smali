.class public Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;
.super Ljava/lang/Object;
.source "SaveGameManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Save_Provinces_ArmyRegiment"
.end annotation


# instance fields
.field public a:I

.field public k:Ljava/lang/String;

.field public m:F

.field public n:I

.field public u:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V
    .registers 3
    .param p1, "armyRegiment"    # Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    .line 1153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1154
    iget-object v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->key:Ljava/lang/String;

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->k:Ljava/lang/String;

    .line 1155
    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->u:I

    .line 1156
    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->a:I

    .line 1157
    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->n:I

    .line 1158
    iget v0, p1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->mo:F

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager$Save_Provinces_ArmyRegiment;->m:F

    .line 1159
    return-void
.end method
