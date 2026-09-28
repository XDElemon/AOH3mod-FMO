.class public Laoc/kingdoms/lukasz/menu_element/Empty;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "Empty.java"


# direct methods
.method public constructor <init>(IIII)V
    .registers 6
    .param p1, "iPosX"    # I
    .param p2, "iPosY"    # I
    .param p3, "iWidth"    # I
    .param p4, "iHeight"    # I

    .line 5
    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    .line 6
    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TRANSPARENT_BACKGROUND:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/Empty;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    .line 8
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/Empty;->setPosX(I)V

    .line 9
    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/Empty;->setPosY(I)V

    .line 10
    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/Empty;->setWidth(I)V

    .line 11
    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/Empty;->setHeight(I)V

    .line 13
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/Empty;->setClickable(Z)V

    .line 14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/Empty;->setVisible(Z)V

    .line 15
    return-void
.end method


# virtual methods
.method public playSFX_Hovered()Z
    .registers 2

    .line 19
    const/4 v0, 0x0

    return v0
.end method
