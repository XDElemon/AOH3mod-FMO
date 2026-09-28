.class public Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;
.super Ljava/lang/Object;
.source "SteamAchievementsManager.java"


# static fields
.field public static ALLIANCE:Ljava/lang/String;

.field public static DECLARE_WAR:Ljava/lang/String;

.field public static DROP_NUKE:Ljava/lang/String;

.field public static EVENT_RES:Ljava/lang/String;

.field public static GOLDEN_MILITARY:Ljava/lang/String;

.field public static GOLDEN_PROSPERITY:Ljava/lang/String;

.field public static GOLDEN_SCIENCE:Ljava/lang/String;

.field public static PROMOTE_ADVISOR:Ljava/lang/String;

.field public static SPY:Ljava/lang/String;

.field public static UNITE_HRE:Ljava/lang/String;

.field public static UNLOCK_LEGACY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 8
    const-string v0, "EVENT_RES"

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->EVENT_RES:Ljava/lang/String;

    .line 9
    const-string v0, "PROMOTE_ADVISOR"

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->PROMOTE_ADVISOR:Ljava/lang/String;

    .line 10
    const-string v0, "DROP_NUKE"

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->DROP_NUKE:Ljava/lang/String;

    .line 11
    const-string v0, "ALLIANCE"

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->ALLIANCE:Ljava/lang/String;

    .line 12
    const-string v0, "GOLDEN_SCIENCE"

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->GOLDEN_SCIENCE:Ljava/lang/String;

    .line 13
    const-string v0, "GOLDEN_MILITARY"

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->GOLDEN_MILITARY:Ljava/lang/String;

    .line 14
    const-string v0, "GOLDEN_PROSPERITY"

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->GOLDEN_PROSPERITY:Ljava/lang/String;

    .line 15
    const-string v0, "UNITE_HRE"

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->UNITE_HRE:Ljava/lang/String;

    .line 16
    const-string v0, "UNLOCK_LEGACY"

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->UNLOCK_LEGACY:Ljava/lang/String;

    .line 17
    const-string v0, "SPY"

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->SPY:Ljava/lang/String;

    .line 18
    const-string v0, "DECLARE_WAR"

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->DECLARE_WAR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unlockAchievement(Ljava/lang/String;)V
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .line 24
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0, p0}, Lcom/codedisaster/steamworks/SteamUserStats;->setAchievement(Ljava/lang/String;)Z

    .line 25
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->userStats:Lcom/codedisaster/steamworks/SteamUserStats;

    invoke-virtual {v0}, Lcom/codedisaster/steamworks/SteamUserStats;->storeStats()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 28
    goto :goto_c

    .line 26
    :catch_b
    move-exception v0

    .line 29
    :goto_c
    return-void
.end method

