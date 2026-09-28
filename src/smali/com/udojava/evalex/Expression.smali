.class public Lcom/udojava/evalex/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/udojava/evalex/Expression$Tokenizer;,
        Lcom/udojava/evalex/Expression$Token;,
        Lcom/udojava/evalex/Expression$TokenType;,
        Lcom/udojava/evalex/Expression$UnaryOperator;,
        Lcom/udojava/evalex/Expression$Operator;,
        Lcom/udojava/evalex/Expression$Function;,
        Lcom/udojava/evalex/Expression$LazyFunction;,
        Lcom/udojava/evalex/Expression$LazyNumber;,
        Lcom/udojava/evalex/Expression$ExpressionException;
    }
.end annotation


# static fields
.field private static final DECIMAL_SEPARATOR:C = '.'

.field private static final DEFAULT_CONSTANTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field

.field private static final MINUS_SIGN:C = '-'

.field public static final MISSING_PARAMETERS_FOR_OPERATOR:Ljava/lang/String; = "Missing parameter(s) for operator "

.field public static final OPERATOR_PRECEDENCE_ADDITIVE:I = 0x14

.field public static final OPERATOR_PRECEDENCE_AND:I = 0x4

.field public static final OPERATOR_PRECEDENCE_COMPARISON:I = 0xa

.field public static final OPERATOR_PRECEDENCE_EQUALITY:I = 0x7

.field public static final OPERATOR_PRECEDENCE_MULTIPLICATIVE:I = 0x1e

.field public static final OPERATOR_PRECEDENCE_OR:I = 0x2

.field public static final OPERATOR_PRECEDENCE_POWER:I = 0x28

.field public static final OPERATOR_PRECEDENCE_POWER_HIGHER:I = 0x50

.field public static final OPERATOR_PRECEDENCE_UNARY:I = 0x3c

.field private static final PARAMS_START:Lcom/udojava/evalex/Expression$LazyNumber;

.field public static final PI:Ljava/math/BigDecimal;

.field public static final e:Ljava/math/BigDecimal;


# instance fields
.field private expressionString:Ljava/lang/String;

.field private firstVarChars:Ljava/lang/String;

.field protected functions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/udojava/evalex/LazyFunction;",
            ">;"
        }
    .end annotation
.end field

.field private mc:Ljava/math/MathContext;

.field protected operators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/udojava/evalex/LazyOperator;",
            ">;"
        }
    .end annotation
.end field

.field private final originalExpression:Ljava/lang/String;

.field private powerOperatorPrecedence:I

.field private rpn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/udojava/evalex/Expression$Token;",
            ">;"
        }
    .end annotation
.end field

.field private varChars:Ljava/lang/String;

