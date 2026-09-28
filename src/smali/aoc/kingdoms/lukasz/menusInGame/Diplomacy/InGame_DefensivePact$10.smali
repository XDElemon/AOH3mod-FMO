.class Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DefensivePact$10;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_Likelihood;
.source "InGame_DefensivePact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DefensivePact;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DefensivePact;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DefensivePact;Ljava/lang/String;Ljava/lang/String;IIIIFI)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DefensivePact;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sText2"    # Ljava/lang/String;
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "nHeight"    # I
    .param p8, "perc"    # F
    .param p9, "imageID"    # I

    .line 248
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DefensivePact$10;->this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DefensivePact;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/Button_Likelihood;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIFI)V

    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .registers 2

    .line 251
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DefensivePact;->getHover()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_DefensivePact$10;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 252
    return-void
.end method
