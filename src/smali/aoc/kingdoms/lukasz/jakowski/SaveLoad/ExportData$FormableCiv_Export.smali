.class public Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;
.super Ljava/lang/Object;
.source "ExportData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormableCiv_Export"
.end annotation


# instance fields
.field public CapitalProvinceID_X:I

.field public CapitalProvinceID_Y:I

.field public ClaimantsTag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public FormableCivTag:Ljava/lang/String;

.field public ProvincesX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public ProvincesY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->FormableCivTag:Ljava/lang/String;

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->ClaimantsTag:Ljava/util/List;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->ProvincesX:Ljava/util/List;

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->ProvincesY:Ljava/util/List;

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->CapitalProvinceID_X:I

    .line 362
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$FormableCiv_Export;->CapitalProvinceID_Y:I

    return-void
.end method
