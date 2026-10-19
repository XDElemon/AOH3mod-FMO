# 由 tools/gen_tno_opening.py 生成，禁止手改
# 一个"会画贴图、能点、带文字"的菜单元素：
#   mode 0      装饰（不响应点击）
#   mode 1..4   切到第 mode-1 页
#   mode 10/11  上一页/下一页
#   mode 12     关闭
# flags = (mode << 1) | clickable
.class public Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "TNO_PanelImage.java"


# instance fields
.field public imageID:I

.field public mode:I


# direct methods
.method public constructor <init>(IIIIII)V
    .registers 16
    .param p1, "nPosX"    # I
    .param p2, "nPosY"    # I
    .param p3, "nWidth"    # I
    .param p4, "nHeight"    # I
    .param p5, "imageID"    # I
    .param p6, "flags"    # I

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    move v1, p5

    iput v1, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->imageID:I

    move v1, p6

    shr-int/lit8 v1, v1, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->mode:I

    # init(sText, fontID, textPosX, x, y, w, h, clickable, visible, checkbox, checkboxState)
    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p6

    and-int/lit8 v8, v8, 0x1

    move-object v0, p0

    const-string v1, ""

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v3, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button;->init(Ljava/lang/String;IIIIIIZZZZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 3

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->mode:I

    const/4 v1, 0x1

    if-ge v0, v1, :m_ge1

    return-void

    :m_ge1
    const/4 v1, 0x4

    if-le v0, v1, :is_tab

    const/16 v1, 0xa

    if-ne v0, v1, :not_prev

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->prevPage()V

    return-void

    :not_prev
    const/16 v1, 0xb

    if-ne v0, v1, :not_next

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->nextPage()V

    return-void

    :not_next
    const/16 v1, 0xc

    if-ne v0, v1, :done

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->doClose()V

    :done
    return-void

    :is_tab
    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->showPage(I)V

    return-void
.end method

# 贴图绘制：绕开 Button.draw 的 clickable -> 0.45 透明度分支
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 6

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 12
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->getPosX()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->getPosY()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->getHeight()I

    move-result v5

    move-object v0, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    # 按下/激活态：叠一层 10% 白（仅可点元素）
    if-eqz p4, :end

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->getClickable()Z

    move-result v0

    if-eqz v0, :end

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->getPosX()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->getPosY()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :end
    return-void
.end method
