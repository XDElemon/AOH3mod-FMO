.class Laoc/kingdoms/lukasz/map/province/Province$5;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "Province.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/Province;->setCivID(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/province/Province;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/province/Province;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/province/Province;
    .param p2, "taskKey"    # Ljava/lang/String;
    .param p3, "id"    # I

    .line 1722
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/province/Province$5;->this$0:Laoc/kingdoms/lukasz/map/province/Province;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 1725
    iget v0, p0, Laoc/kingdoms/lukasz/map/province/Province$5;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->buildCivilizationsRegion(I)V

    .line 1727
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView:Z

    .line 1728
    sput-boolean v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    .line 1729
    return-void
.end method
