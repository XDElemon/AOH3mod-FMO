.class Laoc/kingdoms/lukasz/menusScenarioEditor/Scenario_Calendar$4;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;
.source "Scenario_Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/Scenario_Calendar;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Scenario_Calendar;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Scenario_Calendar;Ljava/lang/String;IIIIII)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusScenarioEditor/Scenario_Calendar;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "iWidth"    # I
    .param p8, "iHeight"    # I

    .line 91
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusScenarioEditor/Scenario_Calendar$4;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Scenario_Calendar;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 94
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    .line 96
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_f

    .line 97
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    .line 100
    :cond_f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildScenario_Calendar()V

    .line 101
    return-void
.end method
