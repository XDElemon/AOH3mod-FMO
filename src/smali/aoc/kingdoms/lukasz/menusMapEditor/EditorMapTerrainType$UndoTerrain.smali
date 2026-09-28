.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainType$UndoTerrain;
.super Ljava/lang/Object;
.source "EditorMapTerrainType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoTerrain"
.end annotation


# instance fields
.field protected iProvinceID:I

.field protected iTerrainID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iProvinceID"    # I
    .param p2, "iTerrainID"    # I

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput p1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainType$UndoTerrain;->iProvinceID:I

    .line 139
    iput p2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapTerrainType$UndoTerrain;->iTerrainID:I

    .line 140
    return-void
.end method
