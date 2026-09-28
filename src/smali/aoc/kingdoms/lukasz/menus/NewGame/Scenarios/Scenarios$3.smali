.class Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$3;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;
.source "Scenarios.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;Ljava/lang/String;III)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "iWidth"    # I

    .line 102
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$3;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_DescScenarios;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public getClickable()Z
    .registers 2

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 115
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getPosY()I
    .registers 3

    .line 110
    sget v0, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/ScenariosList_NewGame;->iYPos:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/NewGame/Scenarios/Scenarios$3;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