.field protected variables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/udojava/evalex/Expression$LazyNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 121
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "3.1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/udojava/evalex/Expression;->PI:Ljava/math/BigDecimal;

    .line 127
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "2.71828182845904523536028747135266249775724709369995957496696762772407663"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/udojava/evalex/Expression;->e:Ljava/math/BigDecimal;

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/udojava/evalex/Expression;->DEFAULT_CONSTANTS:Ljava/util/Map;

    .line 204
    sget-object v0, Lcom/udojava/evalex/Expression;->DEFAULT_CONSTANTS:Ljava/util/Map;

    const-string v1, "e"

    sget-object v2, Lcom/udojava/evalex/Expression;->e:Ljava/math/BigDecimal;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/udojava/evalex/Expression;->DEFAULT_CONSTANTS:Ljava/util/Map;

    const-string v1, "PI"

    sget-object v2, Lcom/udojava/evalex/Expression;->PI:Ljava/math/BigDecimal;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/udojava/evalex/Expression;->DEFAULT_CONSTANTS:Ljava/util/Map;

    const-string v1, "NULL"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/udojava/evalex/Expression;->DEFAULT_CONSTANTS:Ljava/util/Map;

    const-string v1, "TRUE"

    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/udojava/evalex/Expression;->DEFAULT_CONSTANTS:Ljava/util/Map;

    const-string v1, "FALSE"

    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v0, Lcom/udojava/evalex/Expression$1;

    invoke-direct {v0}, Lcom/udojava/evalex/Expression$1;-><init>()V

    sput-object v0, Lcom/udojava/evalex/Expression;->PARAMS_START:Lcom/udojava/evalex/Expression$LazyNumber;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "expression"    # Ljava/lang/String;

    .line 634
    sget-object v0, Ljava/math/MathContext;->DECIMAL32:Ljava/math/MathContext;

    invoke-direct {p0, p1, v0}, Lcom/udojava/evalex/Expression;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    .line 635
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/udojava/evalex/ExpressionSettings;)V
    .registers 17
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "expressionSettings"    # Lcom/udojava/evalex/ExpressionSettings;

    .line 661
    move-object v6, p0

    move-object v7, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/16 v0, 0x28

    iput v0, v6, Lcom/udojava/evalex/Expression;->powerOperatorPrecedence:I

    .line 148
    const-string v0, "_"

    iput-object v0, v6, Lcom/udojava/evalex/Expression;->firstVarChars:Ljava/lang/String;

    .line 154
    iput-object v0, v6, Lcom/udojava/evalex/Expression;->varChars:Ljava/lang/String;

    .line 164
    const/4 v8, 0x0

    iput-object v8, v6, Lcom/udojava/evalex/Expression;->expressionString:Ljava/lang/String;

    .line 169
    iput-object v8, v6, Lcom/udojava/evalex/Expression;->rpn:Ljava/util/List;

    .line 174
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, v6, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    .line 180
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, v6, Lcom/udojava/evalex/Expression;->functions:Ljava/util/Map;

    .line 186
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, v6, Lcom/udojava/evalex/Expression;->variables:Ljava/util/Map;

    .line 662
    invoke-virtual/range {p2 .. p2}, Lcom/udojava/evalex/ExpressionSettings;->getMathContext()Ljava/math/MathContext;

    move-result-object v0

    iput-object v0, v6, Lcom/udojava/evalex/Expression;->mc:Ljava/math/MathContext;

    .line 663
    invoke-virtual/range {p2 .. p2}, Lcom/udojava/evalex/ExpressionSettings;->getPowerOperatorPrecedence()I

    move-result v0

    iput v0, v6, Lcom/udojava/evalex/Expression;->powerOperatorPrecedence:I

    .line 664
    iput-object v7, v6, Lcom/udojava/evalex/Expression;->expressionString:Ljava/lang/String;

    .line 665
    iput-object v7, v6, Lcom/udojava/evalex/Expression;->originalExpression:Ljava/lang/String;

    .line 666
    new-instance v0, Lcom/udojava/evalex/Expression$3;

    const-string v9, "+"

    const/16 v1, 0x14

    const/4 v10, 0x1

    invoke-direct {v0, p0, v9, v1, v10}, Lcom/udojava/evalex/Expression$3;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;

    .line 673
    new-instance v0, Lcom/udojava/evalex/Expression$4;

    const-string v11, "-"

    invoke-direct {v0, p0, v11, v1, v10}, Lcom/udojava/evalex/Expression$4;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;

    .line 680
    new-instance v0, Lcom/udojava/evalex/Expression$5;

    const-string v1, "*"

    const/16 v2, 0x1e

    invoke-direct {v0, p0, v1, v2, v10}, Lcom/udojava/evalex/Expression$5;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;

    .line 687
    new-instance v0, Lcom/udojava/evalex/Expression$6;

    const-string v1, "/"

    invoke-direct {v0, p0, v1, v2, v10}, Lcom/udojava/evalex/Expression$6;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;

    .line 694
    new-instance v0, Lcom/udojava/evalex/Expression$7;

    const-string v1, "%"

    invoke-direct {v0, p0, v1, v2, v10}, Lcom/udojava/evalex/Expression$7;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;

    .line 701
    new-instance v0, Lcom/udojava/evalex/Expression$8;

    iget v1, v6, Lcom/udojava/evalex/Expression;->powerOperatorPrecedence:I

    const-string v2, "^"

    const/4 v12, 0x0

    invoke-direct {v0, p0, v2, v1, v12}, Lcom/udojava/evalex/Expression$8;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;

    .line 724
    new-instance v13, Lcom/udojava/evalex/Expression$9;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v2, "&&"

    const/4 v3, 0x4

    move-object v0, v13

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/udojava/evalex/Expression$9;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZZ)V

    invoke-virtual {p0, v13}, Lcom/udojava/evalex/Expression;->addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;

    .line 740
    new-instance v13, Lcom/udojava/evalex/Expression$10;

    const-string v2, "||"

    const/4 v3, 0x2

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lcom/udojava/evalex/Expression$10;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZZ)V

    invoke-virtual {p0, v13}, Lcom/udojava/evalex/Expression;->addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;

    .line 756
    new-instance v13, Lcom/udojava/evalex/Expression$11;

    const-string v2, ">"

    const/16 v3, 0xa

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lcom/udojava/evalex/Expression$11;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZZ)V

    invoke-virtual {p0, v13}, Lcom/udojava/evalex/Expression;->addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;

    .line 764
    new-instance v13, Lcom/udojava/evalex/Expression$12;

    const-string v2, ">="

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lcom/udojava/evalex/Expression$12;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZZ)V

    invoke-virtual {p0, v13}, Lcom/udojava/evalex/Expression;->addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;

    .line 772
    new-instance v13, Lcom/udojava/evalex/Expression$13;

    const-string v2, "<"

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lcom/udojava/evalex/Expression$13;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZZ)V

    invoke-virtual {p0, v13}, Lcom/udojava/evalex/Expression;->addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;

    .line 780
    new-instance v13, Lcom/udojava/evalex/Expression$14;

    const-string v2, "<="

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lcom/udojava/evalex/Expression$14;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZZ)V

    invoke-virtual {p0, v13}, Lcom/udojava/evalex/Expression;->addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;

    .line 788
    new-instance v13, Lcom/udojava/evalex/Expression$15;

    const-string v2, "="

    const/4 v3, 0x7

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lcom/udojava/evalex/Expression$15;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZZ)V

    invoke-virtual {p0, v13}, Lcom/udojava/evalex/Expression;->addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;

    .line 800
    new-instance v13, Lcom/udojava/evalex/Expression$16;

    const-string v2, "=="

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lcom/udojava/evalex/Expression$16;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZZ)V

    invoke-virtual {p0, v13}, Lcom/udojava/evalex/Expression;->addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;

    .line 807
    new-instance v13, Lcom/udojava/evalex/Expression$17;

    const-string v2, "!="

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lcom/udojava/evalex/Expression$17;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZZ)V

    invoke-virtual {p0, v13}, Lcom/udojava/evalex/Expression;->addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;

    .line 819
    new-instance v13, Lcom/udojava/evalex/Expression$18;

    const-string v2, "<>"

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lcom/udojava/evalex/Expression$18;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZZ)V

    invoke-virtual {p0, v13}, Lcom/udojava/evalex/Expression;->addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;

    .line 827
    new-instance v0, Lcom/udojava/evalex/Expression$19;

    const/16 v1, 0x3c

    invoke-direct {v0, p0, v11, v1, v12}, Lcom/udojava/evalex/Expression$19;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;

    .line 833
    new-instance v0, Lcom/udojava/evalex/Expression$20;

    invoke-direct {v0, p0, v9, v1, v12}, Lcom/udojava/evalex/Expression$20;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;

    .line 840
    new-instance v0, Lcom/udojava/evalex/Expression$21;

    const-string v1, "FACT"

    invoke-direct {v0, p0, v1, v10, v12}, Lcom/udojava/evalex/Expression$21;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 854
    new-instance v0, Lcom/udojava/evalex/Expression$22;

    const-string v1, "NOT"

    invoke-direct {v0, p0, v1, v10, v10}, Lcom/udojava/evalex/Expression$22;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;IZ)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 863
    new-instance v0, Lcom/udojava/evalex/Expression$23;

    const-string v1, "IF"

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/udojava/evalex/Expression$23;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addLazyFunction(Lcom/udojava/evalex/LazyFunction;)Lcom/udojava/evalex/LazyFunction;

    .line 870
    new-instance v0, Lcom/udojava/evalex/Expression$24;

    const-string v1, "RANDOM"

    invoke-direct {v0, p0, v1, v12}, Lcom/udojava/evalex/Expression$24;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 877
    new-instance v0, Lcom/udojava/evalex/Expression$25;

    const-string v1, "SINR"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$25;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 885
    new-instance v0, Lcom/udojava/evalex/Expression$26;

    const-string v1, "COSR"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$26;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 893
    new-instance v0, Lcom/udojava/evalex/Expression$27;

    const-string v1, "TANR"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$27;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 901
    new-instance v0, Lcom/udojava/evalex/Expression$28;

    const-string v1, "COTR"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$28;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 911
    new-instance v0, Lcom/udojava/evalex/Expression$29;

    const-string v1, "SECR"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$29;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 921
    new-instance v0, Lcom/udojava/evalex/Expression$30;

    const-string v1, "CSCR"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$30;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 931
    new-instance v0, Lcom/udojava/evalex/Expression$31;

    const-string v1, "SIN"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$31;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 939
    new-instance v0, Lcom/udojava/evalex/Expression$32;

    const-string v1, "COS"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$32;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 947
    new-instance v0, Lcom/udojava/evalex/Expression$33;

    const-string v1, "TAN"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$33;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 955
    new-instance v0, Lcom/udojava/evalex/Expression$34;

    const-string v1, "COT"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$34;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 965
    new-instance v0, Lcom/udojava/evalex/Expression$35;

    const-string v1, "SEC"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$35;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 975
    new-instance v0, Lcom/udojava/evalex/Expression$36;

    const-string v1, "CSC"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$36;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 985
    new-instance v0, Lcom/udojava/evalex/Expression$37;

    const-string v1, "ASINR"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$37;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 993
    new-instance v0, Lcom/udojava/evalex/Expression$38;

    const-string v1, "ACOSR"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$38;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1001
    new-instance v0, Lcom/udojava/evalex/Expression$39;

    const-string v1, "ATANR"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$39;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1009
    new-instance v0, Lcom/udojava/evalex/Expression$40;

    const-string v1, "ACOTR"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$40;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1021
    new-instance v0, Lcom/udojava/evalex/Expression$41;

    const-string v1, "ATAN2R"

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/udojava/evalex/Expression$41;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1029
    new-instance v0, Lcom/udojava/evalex/Expression$42;

    const-string v1, "ASIN"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$42;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1037
    new-instance v0, Lcom/udojava/evalex/Expression$43;

    const-string v1, "ACOS"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$43;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1045
    new-instance v0, Lcom/udojava/evalex/Expression$44;

    const-string v1, "ATAN"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$44;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1053
    new-instance v0, Lcom/udojava/evalex/Expression$45;

    const-string v1, "ACOT"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$45;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1065
    new-instance v0, Lcom/udojava/evalex/Expression$46;

    const-string v1, "ATAN2"

    invoke-direct {v0, p0, v1, v2}, Lcom/udojava/evalex/Expression$46;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1074
    new-instance v0, Lcom/udojava/evalex/Expression$47;

    const-string v1, "SINH"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$47;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1082
    new-instance v0, Lcom/udojava/evalex/Expression$48;

    const-string v1, "COSH"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$48;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1090
    new-instance v0, Lcom/udojava/evalex/Expression$49;

    const-string v1, "TANH"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$49;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1098
    new-instance v0, Lcom/udojava/evalex/Expression$50;

    const-string v1, "SECH"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$50;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1108
    new-instance v0, Lcom/udojava/evalex/Expression$51;

    const-string v1, "CSCH"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$51;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1118
    new-instance v0, Lcom/udojava/evalex/Expression$52;

    const-string v1, "COTH"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$52;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1128
    new-instance v0, Lcom/udojava/evalex/Expression$53;

    const-string v1, "ASINH"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$53;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1138
    new-instance v0, Lcom/udojava/evalex/Expression$54;

    const-string v1, "ACOSH"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$54;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1151
    new-instance v0, Lcom/udojava/evalex/Expression$55;

    const-string v1, "ATANH"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$55;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1166
    new-instance v0, Lcom/udojava/evalex/Expression$56;

    const-string v1, "RAD"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$56;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1174
    new-instance v0, Lcom/udojava/evalex/Expression$57;

    const-string v1, "DEG"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$57;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1182
    new-instance v0, Lcom/udojava/evalex/Expression$58;

    const-string v1, "MAX"

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v3}, Lcom/udojava/evalex/Expression$58;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1198
    new-instance v0, Lcom/udojava/evalex/Expression$59;

    const-string v1, "MIN"

    invoke-direct {v0, p0, v1, v3}, Lcom/udojava/evalex/Expression$59;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1214
    new-instance v0, Lcom/udojava/evalex/Expression$60;

    const-string v1, "ABS"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$60;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1221
    new-instance v0, Lcom/udojava/evalex/Expression$61;

    const-string v1, "LOG"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$61;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1229
    new-instance v0, Lcom/udojava/evalex/Expression$62;

    const-string v1, "LOG10"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$62;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1237
    new-instance v0, Lcom/udojava/evalex/Expression$63;

    const-string v1, "ROUND"

    invoke-direct {v0, p0, v1, v2}, Lcom/udojava/evalex/Expression$63;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1246
    new-instance v0, Lcom/udojava/evalex/Expression$64;

    const-string v1, "FLOOR"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$64;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1254
    new-instance v0, Lcom/udojava/evalex/Expression$65;

    const-string v1, "CEILING"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$65;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1262
    new-instance v0, Lcom/udojava/evalex/Expression$66;

    const-string v1, "SQRT"

    invoke-direct {v0, p0, v1, v10}, Lcom/udojava/evalex/Expression$66;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;

    .line 1295
    sget-object v0, Lcom/udojava/evalex/Expression;->DEFAULT_CONSTANTS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_308

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1296
    .local v1, "constant":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/math/BigDecimal;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigDecimal;

    .line 1297
    .local v2, "value":Ljava/math/BigDecimal;
    iget-object v3, v6, Lcom/udojava/evalex/Expression;->variables:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_300

    move-object v5, v8

    goto :goto_304

    :cond_300
    invoke-virtual {p0, v2}, Lcom/udojava/evalex/Expression;->createLazyNumber(Ljava/math/BigDecimal;)Lcom/udojava/evalex/Expression$LazyNumber;

    move-result-object v5

    :goto_304
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    .end local v1    # "constant":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/math/BigDecimal;>;"
    .end local v2    # "value":Ljava/math/BigDecimal;
    goto :goto_2e4

    .line 1299
    :cond_308
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/math/MathContext;)V
    .registers 4
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "defaultMathContext"    # Ljava/math/MathContext;

    .line 647
    nop

    .line 648
    invoke-static {}, Lcom/udojava/evalex/ExpressionSettings;->builder()Lcom/udojava/evalex/ExpressionSettings$Builder;

    move-result-object v0

    .line 649
    invoke-virtual {v0, p2}, Lcom/udojava/evalex/ExpressionSettings$Builder;->mathContext(Ljava/math/MathContext;)Lcom/udojava/evalex/ExpressionSettings$Builder;

    move-result-object v0

    .line 650
    invoke-virtual {v0}, Lcom/udojava/evalex/ExpressionSettings$Builder;->build()Lcom/udojava/evalex/ExpressionSettings;

    move-result-object v0

    .line 647
    invoke-direct {p0, p1, v0}, Lcom/udojava/evalex/Expression;-><init>(Ljava/lang/String;Lcom/udojava/evalex/ExpressionSettings;)V

    .line 651
    return-void
