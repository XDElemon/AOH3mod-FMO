.class Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$2;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;
.source "InGame_Battlefield.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;Ljava/lang/String;IIILjava/lang/String;II)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;
    .param p2, "sName"    # Ljava/lang/String;
    .param p3, "iCivID"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "key"    # Ljava/lang/String;
    .param p7, "nCivID"    # I
    .param p8, "iProvinceID"    # I

    .line 216
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;-><init>(Ljava/lang/String;IIILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    .line 219
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    .line 221
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;->actionElement()V

    .line 222
    return-void
.end method
