.class public Lorg/mozilla/universalchardet/prober/HebrewProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;
.source "HebrewProber.java"


# static fields
.field public static final FINAL_KAF:I = 0xea

.field public static final FINAL_MEM:I = 0xed

.field public static final FINAL_NUN:I = 0xef

.field public static final FINAL_PE:I = 0xf3

.field public static final FINAL_TSADI:I = 0xf5

.field public static final MIN_FINAL_CHAR_DISTANCE:I = 0x5

.field public static final MIN_MODEL_DISTANCE:F = 0.01f

.field public static final NORMAL_KAF:I = 0xeb

.field public static final NORMAL_MEM:I = 0xee

.field public static final NORMAL_NUN:I = 0xf0

.field public static final NORMAL_PE:I = 0xf4

.field public static final NORMAL_TSADI:I = 0xf6

.field public static final SPACE:B = 0x20t


# instance fields
.field private beforePrev:B

.field private finalCharLogicalScore:I

.field private finalCharVisualScore:I

.field private logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private prev:B

.field private visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 82
    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 83
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/HebrewProber;->reset()V

    .line 84
    return-void
.end method

.method protected static isFinal(B)Z
    .registers 3
    .param p0, "b"    # B

    .line 184
    and-int/lit16 v0, p0, 0xff

    .line 185
    .local v0, "c":I
    const/16 v1, 0xea

    if-eq v0, v1, :cond_19

    const/16 v1, 0xed

    if-eq v0, v1, :cond_19

    const/16 v1, 0xef

    if-eq v0, v1, :cond_19

    const/16 v1, 0xf3

    if-eq v0, v1, :cond_19

    const/16 v1, 0xf5

    if-ne v0, v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v1, 0x1

    :goto_1a
    return v1
.end method

.method protected static isNonFinal(B)Z
    .registers 3
    .param p0, "b"    # B

    .line 195
    and-int/lit16 v0, p0, 0xff

    .line 196
    .local v0, "c":I
    const/16 v1, 0xeb

    if-eq v0, v1, :cond_15

    const/16 v1, 0xee

    if-eq v0, v1, :cond_15

    const/16 v1, 0xf0

    if-eq v0, v1, :cond_15

    const/16 v1, 0xf4

    if-ne v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v1, 0x1

    :goto_16
    return v1
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .registers 4

    .line 94
    iget v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    iget v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    sub-int/2addr v0, v1

    .line 95
    .local v0, "finalsub":I
    const/4 v1, 0x5

    if-lt v0, v1, :cond_b

    .line 96
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    return-object v1

    .line 98
    :cond_b
    const/4 v1, -0x5

    if-gt v0, v1, :cond_11

    .line 99
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    return-object v1

    .line 103
    :cond_11
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v1

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v2

    sub-float/2addr v1, v2

    .line 104
    .local v1, "modelsub":F
    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_28

    .line 105
    sget-object v2, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    return-object v2

    .line 107
    :cond_28
    const v2, -0x43dc28f6    # -0.01f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_32

    .line 108
    sget-object v2, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    return-object v2

    .line 112
    :cond_32
    if-gez v0, :cond_37

    .line 113
    sget-object v2, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_8:Ljava/lang/String;

    return-object v2

    .line 117
    :cond_37
    sget-object v2, Lorg/mozilla/universalchardet/Constants;->CHARSET_WINDOWS_1255:Ljava/lang/String;

    return-object v2
.end method

.method public getConfidence()F
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 3

    .line 128
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 129
    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_17

    .line 130
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0

    .line 133
    :cond_17
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .registers 9
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 138
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/HebrewProber;->getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_b

    .line 139
    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0

    .line 143
    :cond_b
    add-int v0, p2, p3

    .line 144
    .local v0, "maxPos":I
    move v1, p2

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_55

    .line 145
    aget-byte v2, p1, v1

    .line 146
    .local v2, "c":B
    const/16 v3, 0x20

    if-ne v2, v3, :cond_38

    .line 147
    iget-byte v4, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    if-eq v4, v3, :cond_4c

    .line 148
    iget-byte v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    invoke-static {v3}, Lorg/mozilla/universalchardet/prober/HebrewProber;->isFinal(B)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 149
    iget v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    goto :goto_4c

    .line 150
    :cond_29
    iget-byte v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    invoke-static {v3}, Lorg/mozilla/universalchardet/prober/HebrewProber;->isNonFinal(B)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 151
    iget v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    goto :goto_4c

    .line 155
    :cond_38
    iget-byte v4, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    if-ne v4, v3, :cond_4c

    iget-byte v4, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    .line 156
    invoke-static {v4}, Lorg/mozilla/universalchardet/prober/HebrewProber;->isFinal(B)Z

    move-result v4

    if-eqz v4, :cond_4c

    if-eq v2, v3, :cond_4c

    .line 158
    iget v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    .line 161
    :cond_4c
    :goto_4c
    iget-byte v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    iput-byte v3, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    .line 162
    iput-byte v2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 165
    .end local v1    # "i":I
    .end local v2    # "c":B
    :cond_55
    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v1
.end method

.method public final reset()V
    .registers 2

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharLogicalScore:I

    .line 171
    iput v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->finalCharVisualScore:I

    .line 175
    const/16 v0, 0x20

    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->prev:B

    .line 176
    iput-byte v0, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->beforePrev:B

    .line 177
    return-void
.end method

.method public setModalProbers(Lorg/mozilla/universalchardet/prober/CharsetProber;Lorg/mozilla/universalchardet/prober/CharsetProber;)V
    .registers 3
    .param p1, "logicalProber"    # Lorg/mozilla/universalchardet/prober/CharsetProber;
    .param p2, "visualProber"    # Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 87
    iput-object p1, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->logicalProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 88
    iput-object p2, p0, Lorg/mozilla/universalchardet/prober/HebrewProber;->visualProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 89
    return-void
.end method

.method public setOption()V
    .registers 1

    .line 181
    return-void
.end method
