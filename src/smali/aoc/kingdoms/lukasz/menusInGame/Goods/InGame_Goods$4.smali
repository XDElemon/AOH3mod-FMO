.class Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$4;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Resource;
.source "InGame_Goods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;Ljava/lang/String;IIIII)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "resourceID"    # I
    .param p4, "nPosX"    # I
    .param p5, "nPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "nHeight"    # I

    .line 450
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$4;->this$0:Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Resource;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 453
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$4;->getCurrent()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_Provinces;->RESOURCE_ID:I

    .line 454
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_Provinces;->lTime:J

    .line 455
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;->lTime:J

    .line 456
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Goods_Provinces()V

    .line 457
    return-void
.end method
