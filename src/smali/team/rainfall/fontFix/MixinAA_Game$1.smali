.class public Lteam/rainfall/fontFix/MixinAA_Game$1;
.super Ljava/lang/Object;
.source "MixinAA_Game$1.java"


# annotations
.annotation runtime Lteam/rainfall/finality/luminosity2/annotations/Mixin;
    mixinClass = "aoc.kingdoms.lukasz.jakowski.AA_Game$1"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyDown(I)Z
    .registers 6
    .param p1, "keycode"    # I

    .line 11
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x81

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x82

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 12
    :cond_14
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x1f

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Ctrl+C Pressed"

    if-eqz v0, :cond_28

    .line 13
    invoke-static {v2}, Lteam/rainfall/finality/FinalityLogger;->debug(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lteam/rainfall/fontFix/FontFix;->copy()V

    .line 15
    return v1

    .line 18
    :cond_28
    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x32

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 19
    invoke-static {v2}, Lteam/rainfall/finality/FinalityLogger;->debug(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lteam/rainfall/fontFix/FontFix;->paste()V

    .line 21
    return v1

    .line 25
    :cond_39
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/AA_KeyManager;->keyDown(I)Z

    move-result v0

    return v0
.end method
