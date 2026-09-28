.class Lcom/udojava/evalex/Expression$71;
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

    .line 1630
    iput-object p1, p0, Lcom/udojava/evalex/Expression$71;->this$0:Lcom/udojava/evalex/Expression;

    iput-object p2, p0, Lcom/udojava/evalex/Expression$71;->val$token:Lcom/udojava/evalex/Expression$Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Ljava/math/BigDecimal;
    .registers 4

    .line 1632
    iget-object v0, p0, Lcom/udojava/evalex/Expression$71;->val$token:Lcom/udojava/evalex/Expression$Token;

    iget-object v0, v0, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1633
    const/4 v0, 0x0

    return-object v0

    .line 1636
    :cond_e
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/udojava/evalex/Expression$71;->val$token:Lcom/udojava/evalex/Expression$Token;

    iget-object v1, v1, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    iget-object v2, p0, Lcom/udojava/evalex/Expression$71;->this$0:Lcom/udojava/evalex/Expression;

    # getter for: Lcom/udojava/evalex/Expression;->mc:Ljava/math/MathContext;
    invoke-static {v2}, Lcom/udojava/evalex/Expression;->access$200(Lcom/udojava/evalex/Expression;)Ljava/math/MathContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 4

    .line 1640
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/udojava/evalex/Expression$71;->val$token:Lcom/udojava/evalex/Expression$Token;

    iget-object v1, v1, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    iget-object v2, p0, Lcom/udojava/evalex/Expression$71;->this$0:Lcom/udojava/evalex/Expression;

    # getter for: Lcom/udojava/evalex/Expression;->mc:Ljava/math/MathContext;
    invoke-static {v2}, Lcom/udojava/evalex/Expression;->access$200(Lcom/udojava/evalex/Expression;)Ljava/math/MathContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
