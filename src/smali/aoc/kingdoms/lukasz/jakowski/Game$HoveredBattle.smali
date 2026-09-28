.class public Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;
.super Ljava/lang/Object;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/Game;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HoveredBattle"
.end annotation


# instance fields
.field public iProvinceID:I

.field public key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1210
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredBattle;->iProvinceID:I

    return-void
.end method
