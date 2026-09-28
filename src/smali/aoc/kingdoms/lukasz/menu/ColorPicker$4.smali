.class Laoc/kingdoms/lukasz/menu/ColorPicker$4;
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

    .line 156
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$4;->this$0:Laoc/kingdoms/lukasz/menu/ColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setActiveProvince_Action()V
    .registers 1

    .line 165
    return-void
.end method

.method public update()V
    .registers 8

    .line 159
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->flagManager:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->activeColorID:I

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
.end method
