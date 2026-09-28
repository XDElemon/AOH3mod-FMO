.class public interface abstract Lcom/udojava/evalex/LazyFunction;
.super Ljava/lang/Object;
.source "LazyFunction.java"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNumParams()I
.end method

.method public abstract isBooleanFunction()Z
.end method

.method public abstract lazyEval(Ljava/util/List;)Lcom/udojava/evalex/Expression$LazyNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/udojava/evalex/Expression$LazyNumber;",
            ">;)",
            "Lcom/udojava/evalex/Expression$LazyNumber;"
        }
    .end annotation
.end method

.method public abstract numParamsVaries()Z
.end method
