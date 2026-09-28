.class Laoc/kingdoms/lukasz/jakowski/Keyboard$29;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/Keyboard;->showKeyboard(Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/jakowski/Keyboard;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/jakowski/Keyboard;

    .line 1319
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Keyboard$29;->this$0:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionType(Ljava/lang/String;)V
    .registers 4
    .param p1, "nChar"    # Ljava/lang/String;

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    .line 1323
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioPopulation_List;->sPopulation:Ljava/lang/String;

    .line 1326
    :try_start_19
    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioPopulation_List;->sPopulation:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1328
    .local v0, "tYear":I
    sget v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioPopulation_List;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iput v0, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Population:I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2e} :catch_2f

    .line 1331
    .end local v0    # "tYear":I
    goto :goto_30

    .line 1329
    :catch_2f
    move-exception v0

    .line 1332
    :goto_30
    return-void
.end method

.method public delete()V
    .registers 5

    .line 1336
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1a

    .line 1337
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    goto :goto_1e

    .line 1339
    :cond_1a
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    .line 1342
    :goto_1e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioPopulation_List;->sPopulation:Ljava/lang/String;

    .line 1345
    :try_start_22
    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioPopulation_List;->sPopulation:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1347
    .local v0, "tYear":I
    sget v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioPopulation_List;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iput v0, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Population:I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_36} :catch_37

    .line 1350
    .end local v0    # "tYear":I
    goto :goto_38

    .line 1348
    :catch_37
    move-exception v0

    .line 1351
    :goto_38
    return-void
.end method

.method public save()V
    .registers 3

    .line 1355
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sput-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioPopulation_List;->sPopulation:Ljava/lang/String;

    .line 1358
    :try_start_4
    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioPopulation_List;->sPopulation:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1360
    .local v0, "tYear":I
    sget v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioPopulation_List;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->scenarioEditorData:Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;

    iput v0, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$ScenarioCivData;->Population:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1a

    .line 1363
    .end local v0    # "tYear":I
    goto :goto_1f

    .line 1361
    :catch_1a
    move-exception v0

    .line 1362
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "0"

    sput-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioPopulation_List;->sPopulation:Ljava/lang/String;

    .line 1365
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1f
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Keyboard$29;->this$0:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    .line 1366
    return-void
.end method
