.class Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCiv$4;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "EditorMap_FormableCiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCiv;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCiv;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCiv;Ljava/lang/String;IIIIIZZ)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCiv;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "isClickable"    # Z
    .param p9, "checkBox"    # Z

    .line 91
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCiv$4;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCiv;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 2

    .line 94
    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCiv;->drawMap:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCiv;->drawMap:Z

    .line 95
    return-void
.end method

.method public getCheckboxState()Z
    .registers 2

    .line 104
    sget-boolean v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCiv;->drawMap:Z

    return v0
.end method

.method public updateLanguage()V
    .registers 3

    .line 99
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "FillTheMap"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_FormableCiv$4;->setText(Ljava/lang/String;)V

    .line 100
    return-void
.end method