.method public static unlockFormable(Ljava/lang/String;)V
    .registers 26
    .param p0, "tag"    # Ljava/lang/String;

    .line 33
    move-object/from16 v1, p0

    const-string v0, "eunn"

    const-string v2, "sarr3"

    const-string v3, "jauu3"

    const-string v4, "east2"

    const-string v5, "evil3"

    const-string v6, "eagl3"

    const-string v7, "danu3"

    const-string v8, "dalm2"

    const-string v9, "plai3"

    const-string v10, "cau3"

    const-string v11, "argg3"

    const-string v12, "carr"

    const-string v13, "cary3"

    const-string v14, "gboh3"

    const-string v15, "baby"

    move-object/from16 v16, v0

    const-string v0, "gatr3"

    move-object/from16 v17, v2

    const-string v2, "arab"

    move-object/from16 v18, v3

    const-string v3, "anda3"

    move-object/from16 v19, v4

    const-string v4, "alpi3"

    move-object/from16 v20, v5

    const-string v5, "afri"

    move-object/from16 v21, v6

    const-string v6, "pol2"

    move-object/from16 v22, v7

    const-string v7, "adri3"

    move-object/from16 v23, v8

    :try_start_3e
    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    invoke-virtual {v8, v1}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getRealTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 35
    .local v8, "tagReal":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7e2

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    goto/16 :goto_7e2

    .line 38
    :cond_52
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7dc

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    goto/16 :goto_7dc

    .line 41
    :cond_60
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7d6

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    goto/16 :goto_7d6

    .line 44
    :cond_6e
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d0

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    goto/16 :goto_7d0

    .line 47
    :cond_7c
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7ca

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    goto/16 :goto_7ca

    .line 50
    :cond_8a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c4

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    goto/16 :goto_7c4

    .line 53
    :cond_98
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7be

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    goto/16 :goto_7be

    .line 56
    :cond_a6
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b8

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    goto/16 :goto_7b8

    .line 59
    :cond_b4
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b2

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    goto/16 :goto_7b2

    .line 62
    :cond_c2
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7ac

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    goto/16 :goto_7ac

    .line 65
    :cond_d0
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a6

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    goto/16 :goto_7a6

    .line 68
    :cond_de
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a0

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    goto/16 :goto_7a0

    .line 71
    :cond_ec
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79a

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fa

    goto/16 :goto_79a

    .line 74
    :cond_fa
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_794

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    goto/16 :goto_794

    .line 77
    :cond_108
    move-object/from16 v0, v23

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78e

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    goto/16 :goto_78e

    .line 80
    :cond_118
    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_788

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    goto/16 :goto_788

    .line 83
    :cond_128
    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_781

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_138

    goto/16 :goto_781

    .line 86
    :cond_138
    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77a

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_148

    goto/16 :goto_77a

    .line 89
    :cond_148
    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_773

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_158

    goto/16 :goto_773

    .line 92
    :cond_158
    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76c

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_168

    goto/16 :goto_76c

    .line 95
    :cond_168
    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_765

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_178

    goto/16 :goto_765

    .line 98
    :cond_178
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75e

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_188

    goto/16 :goto_75e

    .line 101
    :cond_188
    const-string v0, "frc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_757

    const-string v0, "frc"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19a

    goto/16 :goto_757

    .line 104
    :cond_19a
    const-string v0, "gaja3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_750

    const-string v0, "gaja3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ac

    goto/16 :goto_750

    .line 107
    :cond_1ac
    const-string v0, "frak3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_749

    const-string v0, "frak3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1be

    goto/16 :goto_749

    .line 110
    :cond_1be
    const-string v0, "ger"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_742

    const-string v0, "ger"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d0

    goto/16 :goto_742

    .line 113
    :cond_1d0
    const-string v0, "est"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73b

    const-string v0, "est"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e2

    goto/16 :goto_73b

    .line 116
    :cond_1e2
    const-string v0, "ghav"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_734

    const-string v0, "ghav"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f4

    goto/16 :goto_734

    .line 119
    :cond_1f4
    const-string v0, "durr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72d

    const-string v0, "durr"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_206

    goto/16 :goto_72d

    .line 122
    :cond_206
    const-string v0, "cent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_726

    const-string v0, "cent"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_218

    goto/16 :goto_726

    .line 125
    :cond_218
    const-string v0, "nirr3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71f

    const-string v0, "nirr3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22a

    goto/16 :goto_71f

    .line 128
    :cond_22a
    const-string v0, "grc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_718

    const-string v0, "grc"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c

    goto/16 :goto_718

    .line 131
    :cond_23c
    const-string v0, "grea3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_711

    const-string v0, "grea3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24e

    goto/16 :goto_711

    .line 134
    :cond_24e
    const-string v0, "hans3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70a

    const-string v0, "hans3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_260

    goto/16 :goto_70a

    .line 137
    :cond_260
    const-string v0, "iber"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_703

    const-string v0, "iber"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_272

    goto/16 :goto_703

    .line 140
    :cond_272
    const-string v0, "lech3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6fc

    const-string v0, "lech3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_284

    goto/16 :goto_6fc

    .line 143
    :cond_284
    const-string v0, "inca"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f5

    const-string v0, "inca"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_296

    goto/16 :goto_6f5

    .line 146
    :cond_296
    const-string v0, "indo3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6ee

    const-string v0, "indo3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a8

    goto/16 :goto_6ee

    .line 149
    :cond_2a8
    const-string v0, "ita"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e7

    const-string v0, "ita"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ba

    goto/16 :goto_6e7

    .line 152
    :cond_2ba
    const-string v0, "jap"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e0

    const-string v0, "jap"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cc

    goto/16 :goto_6e0

    .line 155
    :cond_2cc
    const-string v0, "jur"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d9

    const-string v0, "jur"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2de

    goto/16 :goto_6d9

    .line 158
    :cond_2de
    const-string v0, "keis3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d2

    const-string v0, "keis3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f0

    goto/16 :goto_6d2

    .line 161
    :cond_2f0
    const-string v0, "kek"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6cb

    const-string v0, "kek"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_302

    goto/16 :goto_6cb

    .line 164
    :cond_302
    const-string v0, "gmag3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c4

    const-string v0, "gmag3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_314

    goto/16 :goto_6c4

    .line 167
    :cond_314
    const-string v0, "int"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6bd

    const-string v0, "int"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_326

    goto/16 :goto_6bd

    .line 170
    :cond_326
    const-string v0, "ire"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b6

    const-string v0, "ire"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_338

    goto/16 :goto_6b6

    .line 173
    :cond_338
    const-string v0, "glat3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6af

    const-string v0, "glat3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34a

    goto/16 :goto_6af

    .line 176
    :cond_34a
    const-string v0, "rivi3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a8

    const-string v0, "rivi3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35c

    goto/16 :goto_6a8

    .line 179
    :cond_35c
    const-string v0, "sok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a1

    const-string v0, "sok"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36e

    goto/16 :goto_6a1

    .line 182
    :cond_36e
    const-string v0, "lati"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69a

    const-string v0, "lati"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_380

    goto/16 :goto_69a

    .line 185
    :cond_380
    const-string v0, "leva3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_693

    const-string v0, "leva3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_392

    goto/16 :goto_693

    .line 188
    :cond_392
    const-string v0, "glux3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68c

    const-string v0, "glux3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a4

    goto/16 :goto_68c

    .line 191
    :cond_3a4
    const-string v0, "lot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_685

    const-string v0, "lot"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b6

    goto/16 :goto_685

    .line 194
    :cond_3b6
    const-string v0, "mad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67e

    const-string v0, "mad"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c8

    goto/16 :goto_67e

    .line 197
    :cond_3c8
    const-string v0, "magy3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_677

    const-string v0, "magy3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3da

    goto/16 :goto_677

    .line 200
    :cond_3da
    const-string v0, "gmaj3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_670

    const-string v0, "gmaj3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ec

    goto/16 :goto_670

    .line 203
    :cond_3ec
    const-string v0, "mara"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_669

    const-string v0, "mara"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3fe

    goto/16 :goto_669

    .line 206
    :cond_3fe
    const-string v0, "meko3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_662

    const-string v0, "meko3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_410

    goto/16 :goto_662

    .line 209
    :cond_410
    const-string v0, "mex2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65b

    const-string v0, "mex2"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_422

    goto/16 :goto_65b

    .line 212
    :cond_422
    const-string v0, "mone3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_654

    const-string v0, "mone3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_434

    goto/16 :goto_654

    .line 215
    :cond_434
    const-string v0, "nand3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64d

    const-string v0, "nand3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_446

    goto/16 :goto_64d

    .line 218
    :cond_446
    const-string v0, "nors"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_646

    const-string v0, "nors"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_458

    goto/16 :goto_646

    .line 221
    :cond_458
    const-string v0, "pizz3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63f

    const-string v0, "pizz3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46a

    goto/16 :goto_63f

    .line 224
    :cond_46a
    const-string v0, "occa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_638

    const-string v0, "occa"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47c

    goto/16 :goto_638

    .line 227
    :cond_47c
    const-string v0, "mya"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_631

    const-string v0, "mya"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48e

    goto/16 :goto_631

    .line 230
    :cond_48e
    const-string v0, "ira"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62a

    const-string v0, "ira"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a0

    goto/16 :goto_62a

    .line 233
    :cond_4a0
    const-string v0, "red3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_623

    const-string v0, "red3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b2

    goto/16 :goto_623

    .line 236
    :cond_4b2
    const-string v0, "ratt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61c

    const-string v0, "ratt"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c4

    goto/16 :goto_61c

    .line 239
    :cond_4c4
    const-string v0, "rash"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_615

    const-string v0, "rash"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d6

    goto/16 :goto_615

    .line 242
    :cond_4d6
    const-string v0, "mal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60e

    const-string v0, "mal"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e8

    goto/16 :goto_60e

    .line 245
    :cond_4e8
    const-string v0, "spqr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_607

    const-string v0, "spqr"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4fa

    goto/16 :goto_607

    .line 248
    :cond_4fa
    const-string v0, "cono3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_600

    const-string v0, "cono3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50c

    goto/16 :goto_600

    .line 251
    :cond_50c
    const-string v0, "rom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f9

    const-string v0, "rom"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51e

    goto/16 :goto_5f9

    .line 254
    :cond_51e
    const-string v0, "rus2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f2

    const-string v0, "rus2"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_530

    goto/16 :goto_5f2

    .line 257
    :cond_530
    const-string v0, "gsca3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5eb

    const-string v0, "gsca3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_542

    goto/16 :goto_5eb

    .line 260
    :cond_542
    const-string v0, "swab"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e4

    const-string v0, "swab"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_554

    goto/16 :goto_5e4

    .line 263
    :cond_554
    const-string v0, "swi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5dd

    const-string v0, "swi"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_566

    goto/16 :goto_5dd

    .line 266
    :cond_566
    const-string v0, "uni"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d6

    const-string v0, "uni"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_577

    goto :goto_5d6

    .line 269
    :cond_577
    const-string v0, "gbul3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5cf

    const-string v0, "gbul3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_588

    goto :goto_5cf

    .line 272
    :cond_588
    const-string v0, "uso"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c8

    const-string v0, "uso"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_599

    goto :goto_5c8

    .line 275
    :cond_599
    const-string v0, "somi3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c1

    const-string v0, "somi3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5aa

    goto :goto_5c1

    .line 278
    :cond_5aa
    const-string v0, "gsg3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ba

    const-string v0, "gsg3"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e7

    .line 279
    :cond_5ba
    const-string v0, "S_GERMAN_CONF"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 276
    :cond_5c1
    :goto_5c1
    const-string v0, "SOMALI_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 273
    :cond_5c8
    :goto_5c8
    const-string v0, "US_OCEANIA"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 270
    :cond_5cf
    :goto_5cf
    const-string v0, "TSAR_BULGARIA"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 267
    :cond_5d6
    :goto_5d6
    const-string v0, "UNITED_KINGDOM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 264
    :cond_5dd
    :goto_5dd
    const-string v0, "SWITZERLAND"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 261
    :cond_5e4
    :goto_5e4
    const-string v0, "SWABIA"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 258
    :cond_5eb
    :goto_5eb
    const-string v0, "SCANDINAVIA"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 255
    :cond_5f2
    :goto_5f2
    const-string v0, "RUSSIAN_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 252
    :cond_5f9
    :goto_5f9
    const-string v0, "K_ROMANIA"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 249
    :cond_600
    :goto_600
    const-string v0, "R_CONOSUR"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 246
    :cond_607
    :goto_607
    const-string v0, "ROME_E"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 243
    :cond_60e
    :goto_60e
    const-string v0, "MALAYSIA"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 240
    :cond_615
    :goto_615
    const-string v0, "RASHIDUN"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 237
    :cond_61c
    :goto_61c
    const-string v0, "RATTANAKOSIN"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 234
    :cond_623
    :goto_623
    const-string v0, "RED_SEA_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 231
    :cond_62a
    :goto_62a
    const-string v0, "PERSIAN_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 228
    :cond_631
    :goto_631
    const-string v0, "PAGAN_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 225
    :cond_638
    :goto_638
    const-string v0, "OCCITANIA"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 222
    :cond_63f
    :goto_63f
    const-string v0, "PIZZA_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 219
    :cond_646
    :goto_646
    const-string v0, "NORTH_SEA_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 216
    :cond_64d
    :goto_64d
    const-string v0, "NANDA_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 213
    :cond_654
    :goto_654
    const-string v0, "MONGOL_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 210
    :cond_65b
    :goto_65b
    const-string v0, "MEXICAN_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 207
    :cond_662
    :goto_662
    const-string v0, "MEKONG_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 204
    :cond_669
    :goto_669
    const-string v0, "MARATHA_E"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 201
    :cond_670
    :goto_670
    const-string v0, "MAJAPAHIT_E"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 198
    :cond_677
    :goto_677
    const-string v0, "MAGYAR_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 195
    :cond_67e
    :goto_67e
    const-string v0, "MADAGASCAR"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 192
    :cond_685
    :goto_685
    const-string v0, "LOTHARINGIA"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 189
    :cond_68c
    :goto_68c
    const-string v0, "LUXEMBOURG_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 186
    :cond_693
    :goto_693
    const-string v0, "LEVANT_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 183
    :cond_69a
    :goto_69a
    const-string v0, "LATIN_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 180
    :cond_6a1
    :goto_6a1
    const-string v0, "KOREAN_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 177
    :cond_6a8
    :goto_6a8
    const-string v0, "K_RIVIERA"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 174
    :cond_6af
    :goto_6af
    const-string v0, "LATIN_AMERICAN_UNION"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 171
    :cond_6b6
    :goto_6b6
    const-string v0, "K_IRELAND"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 168
    :cond_6bd
    :goto_6bd
    const-string v0, "INTERMARIUM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 165
    :cond_6c4
    :goto_6c4
    const-string v0, "MAGHREB"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 162
    :cond_6cb
    :goto_6cb
    const-string v0, "KEKISTAN"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 159
    :cond_6d2
    :goto_6d2
    const-string v0, "KAISERREICH"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 156
    :cond_6d9
    :goto_6d9
    const-string v0, "JERUSALEM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 153
    :cond_6e0
    :goto_6e0
    const-string v0, "JAPAN"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 150
    :cond_6e7
    :goto_6e7
    const-string v0, "ITALY"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 147
    :cond_6ee
    :goto_6ee
    const-string v0, "INDOCHINA_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 144
    :cond_6f5
    :goto_6f5
    const-string v0, "INCA_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 141
    :cond_6fc
    :goto_6fc
    const-string v0, "LICHITOW"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 138
    :cond_703
    :goto_703
    const-string v0, "IBERIAN_UNION"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 135
    :cond_70a
    :goto_70a
    const-string v0, "HANSEATIC"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 132
    :cond_711
    :goto_711
    const-string v0, "GREATER_ASIA_CO"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 129
    :cond_718
    :goto_718
    const-string v0, "GRAN_COLOMBIA"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 126
    :cond_71f
    :goto_71f
    const-string v0, "NIGER_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 123
    :cond_726
    :goto_726
    const-string v0, "CENTRAL_AMERICA"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 120
    :cond_72d
    :goto_72d
    const-string v0, "DURRANI"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 117
    :cond_734
    :goto_734
    const-string v0, "GHAZNA"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 114
    :cond_73b
    :goto_73b
    const-string v0, "ESTONIA"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 111
    :cond_742
    :goto_742
    const-string v0, "GERMAN_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 108
    :cond_749
    :goto_749
    const-string v0, "GALLIAN"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 105
    :cond_750
    :goto_750
    const-string v0, "GAJAPATI"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 102
    :cond_757
    :goto_757
    const-string v0, "FRANCONIA"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 99
    :cond_75e
    :goto_75e
    const-string v0, "THE_EU"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 96
    :cond_765
    :goto_765
    const-string v0, "SARDINES"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 93
    :cond_76c
    :goto_76c
    const-string v0, "EMPIRE_JAUNPUR"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 90
    :cond_773
    :goto_773
    const-string v0, "EASTERN_ROMAN"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 87
    :cond_77a
    :goto_77a
    const-string v0, "EVIL_SCOTLAND"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 84
    :cond_781
    :goto_781
    const-string v0, "EAGLE_UNION"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto/16 :goto_7e7

    .line 81
    :cond_788
    :goto_788
    const-string v0, "DUNUBIAN"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto :goto_7e7

    .line 78
    :cond_78e
    :goto_78e
    const-string v0, "DALMATIA"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto :goto_7e7

    .line 75
    :cond_794
    :goto_794
    const-string v0, "CONFED_PLAINS"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto :goto_7e7

    .line 72
    :cond_79a
    :goto_79a
    const-string v0, "CAUCASIAN_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto :goto_7e7

    .line 69
    :cond_7a0
    :goto_7a0
    const-string v0, "CATALAN_IMPERIUM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto :goto_7e7

    .line 66
    :cond_7a6
    :goto_7a6
    const-string v0, "CARTHAGE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto :goto_7e7

    .line 63
    :cond_7ac
    :goto_7ac
    const-string v0, "CARPATHIAN_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto :goto_7e7

    .line 60
    :cond_7b2
    :goto_7b2
    const-string v0, "BOHEMIAN_EMPIRE"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto :goto_7e7

    .line 57
    :cond_7b8
    :goto_7b8
    const-string v0, "BABYLON"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto :goto_7e7

    .line 54
    :cond_7be
    :goto_7be
    const-string v0, "AUSTRIAN_REICH"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto :goto_7e7

    .line 51
    :cond_7c4
    :goto_7c4
    const-string v0, "ARABIA"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto :goto_7e7

    .line 48
    :cond_7ca
    :goto_7ca
    const-string v0, "ANDALUCIA"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto :goto_7e7

    .line 45
    :cond_7d0
    :goto_7d0
    const-string v0, "ALIPINE_IMPERIUM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto :goto_7e7

    .line 42
    :cond_7d6
    :goto_7d6
    const-string v0, "AFRICAN_UNION"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto :goto_7e7

    .line 39
    :cond_7dc
    :goto_7dc
    const-string v0, "COMMONWEALTH"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    goto :goto_7e7

    .line 36
    :cond_7e2
    :goto_7e2
    const-string v0, "ADRIATIC_IMPERIUM"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V
    :try_end_7e7
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_7e7} :catch_7e8

    .line 284
    .end local v8    # "tagReal":Ljava/lang/String;
    :cond_7e7
    :goto_7e7
    goto :goto_7e9

    .line 282
    :catch_7e8
    move-exception v0

    .line 285
    :goto_7e9
    return-void
.end method
