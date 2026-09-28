.class Laoc/kingdoms/lukasz/menu_element/button/Button$3;
.super Ljava/lang/Object;
.source "Button.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/button/Button$Checkbox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/button/Button;->buildCheckbox()Laoc/kingdoms/lukasz/menu_element/button/Button$Checkbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu_element/button/Button;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menu_element/button/Button;

    .line 116
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCheckBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 14
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "scrollableY"    # Z

    .line 119
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getCheckboxState()Z

    move-result v0

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v8, 0x0

    if-eqz v0, :cond_1a

    .line 120
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f0ccccd    # 0.55f

    invoke-direct {v0, v3, v2, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_25

    .line 122
    :cond_1a
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3e0c49ba    # 0.137f

    invoke-direct {v0, v2, v3, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 125
    :goto_25
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v1

    div-int/lit8 v4, v1, 0x4

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getHeight()I

    move-result v1

    add-int/lit8 v5, v1, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 127
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v8, v8, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 128
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v4

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getHeight()I

    move-result v1

    div-int/lit8 v5, v1, 0x4

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 129
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result v1

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v1, p3

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    sub-int v3, v1, v3

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v4

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getHeight()I

    move-result v1

    div-int/lit8 v5, v1, 0x4

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    .line 131
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 132
    return-void
.end method
