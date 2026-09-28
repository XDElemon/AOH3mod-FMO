.class Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$2;
.super Laoc/kingdoms/lukasz/menu_element/Slider;
.source "EditorMapEconomy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;IIIIIII)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p6, "iMin"    # I
    .param p7, "iMax"    # I
    .param p8, "iCurrent"    # I

    .line 35
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$2;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/Slider;-><init>(IIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 2

    .line 48
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$2;->getCurrent()I

    move-result v0

    int-to-float v0, v0

    sput v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy;->currentEconomy:F

    .line 49
    return-void
.end method

.method public getColorLEFT()Lcom/badlogic/gdx/graphics/Color;
    .registers 3

    .line 43
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$2;->getCurrent()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getGrowthRateColor(IF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getDrawText()Ljava/lang/String;
    .registers 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy$2;->getCurrent()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
