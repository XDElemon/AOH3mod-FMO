.class Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1$2;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "InGame_LegaciesEmpty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1;->actionElement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1$2;->this$1:Laoc/kingdoms/lukasz/menusInGame/InGame_LegaciesEmpty$1;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .line 48
    invoke-static {}, Laoc/kingdoms/lukasz/menus/InitGame;->loadBackground()V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgTIME:J

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgTIME_CHANGE:J

    .line 52
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgAlpha:F

    .line 53
    return-void
.end method
