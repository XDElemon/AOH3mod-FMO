.class Laoc/kingdoms/lukasz/menus/MainMenu$12$2;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "MainMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/MainMenu$12;->actionElement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laoc/kingdoms/lukasz/menus/MainMenu$12;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/MainMenu$12;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/MainMenu$12$2;->this$1:Laoc/kingdoms/lukasz/menus/MainMenu$12;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    invoke-static {}, Laoc/kingdoms/lukasz/menus/InitGame;->loadBackground()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgTIME:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgTIME_CHANGE:J

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgAlpha:F

    return-void
.end method
