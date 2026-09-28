.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapResources$UndoResource;
.super Ljava/lang/Object;
.source "EditorMapResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoResource"
.end annotation


# instance fields
.field protected iProvinceID:I

.field protected iResourceID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iProvinceID"    # I
    .param p2, "iResourceID"    # I

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput p1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapResources$UndoResource;->iProvinceID:I

    .line 147
    iput p2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapResources$UndoResource;->iResourceID:I

    .line 148
    return-void
.end method
