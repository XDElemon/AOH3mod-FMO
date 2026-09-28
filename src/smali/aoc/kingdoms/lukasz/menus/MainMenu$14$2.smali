.class Laoc/kingdoms/lukasz/menus/MainMenu$14$2;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "MainMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/MainMenu$14;->actionElement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laoc/kingdoms/lukasz/menus/MainMenu$14;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/MainMenu$14;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Laoc/kingdoms/lukasz/menus/MainMenu$14;
    .param p2, "x0"    # Ljava/lang/String;

    .line 331
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/MainMenu$14$2;->this$1:Laoc/kingdoms/lukasz/menus/MainMenu$14;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .line 333
    invoke-static {}, Laoc/kingdoms/lukasz/menus/InitGame;->loadBackground()V

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgTIME:J

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgTIME_CHANGE:J

    .line 336
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgAlpha:F

    .line 337
    return-void
.end method
