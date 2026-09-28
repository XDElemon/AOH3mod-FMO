.class Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$10;
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

    .line 206
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$10;->this$0:Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;

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
    .registers 7

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "changed":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->AUTO_SAVE_DAYS:[I

    array-length v2, v2

    if-ge v1, v2, :cond_31

    .line 211
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->AUTO_SAVE_DAYS:[I

    aget v2, v2, v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->AUTO_SAVE_DAYS:I

    if-ne v2, v3, :cond_2e

    .line 212
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->AUTO_SAVE_DAYS:[I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->AUTO_SAVE_DAYS:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v1, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget v3, v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->AUTO_SAVE_DAYS:I

    .line 213
    const/4 v0, 0x1

    .line 214
    goto :goto_31

    .line 210
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 218
    .end local v1    # "i":I
    :cond_31
    :goto_31
    if-nez v0, :cond_3e

    .line 219
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->AUTO_SAVE_DAYS:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->AUTO_SAVE_DAYS:I

    .line 222
    :cond_3e
    iget-object v1, p0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$10;->this$0:Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateLanguage()V

    .line 223
    return-void
.end method
