.class Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfUnits$1;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;
.source "InGame_ListOfUnits.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfUnits;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfUnits;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfUnits;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .registers 13
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfUnits;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sText2"    # Ljava/lang/String;
    .param p4, "moveable"    # Z
    .param p5, "resizable"    # Z
    .param p6, "imageID"    # I

    .line 72
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfUnits$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfUnits;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;-><init>(Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 75
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p4, v0

    .line 77
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, p2, v0

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-super/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 78
    return-void
.end method

.method public getTime()J
    .registers 3

    .line 82
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ListOfUnits;->lTime2:J

    return-wide v0
.end method
