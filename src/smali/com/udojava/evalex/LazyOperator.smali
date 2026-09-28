.class public interface abstract Lcom/udojava/evalex/LazyOperator;
.super Ljava/lang/Object;
.source "LazyOperator.java"


# virtual methods
.method public abstract eval(Lcom/udojava/evalex/Expression$LazyNumber;Lcom/udojava/evalex/Expression$LazyNumber;)Lcom/udojava/evalex/Expression$LazyNumber;
.end method

.method public abstract getOper()Ljava/lang/String;
.end method

.method public abstract getPrecedence()I
.end method

.method public abstract isBooleanOperator()Z
.end method

.method public abstract isLeftAssoc()Z
.end method

.method public abstract isUnaryOperator()Z
.end method
