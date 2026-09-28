.class Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendGift$7;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;
.source "InGame_SendGift.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendGift;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public lastValue:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendGift;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendGift;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendGift;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sText2"    # Ljava/lang/String;
    .param p4, "imageID"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "nHeight"    # I
    .param p9, "maxIconWidth"    # I

    .line 202
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendGift$7;->this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendGift;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 204
    const/4 v0, 0x0

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendGift$7;->lastValue:I

    return-void
.end method


# virtual methods
.method public getTextToDraw()Ljava/lang/String;
    .registers 4

    .line 208
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendGift$7;->lastValue:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendGift;->giftGoldClicks:I

    if-eq v0, v1, :cond_36

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendGift;->giftGoldClicks:I

    if-lez v1, :cond_12

    const-string v1, "+"

    goto :goto_14

    :cond_12
    const-string v1, ""

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendGift;->giftGoldClicks:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->diplomacy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Diplomacy;->DIPLOMACY_GIFT_GOLD_PER_CLICK:F

    mul-float v1, v1, v2

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendGift$7;->setText2(Ljava/lang/String;)V

    .line 210
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendGift;->giftGoldClicks:I

    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendGift$7;->lastValue:I

    .line 213
    :cond_36
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendGift$7;->sText:Ljava/lang/String;

    return-object v0
.end method
