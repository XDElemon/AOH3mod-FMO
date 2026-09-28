.class Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$15;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;
.source "InGame_RightReligion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;Ljava/lang/String;ZZI)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "moveable"    # Z
    .param p4, "resizable"    # Z
    .param p5, "imageID"    # I

    .line 658
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$15;->this$0:Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

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

    .line 661
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$15;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$15;->getHeight()I

    move-result v0

    sub-int v4, p3, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$15;->getHeight()I

    move-result v6

    move-object v2, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 663
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$15;->drawGradient(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 664
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    div-int/lit8 v0, v0, 0x2

    add-int v3, p2, v0

    move-object v1, p0

    move v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion$15;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 665
    return-void
.end method

.method public getTime()J
    .registers 3

    .line 669
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Right/InGame_RightReligion;->lTime2:J

    return-wide v0
.end method
