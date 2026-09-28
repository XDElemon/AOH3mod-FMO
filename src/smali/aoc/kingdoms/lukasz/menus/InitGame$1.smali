.class Laoc/kingdoms/lukasz/menus/InitGame$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "InitGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/InitGame;->initGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/InitGame;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/InitGame;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/InitGame;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 640
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/InitGame$1;->this$0:Laoc/kingdoms/lukasz/menus/InitGame;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 1

    .line 643
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->buildProvNameData()V

    .line 644
    return-void
.end method
