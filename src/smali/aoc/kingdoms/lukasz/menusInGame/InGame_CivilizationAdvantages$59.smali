.class Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$59;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;
.source "InGame_CivilizationAdvantages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "advantageID"    # I
    .param p5, "iLevel"    # I
    .param p6, "sTextHover"    # Ljava/lang/String;
    .param p7, "sText"    # Ljava/lang/String;
    .param p8, "imageID"    # I

    .line 1182
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$59;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 5

    .line 1182
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$59;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$59;->getValue1()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$59;->getValue2()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$59;->getTextToDraw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->actionUnlock(IILjava/lang/String;)V

    return-void
.end method
