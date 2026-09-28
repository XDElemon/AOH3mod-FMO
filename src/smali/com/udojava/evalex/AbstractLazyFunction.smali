.class public abstract Lcom/udojava/evalex/AbstractLazyFunction;
.super Ljava/lang/Object;
.source "AbstractLazyFunction.java"

# interfaces
.implements Lcom/udojava/evalex/LazyFunction;


# instance fields
.field protected booleanFunction:Z

.field protected name:Ljava/lang/String;

.field protected numParams:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numParams"    # I

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/udojava/evalex/AbstractLazyFunction;-><init>(Ljava/lang/String;IZ)V

    .line 75
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numParams"    # I
    .param p3, "booleanFunction"    # Z

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/udojava/evalex/AbstractLazyFunction;->name:Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/udojava/evalex/AbstractLazyFunction;->numParams:I

    .line 63
    iput-boolean p3, p0, Lcom/udojava/evalex/AbstractLazyFunction;->booleanFunction:Z

    .line 64
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/udojava/evalex/AbstractLazyFunction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumParams()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/udojava/evalex/AbstractLazyFunction;->numParams:I

    return v0
.end method

.method public isBooleanFunction()Z
    .registers 2

    .line 90
    iget-boolean v0, p0, Lcom/udojava/evalex/AbstractLazyFunction;->booleanFunction:Z

    return v0
.end method

.method public numParamsVaries()Z
    .registers 2

    .line 86
    iget v0, p0, Lcom/udojava/evalex/AbstractLazyFunction;->numParams:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
