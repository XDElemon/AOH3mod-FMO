.class Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders$2;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle_General;
.source "InGame_Wonders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders;Ljava/lang/String;IIIIII)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "iWidth"    # I
    .param p6, "iHeight"    # I
    .param p7, "iProvinceID"    # I
    .param p8, "iCivID"    # I

    .line 77
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle_General;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 85
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CurrentSituation(Z)V

    .line 87
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders$2;->iProvinceID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonder;->iProvinceID:I

    .line 88
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Wonder()V

    .line 89
    return-void
.end method

.method public buildElementHover()V
    .registers 4

    .line 80
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders$2;->iProvinceID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders$2;->iCivID:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonWonderProvince;->getHoverWonder(IIZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Wonders$2;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 81
    return-void
.end method