.end method

.method static synthetic access$000(Lcom/udojava/evalex/Expression;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/udojava/evalex/Expression;

    .line 71
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->firstVarChars:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/udojava/evalex/Expression;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/udojava/evalex/Expression;

    .line 71
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->varChars:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/udojava/evalex/Expression;)Ljava/math/MathContext;
    .registers 2
    .param p0, "x0"    # Lcom/udojava/evalex/Expression;

    .line 71
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->mc:Ljava/math/MathContext;

    return-object v0
.end method

.method public static assertNotNull(Ljava/math/BigDecimal;)V
    .registers 3
    .param p0, "v1"    # Ljava/math/BigDecimal;

    .line 1306
    if-eqz p0, :cond_3

    .line 1309
    return-void

    .line 1307
    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Operand may not be null"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static assertNotNull(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)V
    .registers 4
    .param p0, "v1"    # Ljava/math/BigDecimal;
    .param p1, "v2"    # Ljava/math/BigDecimal;

    .line 1316
    if-eqz p0, :cond_d

    .line 1319
    if-eqz p1, :cond_5

    .line 1322
    return-void

    .line 1320
    :cond_5
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Second operand may not be null"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1317
    :cond_d
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "First operand may not be null"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createEmbeddedExpression(Ljava/lang/String;)Lcom/udojava/evalex/Expression;
    .registers 7
    .param p1, "expression"    # Ljava/lang/String;

    .line 1843
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->variables:Ljava/util/Map;

    .line 1844
    .local v0, "outerVariables":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/udojava/evalex/Expression$LazyNumber;>;"
    iget-object v1, p0, Lcom/udojava/evalex/Expression;->functions:Ljava/util/Map;

    .line 1845
    .local v1, "outerFunctions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/udojava/evalex/LazyFunction;>;"
    iget-object v2, p0, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    .line 1846
    .local v2, "outerOperators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/udojava/evalex/LazyOperator;>;"
    iget-object v3, p0, Lcom/udojava/evalex/Expression;->mc:Ljava/math/MathContext;

    .line 1847
    .local v3, "inneMc":Ljava/math/MathContext;
    new-instance v4, Lcom/udojava/evalex/Expression;

    invoke-direct {v4, p1, v3}, Lcom/udojava/evalex/Expression;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    .line 1848
    .local v4, "exp":Lcom/udojava/evalex/Expression;
    iput-object v0, v4, Lcom/udojava/evalex/Expression;->variables:Ljava/util/Map;

    .line 1849
    iput-object v1, v4, Lcom/udojava/evalex/Expression;->functions:Ljava/util/Map;

    .line 1850
    iput-object v2, v4, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    .line 1851
    return-object v4
.end method

.method private getRPN()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/udojava/evalex/Expression$Token;",
            ">;"
        }
    .end annotation

    .line 1947
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->rpn:Ljava/util/List;

    if-nez v0, :cond_11

    .line 1948
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->expressionString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/udojava/evalex/Expression;->shuntingYard(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/udojava/evalex/Expression;->rpn:Ljava/util/List;

    .line 1949
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->rpn:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/udojava/evalex/Expression;->validate(Ljava/util/List;)V

    .line 1951
    :cond_11
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->rpn:Ljava/util/List;

    return-object v0
.end method

.method private shuntOperators(Ljava/util/List;Ljava/util/Stack;Lcom/udojava/evalex/LazyOperator;)V
    .registers 9
    .param p3, "o1"    # Lcom/udojava/evalex/LazyOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/udojava/evalex/Expression$Token;",
            ">;",
            "Ljava/util/Stack<",
            "Lcom/udojava/evalex/Expression$Token;",
            ">;",
            "Lcom/udojava/evalex/LazyOperator;",
            ")V"
        }
    .end annotation

    .line 1507
    .local p1, "outputQueue":Ljava/util/List;, "Ljava/util/List<Lcom/udojava/evalex/Expression$Token;>;"
    .local p2, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/udojava/evalex/Expression$Token;>;"
    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move-object v0, v1

    goto :goto_f

    :cond_9
    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/udojava/evalex/Expression$Token;

    .line 1508
    .local v0, "nextToken":Lcom/udojava/evalex/Expression$Token;
    :goto_f
    if-eqz v0, :cond_62

    iget-object v2, v0, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v3, Lcom/udojava/evalex/Expression$TokenType;->OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

    if-eq v2, v3, :cond_1d

    iget-object v2, v0, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v3, Lcom/udojava/evalex/Expression$TokenType;->UNARY_OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

    if-ne v2, v3, :cond_62

    .line 1512
    :cond_1d
    invoke-interface {p3}, Lcom/udojava/evalex/LazyOperator;->isLeftAssoc()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {p3}, Lcom/udojava/evalex/LazyOperator;->getPrecedence()I

    move-result v2

    iget-object v3, p0, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    iget-object v4, v0, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/udojava/evalex/LazyOperator;

    invoke-interface {v3}, Lcom/udojava/evalex/LazyOperator;->getPrecedence()I

    move-result v3

    if-le v2, v3, :cond_4b

    .line 1513
    :cond_37
    invoke-interface {p3}, Lcom/udojava/evalex/LazyOperator;->getPrecedence()I

    move-result v2

    iget-object v3, p0, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    iget-object v4, v0, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/udojava/evalex/LazyOperator;

    invoke-interface {v3}, Lcom/udojava/evalex/LazyOperator;->getPrecedence()I

    move-result v3

    if-ge v2, v3, :cond_62

    .line 1514
    :cond_4b
    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1515
    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5a

    move-object v2, v1

    goto :goto_60

    :cond_5a
    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/udojava/evalex/Expression$Token;

    :goto_60
    move-object v0, v2

    goto :goto_f

    .line 1517
    :cond_62
    return-void
.end method

