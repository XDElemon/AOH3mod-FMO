.class Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_Alliances$1;
.super Laoc/kingdoms/lukasz/menu_element/Minimap;
.source "ScenarioCreateAlliance_Alliances.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_Alliances;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_Alliances;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_Alliances;II)V
    .registers 4
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_Alliances;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 32
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_Alliances$1;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_Alliances;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/menu_element/Minimap;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getPosX()I
    .registers 3

    .line 35
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_Alliances$1;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPosY()I
    .registers 3

    .line 40
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_Alliances$1;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
