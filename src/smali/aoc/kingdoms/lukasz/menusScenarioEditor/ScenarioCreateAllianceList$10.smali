.class Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$10;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Write;
.source "ScenarioCreateAllianceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;Ljava/lang/String;IIIIII)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "iWidth"    # I
    .param p8, "iHeight"    # I

    .line 284
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList$10;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Write;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 4

    .line 293
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_CREATE_ALLIANCE_REST:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v2, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->sMessageRest:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->showKeyboard(Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public getTextToDraw()Ljava/lang/String;
    .registers 4

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAllianceList;->sMessageRest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_CREATE_ALLIANCE_REST:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    if-ne v1, v2, :cond_16

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->getKeyboardVerticalLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    :cond_16
    const-string v1, ""

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
