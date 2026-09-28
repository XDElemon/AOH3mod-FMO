.class public Lcom/udojava/evalex/Expression$Token;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/udojava/evalex/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Token"
.end annotation


# instance fields
.field public pos:I

.field public surface:Ljava/lang/String;

.field final synthetic this$0:Lcom/udojava/evalex/Expression;

.field public type:Lcom/udojava/evalex/Expression$TokenType;


# direct methods
.method public constructor <init>(Lcom/udojava/evalex/Expression;)V
    .registers 3
    .param p1, "this$0"    # Lcom/udojava/evalex/Expression;

    .line 389
    iput-object p1, p0, Lcom/udojava/evalex/Expression$Token;->this$0:Lcom/udojava/evalex/Expression;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    const-string v0, ""

    iput-object v0, p0, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public append(C)V
    .registers 4
    .param p1, "c"    # C

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public charAt(I)C
    .registers 3
    .param p1, "pos"    # I

    .line 404
    iget-object v0, p0, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public length()I
    .registers 2

    .line 408
    iget-object v0, p0, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 413
    iget-object v0, p0, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    return-object v0
.end method
