.class public Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "Graph_Vertical.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;
    }
.end annotation


# static fields
.field public static graphCivs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

.field public allowStatisticsMode:Z

.field private bDecimal:B

.field public drawShort:Z

.field private drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

.field private fAvaragePoint:F

.field private fScrollNewMenuPosY:F

.field private iAvaragePosY:I

.field private iButtonsPosX:I

.field private iButtonsPosY:I

.field private iDataWidth:I

.field private iHoveredID:I

.field private iMaxPoint:I

.field private iMinPoint:I

.field private iScrollPosX:I

.field private iScrollPosX2:I

.field private iValuesSize:I

.field private iValuesTotal:I

.field private iWidthTextY:I

.field private lValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;",
            ">;"
        }
    .end annotation
.end field

.field private lessThanTen:Z

.field private moveable:Z

.field private sTextX:Ljava/lang/String;

.field private sTextY:Ljava/lang/String;

.field private sTotal:Ljava/lang/String;

.field private scrollModeY:Z

.field public splitBy100:Z

.field private statisticsMode:Z

.field private verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    .registers 15
    .param p1, "nType"    # Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;
    .param p2, "sTextX"    # Ljava/lang/String;
    .param p3, "sTextY"    # Ljava/lang/String;
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "iWidth"    # I
    .param p7, "iHeight"    # I
    .param p8, "visible"    # Z

    .line 103
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    .line 41
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesTotal:I

    .line 44
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    .line 49
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->splitBy100:Z

    .line 50
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    .line 54
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    .line 70
    iput-byte v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->bDecimal:B

    .line 71
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lessThanTen:Z

    .line 73
    const-string v1, ""

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->sTotal:Ljava/lang/String;

    .line 77
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->moveable:Z

    .line 81
    const/4 v1, -0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    .line 85
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    .line 88
    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX:I

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX2:I

    .line 90
    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    .line 1591
    const/4 v1, 0x1

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->allowStatisticsMode:Z

    .line 104
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    .line 105
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Total"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->sTotal:Ljava/lang/String;

    .line 107
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->NUM_OF_PROVINCES_BY_CONTINENT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_71

    .line 108
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_43
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    if-ge v1, v2, :cond_60

    .line 109
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_5d

    .line 110
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 114
    .end local v1    # "i":I
    :cond_60
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    .line 116
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$1;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$1;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_42d

    .line 142
    :cond_71
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_LIST_PROVINCES:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_e2

    .line 143
    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_7e
    if-ltz v2, :cond_cf

    .line 144
    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_cc

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v4

    if-ge v3, v4, :cond_cc

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_cc

    .line 145
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    sget-object v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_cc
    add-int/lit8 v2, v2, -0x1

    goto :goto_7e

    .line 149
    .end local v2    # "i":I
    :cond_cf
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    .line 151
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    .line 153
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$2;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$2;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_42d

    .line 179
    :cond_e2
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_LIST_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_153

    .line 180
    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .restart local v2    # "i":I
    :goto_ef
    if-ltz v2, :cond_140

    .line 181
    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_13d

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v4

    if-ge v3, v4, :cond_13d

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_13d

    .line 182
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    sget-object v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->graphCivs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_13d
    add-int/lit8 v2, v2, -0x1

    goto :goto_ef

    .line 186
    .end local v2    # "i":I
    :cond_140
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    .line 188
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    .line 190
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$3;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$3;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_42d

    .line 216
    :cond_153
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_18a

    .line 217
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_15a
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_177

    .line 218
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_174

    .line 219
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_174
    add-int/lit8 v2, v2, 0x1

    goto :goto_15a

    .line 223
    .end local v2    # "i":I
    :cond_177
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    .line 225
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    .line 227
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$4;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$4;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_42d

    .line 253
    :cond_18a
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->GOVERNMENTS_CIVS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_1cd

    .line 254
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_191
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_1ba

    .line 255
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_1b7

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->iGovID:I

    if-ne v3, v4, :cond_1b7

    .line 256
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_1b7
    add-int/lit8 v2, v2, 0x1

    goto :goto_191

    .line 260
    .end local v2    # "i":I
    :cond_1ba
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    .line 262
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    .line 264
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$5;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$5;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_42d

    .line 290
    :cond_1cd
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->GOVERNMENTS_CIVS_RIGHT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_210

    .line 291
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_1d4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_1fd

    .line 292
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_1fa

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iGovID:I

    if-ne v3, v4, :cond_1fa

    .line 293
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_1fa
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d4

    .line 297
    .end local v2    # "i":I
    :cond_1fd
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    .line 299
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    .line 301
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$6;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$6;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_42d

    .line 327
    :cond_210
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RELIGION_CIVS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_260

    .line 328
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_217
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_24d

    .line 329
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_21e
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v3, v4, :cond_24a

    .line 330
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Religion;->iReligionID:I

    if-ne v4, v5, :cond_247

    .line 331
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v5, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    goto :goto_24a

    .line 329
    :cond_247
    add-int/lit8 v3, v3, 0x1

    goto :goto_21e

    .line 328
    .end local v3    # "j":I
    :cond_24a
    :goto_24a
    add-int/lit8 v2, v2, 0x1

    goto :goto_217

    .line 337
    .end local v2    # "i":I
    :cond_24d
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    .line 339
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    .line 341
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$7;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$7;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_42d

    .line 367
    :cond_260
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RELIGION_CIVS_RIGHT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_2b0

    .line 368
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_267
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_29d

    .line 369
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_26e
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-ge v3, v4, :cond_29a

    .line 370
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iReligionID:I

    if-ne v4, v5, :cond_297

    .line 371
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v5, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    goto :goto_29a

    .line 369
    :cond_297
    add-int/lit8 v3, v3, 0x1

    goto :goto_26e

    .line 368
    .end local v3    # "j":I
    :cond_29a
    :goto_29a
    add-int/lit8 v2, v2, 0x1

    goto :goto_267

    .line 377
    .end local v2    # "i":I
    :cond_29d
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    .line 379
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    .line 381
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$8;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$8;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_42d

    .line 407
    :cond_2b0
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_INFRASTRUCTURE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_2e7

    .line 408
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_2b7
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_2d4

    .line 409
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_2d1

    .line 410
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_2d1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b7

    .line 414
    .end local v2    # "i":I
    :cond_2d4
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    .line 416
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    .line 418
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$9;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$9;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_42d

    .line 444
    :cond_2e7
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_CONSTRUCTED_BUILDINGS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_31e

    .line 445
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_2ee
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_30b

    .line 446
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_308

    .line 447
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_308
    add-int/lit8 v2, v2, 0x1

    goto :goto_2ee

    .line 451
    .end local v2    # "i":I
    :cond_30b
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    .line 453
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    .line 455
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$10;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$10;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_42d

    .line 481
    :cond_31e
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_ECONOMY:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_355

    .line 482
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_325
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_342

    .line 483
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_33f

    .line 484
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    :cond_33f
    add-int/lit8 v2, v2, 0x1

    goto :goto_325

    .line 488
    .end local v2    # "i":I
    :cond_342
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    .line 490
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    .line 492
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$11;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$11;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_42d

    .line 518
    :cond_355
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_UNLOCKED_TECHS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_38c

    .line 519
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_35c
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_379

    .line 520
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_376

    .line 521
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_376
    add-int/lit8 v2, v2, 0x1

    goto :goto_35c

    .line 525
    .end local v2    # "i":I
    :cond_379
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    .line 527
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    .line 529
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto/16 :goto_42d

    .line 555
    :cond_38c
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_PRESTIGE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_3c2

    .line 556
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_393
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_3b0

    .line 557
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_3ad

    .line 558
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_3ad
    add-int/lit8 v2, v2, 0x1

    goto :goto_393

    .line 562
    .end local v2    # "i":I
    :cond_3b0
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    .line 564
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    .line 566
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$13;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$13;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto :goto_42d

    .line 592
    :cond_3c2
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RESOURCE_PRODUCTION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_3f8

    .line 593
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_3c9
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_3e6

    .line 594
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_3e3

    .line 595
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_3e3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c9

    .line 599
    .end local v2    # "i":I
    :cond_3e6
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    .line 601
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    .line 603
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$14;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$14;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    goto :goto_42d

    .line 629
    :cond_3f8
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_REGIMENTS_LIMIT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_42d

    .line 630
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_3ff
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v3

    if-ge v2, v3, :cond_41c

    .line 631
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-lez v3, :cond_419

    .line 632
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_419
    add-int/lit8 v2, v2, 0x1

    goto :goto_3ff

    .line 636
    .end local v2    # "i":I
    :cond_41c
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    .line 638
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    .line 640
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$15;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$15;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    .line 667
    :cond_42d
    :goto_42d
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    .line 669
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setPosX(I)V

    .line 670
    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setPosY(I)V

    .line 671
    invoke-virtual {p0, p6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setWidth(I)V

    .line 672
    invoke-virtual {p0, p7}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setHeight(I)V

    .line 673
    invoke-virtual {p0, p8}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setVisible(Z)V

    .line 675
    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->sTextX:Ljava/lang/String;

    .line 676
    iput-object p3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->sTextY:Ljava/lang/String;

    .line 678
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 680
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, p3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    .line 681
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iWidthTextY:I

    .line 683
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 685
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->buildData()V

    .line 686
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->buildValuesHeights()V

    .line 688
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->GRAPH_VERTICAL:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 689
    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    .line 31
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)I
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    .line 31
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    .line 31
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    return-object v0
.end method

