.class Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;
.super Ljava/lang/Object;
.source "LanguageManager.java"

# interfaces
.implements Laoc/kingdoms/lukasz/jakowski/LanguageManager$KeyOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/LanguageManager;->updateKeyOutput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/jakowski/LanguageManager;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 161
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundlesSize:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_26

    if-ge v0, v1, :cond_1b

    .line 167
    :try_start_7
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_16

    return-object v1

    .line 168
    :catch_16
    move-exception v1

    .line 169
    .local v1, "ex":Ljava/lang/Exception;
    nop

    .line 165
    .end local v1    # "ex":Ljava/lang/Exception;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    .end local v0    # "i":I
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    # getter for: Laoc/kingdoms/lukasz/jakowski/LanguageManager;->bundle:Lcom/badlogic/gdx/utils/I18NBundle;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->access$000(Laoc/kingdoms/lukasz/jakowski/LanguageManager;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_26

    return-object v0

    .line 174
    :catch_26
    move-exception v0

    .line 176
    .local v0, "ex":Ljava/lang/Exception;
    return-object p1
.end method

.method public get(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "iValue"    # I

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundlesSize:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_38

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_25

    .line 185
    :try_start_9
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-virtual {v1, p1, v3}, Lcom/badlogic/gdx/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1f} :catch_20

    return-object v1

    .line 186
    :catch_20
    move-exception v1

    .line 187
    .local v1, "ex":Ljava/lang/Exception;
    nop

    .line 183
    .end local v1    # "ex":Ljava/lang/Exception;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    .end local v0    # "i":I
    :cond_25
    :try_start_25
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    # getter for: Laoc/kingdoms/lukasz/jakowski/LanguageManager;->bundle:Lcom/badlogic/gdx/utils/I18NBundle;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->access$000(Laoc/kingdoms/lukasz/jakowski/LanguageManager;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v0, p1, v3}, Lcom/badlogic/gdx/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_37} :catch_38

    return-object v0

    .line 192
    :catch_38
    move-exception v0

    .line 194
    .local v0, "ex":Ljava/lang/Exception;
    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sValue"    # Ljava/lang/String;

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundlesSize:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_30

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_21

    .line 203
    :try_start_9
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/I18NBundle;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    invoke-virtual {v1, p1, v3}, Lcom/badlogic/gdx/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_1c

    return-object v1

    .line 204
    :catch_1c
    move-exception v1

    .line 205
    .local v1, "ex":Ljava/lang/Exception;
    nop

    .line 201
    .end local v1    # "ex":Ljava/lang/Exception;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 209
    .end local v0    # "i":I
    :cond_21
    :try_start_21
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    # getter for: Laoc/kingdoms/lukasz/jakowski/LanguageManager;->bundle:Lcom/badlogic/gdx/utils/I18NBundle;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->access$000(Laoc/kingdoms/lukasz/jakowski/LanguageManager;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2f} :catch_30

    return-object v0

    .line 210
    :catch_30
    move-exception v0

    .line 212
    .local v0, "ex":Ljava/lang/Exception;
    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "sValue"    # Ljava/lang/String;
    .param p3, "sValue2"    # Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundlesSize:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_35

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ge v0, v1, :cond_24

    .line 221
    :try_start_a
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/I18NBundle;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v2

    aput-object p3, v3, v4

    invoke-virtual {v1, p1, v3}, Lcom/badlogic/gdx/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1e} :catch_1f

    return-object v1

    .line 222
    :catch_1f
    move-exception v1

    .line 223
    .local v1, "ex":Ljava/lang/Exception;
    nop

    .line 219
    .end local v1    # "ex":Ljava/lang/Exception;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    .end local v0    # "i":I
    :cond_24
    :try_start_24
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;->this$0:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    # getter for: Laoc/kingdoms/lukasz/jakowski/LanguageManager;->bundle:Lcom/badlogic/gdx/utils/I18NBundle;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->access$000(Laoc/kingdoms/lukasz/jakowski/LanguageManager;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    aput-object p3, v1, v4

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_34} :catch_35

    return-object v0

    .line 228
    :catch_35
    move-exception v0

    .line 230
    .local v0, "ex":Ljava/lang/Exception;
    return-object p1
.end method
