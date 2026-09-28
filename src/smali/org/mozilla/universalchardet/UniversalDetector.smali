.class public Lorg/mozilla/universalchardet/UniversalDetector;
.super Ljava/lang/Object;
.source "UniversalDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/universalchardet/UniversalDetector$InputState;
    }
.end annotation


# static fields
.field public static final MINIMUM_THRESHOLD:F = 0.2f

.field public static final SHORTCUT_THRESHOLD:F = 0.95f


# instance fields
.field private detectedCharset:Ljava/lang/String;

.field private done:Z

.field private escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private gotData:Z

.field private inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

.field private lastChar:B

.field private listener:Lorg/mozilla/universalchardet/CharsetListener;

.field private onlyPrintableASCII:Z

.field private probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private start:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Lorg/mozilla/universalchardet/CharsetListener;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/mozilla/universalchardet/CharsetListener;)V
    .registers 3
    .param p1, "listener"    # Lorg/mozilla/universalchardet/CharsetListener;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->onlyPrintableASCII:Z

    .line 113
    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 117
    invoke-virtual {p0}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()V

    .line 118
    return-void
.end method

.method public static detectCharset(Ljava/io/File;)Ljava/lang/String;
    .registers 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->detectCharset(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static detectCharset(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 379
    .local v0, "buf":[B
    new-instance v1, Lorg/mozilla/universalchardet/UniversalDetector;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Lorg/mozilla/universalchardet/CharsetListener;)V

    .line 382
    .local v1, "detector":Lorg/mozilla/universalchardet/UniversalDetector;
    :goto_a
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "nread":I
    if-lez v2, :cond_1c

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->isDone()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 383
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)V

    goto :goto_a

    .line 385
    :cond_1c
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->dataEnd()V

    .line 387
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->getDetectedCharset()Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "encoding":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()V

    .line 389
    return-object v2
.end method

.method public static detectCharset(Ljava/nio/file/Path;)Ljava/lang/String;
    .registers 5
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/io/BufferedInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {p0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 365
    .local v0, "fis":Ljava/io/InputStream;
    :try_start_c
    invoke-static {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->detectCharset(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 366
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 365
    return-object v1

    .line 364
    :catchall_14
    move-exception v1

    .end local v0    # "fis":Ljava/io/InputStream;
    .end local p0    # "path":Ljava/nio/file/Path;
    :try_start_15
    throw v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    .line 366
    .restart local v0    # "fis":Ljava/io/InputStream;
    .restart local p0    # "path":Ljava/nio/file/Path;
    :catchall_16
    move-exception v2

    :try_start_17
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception v3

    invoke-static {v1, v3}, Lorg/mozilla/universalchardet/UniversalDetector$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1f
    throw v2
.end method

.method public static detectCharsetFromBOM([B)Ljava/lang/String;
    .registers 2
    .param p0, "buf"    # [B

    .line 235
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/mozilla/universalchardet/UniversalDetector;->detectCharsetFromBOM([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static detectCharsetFromBOM([BI)Ljava/lang/String;
    .registers 8
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .line 239
    array-length v0, p0

    add-int/lit8 v1, p1, 0x3

    if-le v0, v1, :cond_58

    .line 240
    aget-byte v0, p0, p1

    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 241
    .local v0, "b1":I
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/2addr v2, v1

    .line 242
    .local v2, "b2":I
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/2addr v3, v1

    .line 243
    .local v3, "b3":I
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/2addr v4, v1

    .line 245
    .local v4, "b4":I
    const/16 v5, 0xfe

    sparse-switch v0, :sswitch_data_5a

    goto :goto_58

    .line 266
    :sswitch_1f
    if-ne v2, v5, :cond_28

    if-nez v3, :cond_28

    if-nez v4, :cond_28

    .line 267
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32LE:Ljava/lang/String;

    return-object v1

    .line 268
    :cond_28
    if-ne v2, v5, :cond_58

    .line 269
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16LE:Ljava/lang/String;

    return-object v1

    .line 252
    :sswitch_2d
    if-ne v2, v1, :cond_36

    if-nez v3, :cond_36

    if-nez v4, :cond_36

    .line 253
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_X_ISO_10646_UCS_4_3412:Ljava/lang/String;

    return-object v1

    .line 254
    :cond_36
    if-ne v2, v1, :cond_58

    .line 255
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_16BE:Ljava/lang/String;

    return-object v1

    .line 247
    :sswitch_3b
    const/16 v1, 0xbb

    if-ne v2, v1, :cond_58

    const/16 v1, 0xbf

    if-ne v3, v1, :cond_58

    .line 248
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_8:Ljava/lang/String;

    return-object v1

    .line 259
    :sswitch_46
    if-nez v2, :cond_4f

    if-ne v3, v5, :cond_4f

    if-ne v4, v1, :cond_4f

    .line 260
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_UTF_32BE:Ljava/lang/String;

    return-object v1

    .line 261
    :cond_4f
    if-nez v2, :cond_58

    if-ne v3, v1, :cond_58

    if-ne v4, v5, :cond_58

    .line 262
    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_X_ISO_10646_UCS_4_2143:Ljava/lang/String;

    return-object v1

    .line 276
    .end local v0    # "b1":I
    .end local v2    # "b2":I
    .end local v3    # "b3":I
    .end local v4    # "b4":I
    :cond_58
    :goto_58
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_5a
    .sparse-switch
        0x0 -> :sswitch_46
        0xef -> :sswitch_3b
        0xfe -> :sswitch_2d
        0xff -> :sswitch_1f
    .end sparse-switch
.end method


# virtual methods
.method public dataEnd()V
    .registers 6

    .line 282
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->gotData:Z

    if-nez v0, :cond_5

    .line 283
    return-void

    .line 286
    :cond_5
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    .line 288
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    if-eqz v0, :cond_17

    .line 289
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/mozilla/universalchardet/CharsetListener;->report(Ljava/lang/String;)V

    .line 291
    :cond_17
    return-void

    .line 294
    :cond_18
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v0, v1, :cond_54

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "maxProberConfidence":F
    const/4 v1, 0x0

    .line 299
    .local v1, "maxProber":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v3, v3

    if-ge v2, v3, :cond_37

    .line 300
    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v3

    .line 301
    .local v3, "proberConfidence":F
    cmpl-float v4, v3, v0

    if-lez v4, :cond_34

    .line 302
    move v0, v3

    .line 303
    move v1, v2

    .line 299
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 307
    .end local v2    # "i":I
    .end local v3    # "proberConfidence":F
    :cond_37
    const v2, 0x3e4ccccd    # 0.2f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5a

    .line 308
    iget-object v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    .line 309
    iget-object v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    if-eqz v2, :cond_5a

    .line 310
    iget-object v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/mozilla/universalchardet/CharsetListener;->report(Ljava/lang/String;)V

    goto :goto_5a

    .line 313
    .end local v0    # "maxProberConfidence":F
    .end local v1    # "maxProber":I
    :cond_54
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v0, v1, :cond_5b

    :cond_5a
    :goto_5a
    goto :goto_69

    .line 315
    :cond_5b
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v0, v1, :cond_69

    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->onlyPrintableASCII:Z

    if-eqz v0, :cond_69

    .line 316
    sget-object v0, Lorg/mozilla/universalchardet/Constants;->CHARSET_US_ASCCI:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    .line 321
    :cond_69
    :goto_69
    return-void
.end method

.method public getDetectedCharset()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lorg/mozilla/universalchardet/CharsetListener;
    .registers 2

    .line 137
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    return-object v0
.end method

.method public handleData([B)V
    .registers 4
    .param p1, "buf"    # [B

    .line 144
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)V

    .line 145
    return-void
.end method

.method public handleData([BII)V
    .registers 12
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 153
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    if-eqz v0, :cond_5

    .line 154
    return-void

    .line 157
    :cond_5
    const/4 v0, 0x1

    if-lez p3, :cond_a

    .line 158
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->gotData:Z

    .line 161
    :cond_a
    iget-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->start:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 162
    iput-boolean v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->start:Z

    .line 163
    const/4 v1, 0x3

    if-le p3, v1, :cond_1f

    .line 164
    invoke-static {p1, p2}, Lorg/mozilla/universalchardet/UniversalDetector;->detectCharsetFromBOM([BI)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "detectedBOM":Ljava/lang/String;
    if-eqz v1, :cond_1f

    .line 166
    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    .line 167
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    .line 168
    return-void

    .line 173
    .end local v1    # "detectedBOM":Ljava/lang/String;
    :cond_1f
    add-int v1, p2, p3

    .line 174
    .local v1, "maxPos":I
    move v3, p2

    .local v3, "i":I
    :goto_22
    if-ge v3, v1, :cond_b2

    .line 175
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    .line 176
    .local v4, "c":I
    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_70

    const/16 v5, 0xa0

    if-eq v4, v5, :cond_70

    .line 177
    iget-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v6, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-eq v5, v6, :cond_ae

    .line 178
    sget-object v5, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 180
    iget-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-eqz v5, :cond_41

    .line 181
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 184
    :cond_41
    iget-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v5, v5, v2

    if-nez v5, :cond_50

    .line 185
    iget-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-instance v6, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;

    invoke-direct {v6}, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;-><init>()V

    aput-object v6, v5, v2

    .line 187
    :cond_50
    iget-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v5, v5, v0

    if-nez v5, :cond_5f

    .line 188
    iget-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-instance v6, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;

    invoke-direct {v6}, Lorg/mozilla/universalchardet/prober/SBCSGroupProber;-><init>()V

    aput-object v6, v5, v0

    .line 190
    :cond_5f
    iget-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    if-nez v5, :cond_ae

    .line 191
    iget-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-instance v7, Lorg/mozilla/universalchardet/prober/Latin1Prober;

    invoke-direct {v7}, Lorg/mozilla/universalchardet/prober/Latin1Prober;-><init>()V

    aput-object v7, v5, v6

    goto :goto_ae

    .line 195
    :cond_70
    iget-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v6, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    const/16 v7, 0x7e

    if-ne v5, v6, :cond_88

    const/16 v5, 0x1b

    if-eq v4, v5, :cond_84

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_88

    iget-byte v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->lastChar:B

    if-ne v5, v7, :cond_88

    .line 197
    :cond_84
    sget-object v5, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 199
    :cond_88
    iget-object v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v6, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v5, v6, :cond_aa

    iget-boolean v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->onlyPrintableASCII:Z

    if-eqz v5, :cond_aa

    .line 200
    const/16 v5, 0x20

    if-lt v4, v5, :cond_98

    if-le v4, v7, :cond_a7

    :cond_98
    const/16 v5, 0xa

    if-eq v4, v5, :cond_a7

    const/16 v5, 0xd

    if-eq v4, v5, :cond_a7

    const/16 v5, 0x9

    if-ne v4, v5, :cond_a5

    goto :goto_a7

    :cond_a5
    const/4 v5, 0x0

    goto :goto_a8

    :cond_a7
    :goto_a7
    const/4 v5, 0x1

    :goto_a8
    iput-boolean v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->onlyPrintableASCII:Z

    .line 206
    :cond_aa
    aget-byte v5, p1, v3

    iput-byte v5, p0, Lorg/mozilla/universalchardet/UniversalDetector;->lastChar:B

    .line 174
    .end local v4    # "c":I
    :cond_ae
    :goto_ae
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_22

    .line 211
    .end local v3    # "i":I
    :cond_b2
    iget-object v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v3, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v2, v3, :cond_d8

    .line 212
    iget-object v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-nez v2, :cond_c3

    .line 213
    new-instance v2, Lorg/mozilla/universalchardet/prober/EscCharsetProber;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/EscCharsetProber;-><init>()V

    iput-object v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    .line 215
    :cond_c3
    iget-object v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v2, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v2

    .line 216
    .local v2, "st":Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    sget-object v3, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v2, v3, :cond_100

    .line 217
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    .line 218
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    goto :goto_100

    .line 220
    .end local v2    # "st":Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    :cond_d8
    iget-object v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v3, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v2, v3, :cond_100

    .line 221
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_df
    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v3, v3

    if-ge v2, v3, :cond_100

    .line 222
    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v3

    .line 223
    .local v3, "st":Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v3, v4, :cond_fd

    .line 224
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    .line 225
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    .line 226
    return-void

    .line 221
    :cond_fd
    add-int/lit8 v2, v2, 0x1

    goto :goto_df

    .line 232
    .end local v2    # "i":I
    .end local v3    # "st":Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    :cond_100
    :goto_100
    return-void
.end method

.method public isDone()Z
    .registers 2

    .line 121
    iget-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    return v0
.end method

.method public final reset()V
    .registers 3

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->done:Z

    .line 328
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->start:Z

    .line 329
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->detectedCharset:Ljava/lang/String;

    .line 330
    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->gotData:Z

    .line 331
    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->inputState:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    .line 332
    iput-byte v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->lastChar:B

    .line 334
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-eqz v0, :cond_1a

    .line 335
    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->escCharsetProber:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    .line 338
    :cond_1a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v1, v1

    if-ge v0, v1, :cond_30

    .line 339
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2d

    .line 340
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    .line 338
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 343
    .end local v0    # "i":I
    :cond_30
    return-void
.end method

.method public setListener(Lorg/mozilla/universalchardet/CharsetListener;)V
    .registers 2
    .param p1, "listener"    # Lorg/mozilla/universalchardet/CharsetListener;

    .line 133
    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->listener:Lorg/mozilla/universalchardet/CharsetListener;

    .line 134
    return-void
.end method
