.class public Lorg/mozilla/universalchardet/prober/MBCSGroupProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "MBCSGroupProber.java"


# instance fields
.field private activeNum:I

.field private bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private probers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/universalchardet/prober/CharsetProber;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 58
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    .line 61
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/UTF8Prober;

    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/UTF8Prober;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SJISProber;

    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/SJISProber;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/EUCJPProber;

    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/EUCJPProber;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/GB18030Prober;

    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/GB18030Prober;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/EUCKRProber;

    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/EUCKRProber;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/Big5Prober;

    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/Big5Prober;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/EUCTWProber;

    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/EUCTWProber;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->reset()V

    .line 70
    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .registers 3

    .line 74
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v0, :cond_16

    .line 75
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->getConfidence()F

    .line 76
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v0, :cond_16

    .line 77
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 80
    :cond_16
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()F
    .registers 6

    .line 85
    const/4 v0, 0x0

    .line 88
    .local v0, "bestConf":F
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v1, v2, :cond_b

    .line 89
    const v1, 0x3f7d70a4    # 0.99f

    return v1

    .line 90
    :cond_b
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v1, v2, :cond_15

    .line 91
    const v1, 0x3c23d70a    # 0.01f

    return v1

    .line 93
    :cond_15
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 94
    .local v2, "prober":Lorg/mozilla/universalchardet/prober/CharsetProber;
    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isActive()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 95
    goto :goto_1b

    .line 97
    :cond_2e
    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v3

    .line 98
    .local v3, "cf":F
    cmpg-float v4, v0, v3

    if-gez v4, :cond_39

    .line 99
    move v0, v3

    .line 100
    iput-object v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 102
    .end local v2    # "prober":Lorg/mozilla/universalchardet/prober/CharsetProber;
    :cond_39
    goto :goto_1b

    .line 105
    .end local v3    # "cf":F
    :cond_3a
    return v0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 2

    .line 110
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 13
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 117
    const/4 v0, 0x1

    .line 118
    .local v0, "keepNext":Z
    new-array v1, p3, [B

    .line 119
    .local v1, "highbyteBuf":[B
    const/4 v2, 0x0

    .line 121
    .local v2, "highpos":I
    add-int v3, p2, p3

    .line 122
    .local v3, "maxPos":I
    move v4, p2

    .local v4, "i":I
    :goto_7
    if-ge v4, v3, :cond_25

    .line 123
    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_18

    .line 124
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "highpos":I
    .local v5, "highpos":I
    aget-byte v6, p1, v4

    aput-byte v6, v1, v2

    .line 125
    const/4 v0, 0x1

    move v2, v5

    goto :goto_22

    .line 128
    .end local v5    # "highpos":I
    .restart local v2    # "highpos":I
    :cond_18
    if-eqz v0, :cond_22

    .line 129
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "highpos":I
    .restart local v5    # "highpos":I
    aget-byte v6, p1, v4

    aput-byte v6, v1, v2

    .line 130
    const/4 v0, 0x0

    move v2, v5

    .line 122
    .end local v5    # "highpos":I
    .restart local v2    # "highpos":I
    :cond_22
    :goto_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 135
    .end local v4    # "i":I
    :cond_25
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 136
    .local v5, "prober":Lorg/mozilla/universalchardet/prober/CharsetProber;
    invoke-virtual {v5}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isActive()Z

    move-result v6

    if-nez v6, :cond_3e

    .line 137
    goto :goto_2b

    .line 139
    :cond_3e
    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v7

    .line 140
    .local v7, "st":Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    sget-object v8, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v7, v8, :cond_4e

    .line 141
    iput-object v5, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 142
    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 143
    goto :goto_65

    .line 144
    :cond_4e
    sget-object v8, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v7, v8, :cond_64

    .line 145
    invoke-virtual {v5, v6}, Lorg/mozilla/universalchardet/prober/CharsetProber;->setActive(Z)V

    .line 146
    iget v6, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    .line 147
    iget v6, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    if-gtz v6, :cond_64

    .line 148
    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v4, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 149
    goto :goto_65

    .line 152
    .end local v5    # "prober":Lorg/mozilla/universalchardet/prober/CharsetProber;
    :cond_64
    goto :goto_2b

    .line 154
    .end local v7    # "st":Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    :cond_65
    :goto_65
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v4
.end method

.method public final reset()V
    .registers 5

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    .line 160
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 161
    .local v1, "prober":Lorg/mozilla/universalchardet/prober/CharsetProber;
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    .line 162
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->setActive(Z)V

    .line 163
    iget v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    .line 164
    .end local v1    # "prober":Lorg/mozilla/universalchardet/prober/CharsetProber;
    goto :goto_9

    .line 165
    :cond_22
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 166
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 167
    return-void
.end method

.method public setOption()V
    .registers 1

    .line 171
    return-void
.end method
