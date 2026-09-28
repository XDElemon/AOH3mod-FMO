.class Laoc/kingdoms/lukasz/menusEditor/Editor$11;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusEditor/Editor;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusEditor/Editor;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusEditor/Editor;Ljava/lang/String;IIIIIZ)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusEditor/Editor;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I
    .param p7, "x5"    # I
    .param p8, "x6"    # Z

    .line 167
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusEditor/Editor$11;->this$0:Laoc/kingdoms/lukasz/menusEditor/Editor;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 2

    .line 173
    const-string v0, "https://kdocs.cn/l/cjN5mUqBtYdv"

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog;->GO_TO_LINK:Ljava/lang/String;

    .line 174
    sget-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->GO_TO_LINK:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    invoke-static {v0}, Laoc/kingdoms/lukasz/menus/Dialog;->setDialogType(Laoc/kingdoms/lukasz/menus/Dialog$DialogType;)V

    .line 175
    return-void
.end method

.method public updateLanguage()V
    .registers 2

    .line 169
    const-string v0, "\u70b9\u6211\u4e86\u89e3\u66f4\u591a\u5386\u53f2\u65f6\u4ee33\u76f8\u5173\u4fe1\u606f"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusEditor/Editor$11;->setText(Ljava/lang/String;)V

    .line 170
    return-void
.end method
