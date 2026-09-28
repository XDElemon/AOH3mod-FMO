.class public final Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;
.super Ljava/lang/Object;
.source "UnicodeBOMInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/universalchardet/UnicodeBOMInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BOM"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NONE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field public static final UTF_16_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field public static final UTF_16_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field public static final UTF_32_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field public static final UTF_32_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field public static final UTF_8:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;


# instance fields
.field final bytes:[B

.field private final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 40
    const-class v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;

    .line 47
    new-instance v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    const/4 v1, 0x0

    new-array v1, v1, [B

    const-string v2, "NONE"

    invoke-direct {v0, v1, v2}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->NONE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 52
    new-instance v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_58

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_8:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 57
    new-instance v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_5e

    const-string v3, "UTF-16 little-endian"

    invoke-direct {v0, v2, v3}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_16_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 62
    new-instance v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    new-array v1, v1, [B

    fill-array-data v1, :array_64

    const-string v2, "UTF-16 big-endian"

    invoke-direct {v0, v1, v2}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_16_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 67
    new-instance v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    const/4 v1, 0x4

    new-array v2, v1, [B

    fill-array-data v2, :array_6a

    const-string v3, "UTF-32 little-endian"

    invoke-direct {v0, v2, v3}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_32_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 73
    new-instance v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    new-array v1, v1, [B

    fill-array-data v1, :array_70

    const-string v2, "UTF-32 big-endian"

    invoke-direct {v0, v1, v2}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;-><init>([BLjava/lang/String;)V

    sput-object v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_32_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    return-void

    :array_58
    .array-data 1
        -0x11t
        -0x45t
        -0x41t
    .end array-data

    :array_5e
    .array-data 1
        -0x1t
        -0x2t
    .end array-data

    nop

    :array_64
    .array-data 1
        -0x2t
        -0x1t
    .end array-data

    nop

    :array_6a
    .array-data 1
        -0x1t
        -0x2t
        0x0t
        0x0t
    .end array-data

    :array_70
    .array-data 1
        0x0t
        0x0t
        -0x2t
        -0x1t
    .end array-data
.end method

.method private constructor <init>([BLjava/lang/String;)V
    .registers 3
    .param p1, "bom"    # [B
    .param p2, "description"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    nop

    .line 100
    nop

    .line 101
    nop

    .line 103
    iput-object p1, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->bytes:[B

    .line 104
    iput-object p2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->description:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public final getBytes()[B
    .registers 5

    .line 89
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->bytes:[B

    array-length v0, v0

    .line 90
    .local v0, "length":I
    new-array v1, v0, [B

    .line 93
    .local v1, "result":[B
    iget-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->bytes:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->description:Ljava/lang/String;

    return-object v0
.end method
