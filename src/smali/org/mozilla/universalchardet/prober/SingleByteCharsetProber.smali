.class public Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SingleByteCharsetProber.java"


# static fields
.field public static final NEGATIVE_CAT:I = 0x0

.field public static final NEGATIVE_SHORTCUT_THRESHOLD:F = 0.05f

.field public static final NUMBER_OF_SEQ_CAT:I = 0x4

.field public static final POSITIVE_CAT:I = 0x3

.field public static final POSITIVE_SHORTCUT_THRESHOLD:F = 0.95f

.field public static final SAMPLE_SIZE:I = 0x40

.field public static final SB_ENOUGH_REL_THRESHOLD:I = 0x400

.field public static final SYMBOL_CAT_ORDER:I = 0xfa


# instance fields
.field private freqChar:I

.field private lastOrder:S

.field private model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

.field private nameProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private reversed:Z

.field private seqCounters:[I

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

.field private totalChar:I

.field private totalSeqs:I


# direct methods
.method public constructor <init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V
    .registers 3
    .param p1, "model"    # Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    .line 79
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->reversed:Z

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->nameProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->seqCounters:[I

    .line 84
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->reset()V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;ZLorg/mozilla/universalchardet/prober/CharsetProber;)V
    .registers 5
    .param p1, "model"    # Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;
    .param p2, "reversed"    # Z
    .param p3, "nameProber"    # Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 92
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    .line 94
    iput-boolean p2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->reversed:Z

    .line 95
    iput-object p3, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->nameProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 96
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->seqCounters:[I

    .line 97
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->reset()V

    .line 98
    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->nameProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v0, :cond_b

    .line 107
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 109
    :cond_b
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->nameProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()F
    .registers 5

    .line 115
    iget v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalSeqs:I

    if-lez v0, :cond_2a

    .line 116
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->seqCounters:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalSeqs:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getTypicalPositiveRatio()F

    move-result v2

    div-float/2addr v0, v2

    .line 117
    .local v0, "r":F
    iget v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->freqChar:I

    int-to-float v2, v2

    mul-float v2, v2, v0

    iget v3, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalChar:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 118
    .end local v0    # "r":F
    .local v2, "r":F
    cmpl-float v0, v2, v1

    if-ltz v0, :cond_29

    .line 119
    const v2, 0x3f7d70a4    # 0.99f

    .line 121
    :cond_29
    return v2

    .line 124
    .end local v2    # "r":F
    :cond_2a
    const v0, 0x3c23d70a    # 0.01f

    return v0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 2

    .line 129
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 11
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 136
    add-int v0, p2, p3

    .line 137
    .local v0, "maxPos":I
    move v1, p2

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_5b

    .line 138
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    aget-byte v3, p1, v1

    invoke-virtual {v2, v3}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getOrder(B)S

    move-result v2

    .line 140
    .local v2, "order":S
    const/16 v3, 0xfa

    if-ge v2, v3, :cond_17

    .line 141
    iget v3, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalChar:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalChar:I

    .line 143
    :cond_17
    const/16 v3, 0x40

    if-ge v2, v3, :cond_56

    .line 144
    iget v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->freqChar:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->freqChar:I

    .line 145
    iget-short v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->lastOrder:S

    if-ge v4, v3, :cond_56

    .line 146
    iget v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalSeqs:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalSeqs:I

    .line 147
    iget-boolean v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->reversed:Z

    if-nez v4, :cond_43

    .line 148
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->seqCounters:[I

    iget-object v5, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    iget-short v6, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->lastOrder:S

    mul-int/lit8 v6, v6, 0x40

    add-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getPrecedence(I)B

    move-result v3

    aget v5, v4, v3

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v3

    goto :goto_56

    .line 150
    :cond_43
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->seqCounters:[I

    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    mul-int/lit8 v5, v2, 0x40

    iget-short v6, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->lastOrder:S

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getPrecedence(I)B

    move-result v4

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 154
    :cond_56
    :goto_56
    iput-short v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->lastOrder:S

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 157
    .end local v1    # "i":I
    .end local v2    # "order":S
    :cond_5b
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v1, v2, :cond_82

    .line 158
    iget v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalSeqs:I

    const/16 v2, 0x400

    if-le v1, v2, :cond_82

    .line 159
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->getConfidence()F

    move-result v1

    .line 160
    .local v1, "cf":F
    const v2, 0x3f733333    # 0.95f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_77

    .line 161
    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_82

    .line 162
    :cond_77
    const v2, 0x3d4ccccd    # 0.05f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_82

    .line 163
    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 168
    .end local v1    # "cf":F
    :cond_82
    :goto_82
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v1
.end method

.method keepEnglishLetters()Z
    .registers 2

    .line 101
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->model:Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;->getKeepEnglishLetter()Z

    move-result v0

    return v0
.end method

.method public final reset()V
    .registers 4

    .line 173
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 174
    const/16 v0, 0xff

    iput-short v0, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->lastOrder:S

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_14

    .line 176
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->seqCounters:[I

    aput v2, v1, v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 178
    .end local v0    # "i":I
    :cond_14
    iput v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalSeqs:I

    .line 179
    iput v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->totalChar:I

    .line 180
    iput v2, p0, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;->freqChar:I

    .line 181
    return-void
.end method

.method public setOption()V
    .registers 1

    .line 185
    return-void
.end method
