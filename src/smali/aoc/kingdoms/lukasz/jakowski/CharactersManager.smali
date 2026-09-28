.class public Laoc/kingdoms/lukasz/jakowski/CharactersManager;
.super Ljava/lang/Object;
.source "CharactersManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;,
        Laoc/kingdoms/lukasz/jakowski/CharactersManager$ScenarioCharacters;,
        Laoc/kingdoms/lukasz/jakowski/CharactersManager$ConfigCharactersData;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final loadAdvisor(ILjava/lang/String;I)V
    .registers 15
    .param p0, "iCivID"    # I
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "iAdvisorType"    # I

    .line 102
    const-string v0, ".json"

    const-string v1, "game/characters/"

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_16e

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 105
    .local v0, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    .line 106
    .local v1, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 108
    .local v2, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_59} :catch_16f

    .line 110
    .local v4, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    :try_start_59
    const-class v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;

    .line 112
    .local v5, "tData":Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;
    if-eqz v5, :cond_167

    iget-object v6, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->ImageID:Ljava/lang/String;

    if-eqz v6, :cond_167

    iget-object v6, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->ImageID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_167

    .line 113
    iget v6, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornYear:I

    .line 115
    .local v6, "bornYear":I
    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornYear:I

    sub-int/2addr v7, v8

    const/16 v8, 0xa

    const/4 v9, 0x1

    if-lt v7, v8, :cond_84

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iget v8, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornYear:I

    sub-int/2addr v7, v8

    const/16 v8, 0x63

    if-le v7, v8, :cond_9b

    .line 116
    :cond_84
    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_YEARS_OLD_MIN:I

    sub-int/2addr v7, v8

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->advisors:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Advisors;->ADVISOR_YEARS_OLD_RANDOM:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    sub-int v6, v7, v8

    .line 120
    :cond_9b
    const/4 v7, 0x3

    if-ne p2, v7, :cond_a5

    .line 121
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-virtual {v7, p0}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRandomGeneralImage(I)I

    move-result v7

    .local v7, "advIMG":I
    goto :goto_ab

    .line 124
    .end local v7    # "advIMG":I
    :cond_a5
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-virtual {v7, p0, p2}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->getRandomImage(II)I

    move-result v7

    .line 127
    .restart local v7    # "advIMG":I
    :goto_ab
    new-instance v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v10, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->Name:Ljava/lang/String;

    .line 128
    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->ImageID:Ljava/lang/String;

    invoke-direct {v8, v10, v7, v6, v11}, Laoc/kingdoms/lukasz/map/advisors/Advisor;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 133
    .local v8, "advisor":Laoc/kingdoms/lukasz/map/advisors/Advisor;
    invoke-static {v8, p2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationAdvisorsPool;->buildAdvisorBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;I)Laoc/kingdoms/lukasz/map/advisors/Advisor;

    move-result-object v10

    move-object v8, v10

    .line 135
    iget v10, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornDay:I

    iput v10, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iDayOfBirth:I

    .line 136
    iget v10, v5, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornMonth:I

    iput v10, v8, Laoc/kingdoms/lukasz/map/advisors/Advisor;->iMonthOfBirth:I

    .line 138
    const/4 v10, -0x1

    packed-switch p2, :pswitch_data_174

    .line 161
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    goto/16 :goto_144

    .line 154
    :pswitch_cf
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v11, :cond_e4

    .line 155
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v11, p0, v10}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 157
    :cond_e4
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iput-object v8, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 158
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorTechnology:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v10, p0, v9}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 159
    goto :goto_166

    .line 147
    :pswitch_f6
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v11, :cond_10b

    .line 148
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v11, p0, v10}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 150
    :cond_10b
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iput-object v8, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 151
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorEconomy:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v10, p0, v9}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 152
    goto :goto_166

    .line 140
    :pswitch_11d
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v11, :cond_132

    .line 141
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v11, p0, v10}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 143
    :cond_132
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iput-object v8, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 144
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorAdministration:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v10, p0, v9}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 145
    goto :goto_166

    .line 161
    :goto_144
    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/advisors/Advisor;->sName:Ljava/lang/String;

    if-eqz v11, :cond_155

    .line 162
    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v11, p0, v10}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V

    .line 164
    :cond_155
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iput-object v8, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    .line 165
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->advisorManager:Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->advisorMilitary:Laoc/kingdoms/lukasz/map/advisors/Advisor;

    invoke-static {v10, p0, v9}, Laoc/kingdoms/lukasz/map/advisors/AdvisorManager;->updateCivBonuses(Laoc/kingdoms/lukasz/map/advisors/Advisor;II)V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_166} :catch_168

    .line 169
    :goto_166
    goto :goto_16e

    .line 173
    .end local v5    # "tData":Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;
    .end local v6    # "bornYear":I
    .end local v7    # "advIMG":I
    .end local v8    # "advisor":Laoc/kingdoms/lukasz/map/advisors/Advisor;
    :cond_167
    goto :goto_16c

    .line 171
    :catch_168
    move-exception v5

    .line 172
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_169
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_16c} :catch_16f

    .line 174
    .end local v4    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_16c
    goto/16 :goto_4d

    .line 178
    .end local v0    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v2    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    :cond_16e
    :goto_16e
    goto :goto_173

    .line 176
    :catch_16f
    move-exception v0

    .line 177
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 179
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_173
    return-void

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_11d
        :pswitch_f6
        :pswitch_cf
    .end packed-switch
