.class public abstract Lcom/udojava/evalex/AbstractUnaryOperator;
.super Lcom/udojava/evalex/AbstractOperator;
.source "AbstractUnaryOperator.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "oper"    # Ljava/lang/String;
    .param p2, "precedence"    # I
    .param p3, "leftAssoc"    # Z

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/udojava/evalex/AbstractOperator;-><init>(Ljava/lang/String;IZ)V

    .line 52
    return-void
.end method


# virtual methods
.method public eval(Lcom/udojava/evalex/Expression$LazyNumber;Lcom/udojava/evalex/Expression$LazyNumber;)Lcom/udojava/evalex/Expression$LazyNumber;
    .registers 5
    .param p1, "v1"    # Lcom/udojava/evalex/Expression$LazyNumber;
    .param p2, "v2"    # Lcom/udojava/evalex/Expression$LazyNumber;

    .line 57
    if-nez p2, :cond_8

    .line 60
    new-instance v0, Lcom/udojava/evalex/AbstractUnaryOperator$1;

    invoke-direct {v0, p0, p1}, Lcom/udojava/evalex/AbstractUnaryOperator$1;-><init>(Lcom/udojava/evalex/AbstractUnaryOperator;Lcom/udojava/evalex/Expression$LazyNumber;)V

    return-object v0

    .line 58
    :cond_8
    new-instance v0, Lcom/udojava/evalex/Expression$ExpressionException;

    const-string v1, "Did not expect a second parameter for unary operator"

    invoke-direct {v0, v1}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eval(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 5
    .param p1, "v1"    # Ljava/math/BigDecimal;
    .param p2, "v2"    # Ljava/math/BigDecimal;

    .line 82
    if-nez p2, :cond_7

    .line 85
    invoke-virtual {p0, p1}, Lcom/udojava/evalex/AbstractUnaryOperator;->evalUnary(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 83
    :cond_7
    new-instance v0, Lcom/udojava/evalex/Expression$ExpressionException;

    const-string v1, "Did not expect a second parameter for unary operator"

    invoke-direct {v0, v1}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract evalUnary(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
.end method
