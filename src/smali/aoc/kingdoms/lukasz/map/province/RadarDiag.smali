.class public final Laoc/kingdoms/lukasz/map/province/RadarDiag;
.super Ljava/lang/Object;
.source "RadarDiag.java"


# static fields
.field private static final MAX_LINES:I = 0x190

.field private static final PATH:Ljava/lang/String; = "/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/aircfg_diag.txt"

.field private static n:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/province/RadarDiag;->n:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static f(F)Ljava/lang/String;
    .registers 3

    .line 41
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p0, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 p0, p0, 0x64

    const/16 v1, 0xa

    if-ge p0, v1, :cond_1e

    const-string v1, "0"

    goto :goto_20

    :cond_1e
    const-string v1, ""

    :goto_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(I)Ljava/lang/String;
    .registers 1

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static log(Ljava/lang/String;)V
    .registers 4

    .line 22
    sget v0, Laoc/kingdoms/lukasz/map/province/RadarDiag;->n:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_7

    .line 23
    return-void

    .line 25
    :cond_7
    sget v0, Laoc/kingdoms/lukasz/map/province/RadarDiag;->n:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/province/RadarDiag;->n:I

    .line 27
    :try_start_d
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v2, "/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/aircfg_diag.txt"

    invoke-direct {v0, v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RDT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 29
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 30
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_3d

    .line 33
    goto :goto_3e

    .line 31
    :catchall_3d
    move-exception p0

    .line 34
    :goto_3e
    return-void
.end method
