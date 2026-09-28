.class Laoc/kingdoms/lukasz/map/SiegeManager$1;
.super Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;
.source "SiegeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/SiegeManager;->checkForSiege(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V
    .registers 7
    .param p1, "notificationType"    # Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "imageID"    # I
    .param p4, "iTurnID"    # I
    .param p5, "notificationBG"    # Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;
    .param p6, "id"    # I

    .line 137
    invoke-direct/range {p0 .. p6}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;-><init>(Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_Type;Ljava/lang/String;IILaoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;I)V

    return-void
.end method


# virtual methods
.method public onAction()V
    .registers 3

    .line 140
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v1, p0, Laoc/kingdoms/lukasz/map/SiegeManager$1;->id:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    .line 141
    return-void
.end method
