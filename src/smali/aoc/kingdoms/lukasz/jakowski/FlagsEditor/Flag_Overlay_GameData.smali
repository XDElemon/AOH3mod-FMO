.class public Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;
.super Ljava/lang/Object;
.source "Flag_Overlay_GameData.java"


# instance fields
.field public iHeight:I

.field public iOverlayID:I

.field public iPosX:I

.field public iPosY:I

.field public iWidth:I

.field public oColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method protected constructor <init>(I)V
    .registers 4
    .param p1, "iOverlayID"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    .line 9
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->oColor:Lcom/badlogic/gdx/graphics/Color;

    .line 11
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosX:I

    .line 12
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosY:I

    .line 13
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iWidth:I

    .line 14
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iHeight:I

    .line 17
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    .line 18
    return-void
.end method
