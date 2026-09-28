.class public Lteam/rainfall/finality/FinalityLogger;
.super Ljava/lang/Object;
.source "FinalityLogger.java"


# static fields
.field public static final BLACK_COLOR:Ljava/lang/String; = "\u001b[30m"

.field public static final GRAY_BACKGROUND:Ljava/lang/String; = "\u001b[100m"

.field public static final RED_BACKGROUND:Ljava/lang/String; = "\u001b[41m"

.field public static final RESET:Ljava/lang/String; = "\u001b[0m"

.field public static final WHITE_BACKGROUND:Ljava/lang/String; = "\u001b[47m"

.field public static final YELLOW_BACKGROUND:Ljava/lang/String; = "\u001b[43m"

.field public static isDebug:Z

.field public static logStream:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lteam/rainfall/finality/FinalityLogger;->logStream:Ljava/io/OutputStreamWriter;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lteam/rainfall/finality/FinalityLogger;->isDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static init()V
    .registers 5

    .line 30
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "./loader.log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_61

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 37
    :goto_10
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "./loader.log"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_6a

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 39
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 40
    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    sput-object v1, Lteam/rainfall/finality/FinalityLogger;->logStream:Ljava/io/OutputStreamWriter;

    .line 42
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 43
    sget-object v1, Ljava/time/format/FormatStyle;->MEDIUM:Ljava/time/format/FormatStyle;

    invoke-static {v1}, Ljava/time/format/DateTimeFormatter;->ofLocalizedDateTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    .line 44
    sget-object v2, Lteam/rainfall/finality/FinalityLogger;->logStream:Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Logger initiated at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 48
    :goto_60
    return-void

    .line 34
    :cond_61
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_67} :catch_68

    goto :goto_10

    .line 45
    :catch_68
    move-exception v0

    goto :goto_60

    .line 38
    :array_6a
    .array-data 1
        -0x11t
        -0x45t
        -0x41t
    .end array-data
.end method

.method public static output(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .registers 1

    return-void
.end method