.end method

.method public static final loadGeneral(ILjava/lang/String;II)V
    .registers 23
    .param p0, "iCivID"    # I
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "nAttack"    # I
    .param p3, "nDefense"    # I

    .line 48
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string v0, ".json"

    const-string v4, "game/characters/"

    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_11e

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    move-object v4, v0

    .line 51
    .local v4, "fileList":Lcom/badlogic/gdx/files/FileHandle;
    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    move-object v5, v0

    .line 52
    .local v5, "json":Lcom/badlogic/gdx/utils/Json;
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v4}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v6, v0

    .line 54
    .local v6, "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_56
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonValue;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_62} :catch_11f

    move-object v8, v0

    .line 56
    .local v8, "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    :try_start_63
    const-class v0, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;

    invoke-virtual {v5, v0, v8}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;

    .line 58
    .local v0, "tData":Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;
    if-eqz v0, :cond_117

    iget-object v9, v0, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->ImageID:Ljava/lang/String;

    if-eqz v9, :cond_117

    iget-object v9, v0, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->ImageID:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_117

    .line 59
    iget v9, v0, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornYear:I

    .line 61
    .local v9, "bornYear":I
    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iget v11, v0, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornYear:I

    sub-int/2addr v10, v11

    const/16 v11, 0xa

    if-lt v10, v11, :cond_8d

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iget v11, v0, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornYear:I

    sub-int/2addr v10, v11

    const/16 v11, 0x63

    if-le v10, v11, :cond_a0

    .line 62
    :cond_8d
    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_YEARS_OLD_MIN:I

    sub-int/2addr v10, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_YEARS_OLD_RANDOM:I

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    sub-int v9, v10, v11

    .line 65
    :cond_a0
    const/16 v10, -0x63

    if-eq v2, v10, :cond_a6

    .line 66
    iput v2, v0, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->Attack:I

    .line 68
    :cond_a6
    if-eq v3, v10, :cond_aa

    .line 69
    iput v3, v0, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->Defense:I

    .line 72
    :cond_aa
    new-instance v18, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v10, v0, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->Name:Ljava/lang/String;

    .line 73
    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 75
    iget v10, v0, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->Attack:I

    if-ltz v10, :cond_ba

    iget v10, v0, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->Attack:I

    :goto_b8
    move v13, v10

    goto :goto_d5

    :cond_ba
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_ATTACK_BASE_VALUE:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_ATTACK_RANDOM:I

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/2addr v10, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_ATTACK_RANDOM2:I

    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/2addr v10, v12

    goto :goto_b8

    .line 76
    :goto_d5
    iget v10, v0, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->Defense:I

    if-ltz v10, :cond_dd

    iget v10, v0, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->Defense:I

    :goto_db
    move v14, v10

    goto :goto_f8

    :cond_dd
    sget-object v10, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_DEFENSE_BASE_VALUE:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_DEFENSE_RANDOM:I

    invoke-virtual {v12, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/2addr v10, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/GameValues;->generals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;

    iget v14, v14, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Generals;->GENERAL_DEFENSE_RANDOM2:I

    invoke-virtual {v12, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    add-int/2addr v10, v12

    goto :goto_db

    :goto_f8
    iget-object v15, v0, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->ImageID:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v10, v18

    move-object/from16 v17, v15

    move v15, v9

    move/from16 v16, p0

    invoke-direct/range {v10 .. v17}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    move-object/from16 v10, v18

    .line 80
    .local v10, "armyGeneral":Laoc/kingdoms/lukasz/map/army/ArmyGeneral;
    iget v11, v0, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornDay:I

    iput v11, v10, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    .line 81
    iget v11, v0, Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;->BornMonth:I

    iput v11, v10, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    .line 83
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11, v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGeneral(Laoc/kingdoms/lukasz/map/army/ArmyGeneral;)V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_116} :catch_118

    .line 85
    goto :goto_11e

    .line 90
    .end local v0    # "tData":Laoc/kingdoms/lukasz/jakowski/CharactersManager$Characters;
    .end local v9    # "bornYear":I
    .end local v10    # "armyGeneral":Laoc/kingdoms/lukasz/map/army/ArmyGeneral;
    :cond_117
    goto :goto_11c

    .line 88
    :catch_118
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_119
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_11c} :catch_11f

    .line 91
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v8    # "jValue":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_11c
    goto/16 :goto_56

    .line 95
    .end local v4    # "fileList":Lcom/badlogic/gdx/files/FileHandle;
    .end local v5    # "json":Lcom/badlogic/gdx/utils/Json;
    .end local v6    # "tempArrayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/badlogic/gdx/utils/JsonValue;>;"
    :cond_11e
    :goto_11e
    goto :goto_123

    .line 93
    :catch_11f
    move-exception v0

    .line 94
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 96
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_123
    return-void
.end method
