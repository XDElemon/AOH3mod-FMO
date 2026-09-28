.class Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$2;
.super Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;
.source "RevolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->spawnRevolution(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;
    .param p2, "notificationType"    # Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;
    .param p3, "sText"    # Ljava/lang/String;
    .param p4, "imageID"    # I
    .param p5, "iTurnID"    # I
    .param p6, "notificationBG"    # Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;
    .param p7, "id"    # I

    .line 229
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$2;->this$0:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    return-void
.end method


# virtual methods
.method public onAction()V
    .registers 3

    .line 232
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v1, p0, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager$2;->id:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    .line 233
    return-void
.end method
