.class Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$44;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame2;
.source "Settings_Menu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "isClickable"    # Z
    .param p9, "nHeight"    # I

    .line 577
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$44;->this$0:Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;

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
    .registers 2

    .line 580
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->updateSettings_FBO_Provinces()V

    .line 581
    iget-object v0, p0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$44;->this$0:Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateLanguage()V

    .line 582
    return-void
.end method
