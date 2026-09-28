.class Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldTruces$2;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon_Diplomacy;
.source "InGame_Court_WorldTruces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldTruces;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldTruces;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldTruces;IIIIII)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldTruces;
    .param p2, "imageID"    # I
    .param p3, "nPosX"    # I
    .param p4, "nPosY"    # I
    .param p5, "nWidth"    # I
    .param p6, "nHeight"    # I
    .param p7, "maxWidth"    # I

    .line 110
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldTruces$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/World/InGame_Court_WorldTruces;

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
    .registers 2

    .line 113
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method
