.class Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle$1;
.super Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
.source "ButtonArmyBattle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->buildElementHover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;Ljava/util/List;)V
    .registers 3
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;

    .line 171
    .local p2, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle$1;->this$0:Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .registers 7
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I

    .line 179
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->HOVER_POSY:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->HOVER_POSY:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle$1;->iHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 180
    .end local p3    # "nPosY":I
    .local v0, "nPosY":I
    invoke-super {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    .line 181
    return-void
.end method

.method public getMinPosX()I
    .registers 2

    .line 174
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->HOVER_POSX:I

    return v0
.end method
