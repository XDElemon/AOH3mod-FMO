.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;
.super Ljava/lang/Object;
.source "CivilizationEventsData_Variables.java"


# instance fields
.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->v:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addVariable(Ljava/lang/String;)V
    .registers 4
    .param p1, "sVariable"    # Ljava/lang/String;

    .line 19
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 20
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 21
    return-void

    .line 19
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 25
    .end local v0    # "i":I
    :cond_1c
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->v:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public hasVariable(Ljava/lang/String;)Z
    .registers 5
    .param p1, "sVariable"    # Ljava/lang/String;

    .line 29
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 30
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationEventsData_Variables;->v:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 31
    return v1

    .line 29
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 35
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method
