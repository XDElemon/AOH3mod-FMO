.class Laoc/kingdoms/lukasz/menus/MainMenu_Stats$9;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle;
.source "MainMenu_Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/MainMenu_Stats;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field id:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/MainMenu_Stats;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/MainMenu_Stats;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "iWidth"    # I
    .param p6, "iHeight"    # I

    .line 329
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$9;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu_Stats;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .registers 2

    .line 344
    iget v0, p0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$9;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menus/MainMenu_Stats;->getHover(I)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$9;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    .line 345
    return-void
.end method

.method public getCurrent()I
    .registers 2

    .line 334
    iget v0, p0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$9;->id:I

    return v0
.end method

.method public setCurrent(I)V
    .registers 2
    .param p1, "nCurrent"    # I

    .line 339
    iput p1, p0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$9;->id:I

    .line 340
    return-void
.end method
