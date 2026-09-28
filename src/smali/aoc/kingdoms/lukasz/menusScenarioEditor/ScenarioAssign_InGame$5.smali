.class Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame$5;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;
.source "ScenarioAssign_InGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame;IIZ)V
    .registers 5
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "isClickable"    # Z

    .line 154
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame$5;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame;

    invoke-direct {p0, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTopFlag;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method protected drawBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 156
    return-void
.end method

.method public getFlagCivID()I
    .registers 2

    .line 160
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->iCreateScenario_AssignProvinces_Civ:I

    return v0
.end method
