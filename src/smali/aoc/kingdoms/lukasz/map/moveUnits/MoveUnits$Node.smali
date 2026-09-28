.class public Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
.super Ljava/lang/Object;
.source "MoveUnits.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Node"
.end annotation


# instance fields
.field gCost:F

.field hCost:F

.field parent:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

.field provinceID:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;ILaoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;FF)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;
    .param p2, "provinceID"    # I
    .param p3, "parent"    # Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;
    .param p4, "gCost"    # F
    .param p5, "hCost"    # F

    .line 176
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->this$0:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput p2, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->provinceID:I

    .line 178
    iput-object p3, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->parent:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    .line 179
    iput p4, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->gCost:F

    .line 180
    iput p5, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->hCost:F

    .line 181
    return-void
.end method


# virtual methods
.method public getFCost()F
    .registers 3

    .line 184
    iget v0, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->gCost:F

    iget v1, p0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->hCost:F

    add-float/2addr v0, v1

    return v0
.end method
