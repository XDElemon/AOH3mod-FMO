.class public Laoc/kingdoms/lukasz/jakowski/LanguageManager;
.super Ljava/lang/Object;
.source "LanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/LanguageManager$KeyOutput;
    }
.end annotation


# static fields
.field public static translationsKeysMode:Z


# instance fields
.field private bundle:Lcom/badlogic/gdx/utils/I18NBundle;

.field private bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

.field private bundleLoading:Lcom/badlogic/gdx/utils/I18NBundle;

.field public iLoading_NumOfTexts:I

.field private keyOutput:Laoc/kingdoms/lukasz/jakowski/LanguageManager$KeyOutput;

.field public modsBundles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/utils/I18NBundle;",
            ">;"
        }
    .end annotation
.end field

.field public modsBundlesSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->translationsKeysMode:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "nTag"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->iLoading_NumOfTexts:I

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    .line 27
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundlesSize:I

    .line 32
    if-nez p1, :cond_13

    .line 33
    const-string p1, ""

    .line 36
    :cond_13
    const-string v0, "game/languages/Bundle"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 37
    .local v0, "fileHandle":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, "locale":Ljava/util/Locale;
    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v2

    iput-object v2, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->bundle:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 41
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->initCivsBundle(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->initLoadingBundle(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->updateKeyOutput()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/jakowski/LanguageManager;)Lcom/badlogic/gdx/utils/I18NBundle;
    .registers 2
    .param p0, "x0"    # Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    .line 13
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->bundle:Lcom/badlogic/gdx/utils/I18NBundle;

    return-object v0
.end method


# virtual methods
.method public final dispose()V
    .registers 2

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->bundle:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 343
    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 344
    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->bundleLoading:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 345
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->iLoading_NumOfTexts:I

    .line 346
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 239
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->keyOutput:Laoc/kingdoms/lukasz/jakowski/LanguageManager$KeyOutput;

    invoke-interface {v0, p1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager$KeyOutput;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "nValue"    # I

    .line 243
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->keyOutput:Laoc/kingdoms/lukasz/jakowski/LanguageManager$KeyOutput;

    invoke-interface {v0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager$KeyOutput;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "nValue"    # Ljava/lang/String;

    .line 247
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->keyOutput:Laoc/kingdoms/lukasz/jakowski/LanguageManager$KeyOutput;

    invoke-interface {v0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager$KeyOutput;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "nValue"    # Ljava/lang/String;
    .param p3, "nValue2"    # Ljava/lang/String;

    .line 251
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->keyOutput:Laoc/kingdoms/lukasz/jakowski/LanguageManager$KeyOutput;

    invoke-interface {v0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager$KeyOutput;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCiv(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 258
    if-eqz p1, :cond_79

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    :try_start_3
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundlesSize:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5} :catch_77

    if-ge v0, v1, :cond_19

    .line 261
    :try_start_7
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    return-object v1

    .line 262
    :catch_14
    move-exception v1

    .line 263
    .local v1, "ex":Ljava/lang/Exception;
    nop

    .line 259
    .end local v1    # "ex":Ljava/lang/Exception;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 267
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1a
    :try_start_1a
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundlesSize:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1c} :catch_77

    const/4 v2, 0x0

    const/16 v3, 0x5f

    if-ge v0, v1, :cond_51

    .line 269
    :try_start_21
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_4c

    if-lez v1, :cond_4b

    .line 271
    :try_start_27
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_33} :catch_34

    return-object v1

    .line 272
    :catch_34
    move-exception v1

    .line 277
    :try_start_35
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_49} :catch_4a

    return-object v1

    .line 278
    :catch_4a
    move-exception v1

    .line 284
    :cond_4b
    goto :goto_4e

    .line 282
    :catch_4c
    move-exception v1

    .line 283
    .local v1, "exr":Ljava/lang/Exception;
    nop

    .line 267
    .end local v1    # "exr":Ljava/lang/Exception;
    :goto_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 287
    .end local v0    # "i":I
    :cond_51
    :try_start_51
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_55} :catch_77

    if-lez v0, :cond_70

    .line 289
    :try_start_57
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5d} :catch_5e

    return-object v0

    .line 290
    :catch_5e
    move-exception v0

    .line 295
    :try_start_5f
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6d} :catch_6e

    return-object v0

    .line 296
    :catch_6e
    move-exception v0

    .line 298
    goto :goto_79

    .line 301
    :cond_70
    :try_start_70
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_76} :catch_77

    return-object v0

    .line 304
    :catch_77
    move-exception v0

    goto :goto_7a

    .line 306
    :cond_79
    :goto_79
    nop

    .line 309
    :goto_7a
    :try_start_7a
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->loadCivilization(Ljava/lang/String;)Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    move-result-object v0

    .line 311
    .local v0, "tCiv":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    iget-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Name:Ljava/lang/String;

    if-eqz v1, :cond_8d

    iget-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8d

    .line 312
    iget-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Name:Ljava/lang/String;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_8c} :catch_8e

    return-object v1

    .line 316
    .end local v0    # "tCiv":Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;
    :cond_8d
    goto :goto_8f

    .line 314
    :catch_8e
    move-exception v0

    .line 318
    :goto_8f
    return-object p1
.end method

.method public getLoading(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 323
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    :try_start_1
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundlesSize:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3} :catch_23

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1a

    .line 325
    :try_start_6
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/I18NBundle;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_14} :catch_15

    return-object v1

    .line 326
    :catch_15
    move-exception v1

    .line 327
    .local v1, "ex":Ljava/lang/Exception;
    nop

    .line 323
    .end local v1    # "ex":Ljava/lang/Exception;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    .end local v0    # "i":I
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->bundleLoading:Lcom/badlogic/gdx/utils/I18NBundle;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_23

    return-object v0

    .line 332
    :catch_23
    move-exception v0

    .line 336
    const-string v0, ""

    return-object v0
