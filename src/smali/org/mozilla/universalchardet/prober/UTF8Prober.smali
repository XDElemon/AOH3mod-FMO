.class public Lorg/mozilla/universalchardet/prober/UTF8Prober;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "UTF8Prober.java"


# static fields
.field public static final ONE_CHAR_PROB:F = 0.5f

.field private static final smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;


# instance fields
.field private codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

.field private numOfMBChar:I

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/statemachine/UTF8SMModel;-><init>()V

    sput-object v0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 67
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    .line 69
    new-instance v0, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    sget-object v1, Lorg/mozilla/universalchardet/prober/UTF8Prober;->smModel:Lorg/mozilla/universalchardet/prober/statemachine/SMModel;

    invoke-direct {v0, v1}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;-><init>(Lorg/mozilla/universalchardet/prober/statemachine/SMModel;)V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    .line 71
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/UTF8Prober;->reset()V

    .line 72
    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .registers 2

    .line 75
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_8:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidence()F
    .registers 4

    .line 119
    const v0, 0x3f7d70a4    # 0.99f

    .line 121
    .local v0, "unlike":F
    iget v1, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_18

    .line 122
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget v2, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    if-ge v1, v2, :cond_14

    .line 123
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v0, v2

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 125
    .end local v1    # "i":I
    :cond_14
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    return v1

    .line 127
    :cond_18
    const v1, 0x3f7d70a4    # 0.99f

    return v1
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 2

    .line 109
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 10
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 81
    add-int v0, p2, p3

    .line 82
    .local v0, "maxPos":I
    move v1, p2

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_2f

    .line 83
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    aget-byte v3, p1, v1

    invoke-virtual {v2, v3}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->nextState(B)I

    move-result v2

    .line 84
    .local v2, "codingState":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    .line 85
    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v3, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 86
    goto :goto_2f

    .line 88
    :cond_15
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1d

    .line 89
    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v3, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 90
    goto :goto_2f

    .line 92
    :cond_1d
    if-nez v2, :cond_2c

    .line 93
    iget-object v5, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    invoke-virtual {v5}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->getCurrentCharLen()I

    move-result v5

    if-lt v5, v4, :cond_2c

    .line 94
    iget v4, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    .line 82
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 99
    .end local v1    # "i":I
    .end local v2    # "codingState":I
    :cond_2f
    :goto_2f
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v1, v2, :cond_44

    .line 100
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/UTF8Prober;->getConfidence()F

    move-result v1

    const v2, 0x3f733333    # 0.95f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_44

    .line 101
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v1, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 105
    :cond_44
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v1
.end method

.method public final reset()V
    .registers 2

    .line 113
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->codingSM:Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/statemachine/CodingStateMachine;->reset()V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->numOfMBChar:I

    .line 115
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/UTF8Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 116
    return-void
.end method

.method public setOption()V
    .registers 1

    .line 132
    return-void
.end method
