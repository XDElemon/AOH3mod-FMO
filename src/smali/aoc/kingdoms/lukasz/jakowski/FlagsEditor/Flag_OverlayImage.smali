.class public Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;
.super Ljava/lang/Object;
.source "Flag_OverlayImage.java"


# instance fields
.field public iOverlayID:I

.field public imageOverlay:Laoc/kingdoms/lukasz/textures/Image;


# direct methods
.method public constructor <init>(I)V
    .registers 7
    .param p1, "iOverlayID"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;->iOverlayID:I

    .line 16
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;->iOverlayID:I

    .line 17
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gfx/editorFlags/overlays/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;->sName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;->imageOverlay:Laoc/kingdoms/lukasz/textures/Image;

    .line 18
    return-void
.end method
