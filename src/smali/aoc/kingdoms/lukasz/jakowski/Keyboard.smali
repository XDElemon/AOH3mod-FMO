.class public Laoc/kingdoms/lukasz/jakowski/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;,
        Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;
    }
.end annotation


# static fields
.field public static VERTICAL_LINE_UPDATE_TIME:I

.field public static keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

.field public static keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

.field public static keyboardMessage:Ljava/lang/String;

.field public static keyboardMode:Z

.field public static keyboardVerticalLine:Z

.field public static verticalLineTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    .line 34
    const-string v1, ""

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    .line 39
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardVerticalLine:Z

    .line 41
    const/16 v0, 0x177

    sput v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->VERTICAL_LINE_UPDATE_TIME:I

    .line 42
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->verticalLineTime:J

    .line 65
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->NONE:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyboardVerticalLine()Ljava/lang/String;
    .registers 1

    .line 52
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardVerticalLine:Z

    if-eqz v0, :cond_7

    const-string v0, "|"

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    return-object v0
.end method

.method public static updateKeyboardVerticalLine()V
    .registers 5

    .line 45
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v0, :cond_1a

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->verticalLineTime:J

    sget v2, Laoc/kingdoms/lukasz/jakowski/Keyboard;->VERTICAL_LINE_UPDATE_TIME:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1a

    .line 46
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardVerticalLine:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardVerticalLine:Z

    .line 47
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->verticalLineTime:J

    .line 49
    :cond_1a
    return-void
.end method


# virtual methods
.method public final hideKeyboard()V
    .registers 3

    .line 2188
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v0, :cond_46

    .line 2190
    :try_start_4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    if-eqz v0, :cond_1d

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->NONE:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    if-eq v0, v1, :cond_1d

    .line 2191
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    .line 2192
    .local v0, "tempAction":Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->NONE:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    .line 2194
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->CONSOLE:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    if-eq v0, v1, :cond_1d

    .line 2195
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    invoke-interface {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;->save()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1d} :catch_1e

    .line 2200
    .end local v0    # "tempAction":Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;
    :cond_1d
    goto :goto_22

    .line 2198
    :catch_1e
    move-exception v0

    .line 2199
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2202
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_22
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    .line 2203
    const-string v1, ""

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    .line 2204
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardVerticalLine:Z

    .line 2206
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->NONE:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    .line 2208
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$54;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$54;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 2220
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-nez v1, :cond_46

    .line 2222
    :try_start_3c
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Input;->setOnscreenKeyboardVisible(Z)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_41} :catch_42

    .line 2226
    goto :goto_46

    .line 2224
    :catch_42
    move-exception v0

    .line 2225
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 2229
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_46
    :goto_46
    return-void
.end method

