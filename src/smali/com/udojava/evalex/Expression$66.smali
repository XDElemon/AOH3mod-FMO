.class Lcom/udojava/evalex/Expression$66;
.super Lcom/udojava/evalex/Expression$Function;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/udojava/evalex/Expression;-><init>(Ljava/lang/String;Lcom/udojava/evalex/ExpressionSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/udojava/evalex/Expression;


# direct methods
.method constructor <init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/udojava/evalex/Expression;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "numParams"    # I

    .line 1262
    iput-object p1, p0, Lcom/udojava/evalex/Expression$66;->this$0:Lcom/udojava/evalex/Expression;

    invoke-direct {p0, p1, p2, p3}, Lcom/udojava/evalex/Expression$Function;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public eval(Ljava/util/List;)Ljava/math/BigDecimal;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/math/BigDecimal;",
            ">;)",
            "Ljava/math/BigDecimal;"
        }
    .end annotation

    .line 1265
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigDecimal;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigDecimal;

    invoke-static {v1}, Lcom/udojava/evalex/Expression;->assertNotNull(Ljava/math/BigDecimal;)V

    .line 1270
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigDecimal;

    .line 1271
    .local v1, "x":Ljava/math/BigDecimal;
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-nez v2, :cond_1e

    .line 1272
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(I)V

    return-object v2

    .line 1274
    :cond_1e
    invoke-virtual {v1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-ltz v0, :cond_7a

    .line 1277
    iget-object v0, p0, Lcom/udojava/evalex/Expression$66;->this$0:Lcom/udojava/evalex/Expression;

    # getter for: Lcom/udojava/evalex/Expression;->mc:Ljava/math/MathContext;
    invoke-static {v0}, Lcom/udojava/evalex/Expression;->access$200(Lcom/udojava/evalex/Expression;)Ljava/math/MathContext;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/MathContext;->getPrecision()I

    move-result v0

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 1279
    .local v0, "n":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    add-int/2addr v3, v2

    shr-int/2addr v3, v2

    .line 1280
    .local v3, "bits":I
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 1284
    .local v4, "ix":Ljava/math/BigInteger;
    :cond_42
    move-object v5, v4

    .line 1285
    .local v5, "ixPrev":Ljava/math/BigInteger;
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 1287
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 1288
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v6

    .line 1289
    .local v6, "test":Ljava/math/BigInteger;
    sget-object v7, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-eqz v7, :cond_6a

    sget-object v7, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-nez v7, :cond_42

    .line 1291
    :cond_6a
    new-instance v2, Ljava/math/BigDecimal;

    iget-object v7, p0, Lcom/udojava/evalex/Expression$66;->this$0:Lcom/udojava/evalex/Expression;

    # getter for: Lcom/udojava/evalex/Expression;->mc:Ljava/math/MathContext;
    invoke-static {v7}, Lcom/udojava/evalex/Expression;->access$200(Lcom/udojava/evalex/Expression;)Ljava/math/MathContext;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/MathContext;->getPrecision()I

    move-result v7

    invoke-direct {v2, v4, v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v2

    .line 1275
    .end local v0    # "n":Ljava/math/BigInteger;
    .end local v3    # "bits":I
    .end local v4    # "ix":Ljava/math/BigInteger;
    .end local v5    # "ixPrev":Ljava/math/BigInteger;
    .end local v6    # "test":Ljava/math/BigInteger;
    :cond_7a
    new-instance v0, Lcom/udojava/evalex/Expression$ExpressionException;

    const-string v2, "Argument to SQRT() function must not be negative"

    invoke-direct {v0, v2}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;)V

    goto :goto_83

    :goto_82
    throw v0

    :goto_83
    goto :goto_82
.end method
