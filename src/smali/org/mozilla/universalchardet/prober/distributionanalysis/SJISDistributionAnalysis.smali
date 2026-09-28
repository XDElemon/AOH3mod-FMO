.class public Lorg/mozilla/universalchardet/prober/distributionanalysis/SJISDistributionAnalysis;
.super Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;
.source "SJISDistributionAnalysis.java"


# static fields
.field public static final HIGHBYTE_BEGIN_1:I = 0x81

.field public static final HIGHBYTE_BEGIN_2:I = 0xe0

.field public static final HIGHBYTE_END_1:I = 0x9f

.field public static final HIGHBYTE_END_2:I = 0xef

.field public static final LOWBYTE_BEGIN_1:I = 0x40

.field public static final LOWBYTE_BEGIN_2:I = 0x80


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method protected getOrder([BI)I
    .registers 7
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .line 61
    const/4 v0, -0x1

    .line 63
    .local v0, "order":I
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    .line 64
    .local v1, "highbyte":I
    const/16 v2, 0x81

    if-lt v1, v2, :cond_12

    const/16 v2, 0x9f

    if-gt v1, v2, :cond_12

    .line 65
    add-int/lit16 v2, v1, -0x81

    mul-int/lit16 v2, v2, 0xbc

    .end local v0    # "order":I
    .local v2, "order":I
    goto :goto_20

    .line 66
    .end local v2    # "order":I
    .restart local v0    # "order":I
    :cond_12
    const/16 v2, 0xe0

    if-lt v1, v2, :cond_30

    const/16 v2, 0xef

    if-gt v1, v2, :cond_30

    .line 67
    add-int/lit16 v2, v1, -0xe0

    add-int/lit8 v2, v2, 0x1f

    mul-int/lit16 v2, v2, 0xbc

    .line 71
    .end local v0    # "order":I
    .restart local v2    # "order":I
    :goto_20
    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 72
    .local v0, "lowbyte":I
    add-int/lit8 v3, v0, -0x40

    add-int/2addr v2, v3

    .line 73
    const/16 v3, 0x80

    if-lt v0, v3, :cond_2f

    .line 74
    add-int/lit8 v2, v2, -0x1

    .line 77
    :cond_2f
    return v2

    .line 69
    .end local v2    # "order":I
    .local v0, "order":I
    :cond_30
    const/4 v2, -0x1

    return v2
.end method
