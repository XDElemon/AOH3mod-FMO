.class Laoc/kingdoms/lukasz/menu_element/button/Button$4;
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

    .line 136
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$4;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCheckBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .registers 5
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "iTranslateX"    # I
    .param p3, "iTranslateY"    # I
    .param p4, "scrollableY"    # Z

    .line 140
    return-void
.end method
