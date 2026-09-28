.class Lcom/udojava/evalex/Expression$57;
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

    .line 1174
    iput-object p1, p0, Lcom/udojava/evalex/Expression$57;->this$0:Lcom/udojava/evalex/Expression;

    invoke-direct {p0, p1, p2, p3}, Lcom/udojava/evalex/Expression$Function;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public eval(Ljava/util/List;)Ljava/math/BigDecimal;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/math/BigDecimal;",
            ">;)",
            "Ljava/math/BigDecimal;"
        }
    .end annotation

    .line 1177
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigDecimal;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigDecimal;

    invoke-static {v1}, Lcom/udojava/evalex/Expression;->assertNotNull(Ljava/math/BigDecimal;)V

    .line 1178
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    .line 1179
    .local v0, "d":D
    new-instance v2, Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/udojava/evalex/Expression$57;->this$0:Lcom/udojava/evalex/Expression;

    # getter for: Lcom/udojava/evalex/Expression;->mc:Ljava/math/MathContext;
    invoke-static {v3}, Lcom/udojava/evalex/Expression;->access$200(Lcom/udojava/evalex/Expression;)Ljava/math/MathContext;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    return-object v2
.end method
