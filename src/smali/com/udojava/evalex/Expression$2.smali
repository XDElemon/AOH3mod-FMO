.class Lcom/udojava/evalex/Expression$2;
.super Ljava/lang/Object;
.source "Expression.java"

# interfaces
.implements Lcom/udojava/evalex/Expression$LazyNumber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/udojava/evalex/Expression;->createLazyNumber(Ljava/math/BigDecimal;)Lcom/udojava/evalex/Expression$LazyNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/udojava/evalex/Expression;

.field final synthetic val$bigDecimal:Ljava/math/BigDecimal;


# direct methods
.method constructor <init>(Lcom/udojava/evalex/Expression;Ljava/math/BigDecimal;)V
    .registers 3
    .param p1, "this$0"    # Lcom/udojava/evalex/Expression;

    .line 258
    iput-object p1, p0, Lcom/udojava/evalex/Expression$2;->this$0:Lcom/udojava/evalex/Expression;

    iput-object p2, p0, Lcom/udojava/evalex/Expression$2;->val$bigDecimal:Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Ljava/math/BigDecimal;
    .registers 2

    .line 266
    iget-object v0, p0, Lcom/udojava/evalex/Expression$2;->val$bigDecimal:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/udojava/evalex/Expression$2;->val$bigDecimal:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
