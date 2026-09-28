.class public Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;
.super Ljava/lang/Object;
.source "AI_MoveNoConnectionData.java"


# instance fields
.field public fromProvince:I

.field public toProvince:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "fromProvince"    # I
    .param p2, "toProvince"    # I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->fromProvince:I

    .line 12
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->toProvince:I

    .line 13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 17
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 18
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_24

    .line 19
    :cond_12
    move-object v2, p1

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;

    .line 20
    .local v2, "that":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;
    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->fromProvince:I

    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->fromProvince:I

    if-ne v3, v4, :cond_22

    iget v3, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->toProvince:I

    iget v4, v2, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->toProvince:I

    if-ne v3, v4, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0

    .line 18
    .end local v2    # "that":Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;
    :cond_24
    :goto_24
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 25
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->fromProvince:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_MoveNoConnectionData;->toProvince:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
