.class Lcom/udojava/evalex/AbstractFunction$1;
.super Ljava/lang/Object;
.source "AbstractFunction.java"

# interfaces
.implements Lcom/udojava/evalex/Expression$LazyNumber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/udojava/evalex/AbstractFunction;->lazyEval(Ljava/util/List;)Lcom/udojava/evalex/Expression$LazyNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/udojava/evalex/AbstractFunction;

.field final synthetic val$lazyParams:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/udojava/evalex/AbstractFunction;Ljava/util/List;)V
    .registers 3
    .param p1, "this$0"    # Lcom/udojava/evalex/AbstractFunction;

    .line 65
    iput-object p1, p0, Lcom/udojava/evalex/AbstractFunction$1;->this$0:Lcom/udojava/evalex/AbstractFunction;

    iput-object p2, p0, Lcom/udojava/evalex/AbstractFunction$1;->val$lazyParams:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getParams()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/udojava/evalex/AbstractFunction$1;->params:Ljava/util/List;

    if-nez v0, :cond_27

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/udojava/evalex/AbstractFunction$1;->params:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lcom/udojava/evalex/AbstractFunction$1;->val$lazyParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/udojava/evalex/Expression$LazyNumber;

    .line 81
    .local v1, "lazyParam":Lcom/udojava/evalex/Expression$LazyNumber;
    iget-object v2, p0, Lcom/udojava/evalex/AbstractFunction$1;->params:Ljava/util/List;

    invoke-interface {v1}, Lcom/udojava/evalex/Expression$LazyNumber;->eval()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v1    # "lazyParam":Lcom/udojava/evalex/Expression$LazyNumber;
    goto :goto_11

    .line 84
    :cond_27
    iget-object v0, p0, Lcom/udojava/evalex/AbstractFunction$1;->params:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public eval()Ljava/math/BigDecimal;
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/udojava/evalex/AbstractFunction$1;->this$0:Lcom/udojava/evalex/AbstractFunction;

    invoke-direct {p0}, Lcom/udojava/evalex/AbstractFunction$1;->getParams()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/udojava/evalex/AbstractFunction;->eval(Ljava/util/List;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/udojava/evalex/AbstractFunction$1;->this$0:Lcom/udojava/evalex/AbstractFunction;

    invoke-direct {p0}, Lcom/udojava/evalex/AbstractFunction$1;->getParams()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/udojava/evalex/AbstractFunction;->eval(Ljava/util/List;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
