.class Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit$2;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;
.source "InGame_GeneralRecruit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;Ljava/lang/String;ZZI)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "moveable"    # Z
    .param p4, "resizable"    # Z
    .param p5, "imageID"    # I

    .line 158
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public getTime()J
    .registers 3

    .line 161
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;

    # getter for: Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->lTime:J
    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->access$000(Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;)J

    move-result-wide v0

    return-wide v0
.end method
