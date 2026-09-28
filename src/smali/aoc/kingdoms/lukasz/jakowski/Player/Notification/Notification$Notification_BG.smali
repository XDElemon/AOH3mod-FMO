.class public final enum Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;
.super Ljava/lang/Enum;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Notification_BG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

.field public static final enum GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

.field public static final enum NEUTRAL_BG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

.field public static final enum RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;


# direct methods
.method private static synthetic $values()[Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;
    .registers 3

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->NEUTRAL_BG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 74
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    const-string v1, "NEUTRAL_BG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->NEUTRAL_BG:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    .line 75
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    const-string v1, "RED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->RED:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    .line 76
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    const-string v1, "GREEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->GREEN:Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    .line 73
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->$values()[Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->$VALUES:[Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 73
    const-class v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    return-object v0
.end method

.method public static values()[Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;
    .registers 1

    .line 73
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->$VALUES:[Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    invoke-virtual {v0}, [Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoc/kingdoms/lukasz/jakowski/Player/Notification/Notification$Notification_BG;

    return-object v0
.end method
