.class Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$1;
.super Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
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
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;

    .line 132
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket;

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;-><init>()V

    return-void
.end method


# virtual methods
.method public getPieChartValue_ColorB(I)F
    .registers 4
    .param p1, "i"    # I

    .line 142
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$1;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getDataID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Color:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getPieChartValue_ColorG(I)F
    .registers 4
    .param p1, "i"    # I

    .line 138
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$1;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getDataID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Color:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getPieChartValue_ColorR(I)F
    .registers 4
    .param p1, "i"    # I

    .line 134
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->lResources:Ljava/util/List;

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_GoodsMarket$1;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getDataID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/ResourcesManager$Resources;->Color:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method
