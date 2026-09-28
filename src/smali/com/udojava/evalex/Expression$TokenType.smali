.class final enum Lcom/udojava/evalex/Expression$TokenType;
.super Ljava/lang/Enum;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/udojava/evalex/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/udojava/evalex/Expression$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/udojava/evalex/Expression$TokenType;

.field public static final enum CLOSE_PAREN:Lcom/udojava/evalex/Expression$TokenType;

.field public static final enum COMMA:Lcom/udojava/evalex/Expression$TokenType;

.field public static final enum FUNCTION:Lcom/udojava/evalex/Expression$TokenType;

.field public static final enum HEX_LITERAL:Lcom/udojava/evalex/Expression$TokenType;

.field public static final enum LITERAL:Lcom/udojava/evalex/Expression$TokenType;

.field public static final enum OPEN_PAREN:Lcom/udojava/evalex/Expression$TokenType;

.field public static final enum OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

.field public static final enum STRINGPARAM:Lcom/udojava/evalex/Expression$TokenType;

.field public static final enum UNARY_OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

.field public static final enum VARIABLE:Lcom/udojava/evalex/Expression$TokenType;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 383
    new-instance v0, Lcom/udojava/evalex/Expression$TokenType;

    const-string v1, "VARIABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/udojava/evalex/Expression$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/udojava/evalex/Expression$TokenType;->VARIABLE:Lcom/udojava/evalex/Expression$TokenType;

    new-instance v0, Lcom/udojava/evalex/Expression$TokenType;

    const-string v1, "FUNCTION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/udojava/evalex/Expression$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/udojava/evalex/Expression$TokenType;->FUNCTION:Lcom/udojava/evalex/Expression$TokenType;

    new-instance v0, Lcom/udojava/evalex/Expression$TokenType;

    const-string v1, "LITERAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/udojava/evalex/Expression$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/udojava/evalex/Expression$TokenType;->LITERAL:Lcom/udojava/evalex/Expression$TokenType;

    new-instance v0, Lcom/udojava/evalex/Expression$TokenType;

    const-string v1, "OPERATOR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/udojava/evalex/Expression$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/udojava/evalex/Expression$TokenType;->OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

    new-instance v0, Lcom/udojava/evalex/Expression$TokenType;

    const-string v1, "UNARY_OPERATOR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/udojava/evalex/Expression$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/udojava/evalex/Expression$TokenType;->UNARY_OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

    new-instance v0, Lcom/udojava/evalex/Expression$TokenType;

    const-string v1, "OPEN_PAREN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/udojava/evalex/Expression$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/udojava/evalex/Expression$TokenType;->OPEN_PAREN:Lcom/udojava/evalex/Expression$TokenType;

    new-instance v0, Lcom/udojava/evalex/Expression$TokenType;

    const-string v1, "COMMA"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/udojava/evalex/Expression$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/udojava/evalex/Expression$TokenType;->COMMA:Lcom/udojava/evalex/Expression$TokenType;

    new-instance v0, Lcom/udojava/evalex/Expression$TokenType;

    const-string v1, "CLOSE_PAREN"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/udojava/evalex/Expression$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/udojava/evalex/Expression$TokenType;->CLOSE_PAREN:Lcom/udojava/evalex/Expression$TokenType;

    new-instance v0, Lcom/udojava/evalex/Expression$TokenType;

    const-string v1, "HEX_LITERAL"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/udojava/evalex/Expression$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/udojava/evalex/Expression$TokenType;->HEX_LITERAL:Lcom/udojava/evalex/Expression$TokenType;

    new-instance v0, Lcom/udojava/evalex/Expression$TokenType;

    const-string v1, "STRINGPARAM"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/udojava/evalex/Expression$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/udojava/evalex/Expression$TokenType;->STRINGPARAM:Lcom/udojava/evalex/Expression$TokenType;

    .line 382
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/udojava/evalex/Expression$TokenType;

    sget-object v1, Lcom/udojava/evalex/Expression$TokenType;->VARIABLE:Lcom/udojava/evalex/Expression$TokenType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/udojava/evalex/Expression$TokenType;->FUNCTION:Lcom/udojava/evalex/Expression$TokenType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/udojava/evalex/Expression$TokenType;->LITERAL:Lcom/udojava/evalex/Expression$TokenType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/udojava/evalex/Expression$TokenType;->OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/udojava/evalex/Expression$TokenType;->UNARY_OPERATOR:Lcom/udojava/evalex/Expression$TokenType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/udojava/evalex/Expression$TokenType;->OPEN_PAREN:Lcom/udojava/evalex/Expression$TokenType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/udojava/evalex/Expression$TokenType;->COMMA:Lcom/udojava/evalex/Expression$TokenType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/udojava/evalex/Expression$TokenType;->CLOSE_PAREN:Lcom/udojava/evalex/Expression$TokenType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/udojava/evalex/Expression$TokenType;->HEX_LITERAL:Lcom/udojava/evalex/Expression$TokenType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/udojava/evalex/Expression$TokenType;->STRINGPARAM:Lcom/udojava/evalex/Expression$TokenType;

    aput-object v1, v0, v11

    sput-object v0, Lcom/udojava/evalex/Expression$TokenType;->$VALUES:[Lcom/udojava/evalex/Expression$TokenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 382
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/udojava/evalex/Expression$TokenType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 382
    const-class v0, Lcom/udojava/evalex/Expression$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/udojava/evalex/Expression$TokenType;

    return-object v0
.end method

.method public static values()[Lcom/udojava/evalex/Expression$TokenType;
    .registers 1

    .line 382
    sget-object v0, Lcom/udojava/evalex/Expression$TokenType;->$VALUES:[Lcom/udojava/evalex/Expression$TokenType;

    invoke-virtual {v0}, [Lcom/udojava/evalex/Expression$TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/udojava/evalex/Expression$TokenType;

    return-object v0
.end method
