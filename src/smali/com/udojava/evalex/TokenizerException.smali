.class public Lcom/udojava/evalex/TokenizerException;
.super Lcom/udojava/evalex/Expression$ExpressionException;
.source "TokenizerException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "characterPosition"    # I

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;I)V

    .line 6
    return-void
.end method
