.class public Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;
.super Ljava/lang/Object;
.source "PieChart_Value.java"


# instance fields
.field private fPercentage:F

.field private fValue:D

.field private iDataID:I


# direct methods
.method public constructor <init>(IF)V
    .registers 5
    .param p1, "iDataID"    # I
    .param p2, "fValue"    # F

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->fValue:D

    .line 12
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->iDataID:I

    .line 13
    float-to-double v0, p2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->fValue:D

    .line 14
    return-void
.end method


# virtual methods
.method public final getDataID()I
    .registers 2

    .line 19
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->iDataID:I

    return v0
.end method

.method public final getPercentage()F
    .registers 2

    .line 27
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->fPercentage:F

    return v0
.end method

.method public final getValue()D
    .registers 3

    .line 23
    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->fValue:D

    return-wide v0
.end method

.method public final setPercentage(F)V
    .registers 2
    .param p1, "fPercentage"    # F

    .line 31
    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/pieChart/PieChart_Value;->fPercentage:F

    .line 32
    return-void
.end method
