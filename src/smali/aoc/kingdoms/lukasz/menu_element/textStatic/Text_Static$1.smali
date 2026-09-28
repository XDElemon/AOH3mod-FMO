.class Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$1;
.super Ljava/lang/Object;
.source "Text_Static.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;II)V
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

    .line 39
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition()I
    .registers 2

    .line 42
    const/4 v0, 0x0

    return v0
.end method
