.class Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGift$10;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Message;
.source "InGame_MessageGift.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGift;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGift;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGift;Ljava/lang/String;ZZI)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGift;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "moveable"    # Z
    .param p4, "resizable"    # Z
    .param p5, "imageID"    # I

    .line 215
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGift$10;->this$0:Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGift;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_Message;-><init>(Ljava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public getTime()J
    .registers 3

    .line 218
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/DiplomacyMessage/InGame_MessageGift;->lTime:J

    return-wide v0
.end method
