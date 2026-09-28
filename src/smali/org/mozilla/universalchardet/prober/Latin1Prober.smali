.class public Lorg/mozilla/universalchardet/prober/Latin1Prober;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "Latin1Prober.java"


# static fields
.field public static final ACO:B = 0x5t

.field public static final ACV:B = 0x4t

.field public static final ASC:B = 0x2t

.field public static final ASO:B = 0x7t

.field public static final ASS:B = 0x3t

.field public static final ASV:B = 0x6t

.field public static final CLASS_NUM:I = 0x8

.field public static final FREQ_CAT_NUM:I = 0x4

.field public static final OTH:B = 0x1t

.field public static final UDF:B

.field private static final latin1CharToClass:[B

.field private static final latin1ClassModel:[B


# instance fields
.field private freqCounter:[I

.field private lastCharClass:B

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 61
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    sput-object v0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->latin1CharToClass:[B

    .line 96
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_98

    sput-object v0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->latin1ClassModel:[B

    return-void

    nop

    :array_14
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x7t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x5t
        0x1t
        0x5t
        0x0t
        0x5t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x7t
        0x1t
        0x7t
        0x0t
        0x7t
        0x5t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x1t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x5t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x1t
        0x6t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
    .end array-data

    :array_98
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x3t
        0x3t
        0x1t
        0x1t
        0x3t
        0x3t
        0x0t
        0x3t
        0x3t
        0x3t
        0x1t
        0x2t
        0x1t
        0x2t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x3t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
        0x3t
        0x0t
        0x3t
        0x1t
        0x3t
        0x1t
        0x1t
        0x3t
        0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 114
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 115
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    .line 116
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/Latin1Prober;->reset()V

    .line 117
    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .registers 2

    .line 121
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1252:Ljava/lang/String;

    return-object v0
.end method

.method public getConfidence()F
    .registers 5

    .line 126
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_a

    .line 127
    const v0, 0x3c23d70a    # 0.01f

    return v0

    .line 131
    :cond_a
    const/4 v0, 0x0

    .line 132
    .local v0, "total":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    array-length v2, v2

    if-ge v1, v2, :cond_19

    .line 133
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 136
    .end local v1    # "i":I
    :cond_19
    if-gtz v0, :cond_1d

    .line 137
    const/4 v1, 0x0

    .local v1, "confidence":F
    goto :goto_36

    .line 139
    .end local v1    # "confidence":F
    :cond_1d
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    .line 140
    .restart local v1    # "confidence":F
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float v2, v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 143
    :goto_36
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3c

    .line 144
    const/4 v1, 0x0

    .line 149
    :cond_3c
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    .line 151
    return v1
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 2

    .line 156
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 13
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 161
    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/Latin1Prober;->filterWithEnglishLetters([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 166
    .local v0, "newBufTmp":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 167
    .local v1, "newBuf":[B
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 169
    .local v2, "newBufLen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v2, :cond_34

    .line 170
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    .line 171
    .local v4, "c":I
    sget-object v5, Lorg/mozilla/universalchardet/prober/Latin1Prober;->latin1CharToClass:[B

    aget-byte v5, v5, v4

    .line 172
    .local v5, "charClass":B
    sget-object v6, Lorg/mozilla/universalchardet/prober/Latin1Prober;->latin1ClassModel:[B

    iget-byte v7, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->lastCharClass:B

    mul-int/lit8 v7, v7, 0x8

    add-int/2addr v7, v5

    aget-byte v6, v6, v7

    .line 173
    .local v6, "freq":B
    if-nez v6, :cond_27

    .line 174
    sget-object v7, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v7, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 175
    goto :goto_34

    .line 177
    :cond_27
    iget-object v7, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    aget v8, v7, v6

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, v6

    .line 178
    iput-byte v5, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->lastCharClass:B

    .line 169
    .end local v4    # "c":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 181
    .end local v3    # "i":I
    .end local v5    # "charClass":B
    .end local v6    # "freq":B
    :cond_34
    :goto_34
    iget-object v3, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v3
.end method

.method public final reset()V
    .registers 4

    .line 186
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    .line 187
    const/4 v0, 0x1

    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->lastCharClass:B

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 189
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/Latin1Prober;->freqCounter:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 191
    .end local v0    # "i":I
    :cond_15
    return-void
.end method

.method public setOption()V
    .registers 1

    .line 195
    return-void
.end method
