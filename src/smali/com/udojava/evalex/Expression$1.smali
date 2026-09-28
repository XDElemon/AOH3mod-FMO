.class final Lcom/udojava/evalex/Expression$1;
.super Ljava/lang/Object;
.source "Expression.java"

# interfaces
.implements Lcom/udojava/evalex/Expression$LazyNumber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/udojava/evalex/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eval()Ljava/math/BigDecimal;
    .registers 2

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .line 221
    const/4 v0, 0x0

    return-object v0
.end method
