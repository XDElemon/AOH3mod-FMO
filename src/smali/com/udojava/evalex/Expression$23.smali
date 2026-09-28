.class Lcom/udojava/evalex/Expression$23;
.super Lcom/udojava/evalex/Expression$LazyFunction;
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

    .line 863
    iput-object p1, p0, Lcom/udojava/evalex/Expression$23;->this$0:Lcom/udojava/evalex/Expression;

    invoke-direct {p0, p1, p2, p3}, Lcom/udojava/evalex/Expression$LazyFunction;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public lazyEval(Ljava/util/List;)Lcom/udojava/evalex/Expression$LazyNumber;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/udojava/evalex/Expression$LazyNumber;",
            ">;)",
            "Lcom/udojava/evalex/Expression$LazyNumber;"
        }
    .end annotation

    .line 866
    .local p1, "lazyParams":Ljava/util/List;, "Ljava/util/List<Lcom/udojava/evalex/Expression$LazyNumber;>;"
    new-instance v0, Lcom/udojava/evalex/LazyIfNumber;

    invoke-direct {v0, p1}, Lcom/udojava/evalex/LazyIfNumber;-><init>(Ljava/util/List;)V

    return-object v0
.end method
