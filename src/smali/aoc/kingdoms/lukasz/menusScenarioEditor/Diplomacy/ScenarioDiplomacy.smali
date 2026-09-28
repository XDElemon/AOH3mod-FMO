.class public Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDiplomacy;
.super Ljava/lang/Object;
.source "ScenarioDiplomacy.java"


# static fields
.field public static goBackTo:Laoc/kingdoms/lukasz/menu/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_SETTINGS:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDiplomacy;->goBackTo:Laoc/kingdoms/lukasz/menu/View;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
