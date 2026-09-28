.class Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;
.super Ljava/lang/Object;
.source "Graph_Vertical.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$DrawStatisticsData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;-><init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data_Type;Ljava/lang/String;Ljava/lang/String;IIIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    .line 529
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;->this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "i"    # I
    .param p3, "tempOffsetX"    # I
    .param p4, "iTranslateX"    # I
    .param p5, "iTranslateY"    # I

    .line 532
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;->this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    # getter for: Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;
    invoke-static {v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->access$000(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValuesSize()I

    move-result v1

    const-string v2, ""

    const v3, 0x3f333333    # 0.7f

    if-ge v0, v1, :cond_98

    .line 533
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;->this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;->this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    # getter for: Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;
    invoke-static {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->access$000(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v4, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;->this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;->this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    # invokes: Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I
    invoke-static {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->access$100(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;->this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    # invokes: Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getStatisticsWidth()I
    invoke-static {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->access$100(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)I

    move-result v5

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;->this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    # getter for: Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->verticalInfo:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;
    invoke-static {v6}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->access$200(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;

    move-result-object v6

    iget-object v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;->this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    # getter for: Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;
    invoke-static {v7}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->access$000(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v7, v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValueDataTypeID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->getSortedID(I)I

    move-result v6

    mul-int v5, v5, v6

    add-int/2addr v4, v5

    add-int/2addr v4, p4

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;->this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v6, v6

    mul-float v6, v6, v3

    float-to-int v3, v6

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    add-int/lit8 v6, p2, 0x1

    mul-int v3, v3, v6

    add-int/2addr v5, v3

    add-int/2addr v5, p5

    # invokes: Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsValue(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V
    invoke-static {v1, p1, v2, v4, v5}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->access$300(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 536
    .end local v0    # "j":I
    :cond_98
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;->this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;->this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    # getter for: Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;
    invoke-static {v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->access$000(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;->this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosX()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    float-to-int v4, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, p3

    add-int/2addr v2, p4

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;->this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->getPosY()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v5, v5

    mul-float v5, v5, v3

    float-to-int v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    add-int/lit8 v5, p2, 0x1

    mul-int v3, v3, v5

    add-int/2addr v4, v3

    add-int/2addr v4, p5

    # invokes: Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->drawStatisticsValue(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V
    invoke-static {v0, p1, v1, v2, v4}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->access$300(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;II)V

    .line 537
    return-void
.end method

.method public getStatsLP(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 546
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;->this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    # getter for: Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;
    invoke-static {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->access$000(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatsLPCivFlagID(I)I
    .registers 3
    .param p1, "i"    # I

    .line 551
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;->this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    # getter for: Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->lValues:Ljava/util/List;
    invoke-static {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->access$000(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Data;->getCivID()I

    move-result v0

    return v0
.end method

.method public getTotal()Ljava/lang/String;
    .registers 3

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;->this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    # getter for: Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->sTotal:Ljava/lang/String;
    invoke-static {v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->access$500(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical$12;->this$0:Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;

    # getter for: Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->iValuesTotal:I
    invoke-static {v1}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;->access$400(Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
