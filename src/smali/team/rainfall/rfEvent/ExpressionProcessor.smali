.class public Lteam/rainfall/rfEvent/ExpressionProcessor;
.super Ljava/lang/Object;
.source "ExpressionProcessor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compute(ILjava/lang/String;)I
    .registers 10
    .param p0, "iCivID"    # I
    .param p1, "expStr"    # Ljava/lang/String;

    .line 16
    const-string v0, "$"

    const-string v1, "a$"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v2, Lcom/udojava/evalex/Expression;

    invoke-direct {v2, p1}, Lcom/udojava/evalex/Expression;-><init>(Ljava/lang/String;)V

    .line 18
    .local v2, "expression":Lcom/udojava/evalex/Expression;
    invoke-virtual {v2}, Lcom/udojava/evalex/Expression;->getUsedVariables()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 19
    .local v4, "variable":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 20
    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lteam/rainfall/rfEvent/CounterBuilder;->getCounterFromCiv(ILjava/lang/String;)Lteam/rainfall/rfEvent/Counter;

    move-result-object v5

    .line 21
    .local v5, "counter":Lteam/rainfall/rfEvent/Counter;
    if-eqz v5, :cond_3c

    .line 22
    iget v6, v5, Lteam/rainfall/rfEvent/Counter;->value:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/udojava/evalex/Expression;->setVariable(Ljava/lang/String;Ljava/math/BigDecimal;)Lcom/udojava/evalex/Expression;

    goto :goto_45

    .line 24
    :cond_3c
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcom/udojava/evalex/Expression;->setVariable(Ljava/lang/String;Ljava/math/BigDecimal;)Lcom/udojava/evalex/Expression;

    .line 27
    .end local v4    # "variable":Ljava/lang/String;
    .end local v5    # "counter":Lteam/rainfall/rfEvent/Counter;
    :cond_45
    :goto_45
    goto :goto_15

    .line 28
    :cond_46
    invoke-virtual {v2}, Lcom/udojava/evalex/Expression;->eval()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 12
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x0

    const-string v2, "a$test - 1 > 0"

    invoke-static {v1, v2}, Lteam/rainfall/rfEvent/ExpressionProcessor;->satisfied(ILjava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Z)V

    .line 13
    return-void
.end method

.method public static satisfied(ILjava/lang/String;)Z
    .registers 9
    .param p0, "iCivID"    # I
    .param p1, "expStr"    # Ljava/lang/String;

    .line 32
    const-string v0, "$"

    const-string v1, "a$"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 33
    new-instance v0, Lcom/udojava/evalex/Expression;

    invoke-direct {v0, p1}, Lcom/udojava/evalex/Expression;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, "expression":Lcom/udojava/evalex/Expression;
    invoke-virtual {v0}, Lcom/udojava/evalex/Expression;->getUsedVariables()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 35
    .local v3, "variable":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A$ counter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lteam/rainfall/finality/FinalityLogger;->debug(Ljava/lang/String;)V

    .line 37
    const-string v4, ""

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lteam/rainfall/rfEvent/CounterBuilder;->getCounterFromCiv(ILjava/lang/String;)Lteam/rainfall/rfEvent/Counter;

    move-result-object v4

    .line 38
    .local v4, "counter":Lteam/rainfall/rfEvent/Counter;
    if-eqz v4, :cond_6c

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAT2 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lteam/rainfall/rfEvent/Counter;->value:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lteam/rainfall/finality/FinalityLogger;->debug(Ljava/lang/String;)V

    .line 40
    iget v5, v4, Lteam/rainfall/rfEvent/Counter;->value:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/udojava/evalex/Expression;->setVariable(Ljava/lang/String;Ljava/math/BigDecimal;)Lcom/udojava/evalex/Expression;

    goto :goto_7a

    .line 42
    :cond_6c
    const-string v5, "SAT3 "

    invoke-static {v5}, Lteam/rainfall/finality/FinalityLogger;->debug(Ljava/lang/String;)V

    .line 43
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/udojava/evalex/Expression;->setVariable(Ljava/lang/String;Ljava/math/BigDecimal;)Lcom/udojava/evalex/Expression;

    .line 46
    .end local v3    # "variable":Ljava/lang/String;
    .end local v4    # "counter":Lteam/rainfall/rfEvent/Counter;
    :cond_7a
    :goto_7a
    goto :goto_15

    .line 47
    :cond_7b
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SAT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/udojava/evalex/Expression;->getExpression()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Lcom/udojava/evalex/Expression;->eval()Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-static {v1, v2}, Lteam/rainfall/rfEvent/ExpressionProcessor$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
