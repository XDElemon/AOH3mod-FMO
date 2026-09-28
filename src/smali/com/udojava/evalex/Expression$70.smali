.class Lcom/udojava/evalex/Expression$70;
.super Ljava/lang/Object;
.source "Expression.java"

# interfaces
.implements Lcom/udojava/evalex/Expression$LazyNumber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/udojava/evalex/Expression;->eval(Z)Ljava/math/BigDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/udojava/evalex/Expression;

.field final synthetic val$token:Lcom/udojava/evalex/Expression$Token;


# direct methods
.method constructor <init>(Lcom/udojava/evalex/Expression;Lcom/udojava/evalex/Expression$Token;)V
    .registers 3
    .param p1, "this$0"    # Lcom/udojava/evalex/Expression;

    .line 1596
    iput-object p1, p0, Lcom/udojava/evalex/Expression$70;->this$0:Lcom/udojava/evalex/Expression;

    iput-object p2, p0, Lcom/udojava/evalex/Expression$70;->val$token:Lcom/udojava/evalex/Expression$Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Ljava/math/BigDecimal;
    .registers 4

    .line 1598
    iget-object v0, p0, Lcom/udojava/evalex/Expression$70;->this$0:Lcom/udojava/evalex/Expression;

    iget-object v0, v0, Lcom/udojava/evalex/Expression;->variables:Ljava/util/Map;

    iget-object v1, p0, Lcom/udojava/evalex/Expression$70;->val$token:Lcom/udojava/evalex/Expression$Token;

    iget-object v1, v1, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/udojava/evalex/Expression$LazyNumber;

    .line 1599
    .local v0, "lazyVariable":Lcom/udojava/evalex/Expression$LazyNumber;
    const/4 v1, 0x0

    if-nez v0, :cond_13

    move-object v2, v1

    goto :goto_17

    :cond_13
    invoke-interface {v0}, Lcom/udojava/evalex/Expression$LazyNumber;->eval()Ljava/math/BigDecimal;

    move-result-object v2

    .line 1600
    .local v2, "value":Ljava/math/BigDecimal;
    :goto_17
    if-nez v2, :cond_1a

    goto :goto_24

    :cond_1a
    iget-object v1, p0, Lcom/udojava/evalex/Expression$70;->this$0:Lcom/udojava/evalex/Expression;

    # getter for: Lcom/udojava/evalex/Expression;->mc:Ljava/math/MathContext;
    invoke-static {v1}, Lcom/udojava/evalex/Expression;->access$200(Lcom/udojava/evalex/Expression;)Ljava/math/MathContext;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    :goto_24
    return-object v1
.end method

.method public getString()Ljava/lang/String;
    .registers 3

    .line 1604
    iget-object v0, p0, Lcom/udojava/evalex/Expression$70;->this$0:Lcom/udojava/evalex/Expression;

    iget-object v0, v0, Lcom/udojava/evalex/Expression;->variables:Ljava/util/Map;

    iget-object v1, p0, Lcom/udojava/evalex/Expression$70;->val$token:Lcom/udojava/evalex/Expression$Token;

    iget-object v1, v1, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/udojava/evalex/Expression$LazyNumber;

    .line 1605
    .local v0, "lazyVariable":Lcom/udojava/evalex/Expression$LazyNumber;
    invoke-interface {v0}, Lcom/udojava/evalex/Expression$LazyNumber;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
