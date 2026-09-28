.class public Lorg/mozilla/universalchardet/prober/SBCSGroupProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "SBCSGroupProber.java"


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
    .registers 6

    .line 66
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    .line 68
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Win1251Model;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Win1251Model;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Koi8rModel;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Koi8rModel;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Latin5Model;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Latin5Model;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/MacCyrillicModel;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/MacCyrillicModel;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Ibm866Model;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Ibm866Model;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Ibm855Model;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Ibm855Model;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Latin7Model;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Latin7Model;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Win1253Model;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Win1253Model;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Latin5BulgarianModel;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Latin5BulgarianModel;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/Win1251BulgarianModel;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/Win1251BulgarianModel;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    new-instance v1, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    new-instance v2, Lorg/mozilla/universalchardet/prober/sequence/ThaiModel;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/sequence/ThaiModel;-><init>()V

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Lorg/mozilla/universalchardet/prober/sequence/HebrewModel;

    invoke-direct {v0}, Lorg/mozilla/universalchardet/prober/sequence/HebrewModel;-><init>()V

    .line 81
    .local v0, "hebrewModel":Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;
    new-instance v1, Lorg/mozilla/universalchardet/prober/HebrewProber;

    invoke-direct {v1}, Lorg/mozilla/universalchardet/prober/HebrewProber;-><init>()V

    .line 82
    .local v1, "hebprober":Lorg/mozilla/universalchardet/prober/HebrewProber;
    new-instance v2, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;ZLorg/mozilla/universalchardet/prober/CharsetProber;)V

    .line 83
    .local v2, "singleByte1":Lorg/mozilla/universalchardet/prober/CharsetProber;
    new-instance v3, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4, v1}, Lorg/mozilla/universalchardet/prober/SingleByteCharsetProber;-><init>(Lorg/mozilla/universalchardet/prober/sequence/SequenceModel;ZLorg/mozilla/universalchardet/prober/CharsetProber;)V

    .line 84
    .local v3, "singleByte2":Lorg/mozilla/universalchardet/prober/CharsetProber;
    invoke-virtual {v1, v2, v3}, Lorg/mozilla/universalchardet/prober/HebrewProber;->setModalProbers(Lorg/mozilla/universalchardet/prober/CharsetProber;Lorg/mozilla/universalchardet/prober/CharsetProber;)V

    .line 86
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v4, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->reset()V

    .line 91
    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .registers 3

    .line 95
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v0, :cond_16

    .line 96
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->getConfidence()F

    .line 97
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v0, :cond_16

    .line 98
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 102
    :cond_16
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()F
    .registers 6

    .line 107
    const/4 v0, 0x0

    .line 110
    .local v0, "bestConf":F
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v1, v2, :cond_b

    .line 111
    const v1, 0x3f7d70a4    # 0.99f

    return v1

    .line 112
    :cond_b
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v1, v2, :cond_15

    .line 113
    const v1, 0x3c23d70a    # 0.01f

    return v1

    .line 115
    :cond_15
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 116
    .local v2, "prober":Lorg/mozilla/universalchardet/prober/CharsetProber;
    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isActive()Z

    move-result v3

    if-nez v3, :cond_2e

    .line 117
    goto :goto_1b

    .line 119
    :cond_2e
    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v3

    .line 120
    .local v3, "cf":F
    cmpg-float v4, v0, v3

    if-gez v4, :cond_39

    .line 121
    move v0, v3

    .line 122
    iput-object v2, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 124
    .end local v2    # "prober":Lorg/mozilla/universalchardet/prober/CharsetProber;
    :cond_39
    goto :goto_1b

    .line 127
    .end local v3    # "cf":F
    :cond_3a
    return v0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 2

    .line 132
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 10
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 140
    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->filterWithoutEnglishLetters([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 141
    .local v0, "newbuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-nez v1, :cond_b

    .line 142
    goto :goto_53

    .line 144
    :cond_b
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 145
    .local v2, "prober":Lorg/mozilla/universalchardet/prober/CharsetProber;
    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isActive()Z

    move-result v3

    if-nez v3, :cond_24

    .line 146
    goto :goto_11

    .line 148
    :cond_24
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v3

    .line 149
    .local v3, "st":Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v3, v4, :cond_3c

    .line 150
    iput-object v2, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 151
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 152
    goto :goto_53

    .line 153
    :cond_3c
    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v3, v4, :cond_52

    .line 154
    invoke-virtual {v2, v5}, Lorg/mozilla/universalchardet/prober/CharsetProber;->setActive(Z)V

    .line 155
    iget v4, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    .line 156
    iget v4, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    if-gtz v4, :cond_52

    .line 157
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v1, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 158
    goto :goto_53

    .line 161
    .end local v2    # "prober":Lorg/mozilla/universalchardet/prober/CharsetProber;
    :cond_52
    goto :goto_11

    .line 165
    .end local v0    # "newbuf":Ljava/nio/ByteBuffer;
    .end local v3    # "st":Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    :cond_53
    :goto_53
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public final reset()V
    .registers 5

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    .line 171
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->probers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 172
    .local v1, "prober":Lorg/mozilla/universalchardet/prober/CharsetProber;
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    .line 173
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->setActive(Z)V

    .line 174
    iget v3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->activeNum:I

    .line 175
    .end local v1    # "prober":Lorg/mozilla/universalchardet/prober/CharsetProber;
    goto :goto_9

    .line 176
    :cond_22
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->bestGuess:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 177
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 178
    return-void
.end method

.method public setOption()V
    .registers 1

    .line 182
    return-void
.end method
