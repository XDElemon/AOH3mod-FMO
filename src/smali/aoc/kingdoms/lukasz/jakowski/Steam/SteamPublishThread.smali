.class public Laoc/kingdoms/lukasz/jakowski/Steam/SteamPublishThread;
.super Ljava/lang/Thread;
.source "SteamPublishThread.java"


# static fields
.field public static key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 10
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamPublishThread;->key:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->createItem(Ljava/lang/String;)V

    .line 11
    return-void
.end method
