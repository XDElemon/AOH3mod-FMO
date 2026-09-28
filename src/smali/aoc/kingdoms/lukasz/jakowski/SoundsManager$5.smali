.class Laoc/kingdoms/lukasz/jakowski/SoundsManager$5;
.super Ljava/lang/Object;
.source "SoundsManager.java"

# interfaces
.implements Lcom/badlogic/gdx/audio/Music$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/SoundsManager;->loadNextMusic(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/jakowski/SoundsManager;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    .line 472
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager$5;->this$0:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/badlogic/gdx/audio/Music;)V
    .registers 3
    .param p1, "music"    # Lcom/badlogic/gdx/audio/Music;

    .line 475
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager$5;->this$0:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->loadNextMusic()V

    .line 476
    return-void
.end method
