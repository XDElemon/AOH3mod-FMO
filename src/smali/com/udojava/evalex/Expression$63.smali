.class Lcom/udojava/evalex/Expression$63;
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

    .line 1237
    iput-object p1, p0, Lcom/udojava/evalex/Expression$63;->this$0:Lcom/udojava/evalex/Expression;

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

    .line 1240
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigDecimal;>;"
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigDecimal;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigDecimal;

    invoke-static {v1, v3}, Lcom/udojava/evalex/Expression;->assertNotNull(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V

    .line 1241
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    .line 1242
    .local v0, "toRound":Ljava/math/BigDecimal;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigDecimal;

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    .line 1243
    .local v1, "precision":I
    iget-object v2, p0, Lcom/udojava/evalex/Expression$63;->this$0:Lcom/udojava/evalex/Expression;

    # getter for: Lcom/udojava/evalex/Expression;->mc:Ljava/math/MathContext;
    invoke-static {v2}, Lcom/udojava/evalex/Expression;->access$200(Lcom/udojava/evalex/Expression;)Ljava/math/MathContext;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2
.end method
