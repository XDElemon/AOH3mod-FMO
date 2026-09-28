.class public Lcom/udojava/evalex/ExpressionSettings$Builder;
.super Ljava/lang/Object;
.source "ExpressionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/udojava/evalex/ExpressionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mathContext:Ljava/math/MathContext;

.field private powerOperatorPrecedence:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget-object v0, Ljava/math/MathContext;->DECIMAL32:Ljava/math/MathContext;

    iput-object v0, p0, Lcom/udojava/evalex/ExpressionSettings$Builder;->mathContext:Ljava/math/MathContext;

    .line 67
    const/16 v0, 0x28

    iput v0, p0, Lcom/udojava/evalex/ExpressionSettings$Builder;->powerOperatorPrecedence:I

    return-void
.end method


# virtual methods
.method public build()Lcom/udojava/evalex/ExpressionSettings;
    .registers 4

    .line 85
    new-instance v0, Lcom/udojava/evalex/ExpressionSettings;

    iget-object v1, p0, Lcom/udojava/evalex/ExpressionSettings$Builder;->mathContext:Ljava/math/MathContext;

    iget v2, p0, Lcom/udojava/evalex/ExpressionSettings$Builder;->powerOperatorPrecedence:I

    invoke-direct {v0, v1, v2}, Lcom/udojava/evalex/ExpressionSettings;-><init>(Ljava/math/MathContext;I)V

    return-object v0
.end method

.method public mathContext(Ljava/math/MathContext;)Lcom/udojava/evalex/ExpressionSettings$Builder;
    .registers 2
    .param p1, "mathContext"    # Ljava/math/MathContext;

    .line 70
    iput-object p1, p0, Lcom/udojava/evalex/ExpressionSettings$Builder;->mathContext:Ljava/math/MathContext;

    .line 71
    return-object p0
.end method

.method public powerOperatorPrecedence(I)Lcom/udojava/evalex/ExpressionSettings$Builder;
    .registers 2
    .param p1, "powerOperatorPrecedence"    # I

    .line 80
    iput p1, p0, Lcom/udojava/evalex/ExpressionSettings$Builder;->powerOperatorPrecedence:I

    .line 81
    return-object p0
.end method

.method public powerOperatorPrecedenceHigher()Lcom/udojava/evalex/ExpressionSettings$Builder;
    .registers 2

    .line 75
    const/16 v0, 0x50

    iput v0, p0, Lcom/udojava/evalex/ExpressionSettings$Builder;->powerOperatorPrecedence:I

    .line 76
    return-object p0
.end method
