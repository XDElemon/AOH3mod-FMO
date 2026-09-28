.class Lcom/udojava/evalex/Expression$58;
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

    .line 1182
    iput-object p1, p0, Lcom/udojava/evalex/Expression$58;->this$0:Lcom/udojava/evalex/Expression;

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

    .line 1185
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigDecimal;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1188
    const/4 v0, 0x0

    .line 1189
    .local v0, "max":Ljava/math/BigDecimal;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigDecimal;

    .line 1190
    .local v2, "parameter":Ljava/math/BigDecimal;
    invoke-static {v2}, Lcom/udojava/evalex/Expression;->assertNotNull(Ljava/math/BigDecimal;)V

    .line 1191
    if-eqz v0, :cond_22

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-lez v3, :cond_23

    .line 1192
    :cond_22
    move-object v0, v2

    .line 1194
    .end local v2    # "parameter":Ljava/math/BigDecimal;
    :cond_23
    goto :goto_b

    .line 1195
    :cond_24
    return-object v0

    .line 1186
    .end local v0    # "max":Ljava/math/BigDecimal;
    :cond_25
    new-instance v0, Lcom/udojava/evalex/Expression$ExpressionException;

    const-string v1, "MAX requires at least one parameter"

    invoke-direct {v0, v1}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;)V

    goto :goto_2e

    :goto_2d
    throw v0

    :goto_2e
    goto :goto_2d
.end method
