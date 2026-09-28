.class public Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;
.super Ljava/lang/Object;
.source "PMessage.java"


# instance fields
.field public expiresTurnID:I

.field public fromCivID:I

.field public iValue1:I

.field public key:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>(III)V
    .registers 6
    .param p1, "iFromCivID"    # I
    .param p2, "iExpiresTurnID"    # I
    .param p3, "iValue1"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->extraRandomTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->key:Ljava/lang/String;

    .line 22
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->fromCivID:I

    .line 23
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->expiresTurnID:I

    .line 24
    iput p3, p0, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->iValue1:I

    .line 26
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->time:J

    .line 27
    return-void
.end method


# virtual methods
.method public actionClick()V
    .registers 1

    .line 31
    return-void
.end method

.method public buildElementHover()Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;
    .registers 2

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageID()I
    .registers 2

    .line 41
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->diplomacy:I

    return v0
.end method

.method public onAccept()V
    .registers 1

    .line 33
    return-void
.end method

.method public onRefuse()V
    .registers 1

    .line 34
    return-void
.end method
