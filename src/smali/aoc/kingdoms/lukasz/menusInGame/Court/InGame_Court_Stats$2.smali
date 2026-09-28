.class Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Stats$2;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag;
.source "InGame_Court_Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Stats;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Stats;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Stats;IIIZ)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Stats;
    .param p2, "iCivID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "isClickable"    # Z

    .line 117
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Stats$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Stats;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag;-><init>(IIIZ)V

    return-void
.end method


# virtual methods
.method public getFlagCivID()I
    .registers 2

    .line 120
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    return v0
.end method
