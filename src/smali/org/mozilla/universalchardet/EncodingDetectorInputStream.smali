.class public Lorg/mozilla/universalchardet/EncodingDetectorInputStream;
.super Ljava/io/InputStream;
.source "EncodingDetectorInputStream.java"


# instance fields
.field private final detector:Lorg/mozilla/universalchardet/UniversalDetector;

.field private in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;

    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 41
    new-instance v0, Lorg/mozilla/universalchardet/UniversalDetector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Lorg/mozilla/universalchardet/CharsetListener;)V

    iput-object v0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->detector:Lorg/mozilla/universalchardet/UniversalDetector;

    .line 48
    iput-object p1, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->in:Ljava/io/InputStream;

    .line 49
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 57
    return-void
.end method

.method public getDetectedCharset()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->detector:Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->getDetectedCharset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    .line 60
    iget-object v0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 61
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .line 64
    iget-object v0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 69
    .local v1, "data":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->read([BII)I

    move-result v0

    .line 70
    .local v0, "nrOfBytesRead":I
    if-ltz v0, :cond_d

    .line 71
    aget-byte v2, v1, v2

    return v2

    .line 73
    :cond_d
    const/4 v2, -0x1

    return v2
.end method

.method public read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 78
    .local v0, "nrOfBytesRead":I
    iget-object v1, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->detector:Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->isDone()Z

    move-result v1

    if-nez v1, :cond_15

    if-lez v0, :cond_15

    .line 79
    iget-object v1, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->detector:Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-virtual {v1, p1, p2, v0}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)V

    .line 81
    :cond_15
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 82
    iget-object v1, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->detector:Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->dataEnd()V

    .line 84
    :cond_1d
    return v0
.end method

.method public reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 93
    return-void
.end method

.method public skip(J)J
    .registers 10
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->detector:Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->isDone()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 97
    iget-object v0, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0

    .line 100
    :cond_f
    const/4 v0, 0x0

    .line 101
    .local v0, "lastRead":I
    const-wide/16 v1, -0x1

    .line 102
    .local v1, "count":J
    const-wide/16 v3, 0x0

    .local v3, "i":J
    :goto_14
    cmp-long v5, v3, p1

    if-gez v5, :cond_25

    if-ltz v0, :cond_25

    .line 103
    iget-object v5, p0, Lorg/mozilla/universalchardet/EncodingDetectorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 104
    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 102
    add-long/2addr v3, v5

    goto :goto_14

    .line 106
    .end local v3    # "i":J
    :cond_25
    return-wide v1
.end method