.method public final showKeyboard(Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;Ljava/lang/String;)V
    .registers 6
    .param p1, "actionType"    # Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;
    .param p2, "nMessage"    # Ljava/lang/String;

    .line 144
    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    .line 145
    sput-object p2, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    .line 147
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->verticalLineTime:J

    .line 148
    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardVerticalLine:Z

    .line 149
    sput-object p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardActionType:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    .line 151
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 153
    :try_start_13
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    sget-object v2, Lcom/badlogic/gdx/Input$OnscreenKeyboardType;->Default:Lcom/badlogic/gdx/Input$OnscreenKeyboardType;

    invoke-interface {v1, v0, v2}, Lcom/badlogic/gdx/Input;->setOnscreenKeyboardVisible(ZLcom/badlogic/gdx/Input$OnscreenKeyboardType;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1b

    .line 157
    goto :goto_1f

    .line 155
    :catch_1b
    move-exception v0

    .line 156
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 160
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1f
    :goto_1f
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1d4

    .line 2183
    return-void

    .line 2100
    :pswitch_2b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$53;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$53;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 2180
    return-void

    .line 2073
    :pswitch_33
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$52;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$52;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 2097
    return-void

    .line 2046
    :pswitch_3b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$51;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$51;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 2070
    return-void

    .line 2019
    :pswitch_43
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$50;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$50;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 2043
    return-void

    .line 1978
    :pswitch_4b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$49;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$49;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 2016
    return-void

    .line 1937
    :pswitch_53
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$48;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$48;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1975
    return-void

    .line 1896
    :pswitch_5b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$47;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$47;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1934
    return-void

    .line 1855
    :pswitch_63
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$46;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$46;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1893
    return-void

    .line 1828
    :pswitch_6b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$45;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$45;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1852
    return-void

    .line 1801
    :pswitch_73
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$44;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$44;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1825
    return-void

    .line 1770
    :pswitch_7b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$43;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$43;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1798
    return-void

    .line 1739
    :pswitch_83
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$42;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$42;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1767
    return-void

    .line 1708
    :pswitch_8b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$41;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$41;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1736
    return-void

    .line 1677
    :pswitch_93
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$40;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$40;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1705
    return-void

    .line 1650
    :pswitch_9b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$39;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$39;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1674
    return-void

    .line 1623
    :pswitch_a3
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$38;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$38;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1647
    return-void

    .line 1596
    :pswitch_ab
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$37;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$37;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1620
    return-void

    .line 1569
    :pswitch_b3
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$36;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$36;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1593
    return-void

    .line 1542
    :pswitch_bb
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$35;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$35;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1566
    return-void

    .line 1515
    :pswitch_c3
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$34;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$34;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1539
    return-void

    .line 1479
    :pswitch_cb
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$33;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$33;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1512
    return-void

    .line 1443
    :pswitch_d3
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$32;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$32;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1476
    return-void

    .line 1407
    :pswitch_db
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$31;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$31;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1440
    return-void

    .line 1371
    :pswitch_e3
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$30;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$30;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1404
    return-void

    .line 1319
    :pswitch_eb
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$29;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$29;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1368
    return-void

    .line 1267
    :pswitch_f3
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$28;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$28;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1316
    return-void

    .line 1215
    :pswitch_fb
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$27;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$27;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1264
    return-void

    .line 1163
    :pswitch_103
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$26;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$26;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1212
    return-void

    .line 1111
    :pswitch_10b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$25;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$25;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1160
    return-void

    .line 1059
    :pswitch_113
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$24;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$24;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1108
    return-void

    .line 1007
    :pswitch_11b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$23;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$23;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1056
    return-void

    .line 955
    :pswitch_123
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$22;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$22;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 1004
    return-void

    .line 919
    :pswitch_12b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$21;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$21;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 952
    return-void

    .line 883
    :pswitch_133
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$20;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$20;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 916
    return-void

    .line 847
    :pswitch_13b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$19;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$19;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 880
    return-void

    .line 811
    :pswitch_143
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$18;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$18;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 844
    return-void

    .line 775
    :pswitch_14b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$17;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$17;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 808
    return-void

    .line 739
    :pswitch_153
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$16;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$16;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 772
    return-void

    .line 711
    :pswitch_15b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$15;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$15;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 736
    return-void

    .line 679
    :pswitch_163
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$14;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$14;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 708
    return-void

    .line 650
    :pswitch_16b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$13;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$13;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 676
    return-void

    .line 621
    :pswitch_173
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$12;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$12;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 647
    return-void

    .line 592
    :pswitch_17b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$11;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$11;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 618
    return-void

    .line 563
    :pswitch_183
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$10;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$10;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 589
    return-void

    .line 534
    :pswitch_18b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$9;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$9;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 560
    return-void

    .line 492
    :pswitch_193
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$8;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$8;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 531
    return-void

    .line 439
    :pswitch_19b
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$7;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$7;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 489
    return-void

    .line 360
    :pswitch_1a3
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$6;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$6;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 436
    return-void

    .line 318
    :pswitch_1ab
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$5;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$5;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 357
    return-void

    .line 277
    :pswitch_1b3
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$4;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$4;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 315
    return-void

    .line 236
    :pswitch_1bb
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$3;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 274
    return-void

    .line 193
    :pswitch_1c3
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$2;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 233
    return-void

    .line 162
    :pswitch_1cb
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/Keyboard$1;-><init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardAction:Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;

    .line 190
    return-void

    nop

    :pswitch_data_1d4
    .packed-switch 0x1
        :pswitch_1cb
        :pswitch_1c3
        :pswitch_1bb
        :pswitch_1b3
        :pswitch_1ab
        :pswitch_1a3
        :pswitch_19b
        :pswitch_193
        :pswitch_18b
        :pswitch_183
        :pswitch_17b
        :pswitch_173
        :pswitch_16b
        :pswitch_163
        :pswitch_15b
        :pswitch_153
        :pswitch_14b
        :pswitch_143
        :pswitch_13b
        :pswitch_133
        :pswitch_12b
        :pswitch_123
        :pswitch_11b
        :pswitch_113
        :pswitch_10b
        :pswitch_103
        :pswitch_fb
        :pswitch_f3
        :pswitch_eb
        :pswitch_e3
        :pswitch_db
        :pswitch_d3
        :pswitch_cb
        :pswitch_c3
        :pswitch_bb
        :pswitch_b3
        :pswitch_ab
        :pswitch_a3
        :pswitch_9b
        :pswitch_93
        :pswitch_8b
        :pswitch_83
        :pswitch_7b
        :pswitch_73
        :pswitch_6b
        :pswitch_63
        :pswitch_5b
        :pswitch_53
        :pswitch_4b
        :pswitch_43
        :pswitch_3b
        :pswitch_33
        :pswitch_2b
    .end packed-switch
.end method
