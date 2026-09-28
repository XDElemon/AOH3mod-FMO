.class Laoc/kingdoms/lukasz/menusInGame/InGame_Loan$2;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;
.source "InGame_Loan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Loan;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Loan;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Loan;Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_Loan;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I

    .line 92
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Loan$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Loan;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "sText"    # Ljava/lang/String;

    .line 95
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;->setText(Ljava/lang/String;)V

    .line 97
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Loan$2;->nColor:Lcom/badlogic/gdx/graphics/Color;

    .line 98
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Loan$2;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    .line 99
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Loan$2;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    .line 100
    return-void
.end method
