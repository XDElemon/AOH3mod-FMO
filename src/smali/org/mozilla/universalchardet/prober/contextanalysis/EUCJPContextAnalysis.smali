.class public Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;
.super Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;
.source "EUCJPContextAnalysis.java"


# static fields
.field public static final FIRSTPLANE_HIGHBYTE_BEGIN:I = 0xa1

.field public static final FIRSTPLANE_HIGHBYTE_END:I = 0xfe

.field public static final HIRAGANA_HIGHBYTE:I = 0xa4

.field public static final HIRAGANA_LOWBYTE_BEGIN:I = 0xa1

.field public static final HIRAGANA_LOWBYTE_END:I = 0xf3

.field public static final SINGLE_SHIFT_2:I = 0x8e

.field public static final SINGLE_SHIFT_3:I = 0x8f


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method protected getOrder([BI)I
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .line 86
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    .line 87
    .local v0, "highbyte":I
    const/16 v1, 0xa4

    if-ne v0, v1, :cond_19

    .line 88
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 89
    .local v1, "lowbyte":I
    const/16 v2, 0xa1

    if-lt v1, v2, :cond_19

    const/16 v2, 0xf3

    if-gt v1, v2, :cond_19

    .line 91
    add-int/lit16 v2, v1, -0xa1

    return v2

    .line 95
    .end local v1    # "lowbyte":I
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method protected getOrder(Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;[BI)V
    .registers 7
    .param p1, "order"    # Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;
    .param p2, "buf"    # [B
    .param p3, "offset"    # I

    .line 63
    const/4 v0, -0x1

    iput v0, p1, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->order:I

    .line 64
    const/4 v0, 0x1

    iput v0, p1, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->charLength:I

    .line 66
    aget-byte v0, p2, p3

    and-int/lit16 v0, v0, 0xff

    .line 67
    .local v0, "firstByte":I
    const/16 v1, 0x8e

    const/16 v2, 0xa1

    if-eq v0, v1, :cond_1f

    if-lt v0, v2, :cond_17

    const/16 v1, 0xfe

    if-gt v0, v1, :cond_17

    goto :goto_1f

    .line 71
    :cond_17
    const/16 v1, 0x8f

    if-ne v0, v1, :cond_22

    .line 72
    const/4 v1, 0x3

    iput v1, p1, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->charLength:I

    goto :goto_22

    .line 70
    :cond_1f
    :goto_1f
    const/4 v1, 0x2

    iput v1, p1, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->charLength:I

    .line 75
    :cond_22
    :goto_22
    const/16 v1, 0xa4

    if-ne v0, v1, :cond_36

    .line 76
    add-int/lit8 v1, p3, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    .line 77
    .local v1, "secondByte":I
    if-lt v1, v2, :cond_36

    const/16 v2, 0xf3

    if-gt v1, v2, :cond_36

    .line 79
    add-int/lit16 v2, v1, -0xa1

    iput v2, p1, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->order:I

    .line 82
    .end local v1    # "secondByte":I
    :cond_36
    return-void
.end method
