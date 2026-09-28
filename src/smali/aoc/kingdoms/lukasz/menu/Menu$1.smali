.class Laoc/kingdoms/lukasz/menu/Menu$1;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu/Menu$MenuClose;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu/Menu;->initCloseMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu/Menu;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu/Menu;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menu/Menu;

    .line 52
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/Menu$1;->this$0:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCloseMenu_Height()I
    .registers 2

    .line 74
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public getCloseMenu_PosX()I
    .registers 3

    .line 55
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu$1;->this$0:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu$1;->this$0:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/Menu;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/Menu$1;->getCloseMenu_Width()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCloseMenu_PosY()I
    .registers 3

    .line 60
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu$1;->this$0:Laoc/kingdoms/lukasz/menu/Menu;

    # getter for: Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
    invoke-static {v0}, Laoc/kingdoms/lukasz/menu/Menu;->access$000(Laoc/kingdoms/lukasz/menu/Menu;)Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 61
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu$1;->this$0:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/Menu$1;->this$0:Laoc/kingdoms/lukasz/menu/Menu;

    # getter for: Laoc/kingdoms/lukasz/menu/Menu;->menuTitle:Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
    invoke-static {v1}, Laoc/kingdoms/lukasz/menu/Menu;->access$000(Laoc/kingdoms/lukasz/menu/Menu;)Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 64
    :cond_1a
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/Menu$1;->this$0:Laoc/kingdoms/lukasz/menu/Menu;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    return v0
.end method

.method public getCloseMenu_Width()I
    .registers 2

    .line 69
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    return v0
.end method
