.class Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$1;
.super Ljava/lang/Object;
.source "AA_KeyManager.java"

# interfaces
.implements Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraAction(I)Z
    .registers 3
    .param p1, "keycode"    # I

    .line 835
    const/4 v0, 0x0

    return v0
.end method
