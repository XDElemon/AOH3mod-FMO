.class public Lorg/mozilla/universalchardet/prober/distributionanalysis/EUCJPDistributionAnalysis;
.super Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;
.source "EUCJPDistributionAnalysis.java"


# static fields
.field public static final HIGHBYTE_BEGIN:I = 0xa1

.field public static final HIGHBYTE_END:I = 0xfe

.field public static final LOWBYTE_BEGIN:I = 0xa1

.field public static final LOWBYTE_END:I = 0xfe


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/distributionanalysis/JISDistributionAnalysis;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method protected getOrder([BI)I
    .registers 7
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .line 59
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    .line 60
    .local v0, "highbyte":I
    const/16 v1, 0xa1

    if-lt v0, v1, :cond_15

    .line 61
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 62
    .local v2, "lowbyte":I
    add-int/lit16 v3, v0, -0xa1

    mul-int/lit8 v3, v3, 0x5e

    add-int/2addr v3, v2

    sub-int/2addr v3, v1

    return v3

    .line 64
    .end local v2    # "lowbyte":I
    :cond_15
    const/4 v1, -0x1

    return v1
.end method
