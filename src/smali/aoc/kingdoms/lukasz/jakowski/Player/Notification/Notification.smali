.class public Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;,
        Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;
    }
.end annotation


# instance fields
.field public iTurnID:I

.field public id:I

.field public imageID:I

.field public key:Ljava/lang/String;

.field public lTime:J

.field public notificationBG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

.field public notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

.field public sText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V
    .registers 6
    .param p1, "notificationType"    # Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "imageID"    # I
    .param p4, "iTurnID"    # I
    .param p5, "notificationBG"    # Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-virtual {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->init(Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V

    .line 100
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    .line 101
    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V
    .registers 7
    .param p1, "notificationType"    # Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "imageID"    # I
    .param p4, "iTurnID"    # I
    .param p5, "notificationBG"    # Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;
    .param p6, "id"    # I

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-virtual {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->init(Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V

    .line 121
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    .line 122
    iput p6, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    .line 123
    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;Ljava/lang/String;)V
    .registers 7
    .param p1, "notificationType"    # Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "imageID"    # I
    .param p4, "iTurnID"    # I
    .param p5, "notificationBG"    # Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;
    .param p6, "key"    # Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->init(Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V

    .line 106
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    .line 107
    iput-object p6, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->key:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;Ljava/lang/String;I)V
    .registers 8
    .param p1, "notificationType"    # Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "imageID"    # I
    .param p4, "iTurnID"    # I
    .param p5, "notificationBG"    # Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;
    .param p6, "key"    # Ljava/lang/String;
    .param p7, "id"    # I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->init(Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V

    .line 113
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    .line 114
    iput-object p6, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->key:Ljava/lang/String;

    .line 115
    iput p7, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    .line 116
    return-void
.end method


# virtual methods
.method public buildMenuElementHover()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    .registers 13

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v1, "nData":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;>;"
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->RELATIONS_IMPROVING:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v2, v3, :cond_64

    .line 184
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;

    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    iget v7, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    const-string v6, ""

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 188
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ImprovingRelations"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->relationsUp:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    const-string v5, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_19f

    .line 192
    :cond_64
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->RELATIONS_DAMAGING:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v2, v3, :cond_be

    .line 193
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;

    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    iget v7, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    const-string v6, ""

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 197
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "DamagingRelations"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->relationsDown:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    const-string v5, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_19f

    .line 201
    :cond_be
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->HIGH_UNREST:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v2, v3, :cond_cc

    .line 202
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->getHoverUnrest(IZZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v2

    return-object v2

    .line 204
    :cond_cc
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->PRICE_CHANGE:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v2, v3, :cond_14d

    .line 205
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusResource;

    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    iget v7, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    const-string v6, ""

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusResource;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 209
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Price"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getPrice(I)F

    move-result v5

    const/16 v6, 0x64

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_19f

    .line 213
    :cond_14d
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->NO_LONGER_LARGEST_PRODUCER:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-eq v2, v3, :cond_17d

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->LARGEST_PRODUCER:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v2, v3, :cond_15a

    goto :goto_17d

    .line 219
    :cond_15a
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    iget v7, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    const-string v6, ""

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_19f

    .line 214
    :cond_17d
    :goto_17d
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusResource;

    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    iget v6, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    const-string v5, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusResource;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 224
    :goto_19f
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->RELATIONS_COMPLETED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v2, v3, :cond_1cf

    .line 225
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;

    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v5

    iget v7, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    const-string v6, ""

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonusFlag;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 230
    :cond_1cf
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ARMY_DESTROYED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    if-ne v2, v3, :cond_1f8

    .line 231
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_ARMY_DESTROYED_ROUND_ID:I

    const-string v5, "DestructionOrSurvival0"

    invoke-virtual {v3, v5, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 236
    :cond_1f8
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 240
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getDate_ByTurnID(I)Ljava/lang/String;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->time:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    const-string v5, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 244
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public init(Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;)V
    .registers 7
    .param p1, "sText"    # Ljava/lang/String;
    .param p2, "imageID"    # I
    .param p3, "iTurnID"    # I
    .param p4, "notificationBG"    # Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    .line 128
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->sText:Ljava/lang/String;

    .line 129
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->imageID:I

    .line 130
    iput p3, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->iTurnID:I

    .line 132
    iput-object p4, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationBG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    .line 134
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->lTime:J

    .line 135
    return-void
.end method

.method public onAction()V
    .registers 5

    .line 140
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$1;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Player$Notification$Notification$Notification_Type:[I

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->notificationType:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_66

    goto :goto_65

    .line 156
    :pswitch_e
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    if-ltz v0, :cond_65

    .line 157
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iRebuildToCivID:I

    .line 158
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    .line 159
    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->lTime:J

    .line 161
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CivBonuses()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 162
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-eqz v2, :cond_65

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    if-eq v2, v3, :cond_65

    .line 163
    sget v2, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sput v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->iCivID:I

    .line 165
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivBonuses()V

    .line 166
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CivBonuses(Z)V

    .line 168
    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivBonuses;->lTime:J

    goto :goto_65

    .line 146
    :pswitch_43
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    .line 148
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    if-ne v0, v1, :cond_65

    .line 149
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setActiveProvinceID(I)V

    .line 151
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionSetActiveProvinceID()V

    goto :goto_65

    .line 142
    :pswitch_5d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_BattleReport(Ljava/lang/String;)V

    .line 143
    nop

    .line 177
    :cond_65
    :goto_65
    return-void

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_5d
        :pswitch_43
        :pswitch_43
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method
