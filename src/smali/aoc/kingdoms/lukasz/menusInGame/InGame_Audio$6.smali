.class Laoc/kingdoms/lukasz/menusInGame/InGame_Audio$6;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active_Value;
.source "InGame_Audio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Audio;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Audio;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Audio;Ljava/lang/String;IIIII)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_Audio;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "id"    # I

    .line 130
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Audio$6;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Audio;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active_Value;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 4

    .line 133
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Audio$6;->getCurrent()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Audio$6;->getCurrent()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->loadNextMusic(Ljava/lang/String;I)V

    .line 134
    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .registers 4
    .param p1, "isActive"    # Z

    .line 138
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Audio$6;->getCurrent()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    if-ne v0, v1, :cond_d

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_11

    :cond_d
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRect_Active_Value;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    :goto_11
    return-object v0
.end method
