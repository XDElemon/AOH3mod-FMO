.class Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$3;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlue;
.source "InGame_Buildings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;Ljava/lang/String;IIIII)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iTextPositionX"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "iWidth"    # I
    .param p7, "iHeight"    # I

    .line 76
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$3;->this$0:Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlue;-><init>(Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public updateLanguage()V
    .registers 3

    .line 79
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Buildings"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/Buildings/InGame_Buildings$3;->setText(Ljava/lang/String;)V

    .line 80
    return-void
.end method
