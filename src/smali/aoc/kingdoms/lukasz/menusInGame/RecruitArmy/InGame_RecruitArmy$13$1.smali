.class Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$13$1;
.super Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
.source "InGame_RecruitArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$13;->buildElementHover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$13;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$13;Ljava/util/List;)V
    .registers 3
    .param p1, "this$1"    # Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$13;

    .line 960
    .local p2, "nElements":Ljava/util/List;, "Ljava/util/List<Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;>;"
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$13$1;->this$1:Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$13;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getMinPosX()I
    .registers 2

    .line 963
    sget v0, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->HOVER_POSX:I

    return v0
.end method
