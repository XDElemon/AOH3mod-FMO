.class Laoc/kingdoms/lukasz/menu/ColorPicker$Box;
.super Ljava/lang/Object;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menu/ColorPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Box"
.end annotation


# instance fields
.field private iHeight:I

.field private iPosX:I

.field private iPosY:I

.field private iWidth:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menu/ColorPicker;

.field private visible:Z


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menu/ColorPicker;IIII)V
    .registers 7
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menu/ColorPicker;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I

    .line 227
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->this$0:Laoc/kingdoms/lukasz/menu/ColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->visible:Z

    .line 228
    iput p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iPosX:I

    .line 229
    iput p3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iPosY:I

    .line 230
    iput p4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iWidth:I

    .line 231
    iput p5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iHeight:I

    .line 232
    return-void
.end method


# virtual methods
.method public final getHeight()I
    .registers 2

    .line 255
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iHeight:I

    return v0
.end method

.method public final getPosX()I
    .registers 2

    .line 235
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iPosX:I

    return v0
.end method

.method public final getPosY()I
    .registers 2

    .line 243
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iPosY:I

    return v0
.end method

.method public final getVisible()Z
    .registers 2

    .line 271
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->visible:Z

    return v0
.end method

.method public final getWidth()I
    .registers 2

    .line 251
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iWidth:I

    return v0
.end method

.method public final setHeight(I)V
    .registers 2
    .param p1, "iHeight"    # I

    .line 263
    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iHeight:I

    .line 264
    return-void
.end method

.method public final setPosX(I)V
    .registers 2
    .param p1, "iPosX"    # I

    .line 239
    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iPosX:I

    .line 240
    return-void
.end method

.method public final setPosY(I)V
    .registers 2
    .param p1, "iPosY"    # I

    .line 247
    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iPosY:I

    .line 248
    return-void
.end method

.method public final setVisible(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .line 267
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->visible:Z

    .line 268
    return-void
.end method

.method public final setWidth(I)V
    .registers 2
    .param p1, "iWidth"    # I

    .line 259
    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->iWidth:I

    .line 260
    return-void
.end method
