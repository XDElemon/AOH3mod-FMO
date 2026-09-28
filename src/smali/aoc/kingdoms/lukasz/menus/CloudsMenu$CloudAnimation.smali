.class public Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;
.super Ljava/lang/Object;
.source "CloudsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menus/CloudsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloudAnimation"
.end annotation


# instance fields
.field fAlpha:F

.field fRotation:F

.field iCloudID:I

.field iPosX:I

.field iPosY:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/CloudsMenu;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menus/CloudsMenu;III)V
    .registers 7
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/CloudsMenu;
    .param p2, "iCloudID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I

    .line 37
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->this$0:Laoc/kingdoms/lukasz/menus/CloudsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p2, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iCloudID:I

    .line 39
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iPosX:I

    .line 40
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p4, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iPosY:I

    .line 41
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->fAlpha:F

    .line 42
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v1, 0x168

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->fRotation:F

    .line 43
    return-void
.end method
