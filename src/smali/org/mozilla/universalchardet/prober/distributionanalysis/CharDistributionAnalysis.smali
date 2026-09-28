.class public abstract Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;
.super Ljava/lang/Object;
.source "CharDistributionAnalysis.java"


# static fields
.field public static final ENOUGH_DATA_THRESHOLD:I = 0x400

.field public static final MINIMUM_DATA_THRESHOLD:I = 0x4

.field public static final SURE_NO:F = 0.01f

.field public static final SURE_YES:F = 0.99f


# instance fields
.field protected charToFreqOrder:[I

.field private freqChars:I

.field private totalChars:I

.field protected typicalDistributionRatio:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->reset()V

    .line 65
    return-void
.end method


# virtual methods
.method public getConfidence()F
    .registers 5

    .line 88
    iget v0, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->totalChars:I

    if-lez v0, :cond_27

    iget v0, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->freqChars:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_a

    goto :goto_27

    .line 92
    :cond_a
    iget v0, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->totalChars:I

    iget v1, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->freqChars:I

    const v2, 0x3f7d70a4    # 0.99f

    if-eq v0, v1, :cond_26

    .line 93
    iget v0, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->freqChars:I

    int-to-float v0, v0

    iget v1, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->totalChars:I

    iget v3, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->freqChars:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->typicalDistributionRatio:F

    mul-float v1, v1, v3

    div-float/2addr v0, v1

    .line 95
    .local v0, "r":F
    cmpg-float v1, v0, v2

    if-gez v1, :cond_26

    .line 96
    return v0

    .line 100
    .end local v0    # "r":F
    :cond_26
    return v2

    .line 89
    :cond_27
    :goto_27
    const v0, 0x3c23d70a    # 0.01f

    return v0
.end method

.method protected abstract getOrder([BI)I
.end method

.method public gotEnoughData()Z
    .registers 3

    .line 112
    iget v0, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->totalChars:I

    const/16 v1, 0x400

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public handleData([BII)V
    .registers 4
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 68
    return-void
.end method

.method public handleOneChar([BII)V
    .registers 7
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "charLength"    # I

    .line 71
    const/4 v0, -0x1

    .line 73
    .local v0, "order":I
    const/4 v1, 0x2

    if-ne p3, v1, :cond_8

    .line 74
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->getOrder([BI)I

    move-result v0

    .line 77
    :cond_8
    if-ltz v0, :cond_23

    .line 78
    iget v1, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->totalChars:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->totalChars:I

    .line 79
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->charToFreqOrder:[I

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 80
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->charToFreqOrder:[I

    aget v1, v1, v0

    const/16 v2, 0x200

    if-le v2, v1, :cond_23

    .line 81
    iget v1, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->freqChars:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->freqChars:I

    .line 85
    :cond_23
    return-void
.end method

.method public final reset()V
    .registers 2

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->totalChars:I

    .line 105
    iput v0, p0, Lorg/mozilla/universalchardet/prober/distributionanalysis/CharDistributionAnalysis;->freqChars:I

    .line 106
    return-void
.end method

.method public setOption()V
    .registers 1

    .line 109
    return-void
.end method
