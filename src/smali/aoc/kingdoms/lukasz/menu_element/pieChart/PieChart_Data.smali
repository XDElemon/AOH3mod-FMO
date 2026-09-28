.class public Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;
.super Ljava/lang/Object;
.source "PieChart_Data.java"


# instance fields
.field private pieChartValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;",
            ">;"
        }
    .end annotation
.end field

.field private pieChartValuesSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->pieChartValues:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->pieChartValuesSize:I

    return-void
.end method


# virtual methods
.method public final addPieChartValues(Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;)V
    .registers 3
    .param p1, "nPieChartValue"    # Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    .line 67
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->pieChartValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->pieChartValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->pieChartValuesSize:I

    .line 69
    return-void
.end method

.method public getCivID(I)I
    .registers 3
    .param p1, "i"    # I

    .line 28
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getDataID()I

    move-result v0

    return v0
.end method

.method public final getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;
    .registers 3
    .param p1, "i"    # I

    .line 72
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->pieChartValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    return-object v0
.end method

.method public getPieChartValue_ColorB(I)F
    .registers 3
    .param p1, "i"    # I

    .line 24
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getDataID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getB()F

    move-result v0

    return v0
.end method

.method public getPieChartValue_ColorG(I)F
    .registers 3
    .param p1, "i"    # I

    .line 20
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getDataID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getG()F

    move-result v0

    return v0
.end method

.method public getPieChartValue_ColorR(I)F
    .registers 3
    .param p1, "i"    # I

    .line 16
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getDataID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getR()F

    move-result v0

    return v0
.end method

.method public final getPieChartValuesSize()I
    .registers 2

    .line 76
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->pieChartValuesSize:I

    return v0
.end method

.method public final sortAndBuild_PieChartValues()V
    .registers 10

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v0, "tempPieChartValues":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;>;"
    const/4 v1, 0x0

    .line 38
    .local v1, "countedValues":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 39
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    float-to-double v3, v1

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getValue()D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v5

    double-to-float v1, v3

    .line 38
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 43
    .end local v2    # "i":I
    :cond_25
    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->pieChartValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 45
    :goto_2a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_63

    .line 46
    const/4 v2, 0x0

    .line 48
    .local v2, "nMinID":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_54

    .line 49
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getValue()D

    move-result-wide v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getValue()D

    move-result-wide v6

    cmpg-double v8, v4, v6

    if-gez v8, :cond_51

    .line 50
    move v2, v3

    .line 48
    :cond_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 54
    .end local v3    # "i":I
    :cond_54
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->pieChartValues:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 56
    .end local v2    # "nMinID":I
    goto :goto_2a

    .line 58
    :cond_63
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_64
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValuesSize()I

    move-result v3

    if-ge v2, v3, :cond_86

    .line 59
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v3

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Data;->getPieChartValue(I)Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->getValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v6

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->setPercentage(F)V

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 61
    .end local v2    # "i":I
    :cond_86
    return-void
.end method
