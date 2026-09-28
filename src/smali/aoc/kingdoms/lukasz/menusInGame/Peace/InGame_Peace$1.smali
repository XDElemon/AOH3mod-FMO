.class Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;
.source "InGame_Peace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;IIIZ)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;
    .param p2, "iCivID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "isClickable"    # Z

    .line 114
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 1

    .line 114
    return-void
.end method
