.class Lcom/udojava/evalex/AbstractOperator$2;
.super Ljava/lang/Object;
.source "AbstractOperator.java"

# interfaces
.implements Lcom/udojava/evalex/Expression$LazyNumber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/udojava/evalex/AbstractOperator;->eval(Lcom/udojava/evalex/Expression$LazyNumber;Lcom/udojava/evalex/Expression$LazyNumber;)Lcom/udojava/evalex/Expression$LazyNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/udojava/evalex/AbstractOperator;

.field final synthetic val$v1:Lcom/udojava/evalex/Expression$LazyNumber;

.field final synthetic val$v2:Lcom/udojava/evalex/Expression$LazyNumber;


# direct methods
.method constructor <init>(Lcom/udojava/evalex/AbstractOperator;Lcom/udojava/evalex/Expression$LazyNumber;Lcom/udojava/evalex/Expression$LazyNumber;)V
    .registers 4
    .param p1, "this$0"    # Lcom/udojava/evalex/AbstractOperator;

    .line 103
    iput-object p1, p0, Lcom/udojava/evalex/AbstractOperator$2;->this$0:Lcom/udojava/evalex/AbstractOperator;

    iput-object p2, p0, Lcom/udojava/evalex/AbstractOperator$2;->val$v1:Lcom/udojava/evalex/Expression$LazyNumber;

    iput-object p3, p0, Lcom/udojava/evalex/AbstractOperator$2;->val$v2:Lcom/udojava/evalex/Expression$LazyNumber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Ljava/math/BigDecimal;
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/udojava/evalex/AbstractOperator$2;->this$0:Lcom/udojava/evalex/AbstractOperator;

    iget-object v1, p0, Lcom/udojava/evalex/AbstractOperator$2;->val$v1:Lcom/udojava/evalex/Expression$LazyNumber;

    invoke-interface {v1}, Lcom/udojava/evalex/Expression$LazyNumber;->eval()Ljava/math/BigDecimal;

    move-result-object v1

    iget-object v2, p0, Lcom/udojava/evalex/AbstractOperator$2;->val$v2:Lcom/udojava/evalex/Expression$LazyNumber;

    invoke-interface {v2}, Lcom/udojava/evalex/Expression$LazyNumber;->eval()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/udojava/evalex/AbstractOperator;->eval(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 4

    .line 109
    iget-object v0, p0, Lcom/udojava/evalex/AbstractOperator$2;->this$0:Lcom/udojava/evalex/AbstractOperator;

    iget-object v1, p0, Lcom/udojava/evalex/AbstractOperator$2;->val$v1:Lcom/udojava/evalex/Expression$LazyNumber;

    invoke-interface {v1}, Lcom/udojava/evalex/Expression$LazyNumber;->eval()Ljava/math/BigDecimal;

    move-result-object v1

    iget-object v2, p0, Lcom/udojava/evalex/AbstractOperator$2;->val$v2:Lcom/udojava/evalex/Expression$LazyNumber;

    invoke-interface {v2}, Lcom/udojava/evalex/Expression$LazyNumber;->eval()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/udojava/evalex/AbstractOperator;->eval(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
