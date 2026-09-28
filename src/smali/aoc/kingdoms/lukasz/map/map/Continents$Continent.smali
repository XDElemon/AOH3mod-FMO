.class public Laoc/kingdoms/lukasz/map/map/Continents$Continent;
.super Ljava/lang/Object;
.source "Continents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/map/Continents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Continent"
.end annotation


# instance fields
.field public iB:I

.field public iG:I

.field public iR:I

.field public prioritizeColonization:Z

.field public sName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->prioritizeColonization:Z

    return-void
.end method
