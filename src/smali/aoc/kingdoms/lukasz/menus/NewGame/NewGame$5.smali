.class Laoc/kingdoms/lukasz/menus/NewGame/NewGame$5;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "NewGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/NewGame/NewGame;->initNewGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 278
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 1

    .line 281
    invoke-static {}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame;->takeAdvantages_AI()V

    .line 282
    return-void
.end method
