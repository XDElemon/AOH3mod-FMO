.class public Lorg/mozilla/universalchardet/UnicodeBOMInputStream;
.super Ljava/io/InputStream;
.source "UnicodeBOMInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;
    }
.end annotation


# instance fields
.field private final bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

.field private final in:Ljava/io/PushbackInputStream;

.field private skipped:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 12
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "skipIfFound"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z

    .line 145
    if-eqz p1, :cond_8d

    .line 149
    new-instance v1, Ljava/io/PushbackInputStream;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    .line 151
    new-array v1, v2, [B

    .line 152
    .local v1, "bom":[B
    iget-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v2

    .line 154
    .local v2, "read":I
    const/4 v3, 0x2

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_96

    goto :goto_7c

    .line 156
    :pswitch_20
    aget-byte v7, v1, v0

    const/4 v8, 0x3

    if-ne v7, v5, :cond_36

    aget-byte v7, v1, v6

    if-ne v7, v4, :cond_36

    aget-byte v7, v1, v3

    if-nez v7, :cond_36

    aget-byte v7, v1, v8

    if-nez v7, :cond_36

    .line 158
    sget-object v3, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_32_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v3, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 159
    goto :goto_80

    .line 160
    :cond_36
    aget-byte v7, v1, v0

    if-nez v7, :cond_4b

    aget-byte v7, v1, v6

    if-nez v7, :cond_4b

    aget-byte v7, v1, v3

    if-ne v7, v4, :cond_4b

    aget-byte v7, v1, v8

    if-ne v7, v5, :cond_4b

    .line 162
    sget-object v3, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_32_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v3, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 163
    goto :goto_80

    .line 167
    :cond_4b
    :pswitch_4b
    aget-byte v7, v1, v0

    const/16 v8, -0x11

    if-ne v7, v8, :cond_62

    aget-byte v7, v1, v6

    const/16 v8, -0x45

    if-ne v7, v8, :cond_62

    aget-byte v3, v1, v3

    const/16 v7, -0x41

    if-ne v3, v7, :cond_62

    .line 169
    sget-object v3, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_8:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v3, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 170
    goto :goto_80

    .line 174
    :cond_62
    :pswitch_62
    aget-byte v3, v1, v0

    if-ne v3, v5, :cond_6f

    aget-byte v3, v1, v6

    if-ne v3, v4, :cond_6f

    .line 175
    sget-object v3, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_16_LE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v3, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 176
    goto :goto_80

    .line 177
    :cond_6f
    aget-byte v3, v1, v0

    if-ne v3, v4, :cond_7c

    aget-byte v3, v1, v6

    if-ne v3, v5, :cond_7c

    .line 178
    sget-object v3, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->UTF_16_BE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v3, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 179
    goto :goto_80

    .line 183
    :cond_7c
    :goto_7c
    sget-object v3, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->NONE:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iput-object v3, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    .line 187
    :goto_80
    if-lez v2, :cond_87

    .line 188
    iget-object v3, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v3, v1, v0, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 190
    :cond_87
    if-eqz p2, :cond_8c

    .line 191
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipBOM()Lorg/mozilla/universalchardet/UnicodeBOMInputStream;

    .line 194
    :cond_8c
    return-void

    .line 146
    .end local v1    # "bom":[B
    .end local v2    # "read":I
    :cond_8d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid input stream: null is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_96
    .packed-switch 0x2
        :pswitch_62
        :pswitch_4b
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->available()I

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

    .line 272
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    .line 273
    return-void
.end method

.method public final getBOM()Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;
    .registers 2

    .line 204
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 279
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->mark(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 280
    monitor-exit p0

    return-void

    .line 278
    .end local p0    # "this":Lorg/mozilla/universalchardet/UnicodeBOMInputStream;
    .end local p1    # "readlimit":I
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .registers 2

    .line 293
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z

    .line 234
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .registers 5
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z

    .line 242
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z

    .line 250
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/PushbackInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 286
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->reset()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 287
    monitor-exit p0

    return-void

    .line 285
    .end local p0    # "this":Lorg/mozilla/universalchardet/UnicodeBOMInputStream;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 5
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z

    .line 258
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/PushbackInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized skipBOM()Lorg/mozilla/universalchardet/UnicodeBOMInputStream;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 218
    :try_start_1
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z

    if-nez v0, :cond_22

    .line 219
    iget-object v0, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->bom:Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;

    iget-object v0, v0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream$BOM;->bytes:[B

    array-length v0, v0

    int-to-long v0, v0

    .line 220
    .local v0, "bytesToSkip":J
    iget-object v2, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/PushbackInputStream;->skip(J)J

    move-result-wide v2

    .line 221
    .local v2, "bytesSkipped":J
    move-wide v4, v2

    .local v4, "i":J
    :goto_12
    cmp-long v6, v4, v0

    if-gez v6, :cond_1f

    .line 222
    iget-object v6, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v6}, Ljava/io/PushbackInputStream;->read()I

    .line 221
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_12

    .line 224
    .end local v4    # "i":J
    .end local p0    # "this":Lorg/mozilla/universalchardet/UnicodeBOMInputStream;
    :cond_1f
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;->skipped:Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 226
    .end local v0    # "bytesToSkip":J
    .end local v2    # "bytesSkipped":J
    :cond_22
    monitor-exit p0

    return-object p0

    .line 217
    :catchall_24
    move-exception v0

    monitor-exit p0

    goto :goto_28

    :goto_27
    throw v0

    :goto_28
    goto :goto_27
.end method
