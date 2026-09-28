.class Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$9;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;
.source "NewGameCiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;IIIZZZ)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;
    .param p2, "iCivID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "isClickable"    # Z
    .param p6, "drawArrow"    # Z
    .param p7, "arrowFlipX"    # Z

    .line 394
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$9;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZZZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 1

    .line 396
    return-void
.end method
