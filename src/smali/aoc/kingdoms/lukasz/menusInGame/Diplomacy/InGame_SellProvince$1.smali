.class Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SellProvince$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag;
.source "InGame_SellProvince.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SellProvince;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SellProvince;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SellProvince;IIIZ)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SellProvince;
    .param p2, "iCivID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "isClickable"    # Z

    .line 75
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SellProvince$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SellProvince;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag;-><init>(IIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 1

    .line 79
    return-void
.end method

.method public getFlagCivID()I
    .registers 2

    .line 83
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SellProvince;->sellToCivID:I

    return v0
.end method
