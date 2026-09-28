.class public Laoc/kingdoms/lukasz/map/clouds/CloudsManager$CloudsSettings;
.super Ljava/lang/Object;
.source "CloudsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/clouds/CloudsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudsSettings"
.end annotation


# instance fields
.field public drawCloudsMaxScale:F

.field public drawCloudsMinScale:F

.field public maxNumOfCloudsInTheGame:I

.field public minAlpha:F

.field public moveSpeedX:F

.field public moveSpeedY:F

.field public numOfCloudImages:I

.field public randomAlpha:F

.field public shadowX:I

.field public shadowY:I

.field public spawnAnimationTime:I

.field public spawnCloudChance:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
