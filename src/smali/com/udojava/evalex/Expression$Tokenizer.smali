.class Lcom/udojava/evalex/Expression$Tokenizer;
.super Ljava/lang/Object;
.source "Expression.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/udojava/evalex/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tokenizer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/udojava/evalex/Expression$Token;",
        ">;"
    }
.end annotation


# instance fields
.field private input:Ljava/lang/String;

.field private nextToken:Lcom/udojava/evalex/Expression$Token;

.field private pos:I

.field private previousToken:Lcom/udojava/evalex/Expression$Token;

.field final synthetic this$0:Lcom/udojava/evalex/Expression;


# direct methods
.method public constructor <init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;)V
    .registers 4
    .param p2, "input"    # Ljava/lang/String;

    .line 448
    iput-object p1, p0, Lcom/udojava/evalex/Expression$Tokenizer;->this$0:Lcom/udojava/evalex/Expression;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    const/4 p1, 0x0

    iput p1, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    .line 441
    new-instance p1, Lcom/udojava/evalex/Expression$Token;

    iget-object v0, p0, Lcom/udojava/evalex/Expression$Tokenizer;->this$0:Lcom/udojava/evalex/Expression;

    invoke-direct {p1, v0}, Lcom/udojava/evalex/Expression$Token;-><init>(Lcom/udojava/evalex/Expression;)V

    iput-object p1, p0, Lcom/udojava/evalex/Expression$Tokenizer;->nextToken:Lcom/udojava/evalex/Expression$Token;

    .line 449
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    .line 450
    return-void
.end method

.method private consumeChar(Lcom/udojava/evalex/Expression$Token;)C
    .registers 5
    .param p1, "token"    # Lcom/udojava/evalex/Expression$Token;

    .line 473
    iget-object v0, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    iget v1, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Lcom/udojava/evalex/Expression$Token;->append(C)V

    .line 474
    iget v0, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    iget-object v1, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1b

    const/4 v0, 0x0

    goto :goto_23

    :cond_1b
    iget-object v0, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    iget v1, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_23
    return v0
.end method

.method private isHexDigit(C)Z
    .registers 3
    .param p1, "ch"    # C

    .line 488
    const/16 v0, 0x78

    if-eq p1, v0, :cond_23

    const/16 v0, 0x58

    if-eq p1, v0, :cond_23

    const/16 v0, 0x30

    if-lt p1, v0, :cond_10

    const/16 v0, 0x39

    if-le p1, v0, :cond_23

    :cond_10
    const/16 v0, 0x61

    if-lt p1, v0, :cond_18

    const/16 v0, 0x66

    if-le p1, v0, :cond_23

    :cond_18
    const/16 v0, 0x41

    if-lt p1, v0, :cond_21

    const/16 v0, 0x46

    if-gt p1, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method private peekNextChar()C
    .registers 3

    .line 463
    iget v0, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    iget-object v1, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_e

    const/4 v0, 0x0

    goto :goto_18

    :cond_e
    iget-object v0, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    iget v1, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_18
    return v0
.end method

.method private skipChar()C
    .registers 3

    .line 483
    iget v0, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    .line 484
    iget v0, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    iget-object v1, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x0

    goto :goto_1a

    :cond_12
    iget-object v0, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    iget v1, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_1a
    return v0
.end method

