.class Lcom/udojava/evalex/Expression$74;
.super Ljava/lang/Object;
.source "Expression.java"

# interfaces
.implements Lcom/udojava/evalex/Expression$LazyNumber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/udojava/evalex/Expression;->setVariable(Ljava/lang/String;Ljava/lang/String;)Lcom/udojava/evalex/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final inneMc:Ljava/math/MathContext;

.field private final innerExpressionString:Ljava/lang/String;

.field private final outerFunctions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/udojava/evalex/LazyFunction;",
            ">;"
        }
    .end annotation
.end field

.field private final outerOperators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/udojava/evalex/LazyOperator;",
            ">;"
        }
    .end annotation
.end field

.field private final outerVariables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/udojava/evalex/Expression$LazyNumber;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/udojava/evalex/Expression;

.field final synthetic val$expStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/udojava/evalex/Expression;

    .line 1809
    iput-object p1, p0, Lcom/udojava/evalex/Expression$74;->this$0:Lcom/udojava/evalex/Expression;

    iput-object p2, p0, Lcom/udojava/evalex/Expression$74;->val$expStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1810
    iget-object p2, p0, Lcom/udojava/evalex/Expression$74;->this$0:Lcom/udojava/evalex/Expression;

    iget-object p2, p2, Lcom/udojava/evalex/Expression;->variables:Ljava/util/Map;

    iput-object p2, p0, Lcom/udojava/evalex/Expression$74;->outerVariables:Ljava/util/Map;

    .line 1811
    iget-object p2, p0, Lcom/udojava/evalex/Expression$74;->this$0:Lcom/udojava/evalex/Expression;

    iget-object p2, p2, Lcom/udojava/evalex/Expression;->functions:Ljava/util/Map;

    iput-object p2, p0, Lcom/udojava/evalex/Expression$74;->outerFunctions:Ljava/util/Map;

    .line 1812
    iget-object p2, p0, Lcom/udojava/evalex/Expression$74;->this$0:Lcom/udojava/evalex/Expression;

    iget-object p2, p2, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    iput-object p2, p0, Lcom/udojava/evalex/Expression$74;->outerOperators:Ljava/util/Map;

    .line 1813
    iget-object p2, p0, Lcom/udojava/evalex/Expression$74;->val$expStr:Ljava/lang/String;

    iput-object p2, p0, Lcom/udojava/evalex/Expression$74;->innerExpressionString:Ljava/lang/String;

    .line 1814
    iget-object p2, p0, Lcom/udojava/evalex/Expression$74;->this$0:Lcom/udojava/evalex/Expression;

    # getter for: Lcom/udojava/evalex/Expression;->mc:Ljava/math/MathContext;
    invoke-static {p2}, Lcom/udojava/evalex/Expression;->access$200(Lcom/udojava/evalex/Expression;)Ljava/math/MathContext;

    move-result-object p2

    iput-object p2, p0, Lcom/udojava/evalex/Expression$74;->inneMc:Ljava/math/MathContext;

    return-void
.end method


# virtual methods
.method public eval()Ljava/math/BigDecimal;
    .registers 4

    .line 1823
    new-instance v0, Lcom/udojava/evalex/Expression;

    iget-object v1, p0, Lcom/udojava/evalex/Expression$74;->innerExpressionString:Ljava/lang/String;

    iget-object v2, p0, Lcom/udojava/evalex/Expression$74;->inneMc:Ljava/math/MathContext;

    invoke-direct {v0, v1, v2}, Lcom/udojava/evalex/Expression;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    .line 1824
    .local v0, "innerE":Lcom/udojava/evalex/Expression;
    iget-object v1, p0, Lcom/udojava/evalex/Expression$74;->outerVariables:Ljava/util/Map;

    iput-object v1, v0, Lcom/udojava/evalex/Expression;->variables:Ljava/util/Map;

    .line 1825
    iget-object v1, p0, Lcom/udojava/evalex/Expression$74;->outerFunctions:Ljava/util/Map;

    iput-object v1, v0, Lcom/udojava/evalex/Expression;->functions:Ljava/util/Map;

    .line 1826
    iget-object v1, p0, Lcom/udojava/evalex/Expression$74;->outerOperators:Ljava/util/Map;

    iput-object v1, v0, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    .line 1827
    invoke-virtual {v0}, Lcom/udojava/evalex/Expression;->eval()Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .line 1818
    iget-object v0, p0, Lcom/udojava/evalex/Expression$74;->innerExpressionString:Ljava/lang/String;

    return-object v0
.end method
