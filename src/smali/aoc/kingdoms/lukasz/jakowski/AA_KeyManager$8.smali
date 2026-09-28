.class Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$8;
.super Ljava/lang/Object;
.source "AA_KeyManager.java"

# interfaces
.implements Laoc/kingdoms/lukasz/jakowski/AA_KeyManager$keyExtraAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->updateKeyExtraAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraAction(I)Z
    .registers 3
    .param p1, "keycode"    # I

    .line 892
    invoke-static {p1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapPortPosition;->keyUp(I)Z

    move-result v0

    return v0
.end method
