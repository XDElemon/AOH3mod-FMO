.class public Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;
.super Ljava/lang/Object;
.source "InGame_Budget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProvValue"
.end annotation


# instance fields
.field public fValue:F

.field public iProvinceID:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;IF)V
    .registers 4
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;
    .param p2, "iProvinceID"    # I
    .param p3, "fValue"    # F

    .line 71
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p2, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;->iProvinceID:I

    .line 73
    iput p3, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;->fValue:F

    .line 74
    return-void
.end method
