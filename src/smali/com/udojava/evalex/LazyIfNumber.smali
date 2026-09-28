.class public Lcom/udojava/evalex/LazyIfNumber;
.super Ljava/lang/Object;
.source "LazyIfNumber.java"

# interfaces
.implements Lcom/udojava/evalex/Expression$LazyNumber;


# instance fields
.field private lazyParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/udojava/evalex/Expression$LazyNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/udojava/evalex/Expression$LazyNumber;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "lazyParams":Ljava/util/List;, "Ljava/util/List<Lcom/udojava/evalex/Expression$LazyNumber;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/udojava/evalex/LazyIfNumber;->lazyParams:Ljava/util/List;

    .line 42
    return-void
.end method

.method private assertNotNull(Ljava/math/BigDecimal;)V
    .registers 4
    .param p1, "v1"    # Ljava/math/BigDecimal;

    .line 58
    if-eqz p1, :cond_3

    .line 61
    return-void

    .line 59
    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Operand may not be null"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public eval()Ljava/math/BigDecimal;
    .registers 5

    .line 46
    iget-object v0, p0, Lcom/udojava/evalex/LazyIfNumber;->lazyParams:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/udojava/evalex/Expression$LazyNumber;

    invoke-interface {v0}, Lcom/udojava/evalex/Expression$LazyNumber;->eval()Ljava/math/BigDecimal;

    move-result-object v0

    .line 47
    .local v0, "result":Ljava/math/BigDecimal;
    invoke-direct {p0, v0}, Lcom/udojava/evalex/LazyIfNumber;->assertNotNull(Ljava/math/BigDecimal;)V

    .line 48
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1a

    const/4 v1, 0x1

    .line 49
    .local v1, "isTrue":Z
    :cond_1a
    iget-object v2, p0, Lcom/udojava/evalex/LazyIfNumber;->lazyParams:Ljava/util/List;

    if-eqz v1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v3, 0x2

    :goto_20
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/udojava/evalex/Expression$LazyNumber;

    invoke-interface {v2}, Lcom/udojava/evalex/Expression$LazyNumber;->eval()Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2
.end method

.method public getString()Ljava/lang/String;
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/udojava/evalex/LazyIfNumber;->lazyParams:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/udojava/evalex/Expression$LazyNumber;

    invoke-interface {v0}, Lcom/udojava/evalex/Expression$LazyNumber;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
