.class synthetic Laoc/kingdoms/lukasz/animation/AnimationOnce_Images$1;
.super Ljava/lang/Object;
.source "AnimationOnce_Images.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/animation/AnimationOnce_Images;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$aoc$kingdoms$lukasz$animation$AnimationData_Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 38
    invoke-static {}, Laoc/kingdoms/lukasz/animation/AnimationData_Type;->values()[Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images$1;->$SwitchMap$aoc$kingdoms$lukasz$animation$AnimationData_Type:[I

    :try_start_9
    sget-object v0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images$1;->$SwitchMap$aoc$kingdoms$lukasz$animation$AnimationData_Type:[I

    sget-object v1, Laoc/kingdoms/lukasz/animation/AnimationData_Type;->LOOP:Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/animation/AnimationData_Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Laoc/kingdoms/lukasz/animation/AnimationOnce_Images$1;->$SwitchMap$aoc$kingdoms$lukasz$animation$AnimationData_Type:[I

    sget-object v1, Laoc/kingdoms/lukasz/animation/AnimationData_Type;->ONCE:Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/animation/AnimationData_Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    return-void
.end method
