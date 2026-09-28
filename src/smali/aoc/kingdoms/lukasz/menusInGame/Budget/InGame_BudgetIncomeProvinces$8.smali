.class Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$8;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter;
.source "InGame_BudgetIncomeProvinces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .registers 13
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sText2"    # Ljava/lang/String;
    .param p4, "moveable"    # Z
    .param p5, "resizable"    # Z
    .param p6, "imageID"    # I

    .line 466
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$8;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;

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

    .line 469
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$8;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iActiveCivID:I

    return v0
.end method

.method public getTime()J
    .registers 3

    .line 474
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->lTime2:J

    return-wide v0
.end method
