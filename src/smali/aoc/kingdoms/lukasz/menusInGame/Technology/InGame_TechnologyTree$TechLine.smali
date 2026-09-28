.class public Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;
.super Ljava/lang/Object;
.source "InGame_TechnologyTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TechLine"
.end annotation


# instance fields
.field public iTechID:I

.field public lPointsX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public lPointsY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nPath:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/math/Vector2;",
            ">;"
        }
    .end annotation
.end field

.field public researched:Z

.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;IIIIIZ)V
    .registers 12
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;
    .param p2, "iTechID"    # I
    .param p3, "iX"    # I
    .param p4, "iY"    # I
    .param p5, "iX2"    # I
    .param p6, "iY2"    # I
    .param p7, "researched"    # Z

    .line 283
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->this$0:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->researched:Z

    .line 278
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->nPath:Lcom/badlogic/gdx/utils/Array;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsY:Ljava/util/List;

    .line 284
    iput p2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->iTechID:I

    .line 285
    iput-boolean p7, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->researched:Z

    .line 287
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsY:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    const/4 v0, 0x1

    if-eq p4, p6, :cond_1a8

    .line 291
    if-le p4, p6, :cond_3a

    const/4 v1, -0x1

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x1

    .line 293
    .local v1, "mod":I
    :goto_3b
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p5, v3

    add-int/lit8 v3, v3, -0x32

    add-int/lit8 v3, v3, -0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsY:Ljava/util/List;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p5, v3

    add-int/lit8 v3, v3, -0x32

    add-int/lit8 v3, v3, -0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsY:Ljava/util/List;

    mul-int/lit8 v3, v1, 0x1

    add-int/2addr v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p5, v3

    add-int/lit8 v3, v3, -0x32

    add-int/lit8 v3, v3, -0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsY:Ljava/util/List;

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p5, v3

    add-int/lit8 v3, v3, -0x32

    add-int/lit8 v3, v3, -0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsY:Ljava/util/List;

    mul-int/lit8 v3, v1, 0x4

    add-int/2addr v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p5, v3

    add-int/lit8 v3, v3, -0x32

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsY:Ljava/util/List;

    mul-int/lit8 v3, v1, 0x6

    add-int/2addr v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p5, v3

    add-int/lit8 v3, v3, -0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsY:Ljava/util/List;

    mul-int/lit8 v3, v1, 0x8

    add-int/2addr v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p5, v3

    add-int/lit8 v3, v3, -0x32

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsY:Ljava/util/List;

    mul-int/lit8 v3, v1, 0x8

    sub-int v3, p6, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p5, v3

    add-int/lit8 v3, v3, -0x32

    add-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsY:Ljava/util/List;

    mul-int/lit8 v3, v1, 0x6

    sub-int v3, p6, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p5, v3

    add-int/lit8 v3, v3, -0x32

    add-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsY:Ljava/util/List;

    mul-int/lit8 v3, v1, 0x4

    sub-int v3, p6, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p5, v3

    add-int/lit8 v3, v3, -0x32

    add-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsY:Ljava/util/List;

    mul-int/lit8 v3, v1, 0x2

    sub-int v3, p6, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p5, v3

    add-int/lit8 v3, v3, -0x32

    add-int/lit8 v3, v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsY:Ljava/util/List;

    mul-int/lit8 v3, v1, 0x1

    sub-int v3, p6, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p5, v3

    add-int/lit8 v3, v3, -0x32

    add-int/lit8 v3, v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsY:Ljava/util/List;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    .end local v1    # "mod":I
    :cond_1a8
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsY:Ljava/util/List;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_1c1
    if-ltz v1, :cond_1d1

    .line 335
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->nPath:Lcom/badlogic/gdx/utils/Array;

    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 334
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c1

    .line 337
    .end local v1    # "i":I
    :cond_1d1
    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;)Lcom/badlogic/gdx/utils/Array;
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    .line 273
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->nPath:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method
