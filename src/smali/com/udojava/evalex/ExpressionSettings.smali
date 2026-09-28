.class public Lcom/udojava/evalex/ExpressionSettings;
.super Ljava/lang/Object;
.source "ExpressionSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/udojava/evalex/ExpressionSettings$Builder;
    }
.end annotation


# instance fields
.field private mathContext:Ljava/math/MathContext;

.field private powerOperatorPrecedence:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/math/MathContext;I)V
    .registers 3
    .param p1, "mathContext"    # Ljava/math/MathContext;
    .param p2, "powerOperatorPrecedence"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/udojava/evalex/ExpressionSettings;->mathContext:Ljava/math/MathContext;

    .line 35
    iput p2, p0, Lcom/udojava/evalex/ExpressionSettings;->powerOperatorPrecedence:I

    .line 36
    return-void
.end method

.method public static builder()Lcom/udojava/evalex/ExpressionSettings$Builder;
    .registers 1

    .line 57
    new-instance v0, Lcom/udojava/evalex/ExpressionSettings$Builder;

    invoke-direct {v0}, Lcom/udojava/evalex/ExpressionSettings$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getMathContext()Ljava/math/MathContext;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/udojava/evalex/ExpressionSettings;->mathContext:Ljava/math/MathContext;

    return-object v0
.end method

.method public getPowerOperatorPrecedence()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/udojava/evalex/ExpressionSettings;->powerOperatorPrecedence:I

    return v0
.end method
