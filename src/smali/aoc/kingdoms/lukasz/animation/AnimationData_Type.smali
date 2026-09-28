.class public final enum Laoc/kingdoms/lukasz/animation/AnimationData_Type;
.super Ljava/lang/Enum;
.source "AnimationData_Type.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laoc/kingdoms/lukasz/animation/AnimationData_Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laoc/kingdoms/lukasz/animation/AnimationData_Type;

.field public static final enum LOOP:Laoc/kingdoms/lukasz/animation/AnimationData_Type;

.field public static final enum ONCE:Laoc/kingdoms/lukasz/animation/AnimationData_Type;


# direct methods
.method private static synthetic $values()[Laoc/kingdoms/lukasz/animation/AnimationData_Type;
    .registers 3

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    sget-object v1, Laoc/kingdoms/lukasz/animation/AnimationData_Type;->LOOP:Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Laoc/kingdoms/lukasz/animation/AnimationData_Type;->ONCE:Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 4
    new-instance v0, Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    const-string v1, "LOOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/animation/AnimationData_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/animation/AnimationData_Type;->LOOP:Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    .line 5
    new-instance v0, Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    const-string v1, "ONCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Laoc/kingdoms/lukasz/animation/AnimationData_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laoc/kingdoms/lukasz/animation/AnimationData_Type;->ONCE:Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    .line 3
    invoke-static {}, Laoc/kingdoms/lukasz/animation/AnimationData_Type;->$values()[Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/animation/AnimationData_Type;->$VALUES:[Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laoc/kingdoms/lukasz/animation/AnimationData_Type;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    return-object v0
.end method

.method public static values()[Laoc/kingdoms/lukasz/animation/AnimationData_Type;
    .registers 1

    .line 3
    sget-object v0, Laoc/kingdoms/lukasz/animation/AnimationData_Type;->$VALUES:[Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    invoke-virtual {v0}, [Laoc/kingdoms/lukasz/animation/AnimationData_Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    return-object v0
.end method
