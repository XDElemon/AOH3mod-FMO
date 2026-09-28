.class Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy_Random$1;
.super Laoc/kingdoms/lukasz/menu_element/Slider;
.source "EditorMapEconomy_Random.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy_Random;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy_Random;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy_Random;IIIIIII)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy_Random;
    .param p2, "iPosX"    # I
    .param p3, "iPosY"    # I
    .param p4, "iWidth"    # I
    .param p5, "iHeight"    # I
    .param p6, "iMin"    # I
    .param p7, "iMax"    # I
    .param p8, "iCurrent"    # I

    .line 34
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy_Random$1;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy_Random;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/Slider;-><init>(IIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 2

    .line 37
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy_Random$1;->getCurrent()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapEconomy_Random;->iRandom:I

    .line 38
    return-void
.end method