.method private tokenizeString(Lcom/udojava/evalex/Expression$Token;)V
    .registers 6
    .param p1, "token"    # Lcom/udojava/evalex/Expression$Token;

    .line 602
    invoke-direct {p0}, Lcom/udojava/evalex/Expression$Tokenizer;->skipChar()C

    move-result v0

    .line 605
    .local v0, "ch":C
    :goto_4
    const/16 v1, 0x22

    if-eq v0, v1, :cond_f

    if-eqz v0, :cond_f

    .line 606
    invoke-direct {p0, p1}, Lcom/udojava/evalex/Expression$Tokenizer;->consumeChar(Lcom/udojava/evalex/Expression$Token;)C

    move-result v0

    goto :goto_4

    .line 610
    :cond_f
    if-eqz v0, :cond_19

    .line 613
    invoke-direct {p0}, Lcom/udojava/evalex/Expression$Tokenizer;->skipChar()C

    .line 615
    sget-object v1, Lcom/udojava/evalex/Expression$TokenType;->STRINGPARAM:Lcom/udojava/evalex/Expression$TokenType;

    iput-object v1, p1, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    .line 616
    return-void

    .line 611
    :cond_19
    new-instance v1, Lcom/udojava/evalex/TokenizerException;

    const-string v2, "unterminated string literal"

    iget v3, p1, Lcom/udojava/evalex/Expression$Token;->pos:I

    invoke-direct {v1, v2, v3}, Lcom/udojava/evalex/TokenizerException;-><init>(Ljava/lang/String;I)V

    goto :goto_24

    :goto_23
    throw v1

    :goto_24
    goto :goto_23
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .line 454
    iget v0, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    iget-object v1, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public next()Lcom/udojava/evalex/Expression$Token;
    .registers 12

    .line 494
    new-instance v0, Lcom/udojava/evalex/Expression$Token;

    iget-object v1, p0, Lcom/udojava/evalex/Expression$Tokenizer;->this$0:Lcom/udojava/evalex/Expression;

    invoke-direct {v0, v1}, Lcom/udojava/evalex/Expression$Token;-><init>(Lcom/udojava/evalex/Expression;)V

    .line 496
    .local v0, "token":Lcom/udojava/evalex/Expression$Token;
    iget v1, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    iget-object v2, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_15

    .line 497
    iput-object v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->previousToken:Lcom/udojava/evalex/Expression$Token;

    .line 498
    return-object v3

    .line 500
    :cond_15
    iget-object v1, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    iget v2, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 501
    .local v1, "ch":C
    :goto_1d
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_32

    iget v2, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    iget-object v4, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_32

    .line 502
    invoke-direct {p0}, Lcom/udojava/evalex/Expression$Tokenizer;->skipChar()C

    move-result v1

    goto :goto_1d

    .line 504
    :cond_32
    iget v2, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    iput v2, v0, Lcom/udojava/evalex/Expression$Token;->pos:I

    .line 506
    iget v2, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    iget-object v4, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_4b

    .line 507
    iget-object v2, p0, Lcom/udojava/evalex/Expression$Tokenizer;->nextToken:Lcom/udojava/evalex/Expression$Token;

    iget v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/udojava/evalex/Expression$Token;->pos:I

    goto :goto_4d

    .line 509
    :cond_4b
    iput-object v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->nextToken:Lcom/udojava/evalex/Expression$Token;

    .line 512
    :goto_4d
    const/4 v2, 0x0

    .line 514
    .local v2, "isHex":Z
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    const/16 v4, 0x2e

    if-nez v3, :cond_1f3

    if-ne v1, v4, :cond_64

    invoke-direct {p0}, Lcom/udojava/evalex/Expression$Tokenizer;->peekNextChar()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_64

    goto/16 :goto_1f3

    .line 532
    :cond_64
    const/16 v3, 0x22

    if-ne v1, v3, :cond_6d

    .line 533
    invoke-direct {p0, v0}, Lcom/udojava/evalex/Expression$Tokenizer;->tokenizeString(Lcom/udojava/evalex/Expression$Token;)V

    goto/16 :goto_27c

    .line 534
    :cond_6d
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    const/16 v4, 0x28

    if-nez v3, :cond_171

    iget-object v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->this$0:Lcom/udojava/evalex/Expression;

    # getter for: Lcom/udojava/evalex/Expression;->firstVarChars:Ljava/lang/String;
    invoke-static {v3}, Lcom/udojava/evalex/Expression;->access$000(Lcom/udojava/evalex/Expression;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_83

    goto/16 :goto_171

    .line 553
    :cond_83
    const/16 v3, 0x29

    if-eq v1, v4, :cond_15a

    if-eq v1, v3, :cond_15a

    const/16 v5, 0x2c

    if-ne v1, v5, :cond_8f

    goto/16 :goto_15a

    .line 563
    :cond_8f
    const-string v6, ""

    .line 564
    .local v6, "greedyMatch":Ljava/lang/String;
    iget v7, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    .line 565
    .local v7, "initialPos":I
    iget-object v8, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    iget v9, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 566
    const/4 v8, -0x1

    .line 567
    .local v8, "validOperatorSeenUntil":I
    :cond_9c
    :goto_9c
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-nez v9, :cond_ec

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_ec

    iget-object v9, p0, Lcom/udojava/evalex/Expression$Tokenizer;->this$0:Lcom/udojava/evalex/Expression;

    # getter for: Lcom/udojava/evalex/Expression;->firstVarChars:Ljava/lang/String;
    invoke-static {v9}, Lcom/udojava/evalex/Expression;->access$000(Lcom/udojava/evalex/Expression;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_ec

    .line 568
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_ec

    if-eq v1, v4, :cond_ec

    if-eq v1, v3, :cond_ec

    if-eq v1, v5, :cond_ec

    iget v9, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    iget-object v10, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    .line 569
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_ec

    .line 570
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 571
    invoke-direct {p0}, Lcom/udojava/evalex/Expression$Tokenizer;->skipChar()C

    move-result v1

    .line 572
    iget-object v9, p0, Lcom/udojava/evalex/Expression$Tokenizer;->this$0:Lcom/udojava/evalex/Expression;

    iget-object v9, v9, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9c

    .line 573
    iget v8, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    goto :goto_9c

    .line 576
    :cond_ec
    const/4 v3, -0x1

    if-eq v8, v3, :cond_fb

    .line 577
    iget-object v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/udojava/evalex/Expression$Token;->append(Ljava/lang/String;)V

    .line 578
    iput v8, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    goto :goto_fe

    .line 580
    :cond_fb
    invoke-virtual {v0, v6}, Lcom/udojava/evalex/Expression$Token;->append(Ljava/lang/String;)V

    .line 585
    :goto_fe
    iget-object v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->previousToken:Lcom/udojava/evalex/Expression$Token;

    if-eqz v3, :cond_13d

    iget-object v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->previousToken:Lcom/udojava/evalex/Expression$Token;

    iget-object v3, v3, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v4, Lcom/udojava/evalex/Expression$TokenType;->OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

    if-ne v3, v4, :cond_11e

    iget-object v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->this$0:Lcom/udojava/evalex/Expression;

    iget-object v3, v3, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    iget-object v4, p0, Lcom/udojava/evalex/Expression$Tokenizer;->previousToken:Lcom/udojava/evalex/Expression$Token;

    iget-object v4, v4, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    .line 586
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/udojava/evalex/LazyOperator;

    invoke-interface {v3}, Lcom/udojava/evalex/LazyOperator;->isUnaryOperator()Z

    move-result v3

    if-eqz v3, :cond_13d

    :cond_11e
    iget-object v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->previousToken:Lcom/udojava/evalex/Expression$Token;

    iget-object v3, v3, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v4, Lcom/udojava/evalex/Expression$TokenType;->OPEN_PAREN:Lcom/udojava/evalex/Expression$TokenType;

    if-eq v3, v4, :cond_13d

    iget-object v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->previousToken:Lcom/udojava/evalex/Expression$Token;

    iget-object v3, v3, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v4, Lcom/udojava/evalex/Expression$TokenType;->COMMA:Lcom/udojava/evalex/Expression$TokenType;

    if-eq v3, v4, :cond_13d

    iget-object v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->previousToken:Lcom/udojava/evalex/Expression$Token;

    iget-object v3, v3, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v4, Lcom/udojava/evalex/Expression$TokenType;->UNARY_OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

    if-ne v3, v4, :cond_137

    goto :goto_13d

    .line 592
    :cond_137
    sget-object v3, Lcom/udojava/evalex/Expression$TokenType;->OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

    iput-object v3, v0, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    goto/16 :goto_27c

    .line 589
    :cond_13d
    :goto_13d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    .line 590
    sget-object v3, Lcom/udojava/evalex/Expression$TokenType;->UNARY_OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

    iput-object v3, v0, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    goto/16 :goto_27c

    .line 554
    .end local v6    # "greedyMatch":Ljava/lang/String;
    .end local v7    # "initialPos":I
    .end local v8    # "validOperatorSeenUntil":I
    :cond_15a
    :goto_15a
    if-ne v1, v4, :cond_161

    .line 555
    sget-object v3, Lcom/udojava/evalex/Expression$TokenType;->OPEN_PAREN:Lcom/udojava/evalex/Expression$TokenType;

    iput-object v3, v0, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    goto :goto_16c

    .line 556
    :cond_161
    if-ne v1, v3, :cond_168

    .line 557
    sget-object v3, Lcom/udojava/evalex/Expression$TokenType;->CLOSE_PAREN:Lcom/udojava/evalex/Expression$TokenType;

    iput-object v3, v0, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    goto :goto_16c

    .line 559
    :cond_168
    sget-object v3, Lcom/udojava/evalex/Expression$TokenType;->COMMA:Lcom/udojava/evalex/Expression$TokenType;

    iput-object v3, v0, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    .line 561
    :goto_16c
    invoke-direct {p0, v0}, Lcom/udojava/evalex/Expression$Tokenizer;->consumeChar(Lcom/udojava/evalex/Expression$Token;)C

    goto/16 :goto_27c

    .line 535
    :cond_171
    :goto_171
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1a3

    const/16 v3, 0x24

    if-eq v1, v3, :cond_1a3

    const/16 v3, 0x3a

    if-eq v1, v3, :cond_1a3

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1a3

    iget-object v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->this$0:Lcom/udojava/evalex/Expression;

    # getter for: Lcom/udojava/evalex/Expression;->varChars:Ljava/lang/String;
    invoke-static {v3}, Lcom/udojava/evalex/Expression;->access$100(Lcom/udojava/evalex/Expression;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_1a3

    .line 536
    invoke-virtual {v0}, Lcom/udojava/evalex/Expression$Token;->length()I

    move-result v3

    if-nez v3, :cond_1b2

    iget-object v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->this$0:Lcom/udojava/evalex/Expression;

    # getter for: Lcom/udojava/evalex/Expression;->firstVarChars:Ljava/lang/String;
    invoke-static {v3}, Lcom/udojava/evalex/Expression;->access$000(Lcom/udojava/evalex/Expression;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1b2

    :cond_1a3
    iget v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    iget-object v5, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1b2

    .line 537
    invoke-direct {p0, v0}, Lcom/udojava/evalex/Expression$Tokenizer;->consumeChar(Lcom/udojava/evalex/Expression$Token;)C

    move-result v1

    goto :goto_171

    .line 540
    :cond_1b2
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1d3

    .line 541
    :goto_1b8
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1cd

    iget v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    iget-object v5, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_1cd

    .line 542
    invoke-direct {p0}, Lcom/udojava/evalex/Expression$Tokenizer;->skipChar()C

    move-result v1

    goto :goto_1b8

    .line 544
    :cond_1cd
    iget v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    .line 546
    :cond_1d3
    iget-object v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->this$0:Lcom/udojava/evalex/Expression;

    iget-object v3, v3, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    iget-object v5, v0, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e5

    .line 547
    sget-object v3, Lcom/udojava/evalex/Expression$TokenType;->OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

    iput-object v3, v0, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    goto/16 :goto_27c

    .line 548
    :cond_1e5
    if-ne v1, v4, :cond_1ed

    .line 549
    sget-object v3, Lcom/udojava/evalex/Expression$TokenType;->FUNCTION:Lcom/udojava/evalex/Expression$TokenType;

    iput-object v3, v0, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    goto/16 :goto_27c

    .line 551
    :cond_1ed
    sget-object v3, Lcom/udojava/evalex/Expression$TokenType;->VARIABLE:Lcom/udojava/evalex/Expression$TokenType;

    iput-object v3, v0, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    goto/16 :goto_27c

    .line 515
    :cond_1f3
    :goto_1f3
    const/16 v3, 0x30

    if-ne v1, v3, :cond_208

    invoke-direct {p0}, Lcom/udojava/evalex/Expression$Tokenizer;->peekNextChar()C

    move-result v3

    const/16 v5, 0x78

    if-eq v3, v5, :cond_207

    invoke-direct {p0}, Lcom/udojava/evalex/Expression$Tokenizer;->peekNextChar()C

    move-result v3

    const/16 v5, 0x58

    if-ne v3, v5, :cond_208

    .line 516
    :cond_207
    const/4 v2, 0x1

    .line 518
    :cond_208
    :goto_208
    if-eqz v2, :cond_210

    .line 519
    invoke-direct {p0, v1}, Lcom/udojava/evalex/Expression$Tokenizer;->isHexDigit(C)Z

    move-result v3

    if-nez v3, :cond_26e

    .line 521
    :cond_210
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_264

    if-eq v1, v4, :cond_264

    const/16 v3, 0x65

    if-eq v1, v3, :cond_264

    const/16 v5, 0x45

    if-eq v1, v5, :cond_264

    const/16 v6, 0x2d

    if-ne v1, v6, :cond_242

    .line 522
    invoke-virtual {v0}, Lcom/udojava/evalex/Expression$Token;->length()I

    move-result v6

    if-lez v6, :cond_242

    .line 523
    invoke-virtual {v0}, Lcom/udojava/evalex/Expression$Token;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Lcom/udojava/evalex/Expression$Token;->charAt(I)C

    move-result v6

    if-eq v3, v6, :cond_264

    .line 524
    invoke-virtual {v0}, Lcom/udojava/evalex/Expression$Token;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Lcom/udojava/evalex/Expression$Token;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_264

    :cond_242
    const/16 v6, 0x2b

    if-ne v1, v6, :cond_273

    .line 525
    invoke-virtual {v0}, Lcom/udojava/evalex/Expression$Token;->length()I

    move-result v6

    if-lez v6, :cond_273

    .line 526
    invoke-virtual {v0}, Lcom/udojava/evalex/Expression$Token;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v6}, Lcom/udojava/evalex/Expression$Token;->charAt(I)C

    move-result v6

    if-eq v3, v6, :cond_264

    .line 527
    invoke-virtual {v0}, Lcom/udojava/evalex/Expression$Token;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/udojava/evalex/Expression$Token;->charAt(I)C

    move-result v3

    if-ne v5, v3, :cond_273

    :cond_264
    iget v3, p0, Lcom/udojava/evalex/Expression$Tokenizer;->pos:I

    iget-object v5, p0, Lcom/udojava/evalex/Expression$Tokenizer;->input:Ljava/lang/String;

    .line 528
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_273

    .line 529
    :cond_26e
    invoke-direct {p0, v0}, Lcom/udojava/evalex/Expression$Tokenizer;->consumeChar(Lcom/udojava/evalex/Expression$Token;)C

    move-result v1

    goto :goto_208

    .line 531
    :cond_273
    if-eqz v2, :cond_278

    sget-object v3, Lcom/udojava/evalex/Expression$TokenType;->HEX_LITERAL:Lcom/udojava/evalex/Expression$TokenType;

    goto :goto_27a

    :cond_278
    sget-object v3, Lcom/udojava/evalex/Expression$TokenType;->LITERAL:Lcom/udojava/evalex/Expression$TokenType;

    :goto_27a
    iput-object v3, v0, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    .line 595
    :goto_27c
    iput-object v0, p0, Lcom/udojava/evalex/Expression$Tokenizer;->previousToken:Lcom/udojava/evalex/Expression$Token;

    .line 596
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 422
    invoke-virtual {p0}, Lcom/udojava/evalex/Expression$Tokenizer;->next()Lcom/udojava/evalex/Expression$Token;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .line 620
    new-instance v0, Lcom/udojava/evalex/Expression$ExpressionException;

    const-string v1, "remove() not supported"

    invoke-direct {v0, v1}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
