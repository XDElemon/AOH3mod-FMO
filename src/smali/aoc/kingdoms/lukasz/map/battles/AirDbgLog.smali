.class public final Laoc/kingdoms/lukasz/map/battles/AirDbgLog;
.super Ljava/lang/Object;
.source "AirDbgLog.java"


# static fields
.field private static lastFlushMs:J
.field public static dbgOn:Z

.field private static sb:Ljava/lang/StringBuilder;

.field private static tickMs:J


# direct methods
.method public static airArmyKey(Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_22

    const-string v0, "airhq_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AF_army="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    return-void
.end method

.method public static airArmyKeyC(Ljava/lang/String;)V
    .registers 3

    const-string v0, "C"

    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->airArmyKeyTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static airArmyKeyL(Ljava/lang/String;)V
    .registers 3

    const-string v0, "L"

    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->airArmyKeyTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static airArmyKeyS(Ljava/lang/String;)V
    .registers 3

    const-string v0, "S"

    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->airArmyKeyTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static airArmyKeyTag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_2c

    const-string v0, "airhq_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AF_army="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    # r6d020 旁路入口同样过 dbgOn 总闸（默认关 ⇒ 静默）
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dbgOn:Z

    if-eqz v0, :r6d020_off0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :r6d020_off0
    const/4 v0, 0x0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static dKey(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    # r6d019 对外干净版：恢复 dbgOn 总闸（默认 false ⇒ 全部探针静默）
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dbgOn:Z

    if-eqz v0, :cond_63

    if-eqz p0, :cond_63

    if-eqz p1, :cond_63

    :try_start_4
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->sb:Ljava/lang/StringBuilder;

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->sb:Ljava/lang/StringBuilder;

    :cond_12
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->lastFlushMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v6, 0x1f4

    cmp-long v2, v2, v6

    if-ltz v2, :cond_63

    sput-wide v4, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->lastFlushMs:J

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/airdbg_key.txt"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_4e

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4e

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_4e
    new-instance v3, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v3, v2, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->sb:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_63} :catch_65

    :cond_63
    const/4 v0, 0x0

    return v0

    :catch_65
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method public static dbgCaller(Ljava/lang/String;)V
    .registers 7

    if-eqz p0, :cond_69

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " <- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " <="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "AIRDBG"

    invoke-static {v5, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "AIRDBG"

    invoke-static {v5, p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    return-void
.end method

.method public static e5i(Ljava/lang/String;I)V
    .registers 8

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nE5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e5ii(Ljava/lang/String;II)V
    .registers 10

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nE5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e5s(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "AIRDBG"

    const-string v4, "-"

    if-nez p1, :cond_7

    move-object v4, p1

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nE5 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static lArmyDump(I)V
    .registers 8

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lt p0, v2, :cond_57

    const-string v4, "?"

    const/4 v2, -0x1

    if-ge p0, v1, :cond_29

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_29

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    if-eqz v5, :cond_29

    iget-object v4, v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->Name:Ljava/lang/String;

    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " lsz="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isz="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " name="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v0, "um:larmy"

    invoke-static {v0, v6}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    return-void
.end method

.method public static laOK(II)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "la:ok"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static ldArmyCount(Ljava/lang/String;)V
    .registers 7
    .param p0, "tag"    # Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    :goto_6
    if-ge v1, v2, :cond_16

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v4

    add-int/2addr v0, v4

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logOnce(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    # r6d020 旁路入口同样过 dbgOn 总闸（默认关 ⇒ 静默）
    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dbgOn:Z

    if-eqz v0, :r6d020_off1

    if-eqz p0, :cond_55

    if-eqz p1, :cond_55

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->tickMs:J

    sub-long v4, v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v4, v2

    if-ltz v4, :cond_55

    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->tickMs:J

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/storage/emulated/0/Android/data/age.of.history3.qiamxi.zhiri/files/airdbg_tick.txt"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_2d
    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_55} :catch_57

    :cond_55
    const/4 v0, 0x0

    return v0

    :catch_57
    move-exception v0

    const/4 v0, 0x0

    return v0

    :r6d020_off1
    const/4 v0, 0x0

    return v0
.end method

.method public static p0Air(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)V
    .registers 10

    const-string v1, " civ="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v1, " ap="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->provinceID:I

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v1, " mode="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->ordinal()I

    move-result v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v1, " q="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v1, " tot="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v1, " rem="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->buildTurnsRemaining:I

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    const-string v1, " it="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v1, " ft="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v1, " bm="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v1, " at="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v1, " strike="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->autoStrikeOff:Z

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    return-void
.end method

.method public static p0Civ(ILjava/lang/String;)V
    .registers 10

    const-string v1, " civ="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v1, " apts="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getAirportsForCiv(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v1, " ms="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v1, " diff="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->difficultyID:I

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v1, " pl="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v2, :cond_4b

    iget v3, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    :cond_4b
    return-void
.end method

.method public static p0Empty(I)V
    .registers 3

    const-string v0, "nA4f empty="

    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    return-void
.end method

.method public static p0Exc(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "AIRDBG"

    invoke-static {p0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static p0Gold(ILjava/lang/String;)V
    .registers 4

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    if-eqz v0, :cond_c

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    float-to-int v0, v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    :cond_c
    return-void
.end method

.method public static p0K(I)V
    .registers 3

    const-string v0, "nA4e k="

    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    return-void
.end method

.method public static p0Mis(Laoc/kingdoms/lukasz/map/battles/AirMission;Ljava/lang/String;)V
    .registers 6

    const-string v1, " civ="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->civID:I

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v1, " tgt="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->targetProvinceID:I

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v1, " type="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/AirMission;->type:Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/AirMission$MissionType;->ordinal()I

    move-result v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v1, " ms="

    invoke-static {p1, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    return-void
.end method

.method public static p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p0V(II)V
    .registers 4

    const-string v0, "nA4v cand="

    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v0, "nA4v vis="

    invoke-static {v0, p1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    return-void
.end method

.method public static p0War(Laoc/kingdoms/lukasz/map/battles/Airport;ILjava/lang/String;)V
    .registers 8

    const-string v1, " civ="

    invoke-static {p2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v1, " war="

    invoke-static {p2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    const-string v1, " ms="

    invoke-static {p2, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Tag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    return-void
.end method

.method public static paArmImg(II)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "pa:aimg"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->logOnce(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static paUID(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "pa:uid"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->logOnce(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static provArmySz(Ljava/lang/String;II)V
    .registers 7

    if-ltz p2, :cond_2e

    const-string v0, "AIRDBG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AF_SZ:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":prov="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":n="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return-void
.end method

.method public static rgDump(Ljava/lang/Object;I)V
    .registers 9

    if-eqz p0, :cond_65

    check-cast p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v1, v2, :cond_4a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    if-eqz v3, :cond_4a

    iget v4, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    iget v5, v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prov="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " rsz="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " uid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " num="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v0, "um_rg"

    invoke-static {v0, v6}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prov="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " rsz=0"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v0, "um_rg"

    invoke-static {v0, v6}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    return-void
.end method

.method public static sbCapDeny(II)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "sb:capdeny"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sbOK(II)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "sb:ok"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sbQDeny(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "sb:qdeny"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sdCnt(II)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prov="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "sd:cnt"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sdCreate(Ljava/lang/String;I)V
    .registers 5

    if-eqz p0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "sd:create"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method public static sdEnter(III)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "civ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " prov="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "sd:enter"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static ubDone(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "ub:done"

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dKey(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
