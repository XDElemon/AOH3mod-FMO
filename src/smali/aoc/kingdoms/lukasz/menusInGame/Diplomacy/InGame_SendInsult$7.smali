.class Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult$7;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;
.source "InGame_SendInsult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult;III)V
    .registers 5
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult;
    .param p2, "iCivID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I

    .line 186
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult$7;->this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendInsult;

    invoke-direct {p0, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;-><init>(III)V

    return-void
.end method


# virtual methods
.method public getRulerImage()Laoc/kingdoms/lukasz/textures/Image;
    .registers 2

    .line 189
    sget-object v0, Laoc/kingdoms/lukasz/map/RulersManager;->rulerIMG_DiplomacyRight:Laoc/kingdoms/lukasz/textures/Image;

    return-object v0
.end method
