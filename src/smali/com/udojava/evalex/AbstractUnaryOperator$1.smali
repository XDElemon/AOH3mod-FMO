.class Lcom/udojava/evalex/AbstractUnaryOperator$1;
.super Ljava/lang/Object;
.source "AbstractUnaryOperator.java"

# interfaces
.implements Lcom/udojava/evalex/Expression$LazyNumber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/udojava/evalex/AbstractUnaryOperator;->eval(Lcom/udojava/evalex/Expression$LazyNumber;Lcom/udojava/evalex/Expression$LazyNumber;)Lcom/udojava/evalex/Expression$LazyNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/udojava/evalex/AbstractUnaryOperator;

.field final synthetic val$v1:Lcom/udojava/evalex/Expression$LazyNumber;


# direct methods
.method constructor <init>(Lcom/udojava/evalex/AbstractUnaryOperator;Lcom/udojava/evalex/Expression$LazyNumber;)V
    .registers 3
    .param p1, "this$0"    # Lcom/udojava/evalex/AbstractUnaryOperator;

    .line 60
    iput-object p1, p0, Lcom/udojava/evalex/AbstractUnaryOperator$1;->this$0:Lcom/udojava/evalex/AbstractUnaryOperator;

    iput-object p2, p0, Lcom/udojava/evalex/AbstractUnaryOperator$1;->val$v1:Lcom/udojava/evalex/Expression$LazyNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Ljava/math/BigDecimal;
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/udojava/evalex/AbstractUnaryOperator$1;->this$0:Lcom/udojava/evalex/AbstractUnaryOperator;

    iget-object v1, p0, Lcom/udojava/evalex/AbstractUnaryOperator$1;->val$v1:Lcom/udojava/evalex/Expression$LazyNumber;

    invoke-interface {v1}, Lcom/udojava/evalex/Expression$LazyNumber;->eval()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/udojava/evalex/AbstractUnaryOperator;->evalUnary(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/udojava/evalex/AbstractUnaryOperator$1;->this$0:Lcom/udojava/evalex/AbstractUnaryOperator;

    iget-object v1, p0, Lcom/udojava/evalex/AbstractUnaryOperator$1;->val$v1:Lcom/udojava/evalex/Expression$LazyNumber;

    invoke-interface {v1}, Lcom/udojava/evalex/Expression$LazyNumber;->eval()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/udojava/evalex/AbstractUnaryOperator;->evalUnary(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
