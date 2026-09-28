.class Laoc/kingdoms/lukasz/menus/Init_SelectMap2$6;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_Simple;
.source "Init_SelectMap2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/Init_SelectMap2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/Init_SelectMap2;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/Init_SelectMap2;Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/Init_SelectMap2;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "iWidth"    # I
    .param p6, "fontID"    # I

    .line 103
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/Init_SelectMap2$6;->this$0:Laoc/kingdoms/lukasz/menus/Init_SelectMap2;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_Simple;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 1

    .line 107
    return-void
.end method
