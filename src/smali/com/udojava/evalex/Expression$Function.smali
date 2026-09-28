.class public abstract Lcom/udojava/evalex/Expression$Function;
.super Lcom/udojava/evalex/AbstractFunction;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/udojava/evalex/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Function"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/udojava/evalex/Expression;


# direct methods
.method public constructor <init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/udojava/evalex/Expression;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "numParams"    # I

    .line 308
    iput-object p1, p0, Lcom/udojava/evalex/Expression$Function;->this$0:Lcom/udojava/evalex/Expression;

    .line 309
    invoke-direct {p0, p2, p3}, Lcom/udojava/evalex/AbstractFunction;-><init>(Ljava/lang/String;I)V

    .line 310
    return-void
.end method

.method public constructor <init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "this$0"    # Lcom/udojava/evalex/Expression;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "numParams"    # I
    .param p4, "booleanFunction"    # Z

    .line 312
    iput-object p1, p0, Lcom/udojava/evalex/Expression$Function;->this$0:Lcom/udojava/evalex/Expression;

    .line 313
    invoke-direct {p0, p2, p3, p4}, Lcom/udojava/evalex/AbstractFunction;-><init>(Ljava/lang/String;IZ)V

    .line 314
    return-void
.end method
