.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinents$UndoContinent;
.super Ljava/lang/Object;
.source "EditorMapContinents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoContinent"
.end annotation


# instance fields
.field protected iContinentID:I

.field protected iProvinceID:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iProvinceID"    # I
    .param p2, "iContinentID"    # I

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinents$UndoContinent;->iProvinceID:I

    .line 123
    iput p2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapContinents$UndoContinent;->iContinentID:I

    .line 124
    return-void
.end method
