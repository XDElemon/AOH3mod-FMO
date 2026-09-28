.class public Lteam/rainfall/fontFix/MixinSoundsManager;
.super Ljava/lang/Object;
.source "MixinSoundsManager.java"


# annotations
.annotation runtime Lteam/rainfall/finality/luminosity2/annotations/Mixin;
    mixinClass = "aoc.kingdoms.lukasz.jakowski.SoundsManager"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final playStartMusic()V
    .registers 1

    .line 20
    invoke-static {}, Lteam/rainfall/fontFix/FontFix;->playStartMusic()V

    .line 21
    return-void
.end method
