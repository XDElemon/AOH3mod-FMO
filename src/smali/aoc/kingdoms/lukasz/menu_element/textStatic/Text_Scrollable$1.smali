.class Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;
.super Ljava/lang/Object;
.source "Text_Scrollable.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$DrawText;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    .line 91
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw_Element(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .registers 13
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "isActive"    # Z
    .param p5, "scrollableY"    # Z

    .line 94
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    # getter for: Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F
    invoke-static {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$000(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)F

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setFontScale(F)V

    .line 95
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    # getter for: Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fontID:I
    invoke-static {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$100(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I

    move-result v2

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getText()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getPosX()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    iget-object v1, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$TextPosition;

    invoke-interface {v1, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$TextPosition;->getTextPosition(Z)I

    move-result v1

    add-int/2addr v0, v1

    add-int v4, v0, p2

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getPosY()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    iget v1, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v5, v0, p3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-virtual {v0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    .line 96
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->resetFontScale()V

    .line 97
    return-void
.end method
