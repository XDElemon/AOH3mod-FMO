.class public Laoc/kingdoms/lukasz/jakowski/Game_Ages;
.super Ljava/lang/Object;
.source "Game_Ages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/Game_Ages$ConfigAgesData;,
        Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;
    }
.end annotation


# instance fields
.field public iAgesSize:I

.field public lAges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;",
            ">;"
        }
    .end annotation
.end field

.field public sBC:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    return-void
.end method

.method public static getDemandVassalization()Ljava/lang/String;
    .registers 2

    .line 195
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->VASSALS:Z

    if-eqz v0, :cond_13

    .line 196
    const-string v0, "DemandVassalization"

    return-object v0

    .line 199
    :cond_13
    const-string v0, "DemandPuppetState"

    return-object v0
.end method

.method public static getLiberateAVassal()Ljava/lang/String;
    .registers 2

    .line 178
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->VASSALS:Z

    if-eqz v0, :cond_13

    .line 179
    const-string v0, "LiberateAVassal"

    return-object v0

    .line 182
    :cond_13
    const-string v0, "LiberateCivilization"

    return-object v0
.end method

.method public static getLord()Ljava/lang/String;
    .registers 2

    .line 162
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->VASSALS:Z

    if-eqz v0, :cond_13

    .line 163
    const-string v0, "Lord"

    return-object v0

    .line 166
    :cond_13
    const-string v0, "ControllingCivilization"

    return-object v0
.end method

.method public static getManageVassals()Ljava/lang/String;
    .registers 2

    .line 154
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->VASSALS:Z

    if-eqz v0, :cond_13

    .line 155
    const-string v0, "ManageVassals"

    return-object v0

    .line 158
    :cond_13
    const-string v0, "ManageSubjects"

    return-object v0
.end method

.method public static getPlayAsAReleasedVassal()Ljava/lang/String;
    .registers 2

    .line 170
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->VASSALS:Z

    if-eqz v0, :cond_13

    .line 171
    const-string v0, "PlayAsAReleasedVassal"

    return-object v0

    .line 174
    :cond_13
    const-string v0, "PlayAsReleasedCivilization"

    return-object v0
.end method

.method public static getReleaseAVassal()Ljava/lang/String;
    .registers 2

    .line 187
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->VASSALS:Z

    if-eqz v0, :cond_13

    .line 188
    const-string v0, "ReleaseAVassal"

    return-object v0

    .line 191
    :cond_13
    const-string v0, "ReleasePuppetState"

    return-object v0
.end method

.method public static getVassal()Ljava/lang/String;
    .registers 2

    .line 138
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->VASSALS:Z

    if-eqz v0, :cond_13

    .line 139
    const-string v0, "Vassal"

    return-object v0

    .line 142
    :cond_13
    const-string v0, "Puppet"

    return-object v0
.end method

.method public static getVassals()Ljava/lang/String;
    .registers 2

    .line 146
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->VASSALS:Z

    if-eqz v0, :cond_13

    .line 147
    const-string v0, "Vassals"

    return-object v0

    .line 150
    :cond_13
    const-string v0, "PuppetStates"

    return-object v0
.end method


# virtual methods
.method public final getAgeOfYear(I)I
    .registers 4
    .param p1, "nYear"    # I

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_27

    .line 107
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->AGE_BeginningYear:I

    if-gt v1, p1, :cond_24

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->AGE_EndYear:I

    if-lt v1, p1, :cond_24

    .line 108
    return v0

    .line 106
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    .end local v0    # "i":I
    :cond_27
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getAge_DiseaseChance(I)F
    .registers 3
    .param p1, "nAgeID"    # I

    .line 122
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->DISEASE_CHANCE:F

    return v0
.end method

.method public final getAge_TurnDays(I)I
    .registers 4
    .param p1, "nAgeID"    # I

    .line 118
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->GAME_DAYS_PER_TURN:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->GAME_SPEED:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected final getAgesSize()I
    .registers 2

    .line 132
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->iAgesSize:I

    return v0
.end method

.method protected final getBC()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->sBC:Ljava/lang/String;

    return-object v0
.end method

.method public final getYear(I)Ljava/lang/String;
    .registers 4
    .param p1, "nYear"    # I

    .line 102
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    if-gez p1, :cond_21

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    neg-int v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getBC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_2c

    :cond_21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    :goto_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final loadAges()V
    .registers 9

    .line 66
    :try_start_0
    const-string v0, "game/Ages.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 68
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "fileContent":Ljava/lang/String;
    new-instance v2, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 71
    .local v2, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$ConfigAgesData;

    const-string v4, "Age"

    const-class v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    invoke-virtual {v2, v3, v4, v5}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 72
    new-instance v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$ConfigAgesData;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/jakowski/Game_Ages$ConfigAgesData;-><init>()V

    .line 73
    .local v3, "data":Laoc/kingdoms/lukasz/jakowski/Game_Ages$ConfigAgesData;
    const-class v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$ConfigAgesData;

    invoke-virtual {v2, v4, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$ConfigAgesData;

    move-object v3, v4

    .line 75
    iget-object v4, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$ConfigAgesData;->Age:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 76
    .local v5, "e":Ljava/lang/Object;
    iget-object v6, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    move-object v7, v5

    check-cast v7, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_3e} :catch_42

    .line 77
    nop

    .end local v5    # "e":Ljava/lang/Object;
    goto :goto_2c

    .line 79
    :cond_40
    nop

    .line 82
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "fileContent":Ljava/lang/String;
    .end local v2    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v3    # "data":Laoc/kingdoms/lukasz/jakowski/Game_Ages$ConfigAgesData;
    goto :goto_46

    .line 80
    :catch_42
    move-exception v0

    .line 81
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 84
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_46
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "BeforeChrist"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->sBC:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->iAgesSize:I

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_59
    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->iAgesSize:I

    if-ge v0, v1, :cond_7a

    .line 89
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->Name:Ljava/lang/String;

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 91
    .end local v0    # "i":I
    :cond_7a
    return-void
.end method

.method protected final updateLanguage()V
    .registers 1

    .line 96
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->loadAges()V

    .line 97
    return-void
.end method
