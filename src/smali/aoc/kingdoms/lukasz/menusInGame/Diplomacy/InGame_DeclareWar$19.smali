.class Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DeclareWar$19;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "InGame_DeclareWar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DeclareWar;->actionDeclareWar(IIZLjava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "taskKey"    # Ljava/lang/String;

    .line 659
    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 1

    .line 662
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceBorderManager;->updateProvinceBorder()V

    .line 663
    return-void
.end method
