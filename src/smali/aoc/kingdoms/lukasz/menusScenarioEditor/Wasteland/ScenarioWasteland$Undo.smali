.class public Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$Undo;
.super Ljava/lang/Object;
.source "ScenarioWasteland.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Undo"
.end annotation


# instance fields
.field public iProvinceID:I

.field public iState:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "iProvinceID"    # I
    .param p2, "iState"    # I

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput p1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$Undo;->iProvinceID:I

    .line 223
    iput p2, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/Wasteland/ScenarioWasteland$Undo;->iState:I

    .line 224
    return-void
.end method
