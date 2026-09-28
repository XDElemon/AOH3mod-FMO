.class public Lorg/mozilla/universalchardet/prober/EscCharsetProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "EscCharsetProber.java"


# static fields
.field private static final hzsModel:Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

.field private static final iso2022cnModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

.field private static final iso2022jpModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

.field private static final iso2022krModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;


# instance fields
.field private activeSM:I

.field private codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

.field private detectedCharset:Ljava/lang/String;

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->hzsModel:Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

    .line 58
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022cnModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

    .line 59
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022jpModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

    .line 60
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022krModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 67
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 70
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v2, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->hzsModel:Lorg/mozilla/universalchardet/prober/statemachine/HZSMModel;

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 71
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v2, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022cnModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022CNSMModel;

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 72
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v2, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022jpModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022JPSMModel;

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 73
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    new-instance v1, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v2, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->iso2022krModel:Lorg/mozilla/universalchardet/prober/statemachine/ISO2022KRSMModel;

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 75
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->reset()V

    .line 76
    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->detectedCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidence()F
    .registers 2

    .line 85
    const v0, 0x3f7d70a4    # 0.99f

    return v0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 2

    .line 90
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 13
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 97
    add-int v0, p2, p3

    .line 98
    .local v0, "maxPos":I
    move v1, p2

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_60

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v2, v3, :cond_60

    .line 99
    iget v2, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "j":I
    :goto_f
    if-ltz v2, :cond_5d

    .line 100
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-object v4, v4, v2

    aget-byte v5, p1, v1

    invoke-virtual {v4, v5}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->nextState(B)I

    move-result v4

    .line 101
    .local v4, "codingState":I
    if-ne v4, v3, :cond_46

    .line 102
    iget v5, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    sub-int/2addr v5, v3

    iput v5, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    .line 103
    iget v5, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    if-gtz v5, :cond_2d

    .line 104
    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v3, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 105
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v3

    .line 106
    :cond_2d
    iget v5, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    if-eq v2, v5, :cond_5a

    .line 108
    iget-object v5, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    iget v6, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    aget-object v5, v5, v6

    .line 109
    .local v5, "t":Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;
    iget-object v6, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    iget v7, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    iget-object v8, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-object v8, v8, v2

    aput-object v8, v6, v7

    .line 110
    iget-object v6, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aput-object v5, v6, v2

    .line 111
    .end local v5    # "t":Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;
    goto :goto_5a

    .line 112
    :cond_46
    const/4 v5, 0x2

    if-ne v4, v5, :cond_5a

    .line 113
    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v3, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 114
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->getCodingStateMachine()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->detectedCharset:Ljava/lang/String;

    .line 115
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v3

    .line 99
    :cond_5a
    :goto_5a
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 98
    .end local v2    # "j":I
    .end local v4    # "codingState":I
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 120
    .end local v1    # "i":I
    :cond_60
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v1
.end method

.method public final reset()V
    .registers 3

    .line 125
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 127
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->reset()V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 129
    .end local v0    # "i":I
    :cond_14
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->codingSM:[Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    array-length v0, v0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->activeSM:I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/EscCharsetProber;->detectedCharset:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setOption()V
    .registers 1

    .line 135
    return-void
.end method
