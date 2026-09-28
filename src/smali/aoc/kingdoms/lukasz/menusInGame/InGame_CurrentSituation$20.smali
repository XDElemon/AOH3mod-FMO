.class Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$20;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;
.source "InGame_CurrentSituation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;ZZI)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "moveable"    # Z
    .param p4, "resizable"    # Z
    .param p5, "imageID"    # I

    .line 610
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$20;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_FlagCenter2;-><init>(Ljava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public getFlagCivID()I
    .registers 2

    .line 618
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    return v0
.end method

.method public getTime()J
    .registers 3

    .line 613
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->lTime:J

    return-wide v0
.end method
