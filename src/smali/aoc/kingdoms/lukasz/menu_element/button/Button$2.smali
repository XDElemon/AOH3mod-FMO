.class Laoc/kingdoms/lukasz/menu_element/button/Button$2;
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

    .line 81
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$2;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .registers 2

    .line 84
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$2;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    iget v0, v0, Laoc/kingdoms/lukasz/menu_element/button/Button;->iTextPositionX:I

    return v0
.end method
