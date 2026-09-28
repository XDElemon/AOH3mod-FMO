.class public Lorg/mozilla/universalchardet/prober/EUCKRProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "EUCKRProber.java"


# static fields
.field private static final smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;


# instance fields
.field private codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

.field private distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

.field private lastChar:[B

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/EUCKRSMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/EUCKRSMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 65
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 66
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v1, Lorg/mozilla/universalchardet/prober/EUCKRProber;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    invoke-direct {v0, v1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 67
    new-instance v0, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;-><init>()V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->lastChar:[B

    .line 69
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/EUCKRProber;->reset()V

    .line 70
    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .registers 2

    .line 74
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_EUC_KR:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidence()F
    .registers 2

    .line 79
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;->getConfidence()F

    move-result v0

    return v0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 2

    .line 84
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 12
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 91
    add-int v0, p2, p3

    .line 92
    .local v0, "maxPos":I
    move v1, p2

    .local v1, "i":I
    :goto_3
    const/4 v2, 0x0

    if-ge v1, v0, :cond_40

    .line 93
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-byte v4, p1, v1

    invoke-virtual {v3, v4}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->nextState(B)I

    move-result v3

    .line 94
    .local v3, "codingState":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    .line 95
    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 96
    goto :goto_40

    .line 98
    :cond_16
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1e

    .line 99
    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 100
    goto :goto_40

    .line 102
    :cond_1e
    if-nez v3, :cond_3d

    .line 103
    iget-object v5, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    invoke-virtual {v5}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->getCurrentCharLen()I

    move-result v5

    .line 104
    .local v5, "charLen":I
    if-ne v1, p2, :cond_36

    .line 105
    iget-object v6, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->lastChar:[B

    aget-byte v7, p1, p2

    aput-byte v7, v6, v4

    .line 106
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    iget-object v6, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->lastChar:[B

    invoke-virtual {v4, v6, v2, v5}, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;->handleOneChar([BII)V

    goto :goto_3d

    .line 108
    :cond_36
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, p1, v4, v5}, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;->handleOneChar([BII)V

    .line 92
    .end local v5    # "charLen":I
    :cond_3d
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 113
    .end local v1    # "i":I
    .end local v3    # "codingState":I
    :cond_40
    :goto_40
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->lastChar:[B

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 115
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v1, v2, :cond_65

    .line 116
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;->gotEnoughData()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/EUCKRProber;->getConfidence()F

    move-result v1

    const v2, 0x3f733333    # 0.95f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_65

    .line 117
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v1, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 121
    :cond_65
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v1
.end method

.method public final reset()V
    .registers 3

    .line 126
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->reset()V

    .line 127
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 128
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->distributionAnalyzer:Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCKRDistributionAnalysis;->reset()V

    .line 129
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EUCKRProber;->lastChar:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 130
    return-void
.end method

.method public setOption()V
    .registers 1

    .line 134
    return-void
.end method
