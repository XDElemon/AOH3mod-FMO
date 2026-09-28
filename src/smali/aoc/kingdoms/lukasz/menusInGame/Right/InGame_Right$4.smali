.class Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$4;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;
.source "InGame_Right.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;Ljava/lang/String;Ljava/lang/String;IIIIIIIIZ)V
    .registers 27
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sText2"    # Ljava/lang/String;
    .param p4, "nPosX"    # I
    .param p5, "nPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "nHeight"    # I
    .param p8, "imageID"    # I
    .param p9, "iCivID"    # I
    .param p10, "espionageStartedTurnID"    # I
    .param p11, "espionageEndTurnID"    # I
    .param p12, "inRightMenu"    # Z

    .line 135
    move-object v12, p0

    move-object v13, p1

    iput-object v13, v12, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right$4;->this$0:Laoc/kingdoms/lukasz/menusInGame/Right/InGame_Right;

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_OutlinerEspionageMission;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 1

    .line 139
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->action1()V

    .line 140
    return-void
.end method
