.class Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$8;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;
.source "InGame_Civ_List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;ZZLjava/lang/String;IIIIII)V
    .registers 23
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;
    .param p2, "active"    # Z
    .param p3, "flipY"    # Z
    .param p4, "sText"    # Ljava/lang/String;
    .param p5, "iTextPositionX"    # I
    .param p6, "iPosX"    # I
    .param p7, "iPosY"    # I
    .param p8, "iWidth"    # I
    .param p9, "iHeight"    # I
    .param p10, "fontID"    # I

    .line 392
    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List$8;->this$0:Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_List;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;-><init>(ZZLjava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 1

    .line 406
    return-void
.end method

.method public drawLines(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 394
    return-void
.end method
