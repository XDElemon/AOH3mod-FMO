.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$19;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Resource_Small;
.source "InGame_Court_Provinces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;ILjava/lang/String;IIIII)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;
    .param p2, "iProvinceID"    # I
    .param p3, "sText"    # Ljava/lang/String;
    .param p4, "resourceID"    # I
    .param p5, "nPosX"    # I
    .param p6, "nPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "nHeight"    # I

    .line 926
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$19;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Resource_Small;-><init>(ILjava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .registers 4

    .line 941
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$19;->iProvinceID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$19;->resourceID:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->getHoverResource(IIZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces$19;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 942
    return-void
.end method
