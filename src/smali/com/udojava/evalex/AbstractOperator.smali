.class public abstract Lcom/udojava/evalex/AbstractOperator;
.super Lcom/udojava/evalex/AbstractLazyOperator;
.source "AbstractOperator.java"

# interfaces
.implements Lcom/udojava/evalex/Operator;


# direct methods
.method protected constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "oper"    # Ljava/lang/String;
    .param p2, "precedence"    # I
    .param p3, "leftAssoc"    # Z

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/udojava/evalex/AbstractLazyOperator;-><init>(Ljava/lang/String;IZ)V

    .line 80
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IZZ)V
    .registers 5
    .param p1, "oper"    # Ljava/lang/String;
    .param p2, "precedence"    # I
    .param p3, "leftAssoc"    # Z
    .param p4, "booleanOperator"    # Z

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/udojava/evalex/AbstractLazyOperator;-><init>(Ljava/lang/String;IZZ)V

    .line 67
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IZZZ)V
    .registers 6
    .param p1, "oper"    # Ljava/lang/String;
    .param p2, "precedence"    # I
    .param p3, "leftAssoc"    # Z
    .param p4, "booleanOperator"    # Z
    .param p5, "unaryOperator"    # Z

    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/udojava/evalex/AbstractLazyOperator;-><init>(Ljava/lang/String;IZZZ)V

    .line 52
    return-void
.end method


# virtual methods
.method public eval(Lcom/udojava/evalex/Expression$LazyNumber;Lcom/udojava/evalex/Expression$LazyNumber;)Lcom/udojava/evalex/Expression$LazyNumber;
    .registers 4
    .param p1, "v1"    # Lcom/udojava/evalex/Expression$LazyNumber;
    .param p2, "v2"    # Lcom/udojava/evalex/Expression$LazyNumber;

    .line 92
    if-nez p2, :cond_8

    .line 93
    new-instance v0, Lcom/udojava/evalex/AbstractOperator$1;

    invoke-direct {v0, p0, p1}, Lcom/udojava/evalex/AbstractOperator$1;-><init>(Lcom/udojava/evalex/AbstractOperator;Lcom/udojava/evalex/Expression$LazyNumber;)V

    return-object v0

    .line 103
    :cond_8
    new-instance v0, Lcom/udojava/evalex/AbstractOperator$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/udojava/evalex/AbstractOperator$2;-><init>(Lcom/udojava/evalex/AbstractOperator;Lcom/udojava/evalex/Expression$LazyNumber;Lcom/udojava/evalex/Expression$LazyNumber;)V

    return-object v0
.end method
