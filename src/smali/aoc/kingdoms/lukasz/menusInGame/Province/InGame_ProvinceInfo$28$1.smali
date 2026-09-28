.class Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$28$1;
.super Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
.source "InGame_ProvinceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$28;->buildElementHover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$28;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$28;Ljava/util/List;)V
    .registers 3
    .param p1, "this$1"    # Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$28;

    .line 1739
    .local p2, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$28$1;->this$1:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$28;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 7
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 1747
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->HOVER_POSY:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->HOVER_POSY:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$28$1;->iHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 1748
    .end local p3    # "nPosY":I
    .local v0, "nPosY":I
    invoke-super {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 1749
    return-void
.end method

.method public getMinPosX()I
    .registers 2

    .line 1742
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->HOVER_POSX:I

    return v0
.end method
