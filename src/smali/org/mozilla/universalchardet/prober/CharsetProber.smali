.class public abstract Lorg/mozilla/universalchardet/prober/CharsetProber;
.super Ljava/lang/Object;
.source "CharsetProber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    }
.end annotation


# static fields
.field public static final ASCII_A:I = 0x61

.field public static final ASCII_A_CAPITAL:I = 0x41

.field public static final ASCII_GT:I = 0x3e

.field public static final ASCII_LT:I = 0x3c

.field public static final ASCII_SP:I = 0x20

.field public static final ASCII_Z:I = 0x7a

.field public static final ASCII_Z_CAPITAL:I = 0x5a

.field public static final SHORTCUT_THRESHOLD:F = 0.95f


# instance fields
.field private active:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/prober/CharsetProber;->active:Z

    .line 72
    return-void
.end method

.method private isAscii(B)Z
    .registers 3
    .param p1, "b"    # B

    .line 163
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isAsciiSymbol(B)Z
    .registers 4
    .param p1, "b"    # B

    .line 168
    and-int/lit16 v0, p1, 0xff

    .line 169
    .local v0, "c":I
    const/16 v1, 0x41

    if-lt v0, v1, :cond_15

    const/16 v1, 0x5a

    if-le v0, v1, :cond_e

    const/16 v1, 0x61

    if-lt v0, v1, :cond_15

    :cond_e
    const/16 v1, 0x7a

    if-le v0, v1, :cond_13

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
.method public filterWithEnglishLetters([BII)Ljava/nio/ByteBuffer;
    .registers 11
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 122
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 124
    .local v0, "out":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 127
    .local v1, "isInTag":Z
    move v2, p2

    .line 128
    .local v2, "prevPtr":I
    move v3, p2

    .line 129
    .local v3, "curPtr":I
    add-int v4, p2, p3

    .line 131
    .local v4, "maxPtr":I
    :goto_9
    if-ge v3, v4, :cond_3a

    .line 132
    aget-byte v5, p1, v3

    .line 134
    .local v5, "c":B
    const/16 v6, 0x3e

    if-ne v5, v6, :cond_13

    .line 135
    const/4 v1, 0x0

    goto :goto_18

    .line 136
    :cond_13
    const/16 v6, 0x3c

    if-ne v5, v6, :cond_18

    .line 137
    const/4 v1, 0x1

    .line 140
    :cond_18
    :goto_18
    invoke-direct {p0, v5}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAscii(B)Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-direct {p0, v5}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAsciiSymbol(B)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 141
    if-le v3, v2, :cond_35

    if-nez v1, :cond_35

    .line 144
    sub-int v6, v3, v2

    invoke-virtual {v0, p1, v2, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 145
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 146
    add-int/lit8 v2, v3, 0x1

    goto :goto_37

    .line 148
    :cond_35
    add-int/lit8 v2, v3, 0x1

    .line 131
    :cond_37
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 155
    .end local v5    # "c":B
    :cond_3a
    if-nez v1, :cond_43

    if-le v3, v2, :cond_43

    .line 156
    sub-int v5, v3, v2

    invoke-virtual {v0, p1, v2, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 159
    :cond_43
    return-object v0
.end method

.method public filterWithoutEnglishLetters([BII)Ljava/nio/ByteBuffer;
    .registers 11
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 83
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    .local v0, "out":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 88
    .local v1, "meetMSB":Z
    move v2, p2

    .line 89
    .local v2, "prevPtr":I
    move v3, p2

    .line 90
    .local v3, "curPtr":I
    add-int v4, p2, p3

    .line 92
    .local v4, "maxPtr":I
    :goto_9
    if-ge v3, v4, :cond_32

    .line 93
    aget-byte v5, p1, v3

    .line 94
    .local v5, "c":B
    invoke-direct {p0, v5}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAscii(B)Z

    move-result v6

    if-nez v6, :cond_15

    .line 95
    const/4 v1, 0x1

    goto :goto_2f

    .line 96
    :cond_15
    invoke-direct {p0, v5}, Lorg/mozilla/universalchardet/prober/CharsetProber;->isAsciiSymbol(B)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 99
    if-eqz v1, :cond_2d

    if-le v3, v2, :cond_2d

    .line 102
    sub-int v6, v3, v2

    invoke-virtual {v0, p1, v2, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 103
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 104
    add-int/lit8 v2, v3, 0x1

    .line 105
    const/4 v1, 0x0

    goto :goto_2f

    .line 109
    :cond_2d
    add-int/lit8 v2, v3, 0x1

    .line 92
    :cond_2f
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 114
    .end local v5    # "c":B
    :cond_32
    if-eqz v1, :cond_3b

    if-le v3, v2, :cond_3b

    .line 115
    sub-int v5, v3, v2

    invoke-virtual {v0, p1, v2, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 118
    :cond_3b
    return-object v0
.end method

.method public abstract getCharSetName()Ljava/lang/String;
.end method

.method public abstract getConfidence()F
.end method

.method public abstract getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
.end method

.method public abstract handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
.end method

.method public isActive()Z
    .registers 2

    .line 175
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/prober/CharsetProber;->active:Z

    return v0
.end method

.method public abstract reset()V
.end method

.method public setActive(Z)V
    .registers 2
    .param p1, "active"    # Z

    .line 179
    iput-boolean p1, p0, Lorg/mozilla/universalchardet/prober/CharsetProber;->active:Z

    .line 180
    return-void
.end method

.method public abstract setOption()V
.end method
