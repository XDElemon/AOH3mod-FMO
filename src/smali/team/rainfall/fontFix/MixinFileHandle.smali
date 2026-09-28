.class public abstract Lteam/rainfall/fontFix/MixinFileHandle;
.super Ljava/lang/Object;
.source "MixinFileHandle.java"


# annotations
.annotation runtime Lteam/rainfall/finality/luminosity2/annotations/Mixin;
    mixinClass = "com.badlogic.gdx.files.FileHandle"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract path()Ljava/lang/String;
    .annotation runtime Lteam/rainfall/finality/luminosity2/annotations/Shadow;
    .end annotation
.end method

.method public readString()Ljava/lang/String;
    .registers 5

    .line 13
    const/4 v0, 0x0

    .line 14
    .local v0, "charset":Ljava/lang/String;
    invoke-virtual {p0}, Lteam/rainfall/fontFix/MixinFileHandle;->path()Ljava/lang/String;

    move-result-object v1

    const-string v2, "game/rulersRandom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p0}, Lteam/rainfall/fontFix/MixinFileHandle;->path()Ljava/lang/String;

    move-result-object v1

    const-string v2, "game/randomNames"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p0}, Lteam/rainfall/fontFix/MixinFileHandle;->path()Ljava/lang/String;

    move-result-object v1

    const-string v2, "game/rulers"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p0}, Lteam/rainfall/fontFix/MixinFileHandle;->path()Ljava/lang/String;

    move-result-object v1

    const-string v2, "game/advisors"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p0}, Lteam/rainfall/fontFix/MixinFileHandle;->path()Ljava/lang/String;

    move-result-object v1

    const-string v2, "game/characters"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p0}, Lteam/rainfall/fontFix/MixinFileHandle;->path()Ljava/lang/String;

    move-result-object v1

    const-string v2, "map/.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    invoke-virtual {p0}, Lteam/rainfall/fontFix/MixinFileHandle;->path()Ljava/lang/String;

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
    invoke-virtual {p0, v0}, Lteam/rainfall/fontFix/MixinFileHandle;->readString(Ljava/lang/String;)Ljava/lang/String;

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

.method public abstract readString(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Lteam/rainfall/finality/luminosity2/annotations/Shadow;
    .end annotation
.end method
