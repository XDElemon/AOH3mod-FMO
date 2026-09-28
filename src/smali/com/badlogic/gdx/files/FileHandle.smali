.class public Lcom/badlogic/gdx/files/FileHandle;
.super Ljava/lang/Object;
.source "FileHandle.java"


# instance fields
.field protected file:Ljava/io/File;

.field protected type:Lcom/badlogic/gdx/Files$FileType;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    .line 76
    sget-object v0, Lcom/badlogic/gdx/Files$FileType;->Absolute:Lcom/badlogic/gdx/Files$FileType;

    iput-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    .line 77
    return-void
.end method

.method protected constructor <init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "type"    # Lcom/badlogic/gdx/Files$FileType;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    .line 86
    iput-object p2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    .line 68
    sget-object v0, Lcom/badlogic/gdx/Files$FileType;->Absolute:Lcom/badlogic/gdx/Files$FileType;

    iput-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    .line 69
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/badlogic/gdx/Files$FileType;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    .line 82
    return-void
.end method

.method private static copyDirectory(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 8
    .param p0, "sourceDir"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "destDir"    # Lcom/badlogic/gdx/files/FileHandle;

    .line 724
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->mkdirs()V

    .line 725
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->list()[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 726
    .local v0, "files":[Lcom/badlogic/gdx/files/FileHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "n":I
    :goto_9
    if-ge v1, v2, :cond_25

    .line 727
    aget-object v3, v0, v1

    .line 728
    .local v3, "srcFile":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    .line 729
    .local v4, "destFile":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 730
    invoke-static {v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->copyDirectory(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    goto :goto_22

    .line 732
    :cond_1f
    invoke-static {v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->copyFile(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 726
    .end local v3    # "srcFile":Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "destFile":Lcom/badlogic/gdx/files/FileHandle;
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 734
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_25
    return-void
.end method

.method private static copyFile(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 7
    .param p0, "source"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "dest"    # Lcom/badlogic/gdx/files/FileHandle;

    .line 716
    :try_start_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/files/FileHandle;->write(Ljava/io/InputStream;Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    .line 720
    nop

    .line 721
    return-void

    .line 717
    :catch_a
    move-exception v0

    .line 718
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error copying source file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")\nTo destination: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static deleteDirectory(Ljava/io/File;)Z
    .registers 2
    .param p0, "file"    # Ljava/io/File;

    .line 710
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/files/FileHandle;->emptyDirectory(Ljava/io/File;Z)V

    .line 711
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method private static emptyDirectory(Ljava/io/File;Z)V
    .registers 7
    .param p0, "file"    # Ljava/io/File;
    .param p1, "preserveTree"    # Z

    .line 694
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 695
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 696
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_2f

    .line 697
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "n":I
    :goto_e
    if-ge v1, v2, :cond_2f

    .line 698
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 699
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_2c

    .line 700
    :cond_1e
    if-eqz p1, :cond_27

    .line 701
    aget-object v3, v0, v1

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/badlogic/gdx/files/FileHandle;->emptyDirectory(Ljava/io/File;Z)V

    goto :goto_2c

    .line 703
    :cond_27
    aget-object v3, v0, v1

    invoke-static {v3}, Lcom/badlogic/gdx/files/FileHandle;->deleteDirectory(Ljava/io/File;)Z

    .line 697
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 707
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2f
    return-void
.end method

.method private estimateLength()I
    .registers 3

    .line 239
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->length()J

    move-result-wide v0

    long-to-int v1, v0

    .line 240
    .local v1, "length":I
    if-eqz v1, :cond_9

    move v0, v1

    goto :goto_b

    :cond_9
    const/16 v0, 0x200

    :goto_b
    return v0
.end method

.method public static tempDirectory(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 5
    .param p0, "prefix"    # Ljava/lang/String;

    .line 684
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 685
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 686
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 687
    new-instance v1, Lcom/badlogic/gdx/files/FileHandle;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/io/File;)V

    return-object v1

    .line 686
    :cond_17
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create temp directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "prefix":Ljava/lang/String;
    throw v1

    .line 685
    .restart local p0    # "prefix":Ljava/lang/String;
    :cond_30
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to delete temp file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "prefix":Ljava/lang/String;
    throw v1
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_49} :catch_49

    .line 688
    .end local v0    # "file":Ljava/io/File;
    .restart local p0    # "prefix":Ljava/lang/String;
    :catch_49
    move-exception v0

    .line 689
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Unable to create temp file."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static tempFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 4
    .param p0, "prefix"    # Ljava/lang/String;

    .line 676
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/files/FileHandle;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 677
    :catch_b
    move-exception v0

    .line 678
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Unable to create temp file."

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Lcom/badlogic/gdx/files/FileHandle;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0

    .line 521
    :cond_19
    new-instance v0, Lcom/badlogic/gdx/files/FileHandle;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public copyTo(Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 5
    .param p1, "dest"    # Lcom/badlogic/gdx/files/FileHandle;

    .line 601
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_18

    .line 602
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    .line 603
    :cond_14
    invoke-static {p0, p1}, Lcom/badlogic/gdx/files/FileHandle;->copyFile(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 604
    return-void

    .line 606
    :cond_18
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 607
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_47

    :cond_25
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination exists but is not a directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_3e
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->mkdirs()V

    .line 610
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 612
    :goto_47
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/files/FileHandle;->copyDirectory(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    .line 613
    return-void

    .line 610
    :cond_53
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destination directory cannot be created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete()Z
    .registers 4

    .line 565
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-eq v0, v1, :cond_30

    .line 566
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-eq v0, v1, :cond_15

    .line 567
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 566
    :cond_15
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete an internal file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_30
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete a classpath file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteDirectory()Z
    .registers 4

    .line 573
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-eq v0, v1, :cond_30

    .line 574
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-eq v0, v1, :cond_15

    .line 575
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/files/FileHandle;->deleteDirectory(Ljava/io/File;)Z

    move-result v0

    return v0

    .line 574
    :cond_15
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete an internal file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_30
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete a classpath file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public emptyDirectory()V
    .registers 2

    .line 581
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/files/FileHandle;->emptyDirectory(Z)V

    .line 582
    return-void
.end method

.method public emptyDirectory(Z)V
    .registers 5
    .param p1, "preserveTree"    # Z

    .line 587
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-eq v0, v1, :cond_2f

    .line 588
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-eq v0, v1, :cond_14

    .line 589
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/badlogic/gdx/files/FileHandle;->emptyDirectory(Ljava/io/File;Z)V

    .line 590
    return-void

    .line 588
    :cond_14
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete an internal file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_2f
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete a classpath file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 658
    instance-of v0, p1, Lcom/badlogic/gdx/files/FileHandle;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 659
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/files/FileHandle;

    .line 660
    .local v0, "other":Lcom/badlogic/gdx/files/FileHandle;
    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    iget-object v3, v0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    if-ne v2, v3, :cond_1e

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public exists()Z
    .registers 6

    .line 552
    sget-object v0, Lcom/badlogic/gdx/files/FileHandle$1;->$SwitchMap$com$badlogic$gdx$Files$FileType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/Files$FileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_4e

    .line 559
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0

    .line 554
    :pswitch_17
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    return v1

    .line 557
    :cond_22
    :pswitch_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5c

    const/16 v4, 0x2f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    :goto_4d
    return v1

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_17
        :pswitch_22
    .end packed-switch
.end method

.method public extension()Ljava/lang/String;
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 104
    .local v1, "dotIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_12

    const-string v2, ""

    return-object v2

    .line 105
    :cond_12
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public file()Ljava/io/File;
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->External:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_18

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1}, Lcom/badlogic/gdx/Files;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 133
    :cond_18
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 664
    const/4 v0, 0x1

    .line 665
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v2}, Lcom/badlogic/gdx/Files$FileType;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 666
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x43

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 667
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method

.method public isDirectory()Z
    .registers 3

    .line 514
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    return v0

    .line 515
    :cond_8
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .registers 3

    .line 654
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .registers 4

    .line 637
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-eq v0, v1, :cond_1e

    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1e

    .line 647
    :cond_15
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 638
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    .line 640
    .local v0, "input":Ljava/io/InputStream;
    :try_start_22
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_30
    .catchall {:try_start_22 .. :try_end_26} :catchall_2b

    int-to-long v1, v1

    .line 643
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 640
    return-wide v1

    .line 643
    :catchall_2b
    move-exception v1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 641
    :catch_30
    move-exception v1

    .line 643
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 644
    nop

    .line 645
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public list()[Lcom/badlogic/gdx/files/FileHandle;
    .registers 6

    .line 424
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-eq v0, v1, :cond_27

    .line 425
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "relativePaths":[Ljava/lang/String;
    if-nez v0, :cond_14

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/badlogic/gdx/files/FileHandle;

    return-object v1

    .line 427
    :cond_14
    array-length v1, v0

    new-array v1, v1, [Lcom/badlogic/gdx/files/FileHandle;

    .line 428
    .local v1, "handles":[Lcom/badlogic/gdx/files/FileHandle;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v0

    .local v3, "n":I
    :goto_19
    if-ge v2, v3, :cond_26

    .line 429
    aget-object v4, v0, v2

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    aput-object v4, v1, v2

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 430
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_26
    return-object v1

    .line 424
    .end local v0    # "relativePaths":[Ljava/lang/String;
    .end local v1    # "handles":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_27
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot list a classpath directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_43

    :goto_42
    throw v0

    :goto_43
    goto :goto_42
.end method

.method public list(Ljava/io/FileFilter;)[Lcom/badlogic/gdx/files/FileHandle;
    .registers 12
    .param p1, "filter"    # Ljava/io/FileFilter;

    .line 439
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-eq v0, v1, :cond_3e

    .line 440
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    .line 441
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "relativePaths":[Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_14

    new-array v2, v2, [Lcom/badlogic/gdx/files/FileHandle;

    return-object v2

    .line 443
    :cond_14
    array-length v3, v1

    new-array v3, v3, [Lcom/badlogic/gdx/files/FileHandle;

    .line 444
    .local v3, "handles":[Lcom/badlogic/gdx/files/FileHandle;
    const/4 v4, 0x0

    .line 445
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v1

    .local v6, "n":I
    :goto_1a
    if-ge v5, v6, :cond_34

    .line 446
    aget-object v7, v1, v5

    .line 447
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    .line 448
    .local v8, "child":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v8}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v9

    invoke-interface {p1, v9}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_2d

    goto :goto_31

    .line 449
    :cond_2d
    aput-object v8, v3, v4

    .line 450
    add-int/lit8 v4, v4, 0x1

    .line 445
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "child":Lcom/badlogic/gdx/files/FileHandle;
    :goto_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 452
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_34
    array-length v5, v1

    if-ge v4, v5, :cond_3d

    .line 453
    new-array v5, v4, [Lcom/badlogic/gdx/files/FileHandle;

    .line 454
    .local v5, "newHandles":[Lcom/badlogic/gdx/files/FileHandle;
    invoke-static {v3, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    move-object v3, v5

    .line 457
    .end local v5    # "newHandles":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_3d
    return-object v3

    .line 439
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "relativePaths":[Ljava/lang/String;
    .end local v3    # "handles":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "count":I
    :cond_3e
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot list a classpath directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_5a

    :goto_59
    throw v0

    :goto_5a
    goto :goto_59
.end method

.method public list(Ljava/io/FilenameFilter;)[Lcom/badlogic/gdx/files/FileHandle;
    .registers 11
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .line 466
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-eq v0, v1, :cond_3a

    .line 467
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    .line 468
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "relativePaths":[Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_14

    new-array v2, v2, [Lcom/badlogic/gdx/files/FileHandle;

    return-object v2

    .line 470
    :cond_14
    array-length v3, v1

    new-array v3, v3, [Lcom/badlogic/gdx/files/FileHandle;

    .line 471
    .local v3, "handles":[Lcom/badlogic/gdx/files/FileHandle;
    const/4 v4, 0x0

    .line 472
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v1

    .local v6, "n":I
    :goto_1a
    if-ge v5, v6, :cond_30

    .line 473
    aget-object v7, v1, v5

    .line 474
    .local v7, "path":Ljava/lang/String;
    invoke-interface {p1, v0, v7}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_25

    goto :goto_2d

    .line 475
    :cond_25
    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    aput-object v8, v3, v4

    .line 476
    add-int/lit8 v4, v4, 0x1

    .line 472
    .end local v7    # "path":Ljava/lang/String;
    :goto_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 478
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_30
    array-length v5, v1

    if-ge v4, v5, :cond_39

    .line 479
    new-array v5, v4, [Lcom/badlogic/gdx/files/FileHandle;

    .line 480
    .local v5, "newHandles":[Lcom/badlogic/gdx/files/FileHandle;
    invoke-static {v3, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    move-object v3, v5

    .line 483
    .end local v5    # "newHandles":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_39
    return-object v3

    .line 466
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "relativePaths":[Ljava/lang/String;
    .end local v3    # "handles":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v4    # "count":I
    :cond_3a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot list a classpath directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_56

    :goto_55
    throw v0

    :goto_56
    goto :goto_55
.end method

.method public list(Ljava/lang/String;)[Lcom/badlogic/gdx/files/FileHandle;
    .registers 10
    .param p1, "suffix"    # Ljava/lang/String;

    .line 491
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-eq v0, v1, :cond_3a

    .line 492
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "relativePaths":[Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_14

    new-array v1, v1, [Lcom/badlogic/gdx/files/FileHandle;

    return-object v1

    .line 494
    :cond_14
    array-length v2, v0

    new-array v2, v2, [Lcom/badlogic/gdx/files/FileHandle;

    .line 495
    .local v2, "handles":[Lcom/badlogic/gdx/files/FileHandle;
    const/4 v3, 0x0

    .line 496
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, v0

    .local v5, "n":I
    :goto_1a
    if-ge v4, v5, :cond_30

    .line 497
    aget-object v6, v0, v4

    .line 498
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_25

    goto :goto_2d

    .line 499
    :cond_25
    invoke-virtual {p0, v6}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    aput-object v7, v2, v3

    .line 500
    add-int/lit8 v3, v3, 0x1

    .line 496
    .end local v6    # "path":Ljava/lang/String;
    :goto_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 502
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_30
    array-length v4, v0

    if-ge v3, v4, :cond_39

    .line 503
    new-array v4, v3, [Lcom/badlogic/gdx/files/FileHandle;

    .line 504
    .local v4, "newHandles":[Lcom/badlogic/gdx/files/FileHandle;
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    move-object v2, v4

    .line 507
    .end local v4    # "newHandles":[Lcom/badlogic/gdx/files/FileHandle;
    :cond_39
    return-object v2

    .line 491
    .end local v0    # "relativePaths":[Ljava/lang/String;
    .end local v2    # "handles":[Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "count":I
    :cond_3a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot list a classpath directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_56

    :goto_55
    throw v0

    :goto_56
    goto :goto_55
.end method

.method public map()Ljava/nio/ByteBuffer;
    .registers 2

    .line 268
    sget-object v0, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/files/FileHandle;->map(Ljava/nio/channels/FileChannel$MapMode;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/nio/channels/FileChannel$MapMode;)Ljava/nio/ByteBuffer;
    .registers 9
    .param p1, "mode"    # Ljava/nio/channels/FileChannel$MapMode;

    .line 274
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-eq v0, v1, :cond_67

    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, "raf":Ljava/io/RandomAccessFile;
    :try_start_7
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    if-ne p1, v3, :cond_12

    const-string v3, "r"

    goto :goto_14

    :cond_12
    const-string v3, "rw"

    :goto_14
    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    .line 278
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 279
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    .line 280
    .local v2, "map":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_30} :catch_37
    .catchall {:try_start_7 .. :try_end_30} :catchall_35

    .line 281
    nop

    .line 285
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 281
    return-object v2

    .line 285
    .end local v1    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v2    # "map":Ljava/nio/ByteBuffer;
    :catchall_35
    move-exception v1

    goto :goto_63

    .line 282
    :catch_37
    move-exception v1

    .line 283
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_38
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error memory mapping file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "raf":Ljava/io/RandomAccessFile;
    .end local p1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    throw v2
    :try_end_63
    .catchall {:try_start_38 .. :try_end_63} :catchall_35

    .line 285
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "raf":Ljava/io/RandomAccessFile;
    .restart local p1    # "mode":Ljava/nio/channels/FileChannel$MapMode;
    :goto_63
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 274
    .end local v0    # "raf":Ljava/io/RandomAccessFile;
    :cond_67
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot map a classpath file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mkdirs()V
    .registers 4

    .line 544
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-eq v0, v1, :cond_2f

    .line 545
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-eq v0, v1, :cond_14

    .line 546
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 547
    return-void

    .line 545
    :cond_14
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot mkdirs with an internal file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_2f
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot mkdirs with a classpath file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public moveTo(Lcom/badlogic/gdx/files/FileHandle;)V
    .registers 5
    .param p1, "dest"    # Lcom/badlogic/gdx/files/FileHandle;

    .line 619
    sget-object v0, Lcom/badlogic/gdx/files/FileHandle$1;->$SwitchMap$com$badlogic$gdx$Files$FileType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/Files$FileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6a

    goto :goto_53

    .line 627
    :pswitch_e
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_53

    return-void

    .line 621
    :pswitch_1d
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot move a classpath file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :pswitch_38
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot move an internal file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_53
    :goto_53
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/files/FileHandle;->copyTo(Lcom/badlogic/gdx/files/FileHandle;)V

    .line 630
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z

    .line 631
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->deleteDirectory()Z

    .line 632
    :cond_68
    return-void

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_38
        :pswitch_1d
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method public name()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nameWithoutExtension()Ljava/lang/String;
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 112
    .local v1, "dotIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    return-object v0

    .line 113
    :cond_10
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public parent()Lcom/badlogic/gdx/files/FileHandle;
    .registers 4

    .line 532
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 533
    .local v0, "parent":Ljava/io/File;
    if-nez v0, :cond_1f

    .line 534
    iget-object v1, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v2, Lcom/badlogic/gdx/Files$FileType;->Absolute:Lcom/badlogic/gdx/Files$FileType;

    if-ne v1, v2, :cond_17

    .line 535
    new-instance v1, Ljava/io/File;

    const-string v2, "/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1f

    .line 537
    :cond_17
    new-instance v1, Ljava/io/File;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 539
    :cond_1f
    :goto_1f
    new-instance v1, Lcom/badlogic/gdx/files/FileHandle;

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v1
.end method

.method public path()Ljava/lang/String;
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pathWithoutExtension()Ljava/lang/String;
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "path":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 121
    .local v1, "dotIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    return-object v0

    .line 122
    :cond_18
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public read(I)Ljava/io/BufferedInputStream;
    .registers 4
    .param p1, "bufferSize"    # I

    .line 157
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public read()Ljava/io/InputStream;
    .registers 7

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    const-string v2, ")"

    const-string v3, " ("

    if-eq v0, v1, :cond_92

    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_1a

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_92

    :cond_1a
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Local:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_2b

    .line 140
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_92

    .line 146
    :cond_2b
    :try_start_2b
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_34} :catch_35

    return-object v0

    .line 147
    :catch_35
    move-exception v0

    .line 148
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 149
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot open a stream to a directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 150
    :cond_69
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 141
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_92
    :goto_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x5c

    const/16 v5, 0x2f

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 142
    .local v0, "input":Ljava/io/InputStream;
    if-eqz v0, :cond_bc

    .line 143
    return-object v0

    .line 142
    :cond_bc
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readBytes([BII)I
    .registers 10
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .line 249
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    .line 250
    .local v0, "input":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 253
    .local v1, "position":I
    :goto_5
    add-int v2, p2, v1

    sub-int v3, p3, v1

    :try_start_9
    invoke-virtual {v0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_1a
    .catchall {:try_start_9 .. :try_end_d} :catchall_18

    .line 254
    .local v2, "count":I
    if-gtz v2, :cond_16

    .line 260
    .end local v2    # "count":I
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 261
    nop

    .line 262
    sub-int v2, v1, p2

    return v2

    .line 255
    .restart local v2    # "count":I
    :cond_16
    add-int/2addr v1, v2

    .line 256
    .end local v2    # "count":I
    goto :goto_5

    .line 260
    :catchall_18
    move-exception v2

    goto :goto_34

    .line 257
    :catch_1a
    move-exception v2

    .line 258
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1b
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "input":Ljava/io/InputStream;
    .end local v1    # "position":I
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "size":I
    throw v3
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_18

    .line 260
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v0    # "input":Ljava/io/InputStream;
    .restart local v1    # "position":I
    .restart local p1    # "bytes":[B
    .restart local p2    # "offset":I
    .restart local p3    # "size":I
    :goto_34
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_39

    :goto_38
    throw v2

    :goto_39
    goto :goto_38
.end method

.method public readBytes()[B
    .registers 6

    .line 228
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    .line 230
    .local v0, "input":Ljava/io/InputStream;
    :try_start_4
    invoke-direct {p0}, Lcom/badlogic/gdx/files/FileHandle;->estimateLength()I

    move-result v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToByteArray(Ljava/io/InputStream;I)[B

    move-result-object v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_12
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 234
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 230
    return-object v1

    .line 234
    :catchall_10
    move-exception v1

    goto :goto_2c

    .line 231
    :catch_12
    move-exception v1

    .line 232
    .local v1, "ex":Ljava/io/IOException;
    :try_start_13
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "input":Ljava/io/InputStream;
    throw v2
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_10

    .line 234
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "input":Ljava/io/InputStream;
    :goto_2c
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public readString()Ljava/lang/String;
    .registers 5

    .line 13
    const/4 v0, 0x0

    .line 14
    .local v0, "charset":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v1

    const-string v2, "game/rulersRandom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v1

    const-string v2, "game/randomNames"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v1

    const-string v2, "game/rulers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v1

    const-string v2, "game/advisors"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v1

    const-string v2, "game/characters"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v1

    const-string v2, "map/.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audio/music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 17
    :cond_55
    :try_start_55
    sget-object v1, Lteam/rainfall/fontFix/EncodingDetector;->INSTANCE:Lteam/rainfall/fontFix/EncodingDetector;

    move-object v2, p0

    check-cast v2, Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v1, v2}, Lteam/rainfall/fontFix/EncodingDetector;->detectStringCharset(Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1
    :try_end_63
    .catch Ljava/lang/NullPointerException; {:try_start_55 .. :try_end_63} :catch_9d
    .catchall {:try_start_55 .. :try_end_63} :catchall_96

    const-string v2, "GB18030"

    const-string v3, "Shift_JIS"

    sparse-switch v1, :sswitch_data_a4

    :cond_6a
    goto :goto_85

    :sswitch_6b
    :try_start_6b
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    const/4 v1, 0x0

    goto :goto_86

    :sswitch_73
    const-string v1, "BIG5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    const/4 v1, 0x1

    goto :goto_86

    :sswitch_7d
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    const/4 v1, 0x2

    goto :goto_86

    :goto_85
    const/4 v1, -0x1

    :goto_86
    packed-switch v1, :pswitch_data_b2

    .line 29
    const-string v1, "UTF-8"

    goto :goto_94

    .line 26
    :pswitch_8c
    move-object v0, v3

    .line 27
    goto :goto_9e

    .line 23
    :pswitch_8e
    const-string v1, "Big5"
    :try_end_90
    .catch Ljava/lang/NullPointerException; {:try_start_6b .. :try_end_90} :catch_9d
    .catchall {:try_start_6b .. :try_end_90} :catchall_96

    move-object v0, v1

    .line 24
    goto :goto_9e

    .line 20
    :pswitch_92
    move-object v0, v2

    .line 21
    goto :goto_9e

    .line 29
    :goto_94
    move-object v0, v1

    goto :goto_9e

    .line 34
    :catchall_96
    move-exception v1

    .line 35
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "Error while detecting charset"

    invoke-static {v2, v1}, Lteam/rainfall/finality/FinalityLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9f

    .line 32
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :catch_9d
    move-exception v1

    .line 36
    :goto_9e
    nop

    .line 38
    :cond_9f
    :goto_9f
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/files/FileHandle;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_a4
    .sparse-switch
        -0x534a3669 -> :sswitch_7d
        0x1f1b55 -> :sswitch_73
        0x1f46f70b -> :sswitch_6b
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_92
        :pswitch_8e
        :pswitch_8c
    .end packed-switch
.end method

.method public readString(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "charset"    # Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/badlogic/gdx/files/FileHandle;->estimateLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 205
    .local v0, "output":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 207
    .local v1, "reader":Ljava/io/InputStreamReader;
    if-nez p1, :cond_17

    .line 208
    :try_start_c
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    goto :goto_21

    .line 210
    :cond_17
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v1, v2

    .line 211
    :goto_21
    const/16 v2, 0x100

    new-array v2, v2, [C

    .line 213
    .local v2, "buffer":[C
    :goto_25
    invoke-virtual {v1, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_29} :catch_3d
    .catchall {:try_start_c .. :try_end_29} :catchall_3b

    .line 214
    .local v3, "length":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_35

    .line 220
    .end local v2    # "buffer":[C
    .end local v3    # "length":I
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 221
    nop

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 215
    .restart local v2    # "buffer":[C
    .restart local v3    # "length":I
    :cond_35
    const/4 v4, 0x0

    :try_start_36
    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3d
    .catchall {:try_start_36 .. :try_end_39} :catchall_3b

    .line 216
    nop

    .end local v3    # "length":I
    goto :goto_25

    .line 220
    .end local v2    # "buffer":[C
    :catchall_3b
    move-exception v2

    goto :goto_57

    .line 217
    :catch_3d
    move-exception v2

    .line 218
    .local v2, "ex":Ljava/io/IOException;
    :try_start_3e
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading layout file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "output":Ljava/lang/StringBuilder;
    .end local v1    # "reader":Ljava/io/InputStreamReader;
    .end local p1    # "charset":Ljava/lang/String;
    throw v3
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_3b

    .line 220
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v0    # "output":Ljava/lang/StringBuilder;
    .restart local v1    # "reader":Ljava/io/InputStreamReader;
    .restart local p1    # "charset":Ljava/lang/String;
    :goto_57
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_5c

    :goto_5b
    throw v2

    :goto_5c
    goto :goto_5b
.end method

.method public reader(I)Ljava/io/BufferedReader;
    .registers 5
    .param p1, "bufferSize"    # I

    .line 181
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-object v0
.end method

.method public reader(ILjava/lang/String;)Ljava/io/BufferedReader;
    .registers 7
    .param p1, "bufferSize"    # I
    .param p2, "charset"    # Ljava/lang/String;

    .line 188
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    .line 189
    :catch_f
    move-exception v0

    .line 190
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public reader()Ljava/io/Reader;
    .registers 3

    .line 163
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public reader(Ljava/lang/String;)Ljava/io/Reader;
    .registers 7
    .param p1, "charset"    # Ljava/lang/String;

    .line 169
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    .line 171
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_4
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_9} :catch_a

    return-object v1

    .line 172
    :catch_a
    move-exception v1

    .line 173
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 174
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 527
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1f

    .line 528
    new-instance v0, Lcom/badlogic/gdx/files/FileHandle;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0

    .line 527
    :cond_1f
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot get the sibling of the root."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 671
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lcom/badlogic/gdx/Files$FileType;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    return-object v0
.end method

.method public write(Z)Ljava/io/OutputStream;
    .registers 8
    .param p1, "append"    # Z

    .line 294
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-eq v0, v1, :cond_99

    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-eq v0, v1, :cond_7e

    .line 296
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->mkdirs()V

    .line 298
    :try_start_13
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_1d

    return-object v0

    .line 299
    :catch_1d
    move-exception v0

    .line 300
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-string v2, ")"

    const-string v3, " ("

    if-eqz v1, :cond_55

    .line 301
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot open a stream to a directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 302
    :cond_55
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 295
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_7e
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot write to an internal file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_99
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot write to a classpath file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(ZI)Ljava/io/OutputStream;
    .registers 5
    .param p1, "append"    # Z
    .param p2, "bufferSize"    # I

    .line 312
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-object v0
.end method

.method public write(Ljava/io/InputStream;Z)V
    .registers 8
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "append"    # Z

    .line 321
    const/4 v0, 0x0

    .line 323
    .local v0, "output":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v1

    move-object v0, v1

    .line 324
    invoke-static {p1, v0}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_13
    .catchall {:try_start_1 .. :try_end_9} :catchall_11

    .line 328
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 329
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 330
    nop

    .line 332
    return-void

    .line 328
    :catchall_11
    move-exception v1

    goto :goto_41

    .line 325
    :catch_13
    move-exception v1

    .line 326
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_14
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error stream writing to file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "output":Ljava/io/OutputStream;
    .end local p1    # "input":Ljava/io/InputStream;
    .end local p2    # "append":Z
    throw v2
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_11

    .line 328
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "output":Ljava/io/OutputStream;
    .restart local p1    # "input":Ljava/io/InputStream;
    .restart local p2    # "append":Z
    :goto_41
    invoke-static {p1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 329
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public writeBytes([BIIZ)V
    .registers 10
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "append"    # Z

    .line 409
    invoke-virtual {p0, p4}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v0

    .line 411
    .local v0, "output":Ljava/io/OutputStream;
    :try_start_4
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_e
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 415
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 416
    nop

    .line 417
    return-void

    .line 415
    :catchall_c
    move-exception v1

    goto :goto_3c

    .line 412
    :catch_e
    move-exception v1

    .line 413
    .local v1, "ex":Ljava/io/IOException;
    :try_start_f
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "output":Ljava/io/OutputStream;
    .end local p1    # "bytes":[B
    .end local p2    # "offset":I
    .end local p3    # "length":I
    .end local p4    # "append":Z
    throw v2
    :try_end_3c
    .catchall {:try_start_f .. :try_end_3c} :catchall_c

    .line 415
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "output":Ljava/io/OutputStream;
    .restart local p1    # "bytes":[B
    .restart local p2    # "offset":I
    .restart local p3    # "length":I
    .restart local p4    # "append":Z
    :goto_3c
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public writeBytes([BZ)V
    .registers 8
    .param p1, "bytes"    # [B
    .param p2, "append"    # Z

    .line 394
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/files/FileHandle;->write(Z)Ljava/io/OutputStream;

    move-result-object v0

    .line 396
    .local v0, "output":Ljava/io/OutputStream;
    :try_start_4
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_e
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 400
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 401
    nop

    .line 402
    return-void

    .line 400
    :catchall_c
    move-exception v1

    goto :goto_3c

    .line 397
    :catch_e
    move-exception v1

    .line 398
    .local v1, "ex":Ljava/io/IOException;
    :try_start_f
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "output":Ljava/io/OutputStream;
    .end local p1    # "bytes":[B
    .end local p2    # "append":Z
    throw v2
    :try_end_3c
    .catchall {:try_start_f .. :try_end_3c} :catchall_c

    .line 400
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "output":Ljava/io/OutputStream;
    .restart local p1    # "bytes":[B
    .restart local p2    # "append":Z
    :goto_3c
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public writeString(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;ZLjava/lang/String;)V

    .line 370
    return-void
.end method

.method public writeString(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 9
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .param p3, "charset"    # Ljava/lang/String;

    .line 378
    const/4 v0, 0x0

    .line 380
    .local v0, "writer":Ljava/io/Writer;
    :try_start_1
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/files/FileHandle;->writer(ZLjava/lang/String;)Ljava/io/Writer;

    move-result-object v1

    move-object v0, v1

    .line 381
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_10
    .catchall {:try_start_1 .. :try_end_9} :catchall_e

    .line 385
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 386
    nop

    .line 387
    return-void

    .line 385
    :catchall_e
    move-exception v1

    goto :goto_3e

    .line 382
    :catch_10
    move-exception v1

    .line 383
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_11
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "writer":Ljava/io/Writer;
    .end local p1    # "string":Ljava/lang/String;
    .end local p2    # "append":Z
    .end local p3    # "charset":Ljava/lang/String;
    throw v2
    :try_end_3e
    .catchall {:try_start_11 .. :try_end_3e} :catchall_e

    .line 385
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "writer":Ljava/io/Writer;
    .restart local p1    # "string":Ljava/lang/String;
    .restart local p2    # "append":Z
    .restart local p3    # "charset":Ljava/lang/String;
    :goto_3e
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public writer(Z)Ljava/io/Writer;
    .registers 3
    .param p1, "append"    # Z

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/files/FileHandle;->writer(ZLjava/lang/String;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public writer(ZLjava/lang/String;)Ljava/io/Writer;
    .registers 9
    .param p1, "append"    # Z
    .param p2, "charset"    # Ljava/lang/String;

    .line 348
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Classpath:Lcom/badlogic/gdx/Files$FileType;

    if-eq v0, v1, :cond_a6

    .line 349
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    if-eq v0, v1, :cond_8b

    .line 350
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->mkdirs()V

    .line 352
    :try_start_13
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 353
    .local v0, "output":Ljava/io/FileOutputStream;
    if-nez p2, :cond_24

    .line 354
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    return-object v1

    .line 356
    :cond_24
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_29} :catch_2a

    return-object v1

    .line 357
    .end local v0    # "output":Ljava/io/FileOutputStream;
    :catch_2a
    move-exception v0

    .line 358
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-string v2, ")"

    const-string v3, " ("

    if-eqz v1, :cond_62

    .line 359
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot open a stream to a directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 360
    :cond_62
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/files/FileHandle;->type:Lcom/badlogic/gdx/Files$FileType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 349
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_8b
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot write to an internal file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_a6
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot write to a classpath file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
