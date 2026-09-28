.class Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$9;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style_NewArmy;
.source "InGame_RecruitArmy_NewArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;IIZLjava/lang/String;IIIIIIZ)V
    .registers 27
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;
    .param p2, "iUnitID"    # I
    .param p3, "iArmyID"    # I
    .param p4, "add"    # Z
    .param p5, "sText"    # Ljava/lang/String;
    .param p6, "fontID"    # I
    .param p7, "iTextPositionX"    # I
    .param p8, "iPosX"    # I
    .param p9, "iPosY"    # I
    .param p10, "nWidth"    # I
    .param p11, "nHeight"    # I
    .param p12, "isClickable"    # Z

    .line 640
    move-object v12, p0

    move-object v13, p1

    iput-object v13, v12, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$9;->this$0:Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style_NewArmy;-><init>(IIZLjava/lang/String;IIIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 6

    .line 642
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$9;->this$0:Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$9;->getValue1()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$9;->getValue2()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy$9;->getCurrent()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    goto :goto_13

    :cond_12
    const/4 v4, 0x0

    :goto_13
    invoke-virtual {v0, v1, v2, v4}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy;->updateCreateNewArmy(IIZ)V

    .line 643
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy_NewArmy_Battlefield;->rebuildMenuIfVisible()V

    .line 644
    return-void
.end method
