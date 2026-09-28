.class Laoc/kingdoms/lukasz/menusInGame/InGame_War$17;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;
.source "InGame_War.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_War;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_War;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_War;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_War;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sTextLeft"    # Ljava/lang/String;
    .param p4, "sTextRight"    # Ljava/lang/String;
    .param p5, "sTextLeft2"    # Ljava/lang/String;
    .param p6, "sTextRight2"    # Ljava/lang/String;
    .param p7, "movable"    # Z
    .param p8, "resizable"    # Z
    .param p9, "imageID"    # I

    .line 710
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_War$17;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_War;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

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

    .line 713
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v5, p4, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p5

    invoke-super/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 714
    return-void
.end method

.method public getTime()J
    .registers 3

    .line 718
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->lTime:J

    return-wide v0
.end method
