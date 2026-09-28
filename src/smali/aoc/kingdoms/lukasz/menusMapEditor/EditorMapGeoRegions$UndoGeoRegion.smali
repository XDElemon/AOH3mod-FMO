.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegions$UndoGeoRegion;
.super Ljava/lang/Object;
.source "EditorMapGeoRegions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoGeoRegion"
.end annotation


# instance fields
.field protected iGeoRegion:I

.field protected iProvinceID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iProvinceID"    # I
    .param p2, "iGeoRegion"    # I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegions$UndoGeoRegion;->iProvinceID:I

    .line 123
    iput p2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapGeoRegions$UndoGeoRegion;->iGeoRegion:I

    .line 124
    return-void
.end method
