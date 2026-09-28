.class public Lteam/rainfall/fontFix/EncodingDetector;
.super Ljava/lang/Object;
.source "EncodingDetector.java"


# static fields
.field public static final INSTANCE:Lteam/rainfall/fontFix/EncodingDetector;


# instance fields
.field detector:Lorg/mozilla/universalchardet/UniversalDetector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lteam/rainfall/fontFix/EncodingDetector;

    invoke-direct {v0}, Lteam/rainfall/fontFix/EncodingDetector;-><init>()V

    sput-object v0, Lteam/rainfall/fontFix/EncodingDetector;->INSTANCE:Lteam/rainfall/fontFix/EncodingDetector;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lorg/mozilla/universalchardet/UniversalDetector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Lorg/mozilla/universalchardet/CharsetListener;)V

    iput-object v0, p0, Lteam/rainfall/fontFix/EncodingDetector;->detector:Lorg/mozilla/universalchardet/UniversalDetector;

    return-void
.end method


# virtual methods
.method public detectInputStreamCharset(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 38
    const-string v0, "NONE"

    :try_start_2
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 39
    .local v1, "reader":Ljava/io/BufferedInputStream;
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 40
    .local v2, "buff":[B
    const/4 v3, 0x0

    .line 41
    .local v3, "len":I
    :goto_c
    invoke-virtual {v1, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    move v3, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_23

    iget-object v4, p0, Lteam/rainfall/fontFix/EncodingDetector;->detector:Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-virtual {v4}, Lorg/mozilla/universalchardet/UniversalDetector;->isDone()Z

    move-result v4

    if-nez v4, :cond_23

    .line 42
    iget-object v4, p0, Lteam/rainfall/fontFix/EncodingDetector;->detector:Lorg/mozilla/universalchardet/UniversalDetector;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5, v3}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)V

    goto :goto_c

    .line 44
    :cond_23
    iget-object v4, p0, Lteam/rainfall/fontFix/EncodingDetector;->detector:Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-virtual {v4}, Lorg/mozilla/universalchardet/UniversalDetector;->dataEnd()V

    .line 45
    iget-object v4, p0, Lteam/rainfall/fontFix/EncodingDetector;->detector:Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-virtual {v4}, Lorg/mozilla/universalchardet/UniversalDetector;->getDetectedCharset()Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "encoding":Ljava/lang/String;
    iget-object v5, p0, Lteam/rainfall/fontFix/EncodingDetector;->detector:Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-virtual {v5}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()V

    .line 47
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_3b

    .line 48
    if-nez v4, :cond_39

    goto :goto_3a

    :cond_39
    move-object v0, v4

    :goto_3a
    return-object v0

    .line 49
    .end local v1    # "reader":Ljava/io/BufferedInputStream;
    .end local v2    # "buff":[B
    .end local v3    # "len":I
    .end local v4    # "encoding":Ljava/lang/String;
    :catch_3b
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while detecting charset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lteam/rainfall/finality/FinalityLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public detectStringCharset(Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/String;
    .registers 10
    .param p1, "fileHandle"    # Lcom/badlogic/gdx/files/FileHandle;

    .line 14
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    const-string v1, "NONE"

    if-nez v0, :cond_9

    .line 15
    return-object v1

    .line 18
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    .line 19
    .local v0, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 20
    .local v2, "fileInputStream":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 21
    .local v3, "reader":Ljava/io/BufferedInputStream;
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 22
    .local v4, "buff":[B
    const/4 v5, 0x0

    .line 23
    .local v5, "len":I
    :goto_1c
    invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    move v5, v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_33

    iget-object v6, p0, Lteam/rainfall/fontFix/EncodingDetector;->detector:Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-virtual {v6}, Lorg/mozilla/universalchardet/UniversalDetector;->isDone()Z

    move-result v6

    if-nez v6, :cond_33

    .line 24
    iget-object v6, p0, Lteam/rainfall/fontFix/EncodingDetector;->detector:Lorg/mozilla/universalchardet/UniversalDetector;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7, v5}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)V

    goto :goto_1c

    .line 26
    :cond_33
    iget-object v6, p0, Lteam/rainfall/fontFix/EncodingDetector;->detector:Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-virtual {v6}, Lorg/mozilla/universalchardet/UniversalDetector;->dataEnd()V

    .line 27
    iget-object v6, p0, Lteam/rainfall/fontFix/EncodingDetector;->detector:Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-virtual {v6}, Lorg/mozilla/universalchardet/UniversalDetector;->getDetectedCharset()Ljava/lang/String;

    move-result-object v6

    .line 28
    .local v6, "encoding":Ljava/lang/String;
    iget-object v7, p0, Lteam/rainfall/fontFix/EncodingDetector;->detector:Lorg/mozilla/universalchardet/UniversalDetector;

    invoke-virtual {v7}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()V

    .line 29
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_46} :catch_4b

    .line 30
    if-nez v6, :cond_49

    goto :goto_4a

    :cond_49
    move-object v1, v6

    :goto_4a
    return-object v1

    .line 31
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v3    # "reader":Ljava/io/BufferedInputStream;
    .end local v4    # "buff":[B
    .end local v5    # "len":I
    .end local v6    # "encoding":Ljava/lang/String;
    :catch_4b
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while detecting charset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lteam/rainfall/finality/FinalityLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method
