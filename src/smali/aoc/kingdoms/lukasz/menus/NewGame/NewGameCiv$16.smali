.class Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$16;
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
.method constructor <init>(Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;IIIZ)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;
    .param p2, "iCivID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "isClickable"    # Z

    .line 596
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv$16;->this$0:Laoc/kingdoms/lukasz/menus/NewGame/NewGameCiv;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 1

    .line 598
    return-void
.end method