.end method

.method public final initCivsBundle(Ljava/lang/String;)V
    .registers 5
    .param p1, "nTag"    # Ljava/lang/String;

    .line 49
    const-string v0, "game/languages/civilizations/Bundle"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 51
    .local v0, "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4b

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "game/languages/civilizations/Bundle_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 53
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "localeCivs":Ljava/util/Locale;
    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v2

    iput-object v2, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 55
    .end local v1    # "localeCivs":Ljava/util/Locale;
    goto :goto_56

    .line 57
    :cond_3d
    new-instance v1, Ljava/util/Locale;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 58
    .restart local v1    # "localeCivs":Ljava/util/Locale;
    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v2

    iput-object v2, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 59
    .end local v1    # "localeCivs":Ljava/util/Locale;
    goto :goto_56

    .line 62
    :cond_4b
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 63
    .restart local v1    # "localeCivs":Ljava/util/Locale;
    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v2

    iput-object v2, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->bundleCivs:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 65
    .end local v1    # "localeCivs":Ljava/util/Locale;
    :goto_56
    return-void
.end method

.method public final initLoadingBundle(Ljava/lang/String;)V
    .registers 6
    .param p1, "nTag"    # Ljava/lang/String;

    .line 69
    const-string v0, "game/languages/loading/Bundle"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 70
    .local v0, "fileHandleLoading":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, "localeLoading":Ljava/util/Locale;
    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v2

    iput-object v2, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->bundleLoading:Lcom/badlogic/gdx/utils/I18NBundle;

    .line 75
    :try_start_11
    const-string v2, "NumOfTexts"

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getLoading(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->iLoading_NumOfTexts:I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_1e

    .line 78
    goto :goto_22

    .line 76
    :catch_1e
    move-exception v2

    .line 77
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->iLoading_NumOfTexts:I

    .line 79
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_22
    return-void
.end method

.method public loadModsLanguages(Ljava/lang/String;)V
    .registers 12
    .param p1, "nTag"    # Ljava/lang/String;

    .line 83
    const-string v0, "/"

    :try_start_2
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    sget v2, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFoldersSize:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_26a

    const-string v3, ""

    const-string v4, "_"

    const-string v5, ".properties"

    const-string v6, "languages/Bundle"

    if-ge v1, v2, :cond_18a

    .line 86
    :try_start_14
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_75

    .line 87
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 88
    .local v2, "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 89
    .local v3, "localeCivs":Ljava/util/Locale;
    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    nop

    .end local v2    # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "localeCivs":Ljava/util/Locale;
    goto/16 :goto_186

    .line 91
    :cond_75
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 92
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 93
    .restart local v2    # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 94
    .restart local v3    # "localeCivs":Ljava/util/Locale;
    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    nop

    .end local v2    # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "localeCivs":Ljava/util/Locale;
    goto/16 :goto_186

    .line 96
    :cond_cf
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 97
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 98
    .restart local v2    # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v3, Ljava/util/Locale;

    invoke-direct {v3, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 99
    .restart local v3    # "localeCivs":Ljava/util/Locale;
    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    nop

    .end local v2    # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "localeCivs":Ljava/util/Locale;
    goto :goto_186

    .line 101
    :cond_12f
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_186

    .line 102
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->modsFolders:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 103
    .restart local v2    # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 104
    .restart local v3    # "localeCivs":Ljava/util/Locale;
    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v2    # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    .end local v3    # "localeCivs":Ljava/util/Locale;
    :cond_186
    :goto_186
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 108
    .end local v1    # "i":I
    :cond_18a
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_18b
    sget v2, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalledSize:I

    if-ge v1, v2, :cond_269

    .line 109
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v8}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_1ff

    .line 110
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v8}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 111
    .restart local v2    # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 112
    .local v7, "localeCivs":Ljava/util/Locale;
    iget-object v8, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-static {v2, v7}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    nop

    .end local v2    # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    .end local v7    # "localeCivs":Ljava/util/Locale;
    goto :goto_265

    .line 114
    :cond_1ff
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v8}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_265

    .line 115
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->itemsInstalled:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;

    invoke-virtual {v8}, Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;->getFolder()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    .line 116
    .restart local v2    # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v7, Ljava/util/Locale;

    invoke-direct {v7, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v7    # "localeCivs":Ljava/util/Locale;
    iget-object v8, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-static {v2, v7}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_265
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_265} :catch_26a

    .line 108
    .end local v2    # "fileHandleCivs":Lcom/badlogic/gdx/files/FileHandle;
    .end local v7    # "localeCivs":Ljava/util/Locale;
    :cond_265
    :goto_265
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_18b

    .line 122
    .end local v1    # "i":I
    :cond_269
    goto :goto_26e

    .line 120
    :catch_26a
    move-exception v0

    .line 121
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 124
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_26e
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->modsBundlesSize:I

    .line 125
    return-void
.end method

.method public final updateKeyOutput()V
    .registers 2

    .line 137
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->translationsKeysMode:Z

    if-eqz v0, :cond_c

    .line 138
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager$1;-><init>(Laoc/kingdoms/lukasz/jakowski/LanguageManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->keyOutput:Laoc/kingdoms/lukasz/jakowski/LanguageManager$KeyOutput;

    goto :goto_13

    .line 161
    :cond_c
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager$2;-><init>(Laoc/kingdoms/lukasz/jakowski/LanguageManager;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->keyOutput:Laoc/kingdoms/lukasz/jakowski/LanguageManager$KeyOutput;

    .line 236
    :goto_13
    return-void
.end method
