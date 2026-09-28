.class public Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;
.super Ljava/lang/Object;
.source "InGame_Goods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BonusText"
.end annotation


# instance fields
.field public bonusIMGID:I

.field public bonusText:Ljava/lang/String;

.field public bonusText2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "bonusText"    # Ljava/lang/String;
    .param p2, "bonusText2"    # Ljava/lang/String;
    .param p3, "bonusIMGID"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;->bonusText:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;->bonusText2:Ljava/lang/String;

    .line 56
    iput p3, p0, Laoc/kingdoms/lukasz/menusInGame/Goods/InGame_Goods$BonusText;->bonusIMGID:I

    .line 57
    return-void
.end method
