.class Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$3;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;
.source "Settings_Resolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field id:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;Ljava/lang/String;IIIIIZI)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "isClickable"    # Z
    .param p9, "nHeight"    # I

    .line 82
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$3;->this$0:Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;-><init>(Ljava/lang/String;IIIIIZI)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 4

    .line 87
    iget-object v0, p0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$3;->this$0:Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;

    iget v1, p0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$3;->id:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getResolution(I)Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iWidth:I

    .line 88
    iget-object v0, p0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$3;->this$0:Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;

    iget v1, p0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$3;->id:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getResolution(I)Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iHeight:I

    .line 90
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->saveConfig()V

    .line 92
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SETTINGS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    .line 93
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "GameNeedsToBeRestartedToApplyTheChanges"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->settings:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method public setCurrent(I)V
    .registers 2
    .param p1, "nCurrent"    # I

    .line 98
    iput p1, p0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$3;->id:I

    .line 99
    return-void
.end method
