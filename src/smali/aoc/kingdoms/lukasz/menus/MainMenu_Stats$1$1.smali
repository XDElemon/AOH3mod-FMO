.class Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1$1;
.super Laoc/kingdoms/lukasz/menu/ClickAnimation;
.source "MainMenu_Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1;->actionElement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1;IIII)V
    .registers 6
    .param p1, "this$1"    # Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1;
    .param p2, "iX"    # I
    .param p3, "iY"    # I
    .param p4, "iWMax"    # I
    .param p5, "iHMax"    # I

    .line 91
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1$1;->this$1:Laoc/kingdoms/lukasz/menus/MainMenu_Stats$1;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu/ClickAnimation;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    .line 94
    sget-object v0, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_GREEN:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method
