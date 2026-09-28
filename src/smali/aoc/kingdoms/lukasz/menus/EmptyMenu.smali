.class public Laoc/kingdoms/lukasz/menus/EmptyMenu;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EmptyMenu.java"


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 12
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .local v0, "menuElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/MenuElement;>;"
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    const/4 v2, 0x1

    const/4 v9, 0x0

    invoke-direct {v1, v9, v9, v2, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v1, p0

    move-object v7, v0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menus/EmptyMenu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    .line 19
    invoke-virtual {p0, v9}, Laoc/kingdoms/lukasz/menus/EmptyMenu;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1, v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setVisible(Z)V

    .line 20
    return-void
.end method
