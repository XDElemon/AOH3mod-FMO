.class Laoc/kingdoms/lukasz/menusEditor/Editor$8;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_Simple;
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
.method constructor <init>(Laoc/kingdoms/lukasz/menusEditor/Editor;Ljava/lang/String;III)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusEditor/Editor;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I

    .line 137
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusEditor/Editor$8;->this$0:Laoc/kingdoms/lukasz/menusEditor/Editor;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc_Simple;-><init>(Ljava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 4

    .line 139
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const-string v1, "Terms of Use"

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->technology2:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    .line 140
    return-void
.end method
