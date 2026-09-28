.class public abstract Lcom/udojava/evalex/AbstractLazyOperator;
.super Ljava/lang/Object;
.source "AbstractLazyOperator.java"

# interfaces
.implements Lcom/udojava/evalex/LazyOperator;


# instance fields
.field protected booleanOperator:Z

.field protected leftAssoc:Z

.field protected oper:Ljava/lang/String;

.field protected precedence:I

.field protected unaryOperator:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "oper"    # Ljava/lang/String;
    .param p2, "precedence"    # I
    .param p3, "leftAssoc"    # Z

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/udojava/evalex/AbstractLazyOperator;->booleanOperator:Z

    .line 110
    iput-object p1, p0, Lcom/udojava/evalex/AbstractLazyOperator;->oper:Ljava/lang/String;

    .line 111
    iput p2, p0, Lcom/udojava/evalex/AbstractLazyOperator;->precedence:I

    .line 112
    iput-boolean p3, p0, Lcom/udojava/evalex/AbstractLazyOperator;->leftAssoc:Z

    .line 113
    iput-boolean v0, p0, Lcom/udojava/evalex/AbstractLazyOperator;->unaryOperator:Z

    .line 114
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IZZ)V
    .registers 6
    .param p1, "oper"    # Ljava/lang/String;
    .param p2, "precedence"    # I
    .param p3, "leftAssoc"    # Z
    .param p4, "booleanOperator"    # Z

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/udojava/evalex/AbstractLazyOperator;->booleanOperator:Z

    .line 93
    iput-object p1, p0, Lcom/udojava/evalex/AbstractLazyOperator;->oper:Ljava/lang/String;

    .line 94
    iput p2, p0, Lcom/udojava/evalex/AbstractLazyOperator;->precedence:I

    .line 95
    iput-boolean p3, p0, Lcom/udojava/evalex/AbstractLazyOperator;->leftAssoc:Z

    .line 96
    iput-boolean p4, p0, Lcom/udojava/evalex/AbstractLazyOperator;->booleanOperator:Z

    .line 97
    iput-boolean v0, p0, Lcom/udojava/evalex/AbstractLazyOperator;->unaryOperator:Z

    .line 98
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IZZZ)V
    .registers 7
    .param p1, "oper"    # Ljava/lang/String;
    .param p2, "precedence"    # I
    .param p3, "leftAssoc"    # Z
    .param p4, "booleanOperator"    # Z
    .param p5, "unaryOperator"    # Z

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/udojava/evalex/AbstractLazyOperator;->booleanOperator:Z

    .line 74
    iput-object p1, p0, Lcom/udojava/evalex/AbstractLazyOperator;->oper:Ljava/lang/String;

    .line 75
    iput p2, p0, Lcom/udojava/evalex/AbstractLazyOperator;->precedence:I

    .line 76
    iput-boolean p3, p0, Lcom/udojava/evalex/AbstractLazyOperator;->leftAssoc:Z

    .line 77
    iput-boolean p4, p0, Lcom/udojava/evalex/AbstractLazyOperator;->booleanOperator:Z

    .line 78
    iput-boolean p5, p0, Lcom/udojava/evalex/AbstractLazyOperator;->unaryOperator:Z

    .line 79
    return-void
.end method


# virtual methods
.method public getOper()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/udojava/evalex/AbstractLazyOperator;->oper:Ljava/lang/String;

    return-object v0
.end method

.method public getPrecedence()I
    .registers 2

    .line 129
    iget v0, p0, Lcom/udojava/evalex/AbstractLazyOperator;->precedence:I

    return v0
.end method

.method public isBooleanOperator()Z
    .registers 2

    .line 146
    iget-boolean v0, p0, Lcom/udojava/evalex/AbstractLazyOperator;->booleanOperator:Z

    return v0
.end method

.method public isLeftAssoc()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/udojava/evalex/AbstractLazyOperator;->leftAssoc:Z

    return v0
.end method

.method public isUnaryOperator()Z
    .registers 2

    .line 155
    iget-boolean v0, p0, Lcom/udojava/evalex/AbstractLazyOperator;->unaryOperator:Z

    return v0
.end method
