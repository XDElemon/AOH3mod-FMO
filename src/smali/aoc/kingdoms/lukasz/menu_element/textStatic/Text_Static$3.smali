.class Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$3;
.super Ljava/lang/Object;
.source "Text_Static.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->updateTextPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    .line 131
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .registers 3

    .line 134
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    iget v1, v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
