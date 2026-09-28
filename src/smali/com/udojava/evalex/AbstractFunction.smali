.class public abstract Lcom/udojava/evalex/AbstractFunction;
.super Lcom/udojava/evalex/AbstractLazyFunction;
.source "AbstractFunction.java"

# interfaces
.implements Lcom/udojava/evalex/Function;


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numParams"    # I

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/udojava/evalex/AbstractLazyFunction;-><init>(Ljava/lang/String;I)V

    .line 50
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numParams"    # I
    .param p3, "booleanFunction"    # Z

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/udojava/evalex/AbstractLazyFunction;-><init>(Ljava/lang/String;IZ)V

    .line 62
    return-void
.end method


# virtual methods
.method public lazyEval(Ljava/util/List;)Lcom/udojava/evalex/Expression$LazyNumber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/udojava/evalex/Expression$LazyNumber;",
            ">;)",
            "Lcom/udojava/evalex/Expression$LazyNumber;"
        }
    .end annotation

    .line 65
    .local p1, "lazyParams":Ljava/util/List;, "Ljava/util/List<Lcom/udojava/evalex/Expression$LazyNumber;>;"
    new-instance v0, Lcom/udojava/evalex/AbstractFunction$1;

    invoke-direct {v0, p0, p1}, Lcom/udojava/evalex/AbstractFunction$1;-><init>(Lcom/udojava/evalex/AbstractFunction;Ljava/util/List;)V

    return-object v0
.end method
