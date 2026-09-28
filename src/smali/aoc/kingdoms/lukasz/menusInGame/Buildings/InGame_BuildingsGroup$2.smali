.class Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$2;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlue;
.source "InGame_BuildingsGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;Ljava/lang/String;IIIII)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "iWidth"    # I
    .param p7, "iHeight"    # I

    .line 91
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlue;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public drawLines(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 98
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 94
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_BuildingsGroup$2;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStats3(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method
