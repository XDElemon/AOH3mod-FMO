.class public Laoc/kingdoms/lukasz/map/map/Waves/WavesManager;
.super Ljava/lang/Object;
.source "WavesManager.java"


# static fields
.field public static wavesLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;",
            ">;"
        }
    .end annotation
.end field

.field public static wavesLinesSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/Waves/WavesManager;->wavesLines:Ljava/util/List;

    .line 12
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/map/Waves/WavesManager;->wavesLinesSize:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addWavesLine(Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;)V
    .registers 2
    .param p0, "wavesLine"    # Laoc/kingdoms/lukasz/map/map/Waves/WavesLine;

    .line 17
    sget-object v0, Laoc/kingdoms/lukasz/map/map/Waves/WavesManager;->wavesLines:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Laoc/kingdoms/lukasz/map/map/Waves/WavesManager;->wavesLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/map/Waves/WavesManager;->wavesLinesSize:I

    .line 19
    return-void
.end method
