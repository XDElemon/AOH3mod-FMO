.class Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$74;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Horizontal;
.source "InGame_Encyclopedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field id:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "imageID"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "nHeight"    # I
    .param p8, "maxIconWidth"    # I

    .line 1444
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$74;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Horizontal;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .registers 3

    .line 1449
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$74;->id:I

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$74;->id:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->buildElementHover(II)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$74;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 1450
    return-void
.end method

.method public setCurrent(I)V
    .registers 2
    .param p1, "nCurrent"    # I

    .line 1454
    iput p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$74;->id:I

    .line 1455
    return-void
.end method
