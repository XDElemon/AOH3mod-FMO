.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Espionage$17;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;
.source "InGame_Court_Espionage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Espionage;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Espionage;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Espionage;Ljava/lang/String;IIIIIIIIILjava/lang/String;IILjava/lang/String;I)V
    .registers 33
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Espionage;
    .param p2, "sName"    # Ljava/lang/String;
    .param p3, "iCivID"    # I
    .param p4, "iAttack"    # I
    .param p5, "iDefense"    # I
    .param p6, "iPosX"    # I
    .param p7, "iPosY"    # I
    .param p8, "imageID"    # I
    .param p9, "iDay"    # I
    .param p10, "iMonth"    # I
    .param p11, "iYear"    # I
    .param p12, "key"    # Ljava/lang/String;
    .param p13, "nCivID"    # I
    .param p14, "iProvinceID"    # I
    .param p15, "sIMG"    # Ljava/lang/String;
    .param p16, "combatExperience"    # I

    .line 690
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iput-object v14, v15, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Espionage$17;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Espionage;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move-object/from16 v14, p15

    move/from16 v15, p16

    invoke-direct/range {v0 .. v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;-><init>(Ljava/lang/String;IIIIIIIIILjava/lang/String;IILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 1

    .line 695
    return-void
.end method
