.class Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$4;
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

    .line 139
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$4;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .registers 2

    .line 142
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$4;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    iget v0, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;->iTextPositionX:I

    return v0
.end method
