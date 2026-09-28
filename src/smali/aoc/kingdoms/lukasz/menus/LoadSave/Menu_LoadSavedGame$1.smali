.class Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "Menu_LoadSavedGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;->loadAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;
    .param p2, "taskKey"    # Ljava/lang/String;

    .line 240
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame$1;->this$0:Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadSavedGame;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 1

    .line 243
    invoke-static {}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->buildCivilizationsRegions()V

    .line 244
    return-void
.end method
