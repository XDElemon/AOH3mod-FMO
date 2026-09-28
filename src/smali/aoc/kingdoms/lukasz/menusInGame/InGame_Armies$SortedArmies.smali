.class public Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;
.super Ljava/lang/Object;
.source "InGame_Armies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortedArmies"
.end annotation


# instance fields
.field public iArmyID:I

.field public iProvinceID:I

.field public sortKey:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "iProvinceID"    # I
    .param p2, "iArmyID"    # I
    .param p3, "sortKey"    # I

    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 873
    iput p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    .line 874
    iput p2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    .line 875
    iput p3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->sortKey:I

    .line 876
    return-void
.end method
