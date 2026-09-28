.class Lcom/udojava/evalex/Expression$10;
.super Lcom/udojava/evalex/Expression$Operator;
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
.method constructor <init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZZ)V
    .registers 6
    .param p1, "this$0"    # Lcom/udojava/evalex/Expression;
    .param p2, "oper"    # Ljava/lang/String;
    .param p3, "precedence"    # I
    .param p4, "leftAssoc"    # Z
    .param p5, "booleanOperator"    # Z

    .line 740
    iput-object p1, p0, Lcom/udojava/evalex/Expression$10;->this$0:Lcom/udojava/evalex/Expression;

    invoke-direct/range {p0 .. p5}, Lcom/udojava/evalex/Expression$Operator;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method public eval(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 7
    .param p1, "v1"    # Ljava/math/BigDecimal;
    .param p2, "v2"    # Ljava/math/BigDecimal;

    .line 743
    invoke-static {p1, p2}, Lcom/udojava/evalex/Expression;->assertNotNull(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V

    .line 745
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 747
    .local v0, "b1":Z
    :goto_10
    if-eqz v0, :cond_15

    .line 748
    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    return-object v1

    .line 751
    :cond_15
    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 752
    .local v1, "b2":Z
    :goto_1f
    if-eqz v1, :cond_24

    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    goto :goto_26

    :cond_24
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    :goto_26
    return-object v2
.end method
