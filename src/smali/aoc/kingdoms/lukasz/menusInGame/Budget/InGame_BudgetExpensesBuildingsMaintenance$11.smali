.class Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$11;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter;
.source "InGame_BudgetExpensesBuildingsMaintenance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .registers 13
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sText2"    # Ljava/lang/String;
    .param p4, "moveable"    # Z
    .param p5, "resizable"    # Z
    .param p6, "imageID"    # I

    .line 470
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$11;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter;-><init>(Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public getFlagCivID()I
    .registers 2

    .line 473
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance$11;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;->iActiveCivID:I

    return v0
.end method

.method public getTime()J
    .registers 3

    .line 478
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetExpensesBuildingsMaintenance;->lTime2:J

    return-wide v0
.end method
