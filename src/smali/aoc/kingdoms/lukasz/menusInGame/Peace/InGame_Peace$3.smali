.class Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$3;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;
.source "InGame_Peace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;IIIIII)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;
    .param p2, "imageID"    # I
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "maxWidth"    # I

    .line 121
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;-><init>(IIIIII)V

    return-void
.end method


# virtual methods
.method public getColorBar()Lcom/badlogic/gdx/graphics/Color;
    .registers 3

    .line 124
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getColor(F)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method
