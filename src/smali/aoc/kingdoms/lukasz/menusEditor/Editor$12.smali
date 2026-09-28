.class Laoc/kingdoms/lukasz/menusEditor/Editor$12;
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

    .line 180
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusEditor/Editor$12;->this$0:Laoc/kingdoms/lukasz/menusEditor/Editor;

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

    .line 186
    const-string v0, "\u7384\u661f\u6c49\u5316\uff0c\u514d\u8d39\u5206\u4eab\uff0c\u7981\u6b62\u5012\u5356\uff0c\u4e8c\u521b\u9700\u627e\u6c49\u5316\u7ec4\u957f\u6388\u6743\n\u7cfb\u7edf\u57fa\u4e8ePolaris AOH3 1.3\u5236\u4f5c\uff0c\u4f5c\u8005\u4e3aRainfall\u56e2\u961f\uff08RedreamR\uff09"

    sput-object v0, Laoc/kingdoms/lukasz/menus/Dialog;->customText:Ljava/lang/String;

    .line 187
    sget-object v0, Laoc/kingdoms/lukasz/menus/Dialog$DialogType;->TEXT:Laoc/kingdoms/lukasz/menus/Dialog$DialogType;

    invoke-static {v0}, Laoc/kingdoms/lukasz/menus/Dialog;->setDialogType(Laoc/kingdoms/lukasz/menus/Dialog$DialogType;)V

    .line 188
    return-void
.end method

.method public updateLanguage()V
    .registers 2

    .line 182
    const-string v0, "\u7384\u661f\u6c49\u5316\u7ec4\u6c49\u5316\uff0cRainfall\u56e2\u961f\u63d0\u4f9b\u6280\u672f\u652f\u6301"

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusEditor/Editor$12;->setText(Ljava/lang/String;)V

    .line 183
    return-void
.end method