.method private shuntingYard(Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .param p1, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/udojava/evalex/Expression$Token;",
            ">;"
        }
    .end annotation

    .line 1368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    .local v0, "outputQueue":Ljava/util/List;, "Ljava/util/List<Lcom/udojava/evalex/Expression$Token;>;"
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 1371
    .local v1, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/udojava/evalex/Expression$Token;>;"
    new-instance v2, Lcom/udojava/evalex/Expression$Tokenizer;

    invoke-direct {v2, p0, p1}, Lcom/udojava/evalex/Expression$Tokenizer;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;)V

    .line 1373
    .local v2, "tokenizer":Lcom/udojava/evalex/Expression$Tokenizer;
    const/4 v3, 0x0

    .line 1374
    .local v3, "lastFunction":Lcom/udojava/evalex/Expression$Token;
    const/4 v4, 0x0

    .line 1375
    .local v4, "previousToken":Lcom/udojava/evalex/Expression$Token;
    :goto_11
    invoke-virtual {v2}, Lcom/udojava/evalex/Expression$Tokenizer;->hasNext()Z

    move-result v5

    const-string v6, "Mismatched parentheses"

    if-eqz v5, :cond_25c

    .line 1376
    invoke-virtual {v2}, Lcom/udojava/evalex/Expression$Tokenizer;->next()Lcom/udojava/evalex/Expression$Token;

    move-result-object v5

    .line 1377
    .local v5, "token":Lcom/udojava/evalex/Expression$Token;
    sget-object v7, Lcom/udojava/evalex/Expression$75;->$SwitchMap$com$udojava$evalex$Expression$TokenType:[I

    iget-object v8, v5, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    invoke-virtual {v8}, Lcom/udojava/evalex/Expression$TokenType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const-string v8, "Missing parameter(s) for operator "

    packed-switch v7, :pswitch_data_280

    goto/16 :goto_259

    .line 1475
    :pswitch_2e
    if-eqz v4, :cond_60

    iget-object v7, v4, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v9, Lcom/udojava/evalex/Expression$TokenType;->OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

    if-ne v7, v9, :cond_60

    iget-object v7, p0, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    iget-object v9, v4, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    .line 1476
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/udojava/evalex/LazyOperator;

    invoke-interface {v7}, Lcom/udojava/evalex/LazyOperator;->isUnaryOperator()Z

    move-result v7

    if-eqz v7, :cond_47

    goto :goto_60

    .line 1477
    :cond_47
    new-instance v6, Lcom/udojava/evalex/Expression$ExpressionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v4, Lcom/udojava/evalex/Expression$Token;->pos:I

    invoke-direct {v6, v7, v8}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 1480
    :cond_60
    :goto_60
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7a

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/udojava/evalex/Expression$Token;

    iget-object v7, v7, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v8, Lcom/udojava/evalex/Expression$TokenType;->OPEN_PAREN:Lcom/udojava/evalex/Expression$TokenType;

    if-eq v7, v8, :cond_7a

    .line 1481
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 1483
    :cond_7a
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9e

    .line 1486
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1487
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_259

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/udojava/evalex/Expression$Token;

    iget-object v6, v6, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v7, Lcom/udojava/evalex/Expression$TokenType;->FUNCTION:Lcom/udojava/evalex/Expression$TokenType;

    if-ne v6, v7, :cond_259

    .line 1488
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_259

    .line 1484
    :cond_9e
    new-instance v7, Lcom/udojava/evalex/Expression$ExpressionException;

    invoke-direct {v7, v6}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1453
    :pswitch_a4
    if-eqz v4, :cond_d8

    .line 1454
    iget-object v6, v4, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v7, Lcom/udojava/evalex/Expression$TokenType;->LITERAL:Lcom/udojava/evalex/Expression$TokenType;

    if-eq v6, v7, :cond_be

    iget-object v6, v4, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v7, Lcom/udojava/evalex/Expression$TokenType;->CLOSE_PAREN:Lcom/udojava/evalex/Expression$TokenType;

    if-eq v6, v7, :cond_be

    iget-object v6, v4, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v7, Lcom/udojava/evalex/Expression$TokenType;->VARIABLE:Lcom/udojava/evalex/Expression$TokenType;

    if-eq v6, v7, :cond_be

    iget-object v6, v4, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v7, Lcom/udojava/evalex/Expression$TokenType;->HEX_LITERAL:Lcom/udojava/evalex/Expression$TokenType;

    if-ne v6, v7, :cond_cf

    .line 1459
    :cond_be
    new-instance v6, Lcom/udojava/evalex/Expression$Token;

    invoke-direct {v6, p0}, Lcom/udojava/evalex/Expression$Token;-><init>(Lcom/udojava/evalex/Expression;)V

    .line 1460
    .local v6, "multiplication":Lcom/udojava/evalex/Expression$Token;
    const-string v7, "*"

    invoke-virtual {v6, v7}, Lcom/udojava/evalex/Expression$Token;->append(Ljava/lang/String;)V

    .line 1461
    sget-object v7, Lcom/udojava/evalex/Expression$TokenType;->OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

    iput-object v7, v6, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    .line 1462
    invoke-virtual {v1, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    .end local v6    # "multiplication":Lcom/udojava/evalex/Expression$Token;
    :cond_cf
    iget-object v6, v4, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v7, Lcom/udojava/evalex/Expression$TokenType;->FUNCTION:Lcom/udojava/evalex/Expression$TokenType;

    if-ne v6, v7, :cond_d8

    .line 1467
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1470
    :cond_d8
    invoke-virtual {v1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1471
    goto/16 :goto_259

    .line 1435
    :pswitch_dd
    if-eqz v4, :cond_113

    iget-object v6, v4, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v7, Lcom/udojava/evalex/Expression$TokenType;->OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

    if-eq v6, v7, :cond_113

    iget-object v6, v4, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v7, Lcom/udojava/evalex/Expression$TokenType;->COMMA:Lcom/udojava/evalex/Expression$TokenType;

    if-eq v6, v7, :cond_113

    iget-object v6, v4, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v7, Lcom/udojava/evalex/Expression$TokenType;->OPEN_PAREN:Lcom/udojava/evalex/Expression$TokenType;

    if-eq v6, v7, :cond_113

    iget-object v6, v4, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v7, Lcom/udojava/evalex/Expression$TokenType;->UNARY_OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

    if-ne v6, v7, :cond_f8

    goto :goto_113

    .line 1438
    :cond_f8
    new-instance v6, Lcom/udojava/evalex/Expression$ExpressionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid position for unary operator "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v5, Lcom/udojava/evalex/Expression$Token;->pos:I

    invoke-direct {v6, v7, v8}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 1441
    :cond_113
    :goto_113
    iget-object v6, p0, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    iget-object v7, v5, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/udojava/evalex/LazyOperator;

    .line 1442
    .local v6, "o1":Lcom/udojava/evalex/LazyOperator;
    if-eqz v6, :cond_127

    .line 1448
    invoke-direct {p0, v0, v1, v6}, Lcom/udojava/evalex/Expression;->shuntOperators(Ljava/util/List;Ljava/util/Stack;Lcom/udojava/evalex/LazyOperator;)V

    .line 1449
    invoke-virtual {v1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1450
    goto/16 :goto_259

    .line 1443
    :cond_127
    new-instance v7, Lcom/udojava/evalex/Expression$ExpressionException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown unary operator "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    iget-object v10, v5, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    .line 1444
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, v5, Lcom/udojava/evalex/Expression$Token;->pos:I

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 1417
    .end local v6    # "o1":Lcom/udojava/evalex/LazyOperator;
    :pswitch_153
    if-eqz v4, :cond_195

    iget-object v6, p0, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    iget-object v7, v5, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_195

    iget-object v6, v4, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v7, Lcom/udojava/evalex/Expression$TokenType;->COMMA:Lcom/udojava/evalex/Expression$TokenType;

    if-eq v6, v7, :cond_16b

    iget-object v6, v4, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v7, Lcom/udojava/evalex/Expression$TokenType;->OPEN_PAREN:Lcom/udojava/evalex/Expression$TokenType;

    if-ne v6, v7, :cond_195

    .line 1420
    :cond_16b
    iget-object v6, p0, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    iget-object v7, v5, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/udojava/evalex/LazyOperator;

    invoke-interface {v6}, Lcom/udojava/evalex/LazyOperator;->isUnaryOperator()Z

    move-result v6

    if-eqz v6, :cond_17c

    goto :goto_195

    .line 1421
    :cond_17c
    new-instance v6, Lcom/udojava/evalex/Expression$ExpressionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v5, Lcom/udojava/evalex/Expression$Token;->pos:I

    invoke-direct {v6, v7, v8}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 1425
    :cond_195
    :goto_195
    iget-object v6, p0, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    iget-object v7, v5, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/udojava/evalex/LazyOperator;

    .line 1426
    .restart local v6    # "o1":Lcom/udojava/evalex/LazyOperator;
    if-eqz v6, :cond_1a9

    .line 1430
    invoke-direct {p0, v0, v1, v6}, Lcom/udojava/evalex/Expression;->shuntOperators(Ljava/util/List;Ljava/util/Stack;Lcom/udojava/evalex/LazyOperator;)V

    .line 1431
    invoke-virtual {v1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    goto/16 :goto_259

    .line 1427
    :cond_1a9
    new-instance v7, Lcom/udojava/evalex/Expression$ExpressionException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown operator "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, v5, Lcom/udojava/evalex/Expression$Token;->pos:I

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 1397
    .end local v6    # "o1":Lcom/udojava/evalex/LazyOperator;
    :pswitch_1c6
    if-eqz v4, :cond_1e8

    iget-object v6, v4, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v7, Lcom/udojava/evalex/Expression$TokenType;->OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

    if-eq v6, v7, :cond_1cf

    goto :goto_1e8

    .line 1398
    :cond_1cf
    new-instance v6, Lcom/udojava/evalex/Expression$ExpressionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v4, Lcom/udojava/evalex/Expression$Token;->pos:I

    invoke-direct {v6, v7, v8}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 1401
    :cond_1e8
    :goto_1e8
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_202

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/udojava/evalex/Expression$Token;

    iget-object v6, v6, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v7, Lcom/udojava/evalex/Expression$TokenType;->OPEN_PAREN:Lcom/udojava/evalex/Expression$TokenType;

    if-eq v6, v7, :cond_202

    .line 1402
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e8

    .line 1404
    :cond_202
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_259

    .line 1405
    if-nez v3, :cond_214

    .line 1406
    new-instance v6, Lcom/udojava/evalex/Expression$ExpressionException;

    const-string v7, "Unexpected comma"

    iget v8, v5, Lcom/udojava/evalex/Expression$Token;->pos:I

    invoke-direct {v6, v7, v8}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 1408
    :cond_214
    new-instance v6, Lcom/udojava/evalex/Expression$ExpressionException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parse error for function "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v5, Lcom/udojava/evalex/Expression$Token;->pos:I

    invoke-direct {v6, v7, v8}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 1393
    :pswitch_22f
    invoke-virtual {v1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    move-object v3, v5

    .line 1395
    goto :goto_259

    .line 1390
    :pswitch_234
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1391
    goto :goto_259

    .line 1383
    :pswitch_238
    if-eqz v4, :cond_251

    iget-object v6, v4, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v7, Lcom/udojava/evalex/Expression$TokenType;->LITERAL:Lcom/udojava/evalex/Expression$TokenType;

    if-eq v6, v7, :cond_247

    iget-object v6, v4, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v7, Lcom/udojava/evalex/Expression$TokenType;->HEX_LITERAL:Lcom/udojava/evalex/Expression$TokenType;

    if-eq v6, v7, :cond_247

    goto :goto_251

    .line 1385
    :cond_247
    new-instance v6, Lcom/udojava/evalex/Expression$ExpressionException;

    const-string v7, "Missing operator"

    iget v8, v5, Lcom/udojava/evalex/Expression$Token;->pos:I

    invoke-direct {v6, v7, v8}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 1387
    :cond_251
    :goto_251
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1388
    goto :goto_259

    .line 1379
    :pswitch_255
    invoke-virtual {v1, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    nop

    .line 1491
    :cond_259
    :goto_259
    move-object v4, v5

    .line 1492
    .end local v5    # "token":Lcom/udojava/evalex/Expression$Token;
    goto/16 :goto_11

    .line 1494
    :cond_25c
    :goto_25c
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_27e

    .line 1495
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/udojava/evalex/Expression$Token;

    .line 1496
    .local v5, "element":Lcom/udojava/evalex/Expression$Token;
    iget-object v7, v5, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v8, Lcom/udojava/evalex/Expression$TokenType;->OPEN_PAREN:Lcom/udojava/evalex/Expression$TokenType;

    if-eq v7, v8, :cond_278

    iget-object v7, v5, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v8, Lcom/udojava/evalex/Expression$TokenType;->CLOSE_PAREN:Lcom/udojava/evalex/Expression$TokenType;

    if-eq v7, v8, :cond_278

    .line 1499
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1500
    .end local v5    # "element":Lcom/udojava/evalex/Expression$Token;
    goto :goto_25c

    .line 1497
    .restart local v5    # "element":Lcom/udojava/evalex/Expression$Token;
    :cond_278
    new-instance v7, Lcom/udojava/evalex/Expression$ExpressionException;

    invoke-direct {v7, v6}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1501
    .end local v5    # "element":Lcom/udojava/evalex/Expression$Token;
    :cond_27e
    return-object v0

    nop

    :pswitch_data_280
    .packed-switch 0x1
        :pswitch_255
        :pswitch_238
        :pswitch_238
        :pswitch_234
        :pswitch_22f
        :pswitch_1c6
        :pswitch_153
        :pswitch_dd
        :pswitch_a4
        :pswitch_2e
    .end packed-switch
.end method

.method private validate(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/udojava/evalex/Expression$Token;",
            ">;)V"
        }
    .end annotation

    .line 1968
    .local p1, "rpn":Ljava/util/List;, "Ljava/util/List<Lcom/udojava/evalex/Expression$Token;>;"
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 1971
    .local v0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_15f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/udojava/evalex/Expression$Token;

    .line 1974
    .local v3, "token":Lcom/udojava/evalex/Expression$Token;
    sget-object v5, Lcom/udojava/evalex/Expression$75;->$SwitchMap$com$udojava$evalex$Expression$TokenType:[I

    iget-object v6, v3, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    invoke-virtual {v6}, Lcom/udojava/evalex/Expression$TokenType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const-string v6, "Missing parameter(s) for operator "

    packed-switch v5, :pswitch_data_198

    .line 2021
    :pswitch_2d
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_15d

    .line 2018
    :pswitch_46
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2019
    goto/16 :goto_15d

    .line 1976
    :pswitch_4b
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v5, v4, :cond_59

    goto/16 :goto_15d

    .line 1977
    :cond_59
    new-instance v1, Lcom/udojava/evalex/Expression$ExpressionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1981
    :pswitch_70
    iget-object v5, p0, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    iget-object v7, v3, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/udojava/evalex/LazyOperator;

    .line 1985
    .local v5, "op":Lcom/udojava/evalex/LazyOperator;
    const/4 v7, 0x2

    .line 1986
    .local v7, "numberOperands":I
    invoke-interface {v5}, Lcom/udojava/evalex/LazyOperator;->isUnaryOperator()Z

    move-result v8

    if-eqz v8, :cond_82

    .line 1987
    const/4 v7, 0x1

    .line 1989
    :cond_82
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lt v8, v7, :cond_aa

    .line 1995
    if-le v7, v4, :cond_15d

    .line 1996
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v8, v7

    add-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Ljava/util/Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_15d

    .line 1990
    :cond_aa
    new-instance v1, Lcom/udojava/evalex/Expression$ExpressionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2000
    .end local v5    # "op":Lcom/udojava/evalex/LazyOperator;
    .end local v7    # "numberOperands":I
    :pswitch_c1
    iget-object v5, p0, Lcom/udojava/evalex/Expression;->functions:Ljava/util/Map;

    iget-object v6, v3, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/udojava/evalex/LazyFunction;

    .line 2001
    .local v5, "f":Lcom/udojava/evalex/LazyFunction;
    if-eqz v5, :cond_141

    .line 2005
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2006
    .local v6, "numParams":I
    invoke-interface {v5}, Lcom/udojava/evalex/LazyFunction;->numParamsVaries()Z

    move-result v7

    if-nez v7, :cond_11b

    invoke-interface {v5}, Lcom/udojava/evalex/LazyFunction;->getNumParams()I

    move-result v7

    if-ne v6, v7, :cond_ea

    goto :goto_11b

    .line 2007
    :cond_ea
    new-instance v1, Lcom/udojava/evalex/Expression$ExpressionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Function "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " expected "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2008
    invoke-interface {v5}, Lcom/udojava/evalex/LazyFunction;->getNumParams()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " parameters, got "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2011
    :cond_11b
    :goto_11b
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_139

    .line 2015
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Ljava/util/Stack;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2016
    goto :goto_15d

    .line 2012
    :cond_139
    new-instance v1, Lcom/udojava/evalex/Expression$ExpressionException;

    const-string v2, "Too many function calls, maximum scope exceeded"

    invoke-direct {v1, v2}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2002
    .end local v6    # "numParams":I
    :cond_141
    new-instance v1, Lcom/udojava/evalex/Expression$ExpressionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown function "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v6, v3, Lcom/udojava/evalex/Expression$Token;->pos:I

    add-int/2addr v6, v4

    invoke-direct {v1, v2, v6}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2023
    .end local v3    # "token":Lcom/udojava/evalex/Expression$Token;
    .end local v5    # "f":Lcom/udojava/evalex/LazyFunction;
    :cond_15d
    :goto_15d
    goto/16 :goto_11

    .line 2025
    :cond_15f
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    if-gt v1, v4, :cond_18e

    .line 2027
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v4, :cond_186

    .line 2029
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v4, :cond_17e

    .line 2032
    return-void

    .line 2030
    :cond_17e
    new-instance v1, Lcom/udojava/evalex/Expression$ExpressionException;

    const-string v2, "Empty expression"

    invoke-direct {v1, v2}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2028
    :cond_186
    new-instance v1, Lcom/udojava/evalex/Expression$ExpressionException;

    const-string v2, "Too many numbers or variables"

    invoke-direct {v1, v2}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2026
    :cond_18e
    new-instance v1, Lcom/udojava/evalex/Expression$ExpressionException;

    const-string v2, "Too many unhandled function parameter lists"

    invoke-direct {v1, v2}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;)V

    goto :goto_197

    :goto_196
    throw v1

    :goto_197
    goto :goto_196

    :pswitch_data_198
    .packed-switch 0x5
        :pswitch_c1
        :pswitch_2d
        :pswitch_70
        :pswitch_4b
        :pswitch_46
    .end packed-switch
.end method


# virtual methods
.method public addFunction(Lcom/udojava/evalex/Function;)Lcom/udojava/evalex/Function;
    .registers 4
    .param p1, "function"    # Lcom/udojava/evalex/Function;

    .line 1755
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->functions:Ljava/util/Map;

    invoke-interface {p1}, Lcom/udojava/evalex/Function;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/udojava/evalex/Function;

    return-object v0
.end method

.method public addLazyFunction(Lcom/udojava/evalex/LazyFunction;)Lcom/udojava/evalex/LazyFunction;
    .registers 4
    .param p1, "function"    # Lcom/udojava/evalex/LazyFunction;

    .line 1766
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->functions:Ljava/util/Map;

    invoke-interface {p1}, Lcom/udojava/evalex/LazyFunction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/udojava/evalex/LazyFunction;

    return-object v0
.end method

.method public addOperator(Lcom/udojava/evalex/LazyOperator;)Lcom/udojava/evalex/LazyOperator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<OPERATOR::",
            "Lcom/udojava/evalex/LazyOperator;",
            ">(TOPERATOR;)TOPERATOR;"
        }
    .end annotation

    .line 1740
    .local p1, "operator":Lcom/udojava/evalex/LazyOperator;, "TOPERATOR;"
    invoke-interface {p1}, Lcom/udojava/evalex/LazyOperator;->getOper()Ljava/lang/String;

    move-result-object v0

    .line 1741
    .local v0, "key":Ljava/lang/String;
    instance-of v1, p1, Lcom/udojava/evalex/AbstractUnaryOperator;

    if-eqz v1, :cond_1b

    .line 1742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1744
    :cond_1b
    iget-object v1, p0, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/udojava/evalex/LazyOperator;

    return-object v1
.end method

.method public and(Ljava/lang/String;Lcom/udojava/evalex/Expression$LazyNumber;)Lcom/udojava/evalex/Expression;
    .registers 4
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/udojava/evalex/Expression$LazyNumber;

    .line 1911
    invoke-virtual {p0, p1, p2}, Lcom/udojava/evalex/Expression;->setVariable(Ljava/lang/String;Lcom/udojava/evalex/Expression$LazyNumber;)Lcom/udojava/evalex/Expression;

    move-result-object v0

    return-object v0
.end method

.method public and(Ljava/lang/String;Ljava/lang/String;)Lcom/udojava/evalex/Expression;
    .registers 4
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1887
    invoke-virtual {p0, p1, p2}, Lcom/udojava/evalex/Expression;->setVariable(Ljava/lang/String;Ljava/lang/String;)Lcom/udojava/evalex/Expression;

    move-result-object v0

    return-object v0
.end method

.method public and(Ljava/lang/String;Ljava/math/BigDecimal;)Lcom/udojava/evalex/Expression;
    .registers 4
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/math/BigDecimal;

    .line 1899
    invoke-virtual {p0, p1, p2}, Lcom/udojava/evalex/Expression;->setVariable(Ljava/lang/String;Ljava/math/BigDecimal;)Lcom/udojava/evalex/Expression;

    move-result-object v0

    return-object v0
.end method

.method protected createLazyNumber(Ljava/math/BigDecimal;)Lcom/udojava/evalex/Expression$LazyNumber;
    .registers 3
    .param p1, "bigDecimal"    # Ljava/math/BigDecimal;

    .line 258
    new-instance v0, Lcom/udojava/evalex/Expression$2;

    invoke-direct {v0, p0, p1}, Lcom/udojava/evalex/Expression$2;-><init>(Lcom/udojava/evalex/Expression;Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 2136
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2137
    return v0

    .line 2139
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_29

    .line 2142
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/udojava/evalex/Expression;

    .line 2143
    .local v2, "that":Lcom/udojava/evalex/Expression;
    iget-object v3, p0, Lcom/udojava/evalex/Expression;->expressionString:Ljava/lang/String;

    if-nez v3, :cond_20

    .line 2144
    iget-object v3, v2, Lcom/udojava/evalex/Expression;->expressionString:Ljava/lang/String;

    if-nez v3, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0

    .line 2146
    :cond_20
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->expressionString:Ljava/lang/String;

    iget-object v1, v2, Lcom/udojava/evalex/Expression;->expressionString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2140
    .end local v2    # "that":Lcom/udojava/evalex/Expression;
    :cond_29
    :goto_29
    return v1
.end method

.method public eval()Ljava/math/BigDecimal;
    .registers 2

    .line 1526
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/udojava/evalex/Expression;->eval(Z)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public eval(Z)Ljava/math/BigDecimal;
    .registers 10
    .param p1, "stripTrailingZeros"    # Z

    .line 1539
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 1541
    .local v0, "stack":Ljava/util/Deque;, "Ljava/util/Deque<Lcom/udojava/evalex/Expression$LazyNumber;>;"
    invoke-direct {p0}, Lcom/udojava/evalex/Expression;->getRPN()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_124

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/udojava/evalex/Expression$Token;

    .line 1542
    .local v2, "token":Lcom/udojava/evalex/Expression$Token;
    sget-object v3, Lcom/udojava/evalex/Expression$75;->$SwitchMap$com$udojava$evalex$Expression$TokenType:[I

    iget-object v4, v2, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    invoke-virtual {v4}, Lcom/udojava/evalex/Expression$TokenType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_13a

    .line 1667
    :pswitch_26
    new-instance v1, Lcom/udojava/evalex/Expression$ExpressionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lcom/udojava/evalex/Expression$Token;->pos:I

    invoke-direct {v1, v3, v4}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1627
    :pswitch_43
    sget-object v3, Lcom/udojava/evalex/Expression;->PARAMS_START:Lcom/udojava/evalex/Expression$LazyNumber;

    invoke-interface {v0, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1628
    goto/16 :goto_122

    .line 1544
    :pswitch_4a
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/udojava/evalex/Expression$LazyNumber;

    .line 1545
    .local v3, "value":Lcom/udojava/evalex/Expression$LazyNumber;
    new-instance v4, Lcom/udojava/evalex/Expression$67;

    invoke-direct {v4, p0, v2, v3}, Lcom/udojava/evalex/Expression$67;-><init>(Lcom/udojava/evalex/Expression;Lcom/udojava/evalex/Expression$Token;Lcom/udojava/evalex/Expression$LazyNumber;)V

    .line 1555
    .local v4, "result":Lcom/udojava/evalex/Expression$LazyNumber;
    invoke-interface {v0, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1556
    goto/16 :goto_122

    .line 1562
    .end local v3    # "value":Lcom/udojava/evalex/Expression$LazyNumber;
    .end local v4    # "result":Lcom/udojava/evalex/Expression$LazyNumber;
    :pswitch_5a
    iget-object v3, p0, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    iget-object v4, v2, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/udojava/evalex/LazyOperator;

    invoke-interface {v3}, Lcom/udojava/evalex/LazyOperator;->isUnaryOperator()Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 1563
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/udojava/evalex/Expression$LazyNumber;

    .line 1564
    .restart local v3    # "value":Lcom/udojava/evalex/Expression$LazyNumber;
    new-instance v4, Lcom/udojava/evalex/Expression$68;

    invoke-direct {v4, p0, v2, v3}, Lcom/udojava/evalex/Expression$68;-><init>(Lcom/udojava/evalex/Expression;Lcom/udojava/evalex/Expression$Token;Lcom/udojava/evalex/Expression$LazyNumber;)V

    .line 1574
    .restart local v4    # "result":Lcom/udojava/evalex/Expression$LazyNumber;
    invoke-interface {v0, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1575
    goto/16 :goto_122

    .line 1577
    .end local v3    # "value":Lcom/udojava/evalex/Expression$LazyNumber;
    .end local v4    # "result":Lcom/udojava/evalex/Expression$LazyNumber;
    :cond_7a
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/udojava/evalex/Expression$LazyNumber;

    .line 1578
    .local v3, "v1":Lcom/udojava/evalex/Expression$LazyNumber;
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/udojava/evalex/Expression$LazyNumber;

    .line 1579
    .local v4, "v2":Lcom/udojava/evalex/Expression$LazyNumber;
    new-instance v5, Lcom/udojava/evalex/Expression$69;

    invoke-direct {v5, p0, v2, v4, v3}, Lcom/udojava/evalex/Expression$69;-><init>(Lcom/udojava/evalex/Expression;Lcom/udojava/evalex/Expression$Token;Lcom/udojava/evalex/Expression$LazyNumber;Lcom/udojava/evalex/Expression$LazyNumber;)V

    .line 1588
    .local v5, "result":Lcom/udojava/evalex/Expression$LazyNumber;
    invoke-interface {v0, v5}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1589
    goto/16 :goto_122

    .line 1610
    .end local v3    # "v1":Lcom/udojava/evalex/Expression$LazyNumber;
    .end local v4    # "v2":Lcom/udojava/evalex/Expression$LazyNumber;
    .end local v5    # "result":Lcom/udojava/evalex/Expression$LazyNumber;
    :pswitch_90
    iget-object v3, p0, Lcom/udojava/evalex/Expression;->functions:Ljava/util/Map;

    iget-object v4, v2, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/udojava/evalex/LazyFunction;

    .line 1611
    .local v3, "f":Lcom/udojava/evalex/LazyFunction;
    new-instance v4, Ljava/util/ArrayList;

    .line 1612
    invoke-interface {v3}, Lcom/udojava/evalex/LazyFunction;->numParamsVaries()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_ae

    invoke-interface {v3}, Lcom/udojava/evalex/LazyFunction;->getNumParams()I

    move-result v5

    goto :goto_af

    :cond_ae
    const/4 v5, 0x0

    :goto_af
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1615
    .local v4, "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/udojava/evalex/Expression$LazyNumber;>;"
    :goto_b2
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c8

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Lcom/udojava/evalex/Expression;->PARAMS_START:Lcom/udojava/evalex/Expression$LazyNumber;

    if-eq v5, v7, :cond_c8

    .line 1616
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_b2

    .line 1619
    :cond_c8
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/udojava/evalex/Expression;->PARAMS_START:Lcom/udojava/evalex/Expression$LazyNumber;

    if-ne v5, v6, :cond_d3

    .line 1620
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 1623
    :cond_d3
    invoke-interface {v3, v4}, Lcom/udojava/evalex/LazyFunction;->lazyEval(Ljava/util/List;)Lcom/udojava/evalex/Expression$LazyNumber;

    move-result-object v5

    .line 1624
    .local v5, "fResult":Lcom/udojava/evalex/Expression$LazyNumber;
    invoke-interface {v0, v5}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1625
    goto :goto_122

    .line 1592
    .end local v3    # "f":Lcom/udojava/evalex/LazyFunction;
    .end local v4    # "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/udojava/evalex/Expression$LazyNumber;>;"
    .end local v5    # "fResult":Lcom/udojava/evalex/Expression$LazyNumber;
    :pswitch_db
    iget-object v3, p0, Lcom/udojava/evalex/Expression;->variables:Ljava/util/Map;

    iget-object v4, v2, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 1596
    new-instance v3, Lcom/udojava/evalex/Expression$70;

    invoke-direct {v3, p0, v2}, Lcom/udojava/evalex/Expression$70;-><init>(Lcom/udojava/evalex/Expression;Lcom/udojava/evalex/Expression$Token;)V

    invoke-interface {v0, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1608
    goto :goto_122

    .line 1593
    :cond_ee
    new-instance v1, Lcom/udojava/evalex/Expression$ExpressionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown operator or function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/udojava/evalex/Expression$ExpressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1656
    :pswitch_107
    new-instance v3, Lcom/udojava/evalex/Expression$73;

    invoke-direct {v3, p0, v2}, Lcom/udojava/evalex/Expression$73;-><init>(Lcom/udojava/evalex/Expression;Lcom/udojava/evalex/Expression$Token;)V

    invoke-interface {v0, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1665
    goto :goto_122

    .line 1630
    :pswitch_110
    new-instance v3, Lcom/udojava/evalex/Expression$71;

    invoke-direct {v3, p0, v2}, Lcom/udojava/evalex/Expression$71;-><init>(Lcom/udojava/evalex/Expression;Lcom/udojava/evalex/Expression$Token;)V

    invoke-interface {v0, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1643
    goto :goto_122

    .line 1645
    :pswitch_119
    new-instance v3, Lcom/udojava/evalex/Expression$72;

    invoke-direct {v3, p0, v2}, Lcom/udojava/evalex/Expression$72;-><init>(Lcom/udojava/evalex/Expression;Lcom/udojava/evalex/Expression$Token;)V

    invoke-interface {v0, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1654
    nop

    .line 1670
    .end local v2    # "token":Lcom/udojava/evalex/Expression$Token;
    :goto_122
    goto/16 :goto_d

    .line 1671
    :cond_124
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/udojava/evalex/Expression$LazyNumber;

    invoke-interface {v1}, Lcom/udojava/evalex/Expression$LazyNumber;->eval()Ljava/math/BigDecimal;

    move-result-object v1

    .line 1672
    .local v1, "result":Ljava/math/BigDecimal;
    if-nez v1, :cond_132

    .line 1673
    const/4 v2, 0x0

    return-object v2

    .line 1675
    :cond_132
    if-eqz p1, :cond_138

    .line 1676
    invoke-static {v1}, Lcom/udojava/evalex/Expression$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 1678
    :cond_138
    return-object v1

    nop

    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_119
        :pswitch_110
        :pswitch_107
        :pswitch_db
        :pswitch_90
        :pswitch_26
        :pswitch_5a
        :pswitch_4a
        :pswitch_43
    .end packed-switch
.end method

.method public getDeclaredFunctions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2091
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->functions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredOperators()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2081
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredVariables()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2071
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->variables:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getExpression()Ljava/lang/String;
    .registers 2

    .line 2099
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->expressionString:Ljava/lang/String;

    return-object v0
.end method

.method public getExpressionTokenizer()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/udojava/evalex/Expression$Token;",
            ">;"
        }
    .end annotation

    .line 1933
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->expressionString:Ljava/lang/String;

    .line 1935
    .local v0, "expression":Ljava/lang/String;
    new-instance v1, Lcom/udojava/evalex/Expression$Tokenizer;

    invoke-direct {v1, p0, v0}, Lcom/udojava/evalex/Expression$Tokenizer;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;)V

    return-object v1
.end method

.method public getOriginalExpression()Ljava/lang/String;
    .registers 2

    .line 2127
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->originalExpression:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedVariables()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2110
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/udojava/evalex/Expression$Tokenizer;

    iget-object v2, p0, Lcom/udojava/evalex/Expression;->expressionString:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/udojava/evalex/Expression$Tokenizer;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;)V

    .line 2111
    .local v1, "tokenizer":Lcom/udojava/evalex/Expression$Tokenizer;
    :cond_c
    :goto_c
    invoke-virtual {v1}, Lcom/udojava/evalex/Expression$Tokenizer;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2112
    invoke-virtual {v1}, Lcom/udojava/evalex/Expression$Tokenizer;->next()Lcom/udojava/evalex/Expression$Token;

    move-result-object v2

    .line 2113
    .local v2, "nextToken":Lcom/udojava/evalex/Expression$Token;
    invoke-virtual {v2}, Lcom/udojava/evalex/Expression$Token;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2114
    .local v3, "token":Ljava/lang/String;
    iget-object v4, v2, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v5, Lcom/udojava/evalex/Expression$TokenType;->VARIABLE:Lcom/udojava/evalex/Expression$TokenType;

    if-ne v4, v5, :cond_c

    sget-object v4, Lcom/udojava/evalex/Expression;->DEFAULT_CONSTANTS:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2115
    goto :goto_c

    .line 2117
    :cond_29
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2118
    .end local v2    # "nextToken":Lcom/udojava/evalex/Expression$Token;
    .end local v3    # "token":Ljava/lang/String;
    goto :goto_c

    .line 2119
    :cond_2d
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 2156
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->expressionString:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->expressionString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_c
    return v0
.end method

.method public infixNotation()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2202
    .local v0, "infix":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/udojava/evalex/Expression$Tokenizer;

    iget-object v2, p0, Lcom/udojava/evalex/Expression;->expressionString:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/udojava/evalex/Expression$Tokenizer;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;)V

    .line 2203
    .local v1, "tokenizer":Lcom/udojava/evalex/Expression$Tokenizer;
    :goto_c
    invoke-virtual {v1}, Lcom/udojava/evalex/Expression$Tokenizer;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2204
    invoke-virtual {v1}, Lcom/udojava/evalex/Expression$Tokenizer;->next()Lcom/udojava/evalex/Expression$Token;

    move-result-object v2

    .line 2205
    .local v2, "token":Lcom/udojava/evalex/Expression$Token;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2206
    .local v3, "infixNotation":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2207
    .end local v2    # "token":Lcom/udojava/evalex/Expression$Token;
    .end local v3    # "infixNotation":Ljava/lang/String;
    goto :goto_c

    .line 2208
    :cond_41
    return-object v0
.end method

.method public isBoolean()Z
    .registers 6

    .line 2177
    invoke-direct {p0}, Lcom/udojava/evalex/Expression;->getRPN()Ljava/util/List;

    move-result-object v0

    .line 2178
    .local v0, "rpnList":Ljava/util/List;, "Ljava/util/List<Lcom/udojava/evalex/Expression$Token;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    .line 2179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_50

    .line 2180
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/udojava/evalex/Expression$Token;

    .line 2186
    .local v2, "t":Lcom/udojava/evalex/Expression$Token;
    iget-object v3, v2, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    const-string v4, "IF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2187
    goto :goto_4d

    .line 2189
    :cond_23
    iget-object v3, v2, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v4, Lcom/udojava/evalex/Expression$TokenType;->FUNCTION:Lcom/udojava/evalex/Expression$TokenType;

    if-ne v3, v4, :cond_38

    .line 2190
    iget-object v3, p0, Lcom/udojava/evalex/Expression;->functions:Ljava/util/Map;

    iget-object v4, v2, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/udojava/evalex/LazyFunction;

    invoke-interface {v3}, Lcom/udojava/evalex/LazyFunction;->isBooleanFunction()Z

    move-result v3

    return v3

    .line 2191
    :cond_38
    iget-object v3, v2, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v4, Lcom/udojava/evalex/Expression$TokenType;->OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

    if-ne v3, v4, :cond_4d

    .line 2192
    iget-object v3, p0, Lcom/udojava/evalex/Expression;->operators:Ljava/util/Map;

    iget-object v4, v2, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/udojava/evalex/LazyOperator;

    invoke-interface {v3}, Lcom/udojava/evalex/LazyOperator;->isBooleanOperator()Z

    move-result v3

    return v3

    .line 2179
    .end local v2    # "t":Lcom/udojava/evalex/Expression$Token;
    :cond_4d
    :goto_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 2196
    .end local v1    # "i":I
    :cond_50
    const/4 v1, 0x0

    return v1
.end method

.method protected isNumber(Ljava/lang/String;)Z
    .registers 14
    .param p1, "st"    # Ljava/lang/String;

    .line 1332
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1333
    return v1

    .line 1335
    :cond_8
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-ne v0, v2, :cond_18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_18

    .line 1336
    return v1

    .line 1338
    :cond_18
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_27

    .line 1339
    return v1

    .line 1341
    :cond_27
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2e

    if-ne v0, v5, :cond_40

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v3, :cond_3f

    .line 1342
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_40

    .line 1343
    :cond_3f
    return v1

    .line 1345
    :cond_40
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x65

    if-eq v0, v6, :cond_70

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v7, 0x45

    if-ne v0, v7, :cond_51

    goto :goto_70

    .line 1348
    :cond_51
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v8, v0

    const/4 v9, 0x0

    :goto_57
    if-ge v9, v8, :cond_6f

    aget-char v10, v0, v9

    .line 1349
    .local v10, "ch":C
    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    if-nez v11, :cond_6c

    if-eq v10, v2, :cond_6c

    if-eq v10, v5, :cond_6c

    if-eq v10, v6, :cond_6c

    if-eq v10, v7, :cond_6c

    if-eq v10, v4, :cond_6c

    .line 1352
    return v1

    .line 1348
    .end local v10    # "ch":C
    :cond_6c
    add-int/lit8 v9, v9, 0x1

    goto :goto_57

    .line 1355
    :cond_6f
    return v3

    .line 1346
    :cond_70
    :goto_70
    return v1
.end method

.method public setFirstVariableCharacters(Ljava/lang/String;)Lcom/udojava/evalex/Expression;
    .registers 2
    .param p1, "chars"    # Ljava/lang/String;

    .line 1714
    iput-object p1, p0, Lcom/udojava/evalex/Expression;->firstVarChars:Ljava/lang/String;

    .line 1715
    return-object p0
.end method

.method public setPrecision(I)Lcom/udojava/evalex/Expression;
    .registers 3
    .param p1, "precision"    # I

    .line 1689
    new-instance v0, Ljava/math/MathContext;

    invoke-direct {v0, p1}, Ljava/math/MathContext;-><init>(I)V

    iput-object v0, p0, Lcom/udojava/evalex/Expression;->mc:Ljava/math/MathContext;

    .line 1690
    return-object p0
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)Lcom/udojava/evalex/Expression;
    .registers 4
    .param p1, "roundingMode"    # Ljava/math/RoundingMode;

    .line 1701
    new-instance v0, Ljava/math/MathContext;

    iget-object v1, p0, Lcom/udojava/evalex/Expression;->mc:Ljava/math/MathContext;

    invoke-virtual {v1}, Ljava/math/MathContext;->getPrecision()I

    move-result v1

    invoke-direct {v0, v1, p1}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    iput-object v0, p0, Lcom/udojava/evalex/Expression;->mc:Ljava/math/MathContext;

    .line 1702
    return-object p0
.end method

.method public setVariable(Ljava/lang/String;Lcom/udojava/evalex/Expression$LazyNumber;)Lcom/udojava/evalex/Expression;
    .registers 4
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/udojava/evalex/Expression$LazyNumber;

    .line 1790
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->variables:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1791
    return-object p0
.end method

.method public setVariable(Ljava/lang/String;Ljava/lang/String;)Lcom/udojava/evalex/Expression;
    .registers 7
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1803
    invoke-virtual {p0, p2}, Lcom/udojava/evalex/Expression;->isNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1804
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->variables:Ljava/util/Map;

    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/udojava/evalex/Expression;->mc:Ljava/math/MathContext;

    invoke-direct {v1, p2, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    invoke-virtual {p0, v1}, Lcom/udojava/evalex/Expression;->createLazyNumber(Ljava/math/BigDecimal;)Lcom/udojava/evalex/Expression$LazyNumber;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 1805
    :cond_17
    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 1806
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->variables:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 1808
    :cond_26
    move-object v0, p2

    .line 1809
    .local v0, "expStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/udojava/evalex/Expression;->variables:Ljava/util/Map;

    new-instance v3, Lcom/udojava/evalex/Expression$74;

    invoke-direct {v3, p0, v0}, Lcom/udojava/evalex/Expression$74;-><init>(Lcom/udojava/evalex/Expression;Ljava/lang/String;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1830
    iput-object v1, p0, Lcom/udojava/evalex/Expression;->rpn:Ljava/util/List;

    .line 1832
    .end local v0    # "expStr":Ljava/lang/String;
    :goto_33
    return-object p0
.end method

.method public setVariable(Ljava/lang/String;Ljava/math/BigDecimal;)Lcom/udojava/evalex/Expression;
    .registers 4
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/math/BigDecimal;

    .line 1778
    invoke-virtual {p0, p2}, Lcom/udojava/evalex/Expression;->createLazyNumber(Ljava/math/BigDecimal;)Lcom/udojava/evalex/Expression$LazyNumber;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/udojava/evalex/Expression;->setVariable(Ljava/lang/String;Lcom/udojava/evalex/Expression$LazyNumber;)Lcom/udojava/evalex/Expression;

    move-result-object v0

    return-object v0
.end method

.method public setVariableCharacters(Ljava/lang/String;)Lcom/udojava/evalex/Expression;
    .registers 2
    .param p1, "chars"    # Ljava/lang/String;

    .line 1727
    iput-object p1, p0, Lcom/udojava/evalex/Expression;->varChars:Ljava/lang/String;

    .line 1728
    return-object p0
.end method

.method public toRPN()Ljava/lang/String;
    .registers 8

    .line 2041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2042
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/udojava/evalex/Expression;->getRPN()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/udojava/evalex/Expression$Token;

    .line 2043
    .local v2, "t":Lcom/udojava/evalex/Expression$Token;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_24

    .line 2044
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    :cond_24
    iget-object v3, v2, Lcom/udojava/evalex/Expression$Token;->type:Lcom/udojava/evalex/Expression$TokenType;

    sget-object v4, Lcom/udojava/evalex/Expression$TokenType;->VARIABLE:Lcom/udojava/evalex/Expression$TokenType;

    if-ne v3, v4, :cond_5c

    iget-object v3, p0, Lcom/udojava/evalex/Expression;->variables:Ljava/util/Map;

    iget-object v4, v2, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 2047
    iget-object v3, p0, Lcom/udojava/evalex/Expression;->variables:Ljava/util/Map;

    iget-object v4, v2, Lcom/udojava/evalex/Expression$Token;->surface:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/udojava/evalex/Expression$LazyNumber;

    .line 2048
    .local v3, "innerVariable":Lcom/udojava/evalex/Expression$LazyNumber;
    invoke-interface {v3}, Lcom/udojava/evalex/Expression$LazyNumber;->getString()Ljava/lang/String;

    move-result-object v4

    .line 2049
    .local v4, "innerExp":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/udojava/evalex/Expression;->isNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 2051
    invoke-virtual {v2}, Lcom/udojava/evalex/Expression$Token;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5b

    .line 2053
    :cond_50
    invoke-direct {p0, v4}, Lcom/udojava/evalex/Expression;->createEmbeddedExpression(Ljava/lang/String;)Lcom/udojava/evalex/Expression;

    move-result-object v5

    .line 2054
    .local v5, "exp":Lcom/udojava/evalex/Expression;
    invoke-virtual {v5}, Lcom/udojava/evalex/Expression;->toRPN()Ljava/lang/String;

    move-result-object v6

    .line 2055
    .local v6, "nestedExpRpn":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2057
    .end local v3    # "innerVariable":Lcom/udojava/evalex/Expression$LazyNumber;
    .end local v4    # "innerExp":Ljava/lang/String;
    .end local v5    # "exp":Lcom/udojava/evalex/Expression;
    .end local v6    # "nestedExpRpn":Ljava/lang/String;
    :goto_5b
    goto :goto_63

    .line 2058
    :cond_5c
    invoke-virtual {v2}, Lcom/udojava/evalex/Expression$Token;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    .end local v2    # "t":Lcom/udojava/evalex/Expression$Token;
    :goto_63
    goto :goto_d

    .line 2061
    :cond_64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 2165
    iget-object v0, p0, Lcom/udojava/evalex/Expression;->expressionString:Ljava/lang/String;

    return-object v0
.end method

.method public with(Ljava/lang/String;Lcom/udojava/evalex/Expression$LazyNumber;)Lcom/udojava/evalex/Expression;
    .registers 4
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/udojava/evalex/Expression$LazyNumber;

    .line 1875
    invoke-virtual {p0, p1, p2}, Lcom/udojava/evalex/Expression;->setVariable(Ljava/lang/String;Lcom/udojava/evalex/Expression$LazyNumber;)Lcom/udojava/evalex/Expression;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/lang/String;Ljava/lang/String;)Lcom/udojava/evalex/Expression;
    .registers 4
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1923
    invoke-virtual {p0, p1, p2}, Lcom/udojava/evalex/Expression;->setVariable(Ljava/lang/String;Ljava/lang/String;)Lcom/udojava/evalex/Expression;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/lang/String;Ljava/math/BigDecimal;)Lcom/udojava/evalex/Expression;
    .registers 4
    .param p1, "variable"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/math/BigDecimal;

    .line 1863
    invoke-virtual {p0, p1, p2}, Lcom/udojava/evalex/Expression;->setVariable(Ljava/lang/String;Ljava/math/BigDecimal;)Lcom/udojava/evalex/Expression;

    move-result-object v0

    return-object v0
.end method
