.class public abstract Lcom/udojava/evalex/Expression$UnaryOperator;
.super Lcom/udojava/evalex/AbstractUnaryOperator;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/udojava/evalex/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "UnaryOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/udojava/evalex/Expression;


# direct methods
.method public constructor <init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "this$0"    # Lcom/udojava/evalex/Expression;
    .param p2, "oper"    # Ljava/lang/String;
    .param p3, "precedence"    # I
    .param p4, "leftAssoc"    # Z

    .line 376
    iput-object p1, p0, Lcom/udojava/evalex/Expression$UnaryOperator;->this$0:Lcom/udojava/evalex/Expression;

    .line 377
    invoke-direct {p0, p2, p3, p4}, Lcom/udojava/evalex/AbstractUnaryOperator;-><init>(Ljava/lang/String;IZ)V

    .line 378
    return-void
.end method
