.class Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$2;
.super Laoc/kingdoms/lukasz/menu_element/Slider;
.source "EditorMapOptimizationRegions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;Ljava/lang/String;IIIIIII)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I
    .param p5, "iWidth"    # I
    .param p6, "iHeight"    # I
    .param p7, "iMin"    # I
    .param p8, "iMax"    # I
    .param p9, "iCurrent"    # I

    .line 41
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$2;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/Slider;-><init>(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 2

    .line 44
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions$2;->getCurrent()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapOptimizationRegions;->activeRegion:I

    .line 45
    return-void
.end method
