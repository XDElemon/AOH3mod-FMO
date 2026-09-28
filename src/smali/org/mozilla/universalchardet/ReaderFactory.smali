.class public final Lorg/mozilla/universalchardet/ReaderFactory;
.super Ljava/lang/Object;
.source "ReaderFactory.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances allowed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static createBufferedReader(Ljava/io/File;)Ljava/io/BufferedReader;
    .registers 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mozilla/universalchardet/ReaderFactory;->createBufferedReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public static createBufferedReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;
    .registers 10
    .param p0, "file"    # Ljava/io/File;
    .param p1, "defaultCharset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    const-string v0, "defaultCharset must be not null"

    invoke-static {p1, v0}, Lorg/mozilla/universalchardet/ReaderFactory$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    .line 60
    .local v0, "cs":Ljava/nio/charset/Charset;
    invoke-static {p0}, Lorg/mozilla/universalchardet/UniversalDetector;->detectCharset(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "detectedEncoding":Ljava/lang/String;
    if-eqz v1, :cond_12

    .line 62
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 64
    :cond_12
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 65
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2, v0}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v2

    return-object v2

    .line 67
    :cond_27
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    .line 68
    .local v2, "path":Ljava/nio/file/Path;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v7}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Lorg/mozilla/universalchardet/UnicodeBOMInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v3
.end method

.method public static createReaderFromFile(Ljava/io/File;)Ljava/io/Reader;
    .registers 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mozilla/universalchardet/ReaderFactory;->createReaderFromFile(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public static createReaderFromFile(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/Reader;
    .registers 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "defaultCharset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    invoke-static {p0, p1}, Lorg/mozilla/universalchardet/ReaderFactory;->createBufferedReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method
