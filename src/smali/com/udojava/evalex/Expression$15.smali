.class Lcom/udojava/evalex/Expression$15;
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

    .line 788
    iput-object p1, p0, Lcom/udojava/evalex/Expression$15;->this$0:Lcom/udojava/evalex/Expression;

    invoke-direct/range {p0 .. p5}, Lcom/udojava/evalex/Expression$Operator;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method public eval(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 4
    .param p1, "v1"    # Ljava/math/BigDecimal;
    .param p2, "v2"    # Ljava/math/BigDecimal;

    .line 791
    if-ne p1, p2, :cond_5

    .line 792
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    return-object v0

    .line 794
    :cond_5
    if-eqz p1, :cond_16

    if-nez p2, :cond_a

    goto :goto_16

    .line 797
    :cond_a
    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    goto :goto_15

    :cond_13
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    :goto_15
    return-object v0

    .line 795
    :cond_16
    :goto_16
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0
.end method
