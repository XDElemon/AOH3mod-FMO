.class public Laoc/kingdoms/lukasz/map/map/Map$Maps;
.super Ljava/lang/Object;
.source "Map.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/map/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Maps"
.end annotation


# instance fields
.field private Folder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Laoc/kingdoms/lukasz/map/map/Map$Maps;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/map/map/Map$Maps;

    .line 35
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/Map$Maps;->Folder:Ljava/lang/String;

    return-object v0
.end method
