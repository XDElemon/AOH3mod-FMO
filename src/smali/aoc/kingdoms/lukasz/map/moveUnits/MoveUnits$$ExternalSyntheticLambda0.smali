.class public final synthetic Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# static fields
.field public static final synthetic INSTANCE:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$$ExternalSyntheticLambda0;->INSTANCE:Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .registers 4

    check-cast p1, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits$Node;->getFCost()F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method
