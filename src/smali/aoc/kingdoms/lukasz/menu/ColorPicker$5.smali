.class Laoc/kingdoms/lukasz/menu/ColorPicker$5;
.super Ljava/lang/Object;
.source "ColorPicker.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu/ColorPicker;->updateColorPicker_Action(Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu/ColorPicker;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menu/ColorPicker;

    .line 170
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$5;->this$0:Laoc/kingdoms/lukasz/menu/ColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setActiveProvince_Action()V
    .registers 1

    .line 181
    return-void
.end method

.method public update()V
    .registers 4

    .line 173
    sget v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ACTIVE_CIV_ID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setR(I)V

    .line 174
    sget v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ACTIVE_CIV_ID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setG(I)V

    .line 175
    sget v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ACTIVE_CIV_ID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setB(I)V

    .line 176
    return-void
.end method
