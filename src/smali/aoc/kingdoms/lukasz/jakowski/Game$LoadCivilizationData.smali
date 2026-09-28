.class public Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
.super Ljava/lang/Object;
.source "Game.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/Game;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadCivilizationData"
.end annotation


# instance fields
.field public GroupID:I

.field public Name:Ljava/lang/String;

.field public ReligionID:I

.field public Tag:Ljava/lang/String;

.field public Wiki:Ljava/lang/String;

.field public iB:I

.field public iG:I

.field public iR:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1728
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Name:Ljava/lang/String;

    .line 1733
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->GroupID:I

    return-void
.end method
