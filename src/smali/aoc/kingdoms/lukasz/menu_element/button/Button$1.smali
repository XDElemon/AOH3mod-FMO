.class Laoc/kingdoms/lukasz/menu_element/button/Button$1;
.super Ljava/lang/Object;
.source "Button.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/button/Button;->init(Ljava/lang/String;IIIIIIZZZZ)V
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

    .line 73
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$1;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .registers 3

    .line 76
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$1;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$1;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getTextWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
