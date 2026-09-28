.class Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$5;
.super Ljava/lang/Object;
.source "Text_Scrollable.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->updateTextPosition()V
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

    .line 217
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$5;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition(Z)I
    .registers 3
    .param p1, "isActive"    # Z

    .line 220
    const/4 v0, 0x0

    return v0
.end method
