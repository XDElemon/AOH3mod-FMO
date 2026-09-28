.class synthetic Laoc/kingdoms/lukasz/jakowski/Keyboard$55;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/jakowski/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 160
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->values()[Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    :try_start_9
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SEARCH_GAMECIVS:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v0

    :goto_16
    :try_start_16
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SEARCH_COURT_ALL_CIVS:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v0

    :goto_23
    :try_start_23
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SEARCH_ENCYCLOPEDIA:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v0

    :goto_30
    :try_start_30
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SEARCH_RANKING:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    :try_start_3d
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SEARCH_COURT_ALL_PROVINCES:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move-exception v0

    :goto_4a
    :try_start_4a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->INGAME_RENAME_PROVINCE:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v0

    :goto_57
    :try_start_57
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->INGAME_RENAME_CIV:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_62} :catch_63

    goto :goto_64

    :catch_63
    move-exception v0

    :goto_64
    :try_start_64
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SEARCH_COURT_PROVINCES:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_70} :catch_71

    goto :goto_72

    :catch_71
    move-exception v0

    :goto_72
    :try_start_72
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_CREATE_ALLIANCE_REST:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_7e} :catch_7f

    goto :goto_80

    :catch_7f
    move-exception v0

    :goto_80
    :try_start_80
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_CREATE_ALLIANCE_FIRST_TIER:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8c} :catch_8d

    goto :goto_8e

    :catch_8d
    move-exception v0

    :goto_8e
    :try_start_8e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_CREATE_ALLIANCE_FLAG:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_9a} :catch_9b

    goto :goto_9c

    :catch_9b
    move-exception v0

    :goto_9c
    :try_start_9c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_CREATE_ALLIANCE_LEADER:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a9

    goto :goto_aa

    :catch_a9
    move-exception v0

    :goto_aa
    :try_start_aa
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_CREATE_ALLIANCE_NAME:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_b6} :catch_b7

    goto :goto_b8

    :catch_b7
    move-exception v0

    :goto_b8
    :try_start_b8
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->CONSOLE:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_c4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_c4} :catch_c5

    goto :goto_c6

    :catch_c5
    move-exception v0

    :goto_c6
    :try_start_c6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SAVE_NAME:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_d2} :catch_d3

    goto :goto_d4

    :catch_d3
    move-exception v0

    :goto_d4
    :try_start_d4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_YEAR:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_e0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d4 .. :try_end_e0} :catch_e1

    goto :goto_e2

    :catch_e1
    move-exception v0

    :goto_e2
    :try_start_e2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_GOLD:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_ee
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e2 .. :try_end_ee} :catch_ef

    goto :goto_f0

    :catch_ef
    move-exception v0

    :goto_f0
    :try_start_f0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_GOLD_RANDOM:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_fc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f0 .. :try_end_fc} :catch_fd

    goto :goto_fe

    :catch_fd
    move-exception v0

    :goto_fe
    :try_start_fe
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_LEGACY:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_fe .. :try_end_10a} :catch_10b

    goto :goto_10c

    :catch_10b
    move-exception v0

    :goto_10c
    :try_start_10c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_LEGACY_RANDOM:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_118
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10c .. :try_end_118} :catch_119

    goto :goto_11a

    :catch_119
    move-exception v0

    :goto_11a
    :try_start_11a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_MANPOWER_PERC:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_126
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11a .. :try_end_126} :catch_127

    goto :goto_128

    :catch_127
    move-exception v0

    :goto_128
    :try_start_128
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_CIV_NUKES:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_134
    .catch Ljava/lang/NoSuchFieldError; {:try_start_128 .. :try_end_134} :catch_135

    goto :goto_136

    :catch_135
    move-exception v0

    :goto_136
    :try_start_136
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_CIV_LEGACY:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_142
    .catch Ljava/lang/NoSuchFieldError; {:try_start_136 .. :try_end_142} :catch_143

    goto :goto_144

    :catch_143
    move-exception v0

    :goto_144
    :try_start_144
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_CIV_AI_AGGRESSIVENESS:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_144 .. :try_end_150} :catch_151

    goto :goto_152

    :catch_151
    move-exception v0

    :goto_152
    :try_start_152
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_CIV_GOLD:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_15e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_152 .. :try_end_15e} :catch_15f

    goto :goto_160

    :catch_15f
    move-exception v0

    :goto_160
    :try_start_160
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_CIV_MANPOWER:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_16c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_160 .. :try_end_16c} :catch_16d

    goto :goto_16e

    :catch_16d
    move-exception v0

    :goto_16e
    :try_start_16e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_CIV_TAX_EFFICIENCY:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_17a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16e .. :try_end_17a} :catch_17b

    goto :goto_17c

    :catch_17b
    move-exception v0

    :goto_17c
    :try_start_17c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_CIV_ECONOMY:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_188
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17c .. :try_end_188} :catch_189

    goto :goto_18a

    :catch_189
    move-exception v0

    :goto_18a
    :try_start_18a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_CIV_POPULATION:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_196
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18a .. :try_end_196} :catch_197

    goto :goto_198

    :catch_197
    move-exception v0

    :goto_198
    :try_start_198
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_PROVINCE_POPULATION:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_198 .. :try_end_1a4} :catch_1a5

    goto :goto_1a6

    :catch_1a5
    move-exception v0

    :goto_1a6
    :try_start_1a6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_PROVINCE_ECONOMY:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a6 .. :try_end_1b2} :catch_1b3

    goto :goto_1b4

    :catch_1b3
    move-exception v0

    :goto_1b4
    :try_start_1b4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_PROVINCE_TAX_EFFICIENCY:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b4 .. :try_end_1c0} :catch_1c1

    goto :goto_1c2

    :catch_1c1
    move-exception v0

    :goto_1c2
    :try_start_1c2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_PROVINCE_MANPOWER:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1ce
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c2 .. :try_end_1ce} :catch_1cf

    goto :goto_1d0

    :catch_1cf
    move-exception v0

    :goto_1d0
    :try_start_1d0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->CREATE_CIV_EDIT:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d0 .. :try_end_1dc} :catch_1dd

    goto :goto_1de

    :catch_1dd
    move-exception v0

    :goto_1de
    :try_start_1de
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->GAMECIVS_EDIT:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_1ea
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1de .. :try_end_1ea} :catch_1eb

    goto :goto_1ec

    :catch_1eb
    move-exception v0

    :goto_1ec
    :try_start_1ec
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->GAMECIVS_EDIT_NAME:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_1f8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ec .. :try_end_1f8} :catch_1f9

    goto :goto_1fa

    :catch_1f9
    move-exception v0

    :goto_1fa
    :try_start_1fa
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->CREATE_CIV_EDIT_NAME:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_206
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fa .. :try_end_206} :catch_207

    goto :goto_208

    :catch_207
    move-exception v0

    :goto_208
    :try_start_208
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->GAMECIVS_EDIT_WIKI:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_214
    .catch Ljava/lang/NoSuchFieldError; {:try_start_208 .. :try_end_214} :catch_215

    goto :goto_216

    :catch_215
    move-exception v0

    :goto_216
    :try_start_216
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->CREATE_CIV_EDIT_WIKI:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_222
    .catch Ljava/lang/NoSuchFieldError; {:try_start_216 .. :try_end_222} :catch_223

    goto :goto_224

    :catch_223
    move-exception v0

    :goto_224
    :try_start_224
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SEARCH_IN_GAME_CIVS:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_230
    .catch Ljava/lang/NoSuchFieldError; {:try_start_224 .. :try_end_230} :catch_231

    goto :goto_232

    :catch_231
    move-exception v0

    :goto_232
    :try_start_232
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SEARCH_SCENARIO_CIVS:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_23e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_232 .. :try_end_23e} :catch_23f

    goto :goto_240

    :catch_23f
    move-exception v0

    :goto_240
    :try_start_240
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SEARCH_SCENARIO_CORES_CIVS:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_24c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_240 .. :try_end_24c} :catch_24d

    goto :goto_24e

    :catch_24d
    move-exception v0

    :goto_24e
    :try_start_24e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SEARCH_CIV_SELECT:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_25a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24e .. :try_end_25a} :catch_25b

    goto :goto_25c

    :catch_25b
    move-exception v0

    :goto_25c
    :try_start_25c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_NAME:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_268
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25c .. :try_end_268} :catch_269

    goto :goto_26a

    :catch_269
    move-exception v0

    :goto_26a
    :try_start_26a
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->INGAME_RULER_NAME:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_276
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26a .. :try_end_276} :catch_277

    goto :goto_278

    :catch_277
    move-exception v0

    :goto_278
    :try_start_278
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->INGAME_ADVISOR_ADMINISTRATIVE_NAME:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_284
    .catch Ljava/lang/NoSuchFieldError; {:try_start_278 .. :try_end_284} :catch_285

    goto :goto_286

    :catch_285
    move-exception v0

    :goto_286
    :try_start_286
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->INGAME_ADVISOR_ECONOMIC_NAME:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_292
    .catch Ljava/lang/NoSuchFieldError; {:try_start_286 .. :try_end_292} :catch_293

    goto :goto_294

    :catch_293
    move-exception v0

    :goto_294
    :try_start_294
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->INGAME_ADVISOR_INNOVATION_NAME:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_2a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_294 .. :try_end_2a0} :catch_2a1

    goto :goto_2a2

    :catch_2a1
    move-exception v0

    :goto_2a2
    :try_start_2a2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->INGAME_ADVISOR_MILITARY_NAME:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_2ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a2 .. :try_end_2ae} :catch_2af

    goto :goto_2b0

    :catch_2af
    move-exception v0

    :goto_2b0
    :try_start_2b0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_AUTHOR:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_2bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b0 .. :try_end_2bc} :catch_2bd

    goto :goto_2be

    :catch_2bd
    move-exception v0

    :goto_2be
    :try_start_2be
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_WIKI:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_2ca
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2be .. :try_end_2ca} :catch_2cb

    goto :goto_2cc

    :catch_2cb
    move-exception v0

    :goto_2cc
    :try_start_2cc
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->SCENARIO_TAG:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_2d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2cc .. :try_end_2d8} :catch_2d9

    goto :goto_2da

    :catch_2d9
    move-exception v0

    :goto_2da
    :try_start_2da
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard$55;->$SwitchMap$aoc$kingdoms$lukasz$jakowski$Keyboard$KeyboardActionType:[I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->COLORPICKER:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_2e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2da .. :try_end_2e6} :catch_2e7

    goto :goto_2e8

    :catch_2e7
    move-exception v0

    :goto_2e8
    return-void
.end method
