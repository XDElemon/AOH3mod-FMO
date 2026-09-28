.class public Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Green;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_Notification_Green;
.source "Button_NotificationResource_Green.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIIJ)V
    .registers 11
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "sText2"    # Ljava/lang/String;
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "imageID"    # I
    .param p8, "notificationID"    # I
    .param p9, "lTime"    # J

    .line 12
    invoke-direct/range {p0 .. p10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Notification_Green;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIJ)V

    .line 13
    return-void
.end method


# virtual methods
.method protected drawIcon(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    .line 17
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Green;->fAlpha:F

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 18
    sget-object v0, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Green;->imageID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Green;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Green;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Green;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Green;->iconHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Green;->iconWidth:I

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Green;->iconHeight:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    .line 19
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 20
    return-void
.end method

.method public getImageScale(I)F
    .registers 4
    .param p1, "iImageID"    # I

    .line 32
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public updateIcon()V
    .registers 4

    .line 25
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Green;->imageID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Green;->getImageScale(I)F

    move-result v0

    const v1, 0x3f99999a    # 1.2f

    mul-float v0, v0, v1

    .line 26
    .local v0, "iconScale":F
    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Green;->imageID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Green;->iconWidth:I

    .line 27
    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Green;->imageID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Green;->iconHeight:I

    .line 28
    return-void
.end method
