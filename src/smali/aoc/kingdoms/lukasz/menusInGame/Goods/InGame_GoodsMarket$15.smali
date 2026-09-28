.class Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$15;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;
.source "InGame_GoodsMarket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;Ljava/lang/String;IIIIIIFIZ)V
    .registers 25
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "iWidth"    # I
    .param p8, "iHeight"    # I
    .param p9, "fPerc"    # F
    .param p10, "iCurrent"    # I
    .param p11, "worldShare"    # Z

    .line 788
    move-object v11, p0

    move-object v12, p1

    iput-object v12, v11, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$15;->this$0:Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;

    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticGoods_ProgressBar;-><init>(Ljava/lang/String;IIIIIIFIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 802
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$15;->getCurrent()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->RESOURCE_ID:I

    .line 803
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->lTime:J

    .line 804
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;->lTime:J

    .line 805
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Goods_LargestProducers()V

    .line 806
    return-void
.end method

.method public buildElementHover()V
    .registers 3

    .line 813
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$15;->getCurrent()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_LargestProducer;->getHoverLargestProducers(IZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$15;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 814
    return-void
.end method

.method public drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 809
    return-void
.end method