.method static synthetic access$300(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V
    .registers 5
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;
    .param p1, "x1"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsValue(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$400(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)I
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    .line 31
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesTotal:I

    return v0
.end method

.method static synthetic access$500(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    .line 31
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->sTotal:Ljava/lang/String;

    return-object v0
.end method

.method private final drawStatisticsBegan(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 23
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 1290
    move-object/from16 v7, p0

    move-object/from16 v15, p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const v14, 0x3f333333    # 0.7f

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 1292
    const/4 v6, 0x0

    .line 1294
    .local v6, "tempOffsetX":I
    iget-object v2, v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->sTextX:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v14

    float-to-int v1, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int v3, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsBoxTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    .line 1295
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v6, v0

    .line 1297
    const/4 v0, 0x0

    move/from16 v16, v6

    move v6, v0

    .local v6, "i":I
    .local v16, "tempOffsetX":I
    :goto_4a
    iget-object v0, v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getTextSize()I

    move-result v0

    if-ge v6, v0, :cond_86

    .line 1298
    iget-object v0, v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v0, v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v14

    float-to-int v1, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int v0, v0, v16

    add-int v3, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsBoxTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    .line 1299
    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v0

    add-int v16, v16, v0

    .line 1297
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    .line 1302
    .end local v6    # "i":I
    :cond_86
    iget-object v0, v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    invoke-interface {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;->getTotal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v14

    float-to-int v1, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int v0, v0, v16

    add-int v3, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v0

    sub-int v0, v0, v16

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v14

    float-to-int v1, v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    sub-int v5, v0, v1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsBoxTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    .line 1304
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v14

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int v0, v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v14

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    sub-int v1, v1, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v14

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v3

    neg-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v14

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v15, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 1306
    iget v0, v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    add-int v3, v0, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsEnd(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZI)V

    .line 1308
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1311
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1312
    const/4 v0, -0x1

    .local v0, "i":I
    :goto_131
    iget-object v1, v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getTextSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_19f

    .line 1313
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_vertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v14

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int v10, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v14

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int v11, v1, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v14

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int v13, v1, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v12, 0x1

    move-object/from16 v9, p1

    const v3, 0x3f333333    # 0.7f

    move v14, v1

    move-object v1, v15

    move v15, v2

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1312
    add-int/lit8 v0, v0, 0x1

    move-object v15, v1

    const v14, 0x3f333333    # 0.7f

    goto :goto_131

    :cond_19f
    move-object v1, v15

    const v3, 0x3f333333    # 0.7f

    .line 1316
    .end local v0    # "i":I
    sget-object v8, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v2

    iget-object v4, v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getTextSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v4, v4, 0x1

    mul-int v2, v2, v4

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    add-int v10, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    add-int v11, v0, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int v13, v0, v2

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v12, 0x1

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v15}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1318
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1319
    return-void
.end method

.method private final drawStatisticsBoxTitle(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V
    .registers 17
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nText"    # Ljava/lang/String;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "nWidth"    # I

    .line 1370
    move-object v8, p1

    move v9, p3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v10, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1371
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v10

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    move-object v1, p1

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1373
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1374
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v10

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, p4

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v10

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v5, v1, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move v2, p3

    move/from16 v4, p5

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1376
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1377
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v10

    float-to-int v1, v1

    add-int/2addr v1, p4

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v3, v1, v2

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1378
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1379
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->line_32_vertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    add-int/lit8 v1, v9, -0x1

    add-int v2, v1, p5

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v10

    float-to-int v1, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v5, v1, v3

    const/4 v4, 0x1

    move-object v1, p1

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1381
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, p4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v1, p5, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v10

    float-to-int v2, v2

    neg-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {p1, p3, v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 1383
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v9

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, p4

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, p2

    invoke-static {p1, p2, v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1386
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1387
    return-void
.end method

.method private final drawStatisticsEnd(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZI)V
    .registers 20
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z
    .param p6, "tempOffsetX"    # I

    .line 1322
    move-object v6, p0

    move-object v7, p1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    const v8, 0x3f333333    # 0.7f

    mul-float v0, v0, v8

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    div-float v9, v0, v1

    .line 1324
    .local v9, "tempFlagScale":F
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_11
    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v10, v0, :cond_19e

    .line 1325
    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getInView()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1326
    goto/16 :goto_19a

    .line 1329
    :cond_25
    rem-int/lit8 v0, v10, 0x2

    if-nez v0, :cond_63

    .line 1330
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v3, v10, 0x1

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsRowBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 1333
    :cond_63
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_a9

    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_a9

    .line 1334
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v3, v10, 0x1

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsRowHoverBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 1337
    :cond_a9
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v3, v10, 0x1

    mul-int v2, v2, v3

    add-int/2addr v1, v2

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-direct {p0, p1, v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsRowLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 1339
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1340
    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    invoke-interface {v0, v10}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;->getStatsLPCivFlagID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    .line 1341
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v8

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_COLOR_WIDTH:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int v2, v1, p2

    .line 1342
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v8

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v4, v10, 0x1

    mul-int v3, v3, v4

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int v3, v1, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    mul-float v1, v1, v9

    float-to-double v4, v1

    .line 1343
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v9

    float-to-double v11, v1

    .line 1344
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v5, v11

    .line 1340
    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1346
    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    invoke-interface {v0, v10}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;->getStatsLP(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    mul-float v1, v1, v9

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_COLOR_WIDTH:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v8

    float-to-int v1, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/lit8 v4, v10, 0x1

    mul-int v1, v1, v4

    add-int/2addr v0, v1

    add-int v4, v0, p3

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    mul-float v1, v1, v9

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_COLOR_WIDTH:I

    int-to-float v5, v5

    add-float/2addr v1, v5

    float-to-int v1, v1

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsValue2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V

    .line 1348
    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsData:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;

    move v2, v10

    move/from16 v3, p6

    move v4, p2

    move/from16 v5, p3

    invoke-interface/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1324
    :goto_19a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_11

    .line 1351
    .end local v10    # "i":I
    :cond_19e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 1352
    return-void
.end method

.method private final drawStatisticsRowBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I

    .line 1360
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3d4ccccd    # 0.05f

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1361
    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v7, p4, -0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    mul-float v0, v0, v2

    float-to-int v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v8, v0, v1

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1362
    return-void
.end method

.method private final drawStatisticsRowHoverBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I

    .line 1365
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1366
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int/lit8 v5, p4, -0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    const v2, 0x3f333333    # 0.7f

    mul-float v0, v0, v2

    float-to-int v0, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v0, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1367
    return-void
.end method

.method private final drawStatisticsRowLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I

    .line 1355
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1356
    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->line_32_off1:Laoc/kingdoms/lukasz/textures/Image;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    const v2, 0x3f333333    # 0.7f

    mul-float v0, v0, v2

    float-to-int v0, v0

    add-int/2addr v0, p3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v4, v0, v2

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1357
    return-void
.end method

.method private final drawStatisticsValue(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V
    .registers 10
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nText"    # Ljava/lang/String;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I

    .line 1390
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, p4

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ee66666    # 0.45f

    invoke-direct {v2, v3, v3, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, p2, v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1391
    return-void
.end method

.method private final drawStatisticsValue2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V
    .registers 9
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nText"    # Ljava/lang/String;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "nWidth"    # I

    .line 1407
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, p4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v1, p5, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v2

    neg-int v2, v2

    invoke-static {p1, p3, v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 1409
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_COLOR_WIDTH:I

    add-int/2addr v0, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, p4

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1, p2, v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1412
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1413
    return-void
.end method

.method private final drawStatisticsValueWithFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;III)V
    .registers 15
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nText"    # Ljava/lang/String;
    .param p3, "nCivID"    # I
    .param p4, "nPosX"    # I
    .param p5, "nPosY"    # I

    .line 1394
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1396
    .local v0, "tempFlagScale":F
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1397
    invoke-static {p3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getFlag()Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v4, p4, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, p5, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-double v6, v1

    .line 1400
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-double v7, v1

    .line 1401
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 1397
    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1403
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p4

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_WIDTH:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, p5

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ee66666    # 0.45f

    invoke-direct {v3, v4, v4, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, p2, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1404
    return-void
.end method

.method private final getButtonsPosX(I)I
    .registers 4
    .param p1, "i"    # I

    .line 1451
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    mul-int v1, v1, p1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    mul-int v1, v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method private final getButtonsPosY(I)I
    .registers 4
    .param p1, "i"    # I

    .line 1455
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    mul-int v0, v0, p1

    return v0
.end method

.method private final getButtonsWidth()I
    .registers 4

    .line 1491
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    mul-int v0, v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    add-int/lit8 v2, v2, -0x1

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private final getStatisticsWidth()I
    .registers 4

    .line 1416
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float v1, v1, v2

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getTextSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    div-int/2addr v0, v1

    return v0
.end method

.method private final roundAverage()V
    .registers 5

    .line 1497
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fAvaragePoint:F

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fAvaragePoint:F

    float-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_43

    .line 1498
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fAvaragePoint:F

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fAvaragePoint:F

    float-to-int v1, v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->bDecimal:B

    .line 1499
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fAvaragePoint:F

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fAvaragePoint:F

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fAvaragePoint:F

    float-to-int v3, v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fAvaragePoint:F

    .line 1500
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lessThanTen:Z

    .line 1501
    iget-byte v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->bDecimal:B

    const/16 v1, 0xa

    rem-int/2addr v0, v1

    if-nez v0, :cond_3b

    .line 1502
    iget-byte v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->bDecimal:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->bDecimal:B

    goto :goto_45

    .line 1503
    :cond_3b
    iget-byte v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->bDecimal:B

    if-ge v0, v1, :cond_45

    .line 1504
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lessThanTen:Z

    goto :goto_45

    .line 1507
    :cond_43
    iput-byte v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->bDecimal:B

    .line 1509
    :cond_45
    :goto_45
    return-void
.end method

.method private final setHoveredID(I)V
    .registers 3
    .param p1, "nHoveredID"    # I

    .line 935
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    if-eq v0, p1, :cond_9

    .line 936
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    .line 937
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->buildElementHover()V

    .line 939
    :cond_9
    return-void
.end method

.method private final updateMoveable()V
    .registers 7

    .line 1459
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    const/4 v1, 0x1

    const v2, 0x3f333333    # 0.7f

    const/4 v3, 0x0

    if-eqz v0, :cond_2c

    .line 1460
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsPosY(I)I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v5, v2

    float-to-int v2, v5

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v4, v2

    if-le v0, v4, :cond_27

    .line 1461
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->moveable:Z

    goto :goto_49

    .line 1464
    :cond_27
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->moveable:Z

    .line 1465
    iput v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    goto :goto_49

    .line 1469
    :cond_2c
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    float-to-int v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    sub-int/2addr v4, v2

    if-le v0, v4, :cond_45

    .line 1470
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->moveable:Z

    goto :goto_49

    .line 1472
    :cond_45
    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->moveable:Z

    .line 1473
    iput v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    .line 1476
    :goto_49
    return-void
.end method


# virtual methods
.method public final buildData()V
    .registers 13

    .line 694
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 695
    return-void

    .line 698
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v0, "nTexts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v1, "nColors":Ljava/util/List;, "Ljava/util/List<Lcom/badlogic/gdx/graphics/Color;>;"
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->NUM_OF_PROVINCES_BY_CONTINENT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x437f0000    # 255.0f

    const/4 v8, 0x1

    if-ne v2, v3, :cond_80

    .line 702
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_33

    .line 703
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData()V

    .line 702
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 706
    .end local v2    # "i":I
    :cond_33
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_34
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    if-ge v2, v3, :cond_7e

    .line 707
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iR:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iG:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iB:I

    int-to-float v11, v11

    div-float/2addr v11, v7

    invoke-direct {v3, v9, v10, v11, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .end local v2    # "i":I
    :cond_7e
    goto/16 :goto_456

    .line 711
    :cond_80
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_e6

    .line 712
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_87
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_99

    .line 713
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_Population()V

    .line 712
    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    .line 716
    .end local v2    # "i":I
    :cond_99
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_9a
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    if-ge v2, v3, :cond_e4

    .line 717
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iR:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iG:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iB:I

    int-to-float v11, v11

    div-float/2addr v11, v7

    invoke-direct {v3, v9, v10, v11, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    add-int/lit8 v2, v2, 0x1

    goto :goto_9a

    .end local v2    # "i":I
    :cond_e4
    goto/16 :goto_456

    .line 721
    :cond_e6
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_LIST_PROVINCES:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_111

    .line 722
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_ed
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_ff

    .line 723
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_CivsProvinces()V

    .line 722
    add-int/lit8 v2, v2, 0x1

    goto :goto_ed

    .line 726
    .end local v2    # "i":I
    :cond_ff
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Provinces"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_456

    .line 729
    :cond_111
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_LIST_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    const-string v9, "Population"

    if-ne v2, v3, :cond_13c

    .line 730
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_11a
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_12c

    .line 731
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_CivsPopulation()V

    .line 730
    add-int/lit8 v2, v2, 0x1

    goto :goto_11a

    .line 734
    .end local v2    # "i":I
    :cond_12c
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_POPULATION:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_456

    .line 737
    :cond_13c
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->GOVERNMENTS_CIVS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_18c

    .line 738
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_143
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_155

    .line 739
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_GovernmentCivs()V

    .line 738
    add-int/lit8 v2, v2, 0x1

    goto :goto_143

    .line 742
    .end local v2    # "i":I
    :cond_155
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->iGovID:I

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Color:[F

    aget v3, v3, v4

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->iGovID:I

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Color:[F

    aget v7, v7, v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Government;->iGovID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Color:[F

    aget v9, v9, v5

    invoke-direct {v2, v3, v7, v9, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_456

    .line 745
    :cond_18c
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->GOVERNMENTS_CIVS_RIGHT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_1dc

    .line 746
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_193
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_1a5

    .line 747
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_GovernmentCivs()V

    .line 746
    add-int/lit8 v2, v2, 0x1

    goto :goto_193

    .line 750
    .end local v2    # "i":I
    :cond_1a5
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iGovID:I

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Color:[F

    aget v3, v3, v4

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iGovID:I

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Color:[F

    aget v7, v7, v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightGovernment;->iGovID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Color:[F

    aget v9, v9, v5

    invoke-direct {v2, v3, v7, v9, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_456

    .line 753
    :cond_1dc
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RELIGION_CIVS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_22c

    .line 754
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1e3
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_1f5

    .line 755
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_ReligionCivs()V

    .line 754
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e3

    .line 758
    .end local v2    # "i":I
    :cond_1f5
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Religion;->iReligionID:I

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Color:[F

    aget v3, v3, v4

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Religion;->iReligionID:I

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Color:[F

    aget v7, v7, v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Religion;->iReligionID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Color:[F

    aget v9, v9, v5

    invoke-direct {v2, v3, v7, v9, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_456

    .line 761
    :cond_22c
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RELIGION_CIVS_RIGHT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_27c

    .line 762
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_233
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_245

    .line 763
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_ReligionCivs_Right()V

    .line 762
    add-int/lit8 v2, v2, 0x1

    goto :goto_233

    .line 766
    .end local v2    # "i":I
    :cond_245
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iReligionID:I

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Color:[F

    aget v3, v3, v4

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iReligionID:I

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Color:[F

    aget v7, v7, v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->iReligionID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Color:[F

    aget v9, v9, v5

    invoke-direct {v2, v3, v7, v9, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_456

    .line 769
    :cond_27c
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_CONSTRUCTED_BUILDINGS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_2e2

    .line 770
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_283
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_295

    .line 771
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_ConstructedBuildings()V

    .line 770
    add-int/lit8 v2, v2, 0x1

    goto :goto_283

    .line 774
    .end local v2    # "i":I
    :cond_295
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_296
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    if-ge v2, v3, :cond_2e0

    .line 775
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iR:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iG:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iB:I

    int-to-float v11, v11

    div-float/2addr v11, v7

    invoke-direct {v3, v9, v10, v11, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 774
    add-int/lit8 v2, v2, 0x1

    goto :goto_296

    .end local v2    # "i":I
    :cond_2e0
    goto/16 :goto_456

    .line 779
    :cond_2e2
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_INFRASTRUCTURE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_348

    .line 780
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2e9
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_2fb

    .line 781
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_Infrastructure()V

    .line 780
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e9

    .line 784
    .end local v2    # "i":I
    :cond_2fb
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_2fc
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    if-ge v2, v3, :cond_346

    .line 785
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iR:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iG:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iB:I

    int-to-float v11, v11

    div-float/2addr v11, v7

    invoke-direct {v3, v9, v10, v11, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    add-int/lit8 v2, v2, 0x1

    goto :goto_2fc

    .end local v2    # "i":I
    :cond_346
    goto/16 :goto_456

    .line 789
    :cond_348
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_ECONOMY:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_3ae

    .line 790
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_34f
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_361

    .line 791
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_Economy()V

    .line 790
    add-int/lit8 v2, v2, 0x1

    goto :goto_34f

    .line 794
    .end local v2    # "i":I
    :cond_361
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_362
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->iContinentsSize:I

    if-ge v2, v3, :cond_3ac

    .line 795
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->sName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iR:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iG:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v11, v11, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iB:I

    int-to-float v11, v11

    div-float/2addr v11, v7

    invoke-direct {v3, v9, v10, v11, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    add-int/lit8 v2, v2, 0x1

    goto :goto_362

    .end local v2    # "i":I
    :cond_3ac
    goto/16 :goto_456

    .line 799
    :cond_3ae
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_UNLOCKED_TECHS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_3d9

    .line 800
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3b5
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_3c7

    .line 801
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_UnlockedTechnologies()V

    .line 800
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b5

    .line 804
    .end local v2    # "i":I
    :cond_3c7
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "UnlockedTechnologies"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_456

    .line 807
    :cond_3d9
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_PRESTIGE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_403

    .line 808
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3e0
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_3f2

    .line 809
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_Prestige()V

    .line 808
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e0

    .line 812
    .end local v2    # "i":I
    :cond_3f2
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Prestige"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_456

    .line 815
    :cond_403
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RESOURCE_PRODUCTION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_42d

    .line 816
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_40a
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_41c

    .line 817
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_ResourceProduction()V

    .line 816
    add-int/lit8 v2, v2, 0x1

    goto :goto_40a

    .line 820
    .end local v2    # "i":I
    :cond_41c
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Production"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE2:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_456

    .line 823
    :cond_42d
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_REGIMENTS_LIMIT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v2, v3, :cond_456

    .line 824
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_434
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v2, v3, :cond_446

    .line 825
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildContinentData_RegimentsLimit()V

    .line 824
    add-int/lit8 v2, v2, 0x1

    goto :goto_434

    .line 828
    .end local v2    # "i":I
    :cond_446
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "RegimentsLimit"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->TECH_BLUE:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    :cond_456
    :goto_456
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v3

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x3f333333    # 0.7f

    mul-float v6, v6, v7

    float-to-int v6, v6

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v6, v9

    sub-int/2addr v3, v6

    invoke-direct {v2, v0, v1, v3, v8}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;-><init>(Ljava/util/List;Ljava/util/List;IZ)V

    iput-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    .line 834
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 836
    .local v2, "tempData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_476
    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v3, v6, :cond_488

    .line 837
    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    add-int/lit8 v3, v3, 0x1

    goto :goto_476

    .line 839
    .end local v3    # "i":I
    :cond_488
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 841
    :goto_48d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4c4

    .line 842
    const/4 v3, 0x0

    .line 844
    .local v3, "tempMaxID":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_495
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_4b5

    .line 845
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v8

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v9

    if-le v8, v9, :cond_4b2

    .line 846
    move v3, v6

    .line 844
    :cond_4b2
    add-int/lit8 v6, v6, 0x1

    goto :goto_495

    .line 850
    .end local v6    # "i":I
    :cond_4b5
    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 852
    .end local v3    # "tempMaxID":I
    goto :goto_48d

    .line 855
    :cond_4c4
    :try_start_4c4
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v3

    iput v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMaxPoint:I

    iput v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMinPoint:I
    :try_end_4d4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4c4 .. :try_end_4d4} :catch_4d5

    .line 858
    goto :goto_4d8

    .line 856
    :catch_4d5
    move-exception v3

    .line 857
    .local v3, "ex":Ljava/lang/IndexOutOfBoundsException;
    iput v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMinPoint:I

    .line 859
    .end local v3    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :goto_4d8
    const/4 v3, 0x0

    iput v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fAvaragePoint:F

    .line 861
    const-wide/16 v3, 0x0

    .line 862
    .local v3, "tempAvarage":J
    const/4 v6, 0x0

    .line 864
    .local v6, "tempAvarageSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4df
    iget v9, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v8, v9, :cond_540

    .line 865
    iget v9, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMaxPoint:I

    iget-object v10, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v10

    if-ge v9, v10, :cond_501

    .line 866
    iget-object v9, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v9

    iput v9, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMaxPoint:I

    .line 869
    :cond_501
    iget v9, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMinPoint:I

    iget-object v10, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v10

    if-le v9, v10, :cond_51f

    .line 870
    iget-object v9, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v9

    iput v9, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMinPoint:I

    .line 873
    :cond_51f
    iget-object v9, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v9

    if-lez v9, :cond_53d

    .line 874
    add-int/lit8 v6, v6, 0x1

    .line 875
    iget-object v9, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v3, v9

    .line 864
    :cond_53d
    add-int/lit8 v8, v8, 0x1

    goto :goto_4df

    .line 879
    .end local v8    # "i":I
    :cond_540
    long-to-float v8, v3

    int-to-float v9, v6

    div-float/2addr v8, v9

    iput v8, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fAvaragePoint:F

    .line 881
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v9, v9

    mul-float v9, v9, v7

    float-to-int v9, v9

    sub-int/2addr v8, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v10, v10

    mul-float v10, v10, v7

    float-to-int v7, v10

    sub-int/2addr v9, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v9, v7

    int-to-float v5, v9

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fAvaragePoint:F

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v7, v7, v9

    mul-float v5, v5, v7

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMaxPoint:I

    iget v10, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMinPoint:I

    sub-int/2addr v7, v10

    int-to-float v7, v7

    div-float/2addr v5, v7

    div-float/2addr v5, v9

    sub-float/2addr v8, v5

    float-to-int v5, v8

    iput v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iAvaragePosY:I

    .line 882
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->roundAverage()V

    .line 884
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->updateMoveable()V

    .line 885
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->updateInView()V

    .line 887
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->countValuesTotal()V

    .line 888
    return-void
.end method

.method public buildElementHover()V
    .registers 18

    .line 943
    move-object/from16 v0, p0

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    const/4 v2, 0x0

    if-ltz v1, :cond_a7c

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    if-nez v1, :cond_a7c

    .line 944
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->NUM_OF_PROVINCES_BY_CONTINENT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    const-string v4, "Provinces"

    const-string v5, ": "

    const/4 v6, 0x0

    const-string v7, ""

    if-ne v1, v3, :cond_dd

    .line 945
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 946
    .local v1, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 948
    .local v2, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v8, v9, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 953
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 955
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 957
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 958
    .end local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    .end local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    goto/16 :goto_a7e

    .line 959
    :cond_dd
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    const-string v8, "Population"

    if-ne v1, v3, :cond_1aa

    .line 960
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 961
    .restart local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 963
    .restart local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 964
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v9, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 968
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 969
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 972
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 973
    .end local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    .end local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    goto/16 :goto_a7e

    .line 974
    :cond_1aa
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_LIST_PROVINCES:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_275

    .line 975
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 976
    .restart local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 978
    .restart local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v8, v9, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 981
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 983
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 987
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 988
    .end local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    .end local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    goto/16 :goto_a7e

    .line 989
    :cond_275
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_LIST_POPULATION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_340

    .line 990
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .restart local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 993
    .restart local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 994
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v9, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 998
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1002
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 1003
    .end local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    .end local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    goto/16 :goto_a7e

    .line 1004
    :cond_340
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->GOVERNMENTS_CIVS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-eq v1, v3, :cond_9b8

    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->GOVERNMENTS_CIVS_RIGHT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_34e

    goto/16 :goto_9b8

    .line 1019
    :cond_34e
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RELIGION_CIVS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-eq v1, v3, :cond_8f3

    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RELIGION_CIVS_RIGHT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_35c

    goto/16 :goto_8f3

    .line 1034
    :cond_35c
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_CONSTRUCTED_BUILDINGS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_429

    .line 1035
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1036
    .restart local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    .restart local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1039
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v8, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1041
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1043
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "ConstructedBuildings"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getConstructedBuildings()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->buildings:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1044
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1045
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1047
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 1048
    .end local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    .end local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    goto/16 :goto_a7e

    .line 1049
    :cond_429
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_INFRASTRUCTURE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_4f6

    .line 1050
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1051
    .restart local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    .restart local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v8, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1058
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Infrastructure"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getInfrastructure()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1059
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1062
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 1063
    .end local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    .end local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    goto/16 :goto_a7e

    .line 1064
    :cond_4f6
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_UNLOCKED_TECHS:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_5ae

    .line 1065
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    .restart local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    .restart local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1069
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v8, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1070
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1073
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "UnlockedTechnologies"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchedTechnologies()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1077
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 1078
    .end local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    .end local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    goto/16 :goto_a7e

    .line 1079
    :cond_5ae
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_PRESTIGE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_68a

    .line 1080
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    .restart local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    .restart local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1084
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v8, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1085
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1086
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1088
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Prestige"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankScore:F

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRanking_IMG_STAR_CIVID(I)I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1092
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 1093
    .end local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    .end local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    goto/16 :goto_a7e

    .line 1094
    :cond_68a
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->RESOURCE_PRODUCTION:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_756

    .line 1095
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1096
    .restart local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    .restart local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1099
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v8, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1103
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Production"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods_LargestProducers;->RESOURCE_ID:I

    invoke-static {v6, v7}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getProducedGoods_ResourceCiv(II)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1105
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1107
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 1108
    .end local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    .end local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    goto/16 :goto_a7e

    .line 1109
    :cond_756
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_REGIMENTS_LIMIT:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_821

    .line 1110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1111
    .restart local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    .restart local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1114
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v8, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1116
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1118
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "RegimentsLimit"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1120
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1122
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 1123
    .end local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    .end local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    goto/16 :goto_a7e

    .line 1124
    :cond_821
    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->GRAPH_DATA_TYPE:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;->CIVS_ECONOMY:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;

    if-ne v1, v3, :cond_8ef

    .line 1125
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    .restart local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1128
    .restart local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1129
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v8, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1130
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1131
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1133
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Economy"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getEconomyTotal()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v3

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1134
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1135
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1137
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 1138
    .end local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    .end local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    goto/16 :goto_a7e

    .line 1140
    :cond_8ef
    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto/16 :goto_a7e

    .line 1020
    :cond_8f3
    :goto_8f3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    .restart local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1023
    .restart local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v9, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1028
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1032
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 1033
    .end local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    .end local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    goto/16 :goto_a7e

    .line 1005
    :cond_9b8
    :goto_9b8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    .restart local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1008
    .restart local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v4

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v9, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagTitle;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1011
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1013
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1015
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1017
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v3, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 1018
    .end local v1    # "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    .end local v2    # "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    goto :goto_a7e

    .line 1144
    :cond_a7c
    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 1146
    :goto_a7e
    return-void
.end method

.method public final buildValuesHeights()V
    .registers 6

    .line 899
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v0, v1, :cond_30

    .line 900
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    const v4, 0x3f333333    # 0.7f

    mul-float v3, v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMaxPoint:I

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->buildHeights(II)V

    .line 899
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 902
    .end local v0    # "i":I
    :cond_30
    return-void
.end method

.method public final countValuesTotal()V
    .registers 4

    .line 891
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesTotal:I

    .line 893
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v0, v1, :cond_1c

    .line 894
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesTotal:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesTotal:I

    .line 893
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 896
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 23
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 1161
    move-object/from16 v6, p0

    move-object/from16 v15, p1

    iget-boolean v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    const/4 v14, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4b

    .line 1162
    iget-boolean v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    const v1, 0x3f7851ec    # 0.97f

    if-eqz v0, :cond_2f

    .line 1163
    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v13

    if-lez v0, :cond_2c

    .line 1164
    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setCurrent(I)V

    .line 1165
    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    mul-float v0, v0, v1

    iput v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    goto :goto_4b

    .line 1167
    :cond_2c
    iput-boolean v14, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    goto :goto_4b

    .line 1171
    :cond_2f
    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v13

    if-lez v0, :cond_49

    .line 1172
    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    invoke-virtual {v6, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setCurrent(I)V

    .line 1173
    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    mul-float v0, v0, v1

    iput v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    goto :goto_4b

    .line 1175
    :cond_49
    iput-boolean v14, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    .line 1183
    :cond_4b
    :goto_4b
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f666666    # 0.9f

    invoke-direct {v0, v13, v13, v13, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1184
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->graphBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    const v12, 0x3f333333    # 0.7f

    mul-float v2, v2, v12

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    sub-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v12

    float-to-int v5, v5

    sub-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1186
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1187
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v12

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v10, v0, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v12

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v11, v0, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v12

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v8, p1

    const v5, 0x3f333333    # 0.7f

    move v12, v0

    const/high16 v3, 0x3f800000    # 1.0f

    move v13, v1

    const/4 v1, 0x0

    move v14, v2

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1188
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v2, v7, v8, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1189
    sget-object v7, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v5

    float-to-int v2, v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v10, v0, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v11, v0, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v12, v0, v2

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1192
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3d851eb8    # 0.065f

    invoke-direct {v0, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1193
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->noise:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v5

    float-to-int v4, v4

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int v2, v2, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v4, v4, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v8, v8

    mul-float v8, v8, v5

    float-to-int v8, v8

    sub-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v9, v9

    mul-float v9, v9, v5

    float-to-int v9, v9

    sub-int/2addr v8, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    const/4 v14, 0x0

    move-object/from16 v1, p1

    const/high16 v13, 0x3f800000    # 1.0f

    move v3, v4

    move v4, v7

    const v12, 0x3f333333    # 0.7f

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1195
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 1197
    iget-object v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->sTextY:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int v2, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget v3, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iWidthTextY:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int v3, v0, p3

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->TEXT_COLOR:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v5, 0x42b40000    # 90.0f

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextRotated(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;F)V

    .line 1199
    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v12

    float-to-int v3, v3

    sub-int/2addr v2, v3

    add-int v2, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v0, v15, v1, v2, v3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 1201
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 1204
    iget-boolean v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    if-eqz v0, :cond_24c

    .line 1205
    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsBegan(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    const v16, 0x3f333333    # 0.7f

    goto/16 :goto_76c

    .line 1208
    :cond_24c
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int v2, v2, p3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v15, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 1211
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1212
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->line_33:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v12

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int v2, v2, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v12

    float-to-int v4, v4

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v0, v15, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 1213
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->line_33:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v12

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iAvaragePosY:I

    add-int/2addr v0, v1

    add-int v10, v0, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v12

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v11, v0, v1

    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    neg-int v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v8, p1

    const v16, 0x3f333333    # 0.7f

    move v12, v1

    const/high16 v5, 0x3f800000    # 1.0f

    move v13, v2

    const/4 v4, 0x0

    move v14, v0

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    .line 1215
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int v0, v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int v1, v1, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v16

    float-to-int v3, v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v3, v7

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v3

    neg-int v3, v3

    invoke-static {v15, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    .line 1217
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getIsHovered()Z

    move-result v0

    if-eqz v0, :cond_478

    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    if-ltz v0, :cond_478

    .line 1218
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1219
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v10, v0, p3

    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v11, v0, 0x2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int v12, v0, v1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1220
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_LINES_DESC:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v7, 0x3ccccccd    # 0.025f

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1221
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v10, v0, p3

    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v11, v0, 0x4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int v12, v0, v1

    const/4 v14, 0x0

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1222
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iHoveredID:I

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v10, v0, p3

    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v11, v0, 0x4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int v12, v0, v1

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 1223
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1227
    :cond_478
    iget-boolean v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawShort:Z

    if-eqz v0, :cond_547

    .line 1228
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_47e
    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v3, v0, :cond_53e

    .line 1229
    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getInView()Z

    move-result v0

    if-eqz v0, :cond_533

    .line 1230
    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v2, v3, 0x1

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v1, v1, v3

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v2, v3, 0x1

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v10, v0, p3

    iget v11, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int v12, v0, v1

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getColors()Ljava/util/List;

    move-result-object v13

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getSorted()Ljava/util/List;

    move-result-object v14

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->drawData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;Ljava/util/List;)V

    .line 1231
    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v7, v3, 0x1

    mul-int v2, v2, v7

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v2, v2, v3

    sub-int/2addr v1, v2

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v7, v3, 0x1

    mul-int v2, v2, v7

    sub-int/2addr v1, v2

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v7, v1, p3

    iget v8, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v9, v9

    mul-float v9, v9, v16

    float-to-int v9, v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    sub-int v9, v1, v9

    move-object/from16 v1, p1

    move v10, v3

    .end local v3    # "i":I
    .local v10, "i":I
    move v3, v7

    const/4 v14, 0x0

    move v4, v8

    const/high16 v13, 0x3f800000    # 1.0f

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->drawDataTextValue_Short(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_537

    .line 1229
    .end local v10    # "i":I
    .restart local v3    # "i":I
    :cond_533
    move v10, v3

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    .line 1228
    .end local v3    # "i":I
    .restart local v10    # "i":I
    :goto_537
    add-int/lit8 v3, v10, 0x1

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .end local v10    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_47e

    :cond_53e
    move v10, v3

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    .end local v3    # "i":I
    .restart local v10    # "i":I
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .end local v10    # "i":I
    goto/16 :goto_6e0

    .line 1235
    :cond_547
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    iget-boolean v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->splitBy100:Z

    if-eqz v0, :cond_615

    .line 1236
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_550
    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v5, v0, :cond_60f

    .line 1237
    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getInView()Z

    move-result v0

    if-eqz v0, :cond_60a

    .line 1238
    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v2, v5, 0x1

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v1, v1, v5

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v2, v5, 0x1

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v10, v0, p3

    iget v11, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int v12, v0, v1

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getColors()Ljava/util/List;

    move-result-object v0

    iget-object v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getSorted()Ljava/util/List;

    move-result-object v1

    move-object/from16 v8, p1

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v13, v0

    const/4 v3, 0x0

    move-object v14, v1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->drawData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;Ljava/util/List;)V

    .line 1239
    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v7, v5, 0x1

    mul-int v2, v2, v7

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v2, v2, v5

    sub-int/2addr v1, v2

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v7, v5, 0x1

    mul-int v2, v2, v7

    sub-int/2addr v1, v2

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v7, v1, p3

    iget v8, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v9, v9

    mul-float v9, v9, v16

    float-to-int v9, v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    sub-int v9, v1, v9

    move-object/from16 v1, p1

    const/4 v14, 0x0

    move v3, v7

    const/high16 v13, 0x3f800000    # 1.0f

    move v4, v8

    move v7, v5

    .end local v5    # "i":I
    .local v7, "i":I
    move v5, v9

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->drawDataTextValue_Splitted(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_60b

    .line 1237
    .end local v7    # "i":I
    .restart local v5    # "i":I
    :cond_60a
    move v7, v5

    .line 1236
    .end local v5    # "i":I
    .restart local v7    # "i":I
    :goto_60b
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_550

    :cond_60f
    move v7, v5

    .end local v5    # "i":I
    .restart local v7    # "i":I
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .end local v7    # "i":I
    goto/16 :goto_6e0

    .line 1244
    :cond_615
    const/4 v0, 0x0

    move v5, v0

    .restart local v5    # "i":I
    :goto_617
    iget v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v5, v0, :cond_6dc

    .line 1245
    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getInView()Z

    move-result v0

    if-eqz v0, :cond_6d1

    .line 1246
    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v2, v5, 0x1

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v1, v1, v5

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v2, v5, 0x1

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int v10, v0, p3

    iget v11, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int v12, v0, v1

    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getColors()Ljava/util/List;

    move-result-object v0

    iget-object v1, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getSorted()Ljava/util/List;

    move-result-object v1

    move-object/from16 v8, p1

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v13, v0

    const/4 v3, 0x0

    move-object v14, v1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->drawData(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILjava/util/List;Ljava/util/List;)V

    .line 1247
    iget-object v0, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v7, v5, 0x1

    mul-int v2, v2, v7

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v2, v2, v5

    sub-int/2addr v1, v2

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v7, v5, 0x1

    mul-int v2, v2, v7

    sub-int/2addr v1, v2

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v7, v1, p3

    iget v8, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v9, v9

    mul-float v9, v9, v16

    float-to-int v9, v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    sub-int v9, v1, v9

    move-object/from16 v1, p1

    const/4 v10, 0x0

    move v3, v7

    const/high16 v7, 0x3f800000    # 1.0f

    move v4, v8

    move v8, v5

    .end local v5    # "i":I
    .local v8, "i":I
    move v5, v9

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->drawDataTextValue(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    goto :goto_6d5

    .line 1245
    .end local v8    # "i":I
    .restart local v5    # "i":I
    :cond_6d1
    move v8, v5

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 1244
    .end local v5    # "i":I
    .restart local v8    # "i":I
    :goto_6d5
    add-int/lit8 v5, v8, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    .end local v8    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_617

    :cond_6dc
    move v8, v5

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 1253
    .end local v5    # "i":I
    :goto_6e0
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    .line 1256
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 1258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iMaxPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    add-int v1, v1, p2

    .line 1259
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    add-int v2, v2, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GUI_SCALE:F

    mul-float v4, v4, v3

    sget v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->POINTS_TEXT_SCALE:F

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v3, v3, v5

    add-float/2addr v4, v3

    float-to-int v3, v4

    sub-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->DATA_COLOR:Lcom/badlogic/gdx/graphics/Color;

    .line 1258
    invoke-static {v15, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 1266
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    .line 1269
    :goto_76c
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f19999a    # 0.6f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1271
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v16

    float-to-int v4, v4

    sub-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v1, v4

    const/4 v4, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1272
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v16

    float-to-int v3, v3

    sub-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v16

    float-to-int v4, v4

    sub-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1274
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph;->GRAPH_BORDERS_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1276
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v16

    float-to-int v4, v4

    sub-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v1, v4

    const/4 v4, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1277
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v16

    float-to-int v3, v3

    sub-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v16

    float-to-int v4, v4

    sub-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1279
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v2

    add-int v2, v2, p3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-virtual {v0, v15, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 1280
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v5, v1, -0x1

    const/4 v4, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1282
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v2

    add-int v2, v2, p3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v15, v1, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    .line 1283
    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v16

    float-to-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v5, v1, -0x1

    const/4 v4, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 1284
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 1285
    return-void
.end method

.method public getCurrent()I
    .registers 2

    .line 1518
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    if-eqz v0, :cond_7

    .line 1519
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    return v0

    .line 1522
    :cond_7
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    return v0
.end method

.method public getInStatisticsMode()Z
    .registers 2

    .line 1588
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    return v0
.end method

.method public getMoveable()Z
    .registers 2

    .line 1513
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->moveable:Z

    return v0
.end method

.method public getScrollable()Z
    .registers 2

    .line 1480
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->moveable:Z

    return v0
.end method

.method public scrollByWheel(I)V
    .registers 3
    .param p1, "nScoll"    # I

    .line 1485
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    .line 1487
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getCurrent()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setCurrent(I)V

    .line 1488
    return-void
.end method

.method public final scrollTheMenu()V
    .registers 4

    .line 1564
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->moveable:Z

    if-eqz v0, :cond_2f

    .line 1565
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX:I

    if-lez v0, :cond_2f

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX2:I

    if-lez v0, :cond_2f

    .line 1566
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX2:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->DENSITY:F

    mul-float v2, v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2f

    .line 1567
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX2:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float v0, v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->fScrollNewMenuPosY:F

    .line 1568
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    .line 1572
    :cond_2f
    return-void
.end method

.method public setCheckboxState(Z)V
    .registers 6
    .param p1, "checkboxState"    # Z

    .line 1152
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->buildValuesHeights()V

    .line 1153
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->updateInView()V

    .line 1155
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    const v3, 0x3f333333    # 0.7f

    mul-float v2, v2, v3

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->updateMoveable(I)V

    .line 1156
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->updateMoveable()V

    .line 1157
    return-void
.end method

.method public setCurrent(I)V
    .registers 9
    .param p1, "nButtonsPosX"    # I

    .line 1528
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x3f333333    # 0.7f

    if-eqz v0, :cond_6e

    .line 1529
    if-lez p1, :cond_14

    .line 1530
    const/4 p1, 0x0

    .line 1531
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosY(Z)V

    .line 1532
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    goto :goto_64

    .line 1533
    :cond_14
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    neg-int v0, v0

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    mul-int v0, v0, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    add-int/2addr v0, v4

    if-ge p1, v0, :cond_64

    .line 1534
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    mul-float v0, v0, v3

    float-to-int v0, v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    neg-int v0, v0

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    mul-int v0, v0, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v4, v3

    add-int p1, v0, v4

    .line 1535
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosY(Z)V

    .line 1536
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    .line 1539
    :cond_64
    :goto_64
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    if-eq v0, p1, :cond_c2

    .line 1540
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    .line 1541
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->updateInView()V

    goto :goto_c2

    .line 1545
    :cond_6e
    if-gez p1, :cond_79

    .line 1546
    const/4 p1, 0x0

    .line 1547
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosX(Z)V

    .line 1548
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    goto :goto_b9

    .line 1549
    :cond_79
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v0, v4

    if-le p1, v0, :cond_b9

    .line 1550
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v4

    sub-int/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int p1, v0, v3

    .line 1551
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setUpdateSliderMenuPosX(Z)V

    .line 1552
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    .line 1555
    :cond_b9
    :goto_b9
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    if-eq v0, p1, :cond_c2

    .line 1556
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    .line 1557
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->updateInView()V

    .line 1560
    :cond_c2
    :goto_c2
    return-void
.end method

.method public setInStatisticsMode(Z)V
    .registers 4
    .param p1, "inStatisticsMode"    # Z

    .line 1595
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->allowStatisticsMode:Z

    if-eqz v0, :cond_2e

    .line 1596
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    .line 1598
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    .line 1599
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    .line 1601
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    if-nez v0, :cond_24

    .line 1602
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v0, v1, :cond_24

    .line 1603
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->resetAnimation()V

    .line 1602
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1607
    .end local v0    # "i":I
    :cond_24
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->updateMoveable()V

    .line 1608
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->updateInView()V

    .line 1610
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setHoveredID(I)V

    .line 1612
    :cond_2e
    return-void
.end method

.method public final setScrollPosY(I)V
    .registers 3
    .param p1, "iScrollPosX"    # I

    .line 1575
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX2:I

    .line 1576
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX:I

    .line 1577
    return-void
.end method

.method public setVisible(Z)V
    .registers 3
    .param p1, "isVisible"    # Z

    .line 1616
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setVisible(Z)V

    .line 1617
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setHoveredID(I)V

    .line 1618
    return-void
.end method

.method public stopScrolling()V
    .registers 2

    .line 1582
    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX2:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iScrollPosX:I

    .line 1583
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->scrollModeY:Z

    .line 1584
    return-void
.end method

.method public updateHover(IIII)V
    .registers 11
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "menuPosX"    # I
    .param p4, "menuPosY"    # I

    .line 908
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    const/4 v1, -0x1

    if-nez v0, :cond_83

    .line 909
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    add-int/2addr v0, p3

    if-lt p1, v0, :cond_7e

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_7e

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int/2addr v0, p4

    if-lt p2, v0, :cond_7e

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    if-gt p2, v0, :cond_7e

    .line 910
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2c
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v0, v2, :cond_7e

    .line 911
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v4, v0, 0x1

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v3, v3, v0

    sub-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v4, v0, 0x1

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v2, v3

    if-lt p1, v2, :cond_7b

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/lit8 v4, v0, 0x1

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int v3, v3, v0

    sub-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/lit8 v4, v0, 0x1

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    add-int/2addr v2, v3

    if-gt p1, v2, :cond_7b

    .line 912
    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setHoveredID(I)V

    .line 913
    return-void

    .line 910
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 918
    .end local v0    # "i":I
    :cond_7e
    invoke-direct {p0, v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setHoveredID(I)V

    goto/16 :goto_fa

    .line 921
    :cond_83
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    add-int/2addr v0, p3

    if-lt p1, v0, :cond_f7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_f7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int/2addr v0, p4

    if-lt p2, v0, :cond_f7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    if-gt p2, v0, :cond_f7

    .line 922
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_aa
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v0, v2, :cond_f7

    .line 923
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v2

    add-int/2addr v2, p4

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    const v4, 0x3f333333    # 0.7f

    mul-float v3, v3, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    mul-int v3, v3, v0

    add-int/2addr v2, v3

    if-lt p2, v2, :cond_f4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v2

    add-int/2addr v2, p4

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v3, v5

    float-to-int v3, v3

    mul-int v3, v3, v0

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    if-gt p2, v2, :cond_f4

    .line 924
    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setHoveredID(I)V

    .line 925
    return-void

    .line 922
    :cond_f4
    add-int/lit8 v0, v0, 0x1

    goto :goto_aa

    .line 930
    .end local v0    # "i":I
    :cond_f7
    invoke-direct {p0, v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->setHoveredID(I)V

    .line 932
    :goto_fa
    return-void
.end method

.method public final updateInView()V
    .registers 9

    .line 1422
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->statisticsMode:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x3f333333    # 0.7f

    if-eqz v0, :cond_a2

    .line 1423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v0, v4, :cond_a0

    .line 1424
    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsPosY(I)I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_49

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsPosY(I)I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_49

    .line 1425
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->setInView(Z)V

    goto :goto_9c

    .line 1427
    :cond_49
    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsPosY(I)I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    if-ltz v4, :cond_91

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsPosY(I)I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosY:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getHeight()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v6, v6

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_91

    .line 1428
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->setInView(Z)V

    goto :goto_9c

    .line 1431
    :cond_91
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->setInView(Z)V

    .line 1423
    :goto_9c
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    .end local v0    # "i":I
    :cond_a0
    goto/16 :goto_115

    .line 1436
    :cond_a2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a3
    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesSize:I

    if-ge v0, v4, :cond_115

    .line 1437
    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsPosX(I)I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_d4

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsPosX(I)I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_d4

    .line 1438
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->setInView(Z)V

    goto :goto_112

    .line 1440
    :cond_d4
    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsPosX(I)I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    sub-int/2addr v4, v5

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_107

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getButtonsPosX(I)I

    move-result v4

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iDataWidth:I

    sub-int/2addr v4, v5

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iButtonsPosX:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_107

    .line 1441
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->setInView(Z)V

    goto :goto_112

    .line 1444
    :cond_107
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->setInView(Z)V

    .line 1436
    :goto_112
    add-int/lit8 v0, v0, 0x1

    goto :goto_a3

    .line 1448
    .end local v0    # "i":I
    :cond_115
    :goto_115
    return-void
.end method
