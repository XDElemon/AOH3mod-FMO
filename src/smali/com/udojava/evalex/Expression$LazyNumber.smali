.class public interface abstract Lcom/udojava/evalex/Expression$LazyNumber;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/udojava/evalex/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LazyNumber"
.end annotation


# virtual methods
.method public abstract eval()Ljava/math/BigDecimal;
.end method

.method public abstract getString()Ljava/lang/String;
.end method
