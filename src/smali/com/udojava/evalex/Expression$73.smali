.class Lcom/udojava/evalex/Expression$73;
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

    .line 1656
    iput-object p1, p0, Lcom/udojava/evalex/Expression$73;->this$0:Lcom/udojava/evalex/Expression;

    iput-object p2, p0, Lcom/udojava/evalex/Expression$73;->val$token:Lcom/udojava/evalex/Expression$Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Ljava/math/BigDecimal;
    .registers 5

    .line 1658
    new-instance v0, Ljava/math/BigDecimal;

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/udojava/evalex/Expression$73;->val$token:Lcom/udojava/evalex/Expression$Token;

    iget-object v2, v2, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/udojava/evalex/Expression$73;->this$0:Lcom/udojava/evalex/Expression;

    # getter for: Lcom/udojava/evalex/Expression;->mc:Ljava/math/MathContext;
    invoke-static {v2}, Lcom/udojava/evalex/Expression;->access$200(Lcom/udojava/evalex/Expression;)Ljava/math/MathContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;Ljava/math/MathContext;)V

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 4

    .line 1662
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/udojava/evalex/Expression$73;->val$token:Lcom/udojava/evalex/Expression$Token;

    iget-object v1, v1, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
