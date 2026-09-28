.class public Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;
.super Ljava/lang/Object;
.source "AmbienceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/AmbienceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Ambience"
.end annotation


# instance fields
.field public id:I

.field public idSoundPlaying:J

.field public isPlaying:Z

.field public lTime:J

.field public startedPlaying:Z

.field final synthetic this$0:Laoc/kingdoms/lukasz/jakowski/AmbienceManager;

.field public updateTime:Z

.field public updateVolumeUP:Z


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/AmbienceManager;I)V
    .registers 7
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/jakowski/AmbienceManager;
    .param p2, "id"    # I

    .line 35
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->this$0:Laoc/kingdoms/lukasz/jakowski/AmbienceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->id:I

    .line 26
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->idSoundPlaying:J

    .line 28
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->startedPlaying:Z

    .line 29
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->isPlaying:Z

    .line 30
    const/4 v3, 0x1

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->updateVolumeUP:Z

    .line 31
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->updateTime:Z

    .line 33
    iput-wide v1, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->lTime:J

    .line 36
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/AmbienceManager$Ambience;->id:I

    .line 37
    return-void
.end method


# virtual methods
.method public final update()V
    .registers 1

    .line 41
    return-void
.end method
