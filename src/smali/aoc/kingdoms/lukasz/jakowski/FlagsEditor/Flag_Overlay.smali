.class public Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;
.super Ljava/lang/Object;
.source "Flag_Overlay.java"


# instance fields
.field public Scale:F

.field public sName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .registers 4
    .param p1, "sName"    # Ljava/lang/String;
    .param p2, "Scale"    # F

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;->sName:Ljava/lang/String;

    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;->Scale:F

    .line 9
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;->sName:Ljava/lang/String;

    .line 10
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;->Scale:F

    .line 11
    return-void
.end method
