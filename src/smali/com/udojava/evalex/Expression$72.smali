.class Lcom/udojava/evalex/Expression$72;
.super Ljava/lang/Object;
.source "Expression.java"

# interfaces
.implements Lcom/udojava/evalex/Expression$LazyNumber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/udojava/evalex/Expression;->eval(Z)Ljava/math/BigDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/udojava/evalex/Expression;

.field final synthetic val$token:Lcom/udojava/evalex/Expression$Token;


# direct methods
.method constructor <init>(Lcom/udojava/evalex/Expression;Lcom/udojava/evalex/Expression$Token;)V
    .registers 3
    .param p1, "this$0"    # Lcom/udojava/evalex/Expression;

    .line 1645
    iput-object p1, p0, Lcom/udojava/evalex/Expression$72;->this$0:Lcom/udojava/evalex/Expression;

    iput-object p2, p0, Lcom/udojava/evalex/Expression$72;->val$token:Lcom/udojava/evalex/Expression$Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Ljava/math/BigDecimal;
    .registers 2

    .line 1647
    const/4 v0, 0x0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .line 1651
    iget-object v0, p0, Lcom/udojava/evalex/Expression$72;->val$token:Lcom/udojava/evalex/Expression$Token;

    iget-object v0, v0, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    return-object v0
.end method
