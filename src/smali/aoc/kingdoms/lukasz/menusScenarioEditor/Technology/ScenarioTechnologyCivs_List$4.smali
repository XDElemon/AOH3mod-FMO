.class Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnologyCivs_List$4;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;
.source "ScenarioTechnologyCivs_List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnologyCivs_List;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnologyCivs_List;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnologyCivs_List;IIIIZI)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnologyCivs_List;
    .param p2, "btnIMG"    # I
    .param p3, "iTechnologyID"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "inTechTree"    # Z
    .param p7, "iPosInQueue"    # I

    .line 109
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnologyCivs_List$4;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnologyCivs_List;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;-><init>(IIIIZI)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 2

    .line 113
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnologyCivs_List$4;->getCurrent()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnologyCivs;->iActiveTechnology:I

    .line 114
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnologyCivs_List$4;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnologyCivs_List;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnologyCivs_List;->updateLanguage()V

    .line 115
    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 7
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 119
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnologyCivs_List$4;->getCurrent()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnologyCivs;->iActiveTechnology:I

    if-ne v0, v1, :cond_d

    .line 120
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->techResearched:I

    iput v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnologyCivs_List$4;->btnIMG:I

    goto :goto_11

    .line 122
    :cond_d
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->techGray:I

    iput v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnologyCivs_List$4;->btnIMG:I

    .line 125
    :goto_11
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    .line 126
    return-void
.end method
