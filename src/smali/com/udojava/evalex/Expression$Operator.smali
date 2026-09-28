.class public abstract Lcom/udojava/evalex/Expression$Operator;
.super Lcom/udojava/evalex/AbstractOperator;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/udojava/evalex/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Operator"
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

    .line 363
    iput-object p1, p0, Lcom/udojava/evalex/Expression$Operator;->this$0:Lcom/udojava/evalex/Expression;

    .line 364
    invoke-direct {p0, p2, p3, p4}, Lcom/udojava/evalex/AbstractOperator;-><init>(Ljava/lang/String;IZ)V

    .line 365
    return-void
.end method

.method public constructor <init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZZ)V
    .registers 6
    .param p1, "this$0"    # Lcom/udojava/evalex/Expression;
    .param p2, "oper"    # Ljava/lang/String;
    .param p3, "precedence"    # I
    .param p4, "leftAssoc"    # Z
    .param p5, "booleanOperator"    # Z

    .line 350
    iput-object p1, p0, Lcom/udojava/evalex/Expression$Operator;->this$0:Lcom/udojava/evalex/Expression;

    .line 351
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/udojava/evalex/AbstractOperator;-><init>(Ljava/lang/String;IZZ)V

    .line 352
    return-void
.end method

.method public constructor <init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZZZ)V
    .registers 13
    .param p1, "this$0"    # Lcom/udojava/evalex/Expression;
    .param p2, "oper"    # Ljava/lang/String;
    .param p3, "precedence"    # I
    .param p4, "leftAssoc"    # Z
    .param p5, "booleanOperator"    # Z
    .param p6, "unaryOperator"    # Z

    .line 336
    iput-object p1, p0, Lcom/udojava/evalex/Expression$Operator;->this$0:Lcom/udojava/evalex/Expression;

    .line 337
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/udojava/evalex/AbstractOperator;-><init>(Ljava/lang/String;IZZZ)V

    .line 338
    return-void
.end method
