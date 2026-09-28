.class public Laoc/kingdoms/lukasz/jakowski/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/FileManager$LoadInterface;
    }
.end annotation


# static fields
.field public static IS_MAC:Z

.field public static loadInterface:Laoc/kingdoms/lukasz/jakowski/FileManager$LoadInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 2
    .param p0, "sFile"    # Ljava/lang/String;

    .line 22
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadInterface:Laoc/kingdoms/lukasz/jakowski/FileManager$LoadInterface;

    invoke-interface {v0, p0}, Laoc/kingdoms/lukasz/jakowski/FileManager$LoadInterface;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    return-object v0
.end method

.method public static initLoadInterface()V
    .registers 1

    .line 28
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 29
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    if-eqz v0, :cond_12

    .line 31
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/FileManager$1;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager$1;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadInterface:Laoc/kingdoms/lukasz/jakowski/FileManager$LoadInterface;

    goto :goto_21

    .line 64
    :cond_12
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/FileManager$2;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager$2;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadInterface:Laoc/kingdoms/lukasz/jakowski/FileManager$LoadInterface;

    goto :goto_21

    .line 90
    :cond_1a
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/FileManager$3;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager$3;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadInterface:Laoc/kingdoms/lukasz/jakowski/FileManager$LoadInterface;

    .line 107
    :goto_21
    return-void
.end method

.method public static loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 2
    .param p0, "sFile"    # Ljava/lang/String;

    .line 112
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadInterface:Laoc/kingdoms/lukasz/jakowski/FileManager$LoadInterface;

    invoke-interface {v0, p0}, Laoc/kingdoms/lukasz/jakowski/FileManager$LoadInterface;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    return-object v0
.end method
