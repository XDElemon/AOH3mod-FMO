.class public final Laoc/kingdoms/lukasz/map/province/AirProjTex;
.super Ljava/lang/Object;
.source "AirProjTex.smali"

# M3a（v120）：弹体贴图的**独立加载器**
#
# 为什么不用 ImageManager：
#   真机日志证明 `addImage` 返回的 id（341）在运行时 `ImageManager.images` 里取不到对象
#   （nFX noimg 每帧 4784 次、连回退的识别圈 id 也取不到），而旧导弹一直可见，是因为它直接用
#   `Images.pix` 这个 **Image 对象**、从不走 `getImage(id)`。
#   所以这里自己 loadTexture + new Image，结果缓存到静态字段，完全不依赖 ImageManager 的表。

.field private static img:Laoc/kingdoms/lukasz/textures/Image;

.field private static tried:Z

.method public static get()Laoc/kingdoms/lukasz/textures/Image;
    .registers 4

    sget-object v0, Laoc/kingdoms/lukasz/map/province/AirProjTex;->img:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :ret

    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/AirProjTex;->tried:Z

    if-eqz v0, :ret_null

    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/map/province/AirProjTex;->tried:Z

    :try_start
    const-string v1, "game/AirUnit/AirUnitlmages/airProj.png"

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    if-nez v1, :try_end_tail

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    sput-object v2, Laoc/kingdoms/lukasz/map/province/AirProjTex;->img:Laoc/kingdoms/lukasz/textures/Image;

    move-object v0, v2

    return-object v0

    :try_end_tail
    const-string v1, "nFX texfail"

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    const/4 v0, 0x0

    :ret
    return-object v0

    :ret_null
    const/4 v0, 0x0

    return-object v0

    .catch Ljava/lang/Throwable; {:try_start .. :try_end_tail} :catch
    :catch
    move-exception v1
    const-string v2, "nFX texerr"

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->dWrite(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
