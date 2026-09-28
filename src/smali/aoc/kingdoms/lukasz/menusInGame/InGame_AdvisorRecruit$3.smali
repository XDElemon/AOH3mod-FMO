.class Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$3;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Ruler;
.source "InGame_AdvisorRecruit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sText2"    # Ljava/lang/String;
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "iWidth"    # I
    .param p7, "iHeight"    # I

    .line 154
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_Ruler;-><init>(Ljava/lang/String;Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 3
    .param p1, "isActive"    # Z

    .line 156
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_AdvisorRecruit$3;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorButtonHover2(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method
