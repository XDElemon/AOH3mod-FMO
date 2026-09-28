.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;
.super Ljava/lang/Object;
.source "EditorMapGrowthRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoGrowthRate"
.end annotation


# instance fields
.field public fGrowthRate:F

.field public iProvinceID:I


# direct methods
.method public constructor <init>(IF)V
    .registers 3
    .param p1, "iProvinceID"    # I
    .param p2, "fGrowthRate"    # F

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput p1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;->iProvinceID:I

    .line 164
    iput p2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGrowthRate$UndoGrowthRate;->fGrowthRate:F

    .line 165
    return-void
.end method
