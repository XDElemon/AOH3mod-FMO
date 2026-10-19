# 由 tools/gen_tno_opening.py 生成，禁止手改
# TNO 开局自定义面板（非全屏）：底图 + 4 页签 + 正文 + 右栏海报 + 翻页 + 关闭
# 版式数值见 data/tno_opening_layout.json（源自 TNO_opening_screen.gui）
.class public Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "TNO_OpeningScreen.java"


# static fields

.field public static cur:I

.field public static imgBg:I
.field public static imgTabOff:I
.field public static imgTabOn:I
.field public static imgBtnOff:I
.field public static imgBtnOn:I
.field public static imgPoster:I

.field public static inst:Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;

.field public static bulletText:[Laoc/kingdoms/lukasz/menu_element/MenuElement;

.field public static pageText:[Laoc/kingdoms/lukasz/menu_element/MenuElement;

.field public static tabs:[Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;


# instance fields

.field private evID:I

.field private evType:I

.field private offX:I

.field private offY:I

.field private ph:I

.field private pox:I

.field private poy:I

.field private pw:I


# direct methods
# 造一个贴图元素并挂进 list，返回引用
.method private static addPanelImage(Ljava/util/List;IIIIII)Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;
    .registers 16

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;-><init>(IIIIII)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

# 造一个静态文字元素并挂进 list，返回引用
.method private static addText(Ljava/util/List;IIIILjava/lang/String;I)Laoc/kingdoms/lukasz/menu_element/MenuElement;
    .registers 16

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;

    move-object v1, p5

    move v2, p6

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

# 面板坐标(945x466) -> 屏幕像素
.method public px(I)I
    .registers 3
    .param p1, "x"    # I

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->offX:I

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public py(I)I
    .registers 3
    .param p1, "y"    # I

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->offY:I

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public sx(I)I
    .registers 3
    .param p1, "w"    # I

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->pw:I

    mul-int v0, v0, p1

    const/16 v1, 0x3b1

    div-int/2addr v0, v1

    return v0
.end method

.method public sy(I)I
    .registers 3
    .param p1, "h"    # I

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->ph:I

    mul-int v0, v0, p1

    const/16 v1, 0x1d2

    div-int/2addr v0, v1

    return v0
.end method

# 切页：正文显隐 + 页签换图 + 功能页要点显隐
.method public static showPage(I)V
    .registers 6
    .param p0, "page"    # I

    sput p0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->cur:I

    const/4 v0, 0x0

    :page_loop
    const/4 v1, 0x4

    if-ge v0, v1, :page_done

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->pageText:[Laoc/kingdoms/lukasz/menu_element/MenuElement;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    if-ne v0, p0, :page_hide

    const/4 v2, 0x1

    :page_hide
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setVisible(Z)V

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->tabs:[Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;

    aget-object v1, v1, v0

    sget v2, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->imgTabOff:I

    if-ne v0, p0, :tab_set

    sget v2, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->imgTabOn:I

    :tab_set
    iput v2, v1, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->imageID:I

    add-int/lit8 v0, v0, 0x1

    goto :page_loop

    :page_done
    const/4 v0, 0x0

    :bullet_loop
    const/4 v1, 0x5

    if-ge v0, v1, :bullet_done

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->bulletText:[Laoc/kingdoms/lukasz/menu_element/MenuElement;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p0, v3, :bullet_hide

    const/4 v2, 0x1

    :bullet_hide
    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setVisible(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :bullet_loop

    :bullet_done
    return-void
.end method

.method public static prevPage()V
    .registers 2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->cur:I

    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :prev_wrap

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->showPage(I)V

    return-void

    :prev_wrap
    const/4 v1, 0x3

    invoke-static {v1}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->showPage(I)V

    return-void
.end method

.method public static nextPage()V
    .registers 2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->cur:I

    add-int/lit8 v1, v0, 0x1

    const/4 v0, 0x4

    if-lt v1, v0, :next_ok

    const/4 v1, 0x0

    :next_ok
    invoke-static {v1}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->showPage(I)V

    return-void
.end method

# 关闭：先把事件结案（避免读档后重复弹），再隐藏面板
.method public static doClose()V
    .registers 6

    :try_start_tno_close
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->inst:Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;

    iget v2, v1, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->evType:I

    iget v3, v1, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->evID:I

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Laoc/kingdoms/lukasz/events/EventsManager;->takeEventDecision(IIII)V

    :try_end_tno_close
    .catch Ljava/lang/Exception; {:try_start_tno_close .. :try_end_tno_close} :catch_tno_close

    goto :close_hide

    :catch_tno_close
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :close_hide
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->inst:Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;

    if-eqz v0, :close_done

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    :close_done
    return-void
.end method


# virtual methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "eventType"    # I
    .param p2, "eventID"    # I

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->evType:I

    iput p2, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->evID:I

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->build()V

    sput-object p0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->inst:Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;

    const/4 v0, 0x0

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->showPage(I)V

    return-void
.end method

.method private build()V
    .registers 16

    # ---- 面板尺寸：宽 78% / 高 82% 里取小的那个，等比 ----
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/16 v1, 0x4e

    mul-int/2addr v0, v1

    const/16 v1, 0x64

    div-int/2addr v0, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/16 v1, 0x52

    mul-int/2addr v2, v1

    const/16 v1, 0x64

    div-int/2addr v2, v1

    const/16 v1, 0x3b1

    mul-int/2addr v2, v1

    const/16 v1, 0x1d2

    div-int/2addr v2, v1

    if-ge v0, v2, :pw_min

    move v0, v2

    :pw_min
    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->pw:I

    const/16 v1, 0x1d2

    mul-int v1, v0, v1

    const/16 v2, 0x3b1

    div-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->ph:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->pox:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->poy:I

    # ---- 面板相对菜单原点的偏移（元素坐标必须相对 menuPos，否则会被叠加两次）----
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->offX:I

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->offY:I

    # ---- 元素表 + 引用数组 ----
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;

    sput-object v2, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->tabs:[Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;

    new-array v2, v1, [Laoc/kingdoms/lukasz/menu_element/MenuElement;

    sput-object v2, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->pageText:[Laoc/kingdoms/lukasz/menu_element/MenuElement;

    const/4 v1, 0x5

    new-array v2, v1, [Laoc/kingdoms/lukasz/menu_element/MenuElement;

    sput-object v2, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->bulletText:[Laoc/kingdoms/lukasz/menu_element/MenuElement;

    # ---- 页签 0 国家 ----
    const/16 v8, 0xa

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, -0x2

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0xe0

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x1f

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->imgTabOff:I

    const/16 v6, 0x3

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addPanelImage(Ljava/util/List;IIIIII)Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;

    move-result-object v9

    const-string v10, "国家"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->setText(Ljava/lang/String;)V

    sget-object v10, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->tabs:[Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    # ---- 页签 1 区域 ----
    const/16 v8, 0xf4

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, -0x2

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0xe0

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x1f

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->imgTabOff:I

    const/16 v6, 0x5

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addPanelImage(Ljava/util/List;IIIIII)Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;

    move-result-object v9

    const-string v10, "区域"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->setText(Ljava/lang/String;)V

    sget-object v10, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->tabs:[Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;

    const/4 v11, 0x1

    aput-object v9, v10, v11

    # ---- 页签 2 功能 ----
    const/16 v8, 0x1dd

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, -0x2

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0xe0

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x1f

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->imgTabOff:I

    const/16 v6, 0x7

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addPanelImage(Ljava/util/List;IIIIII)Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;

    move-result-object v9

    const-string v10, "功能"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->setText(Ljava/lang/String;)V

    sget-object v10, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->tabs:[Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;

    const/4 v11, 0x2

    aput-object v9, v10, v11

    # ---- 页签 3 MOD 信息 ----
    const/16 v8, 0x2c7

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, -0x2

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0xe0

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x1f

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->imgTabOff:I

    const/16 v6, 0x9

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addPanelImage(Ljava/util/List;IIIIII)Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;

    move-result-object v9

    const-string v10, "MOD 信息"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->setText(Ljava/lang/String;)V

    sget-object v10, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->tabs:[Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;

    const/4 v11, 0x3

    aput-object v9, v10, v11

    # ---- 上一页 ----
    const/16 v8, 0xe

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, 0x19e

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0xa3

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x22

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->imgBtnOff:I

    const/16 v6, 0x15

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addPanelImage(Ljava/util/List;IIIIII)Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;

    move-result-object v9

    const-string v10, "上一页"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->setText(Ljava/lang/String;)V

    # ---- 下一页 ----
    const/16 v8, 0x242

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, 0x19e

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0xa3

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x22

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->imgBtnOff:I

    const/16 v6, 0x17

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addPanelImage(Ljava/util/List;IIIIII)Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;

    move-result-object v9

    const-string v10, "下一页"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->setText(Ljava/lang/String;)V

    # ---- 关闭 ----
    const/16 v8, 0x30e

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, 0x1a4

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0x7b

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x22

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->imgBtnOff:I

    const/16 v6, 0x19

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addPanelImage(Ljava/util/List;IIIIII)Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;

    move-result-object v9

    const-string v10, "关闭"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;->setText(Ljava/lang/String;)V

    # ---- 标题 ----
    const/16 v8, 0xe

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, 0x2a

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0x2bc

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x22

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    const-string v5, "终序千禧"

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addText(Ljava/util/List;IIIILjava/lang/String;I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v9

    # ---- 正文 第0页 ----
    const/16 v8, 0xe

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, 0x56

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0x2c8

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x28

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    const-string v5, "终序千禧开局：剧情待填"

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addText(Ljava/util/List;IIIILjava/lang/String;I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->pageText:[Laoc/kingdoms/lukasz/menu_element/MenuElement;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    # ---- 正文 第1页 ----
    const/16 v8, 0xe

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, 0x56

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0x2c8

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x28

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    const-string v5, "终序千禧开局：剧情待填"

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addText(Ljava/util/List;IIIILjava/lang/String;I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->pageText:[Laoc/kingdoms/lukasz/menu_element/MenuElement;

    const/4 v11, 0x1

    aput-object v9, v10, v11

    # ---- 正文 第2页 ----
    const/16 v8, 0xe

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, 0x56

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0x2c8

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x28

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    const-string v5, "终序千禧开局：剧情待填"

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addText(Ljava/util/List;IIIILjava/lang/String;I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->pageText:[Laoc/kingdoms/lukasz/menu_element/MenuElement;

    const/4 v11, 0x2

    aput-object v9, v10, v11

    # ---- 正文 第3页 ----
    const/16 v8, 0xe

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, 0x56

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0x2c8

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x28

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    const-string v5, "终序千禧开局：剧情待填"

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addText(Ljava/util/List;IIIILjava/lang/String;I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->pageText:[Laoc/kingdoms/lukasz/menu_element/MenuElement;

    const/4 v11, 0x3

    aput-object v9, v10, v11

    # ---- 要点 0 ----
    const/16 v8, 0x22

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, 0x96

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0x2b2

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x22

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    const-string v5, "- 空军代际系统：3/4/5/6 代机"

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addText(Ljava/util/List;IIIILjava/lang/String;I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->bulletText:[Laoc/kingdoms/lukasz/menu_element/MenuElement;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    # ---- 要点 1 ----
    const/16 v8, 0x22

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, 0xc0

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0x2b2

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x22

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    const-string v5, "- AI 自动造机与出击"

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addText(Ljava/util/List;IIIILjava/lang/String;I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->bulletText:[Laoc/kingdoms/lukasz/menu_element/MenuElement;

    const/4 v11, 0x1

    aput-object v9, v10, v11

    # ---- 要点 2 ----
    const/16 v8, 0x22

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, 0xea

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0x2b2

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x22

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    const-string v5, "- TNO 风格主界面与开局面板"

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addText(Ljava/util/List;IIIILjava/lang/String;I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->bulletText:[Laoc/kingdoms/lukasz/menu_element/MenuElement;

    const/4 v11, 0x2

    aput-object v9, v10, v11

    # ---- 要点 3 ----
    const/16 v8, 0x22

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, 0x114

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0x2b2

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x22

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    const-string v5, "- 钢四式科技树"

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addText(Ljava/util/List;IIIILjava/lang/String;I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->bulletText:[Laoc/kingdoms/lukasz/menu_element/MenuElement;

    const/4 v11, 0x3

    aput-object v9, v10, v11

    # ---- 要点 4 ----
    const/16 v8, 0x22

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, 0x13e

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0x2b2

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x22

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    const-string v5, "- 配置文件可调参数"

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addText(Ljava/util/List;IIIILjava/lang/String;I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->bulletText:[Laoc/kingdoms/lukasz/menu_element/MenuElement;

    const/4 v11, 0x4

    aput-object v9, v10, v11

    # ---- 右栏海报 ----
    const/16 v8, 0x2ed

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, 0x1f

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0xbd

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x1aa

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->imgPoster:I

    const/16 v6, 0x0

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addPanelImage(Ljava/util/List;IIIIII)Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;

    move-result-object v9

    # ---- 面板底图 ----
    const/16 v8, 0x0

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->px(I)I

    move-result v1

    const/16 v8, 0x0

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->py(I)I

    move-result v2

    const/16 v8, 0x3b1

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v3

    const/16 v8, 0x1d2

    invoke-virtual {p0, v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->imgBg:I

    const/16 v6, 0x0

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->addPanelImage(Ljava/util/List;IIIIII)Laoc/kingdoms/lukasz/menusInGame/TNO_PanelImage;

    move-result-object v9

    # ---- initMenu(title=null, x, y, w, h, list, visible=true, closeable=true) ----
    move-object v6, v0

    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v1

    iget v2, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->pox:I

    sub-int/2addr v2, v1

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v1

    iget v3, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->poy:I

    sub-int/2addr v3, v1

    iget v4, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->pw:I

    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sx(I)I

    move-result v1

    add-int/2addr v4, v1

    iget v5, p0, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->ph:I

    const/16 v1, 0x4a

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->sy(I)I

    move-result v1

    add-int/2addr v5, v1

    move-object v0, p0

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/TNO_OpeningScreen;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    # 自检探针：装好后这条会出现在 aircfg_diag.txt 里
    const-string v0, "nTNO build ok"

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    return-void
.end method
