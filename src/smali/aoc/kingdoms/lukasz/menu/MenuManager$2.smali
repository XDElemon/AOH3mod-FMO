.class synthetic Laoc/kingdoms/lukasz/menu/MenuManager$2;
.super Ljava/lang/Object;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menu/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

.field static final synthetic $SwitchMap$aoc$kingdoms$lukasz$menu_element$MenuElement_Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 2339
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->values()[Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu_element$MenuElement_Type:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu_element$MenuElement_Type:[I

    sget-object v2, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->SLIDER:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception v1

    :goto_16
    const/4 v1, 0x2

    :try_start_17
    sget-object v2, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu_element$MenuElement_Type:[I

    sget-object v3, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->PIECHART_WITH_STATS:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_21} :catch_22

    goto :goto_23

    :catch_22
    move-exception v2

    :goto_23
    const/4 v2, 0x3

    :try_start_24
    sget-object v3, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu_element$MenuElement_Type:[I

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT_SCROLLABLE:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_30

    :catch_2f
    move-exception v3

    :goto_30
    const/4 v3, 0x4

    :try_start_31
    sget-object v4, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu_element$MenuElement_Type:[I

    sget-object v5, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->GRAPH_VERTICAL:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3b} :catch_3c

    goto :goto_3d

    :catch_3c
    move-exception v4

    .line 577
    :goto_3d
    invoke-static {}, Laoc/kingdoms/lukasz/menu/View;->values()[Laoc/kingdoms/lukasz/menu/View;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    :try_start_46
    sget-object v4, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v5, Laoc/kingdoms/lukasz/menu/View;->INIT_GAME_MENU:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_51

    goto :goto_52

    :catch_51
    move-exception v0

    :goto_52
    :try_start_52
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v4, Laoc/kingdoms/lukasz/menu/View;->INIT_GAME_MENU_SELECT_MAP:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_5c} :catch_5d

    goto :goto_5e

    :catch_5d
    move-exception v0

    :goto_5e
    :try_start_5e
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->INIT_GAME_MENU_LANGUAGE:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_68} :catch_69

    goto :goto_6a

    :catch_69
    move-exception v0

    :goto_6a
    :try_start_6a
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->LOAD_SCENARIO:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_74} :catch_75

    goto :goto_76

    :catch_75
    move-exception v0

    :goto_76
    :try_start_76
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->LOAD_SAVE_SCENARIO:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_81} :catch_82

    goto :goto_83

    :catch_82
    move-exception v0

    :goto_83
    :try_start_83
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->LOAD_SAVE_GAME:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8e} :catch_8f

    goto :goto_90

    :catch_8f
    move-exception v0

    :goto_90
    :try_start_90
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->LOAD_SAVED_GAME:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9b} :catch_9c

    goto :goto_9d

    :catch_9c
    move-exception v0

    :goto_9d
    :try_start_9d
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->LOAD_WORKSHOP_PUBLISH:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a9} :catch_aa

    goto :goto_ab

    :catch_aa
    move-exception v0

    :goto_ab
    :try_start_ab
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->MAINMENU:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_b7} :catch_b8

    goto :goto_b9

    :catch_b8
    move-exception v0

    :goto_b9
    :try_start_b9
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->MAINMENU_STATS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_c5} :catch_c6

    goto :goto_c7

    :catch_c6
    move-exception v0

    :goto_c7
    :try_start_c7
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->LOAD_GAMES_LIST:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_d3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c7 .. :try_end_d3} :catch_d4

    goto :goto_d5

    :catch_d4
    move-exception v0

    :goto_d5
    :try_start_d5
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->NEW_GAME:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d5 .. :try_end_e1} :catch_e2

    goto :goto_e3

    :catch_e2
    move-exception v0

    :goto_e3
    :try_start_e3
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->GAME_LOST:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_ef
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_ef} :catch_f0

    goto :goto_f1

    :catch_f0
    move-exception v0

    :goto_f1
    :try_start_f1
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->CLOUDS_MENU:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_fd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f1 .. :try_end_fd} :catch_fe

    goto :goto_ff

    :catch_fe
    move-exception v0

    :goto_ff
    :try_start_ff
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->WORKSHOP:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ff .. :try_end_10b} :catch_10c

    goto :goto_10d

    :catch_10c
    move-exception v0

    :goto_10d
    :try_start_10d
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->MANAGE_MODS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_119
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_119} :catch_11a

    goto :goto_11b

    :catch_11a
    move-exception v0

    :goto_11b
    :try_start_11b
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIOS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_127
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11b .. :try_end_127} :catch_128

    goto :goto_129

    :catch_128
    move-exception v0

    :goto_129
    :try_start_129
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIOS_CAMPAIGN:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_135
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_135} :catch_136

    goto :goto_137

    :catch_136
    move-exception v0

    :goto_137
    :try_start_137
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SETTINGS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_143
    .catch Ljava/lang/NoSuchFieldError; {:try_start_137 .. :try_end_143} :catch_144

    goto :goto_145

    :catch_144
    move-exception v0

    :goto_145
    :try_start_145
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SETTINGS_RESOLUTION:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_151
    .catch Ljava/lang/NoSuchFieldError; {:try_start_145 .. :try_end_151} :catch_152

    goto :goto_153

    :catch_152
    move-exception v0

    :goto_153
    :try_start_153
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SETTINGS_UI:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_15f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_153 .. :try_end_15f} :catch_160

    goto :goto_161

    :catch_160
    move-exception v0

    :goto_161
    :try_start_161
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->IN_GAME_LEGACIES:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_16d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_161 .. :try_end_16d} :catch_16e

    goto :goto_16f

    :catch_16e
    move-exception v0

    :goto_16f
    :try_start_16f
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->IN_GAME_HIDE_UI:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_17b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16f .. :try_end_17b} :catch_17c

    goto :goto_17d

    :catch_17c
    move-exception v0

    :goto_17d
    :try_start_17d
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_189
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17d .. :try_end_189} :catch_18a

    goto :goto_18b

    :catch_18a
    move-exception v0

    :goto_18b
    :try_start_18b
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_197
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18b .. :try_end_197} :catch_198

    goto :goto_199

    :catch_198
    move-exception v0

    :goto_199
    :try_start_199
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_GAMECIVS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_1a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_199 .. :try_end_1a5} :catch_1a6

    goto :goto_1a7

    :catch_1a6
    move-exception v0

    :goto_1a7
    :try_start_1a7
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->CREATE_CIV:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a7 .. :try_end_1b3} :catch_1b4

    goto :goto_1b5

    :catch_1b4
    move-exception v0

    :goto_1b5
    :try_start_1b5
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_GAMECIVS_EDIT:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b5 .. :try_end_1c1} :catch_1c2

    goto :goto_1c3

    :catch_1c2
    move-exception v0

    :goto_1c3
    :try_start_1c3
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c3 .. :try_end_1cf} :catch_1d0

    goto :goto_1d1

    :catch_1d0
    move-exception v0

    :goto_1d1
    :try_start_1d1
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1dd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d1 .. :try_end_1dd} :catch_1de

    goto :goto_1df

    :catch_1de
    move-exception v0

    :goto_1df
    :try_start_1df
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_PROVINCE_CONNECTIONS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1eb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1df .. :try_end_1eb} :catch_1ec

    goto :goto_1ed

    :catch_1ec
    move-exception v0

    :goto_1ed
    :try_start_1ed
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_GROWTH_RATE:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1f9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1ed .. :try_end_1f9} :catch_1fa

    goto :goto_1fb

    :catch_1fa
    move-exception v0

    :goto_1fb
    :try_start_1fb
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_FORMABLE_CIVS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_207
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fb .. :try_end_207} :catch_208

    goto :goto_209

    :catch_208
    move-exception v0

    :goto_209
    :try_start_209
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_FORMABLE_CIV:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_215
    .catch Ljava/lang/NoSuchFieldError; {:try_start_209 .. :try_end_215} :catch_216

    goto :goto_217

    :catch_216
    move-exception v0

    :goto_217
    :try_start_217
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_CIV_SELECT:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_223
    .catch Ljava/lang/NoSuchFieldError; {:try_start_217 .. :try_end_223} :catch_224

    goto :goto_225

    :catch_224
    move-exception v0

    :goto_225
    :try_start_225
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_ECONOMY:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_231
    .catch Ljava/lang/NoSuchFieldError; {:try_start_225 .. :try_end_231} :catch_232

    goto :goto_233

    :catch_232
    move-exception v0

    :goto_233
    :try_start_233
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_SEA_PROVINCES:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_23f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_233 .. :try_end_23f} :catch_240

    goto :goto_241

    :catch_240
    move-exception v0

    :goto_241
    :try_start_241
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_ARMY_POSITION:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_24d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_241 .. :try_end_24d} :catch_24e

    goto :goto_24f

    :catch_24e
    move-exception v0

    :goto_24f
    :try_start_24f
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_PROVINCE_NAMES:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_25b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24f .. :try_end_25b} :catch_25c

    goto :goto_25d

    :catch_25c
    move-exception v0

    :goto_25d
    :try_start_25d
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_LINES:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_269
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25d .. :try_end_269} :catch_26a

    goto :goto_26b

    :catch_26a
    move-exception v0

    :goto_26b
    :try_start_26b
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_WAVES:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_277
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26b .. :try_end_277} :catch_278

    goto :goto_279

    :catch_278
    move-exception v0

    :goto_279
    :try_start_279
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_SUGGESTED_CIVILIZATIONS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_285
    .catch Ljava/lang/NoSuchFieldError; {:try_start_279 .. :try_end_285} :catch_286

    goto :goto_287

    :catch_286
    move-exception v0

    :goto_287
    :try_start_287
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->PRINT_A_MAP:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_293
    .catch Ljava/lang/NoSuchFieldError; {:try_start_287 .. :try_end_293} :catch_294

    goto :goto_295

    :catch_294
    move-exception v0

    :goto_295
    :try_start_295
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_PORT_POSITION:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_2a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_295 .. :try_end_2a1} :catch_2a2

    goto :goto_2a3

    :catch_2a2
    move-exception v0

    :goto_2a3
    :try_start_2a3
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_TERRAIN:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a3 .. :try_end_2af} :catch_2b0

    goto :goto_2b1

    :catch_2b0
    move-exception v0

    :goto_2b1
    :try_start_2b1
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_RESOURCE:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_2bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b1 .. :try_end_2bd} :catch_2be

    goto :goto_2bf

    :catch_2be
    move-exception v0

    :goto_2bf
    :try_start_2bf
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_SELECT_PROVINCES:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_2cb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2bf .. :try_end_2cb} :catch_2cc

    goto :goto_2cd

    :catch_2cc
    move-exception v0

    :goto_2cd
    :try_start_2cd
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_CONTINENTS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_2d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2cd .. :try_end_2d9} :catch_2da

    goto :goto_2db

    :catch_2da
    move-exception v0

    :goto_2db
    :try_start_2db
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_GEO_REGION:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_2e7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2db .. :try_end_2e7} :catch_2e8

    goto :goto_2e9

    :catch_2e8
    move-exception v0

    :goto_2e9
    :try_start_2e9
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT_OPTIMIZATION_REGIONS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_2f5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e9 .. :try_end_2f5} :catch_2f6

    goto :goto_2f7

    :catch_2f6
    move-exception v0

    :goto_2f7
    :try_start_2f7
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->EDITOR_SCENARIOS_LIST:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_303
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f7 .. :try_end_303} :catch_304

    goto :goto_305

    :catch_304
    move-exception v0

    :goto_305
    :try_start_305
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_WASTELAND_CONTINENTS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_311
    .catch Ljava/lang/NoSuchFieldError; {:try_start_305 .. :try_end_311} :catch_312

    goto :goto_313

    :catch_312
    move-exception v0

    :goto_313
    :try_start_313
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_WASTELAND:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_31f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_313 .. :try_end_31f} :catch_320

    goto :goto_321

    :catch_320
    move-exception v0

    :goto_321
    :try_start_321
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->IN_GAME_SELECT_CIVILIZATIONS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_32d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_321 .. :try_end_32d} :catch_32e

    goto :goto_32f

    :catch_32e
    move-exception v0

    :goto_32f
    :try_start_32f
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_CIVILIZATIONS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_33b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32f .. :try_end_33b} :catch_33c

    goto :goto_33d

    :catch_33c
    move-exception v0

    :goto_33d
    :try_start_33d
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_ASSIGN:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_349
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33d .. :try_end_349} :catch_34a

    goto :goto_34b

    :catch_34a
    move-exception v0

    :goto_34b
    :try_start_34b
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_ASSIGN_IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_357
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34b .. :try_end_357} :catch_358

    goto :goto_359

    :catch_358
    move-exception v0

    :goto_359
    :try_start_359
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_TECHNOLOGIES:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_365
    .catch Ljava/lang/NoSuchFieldError; {:try_start_359 .. :try_end_365} :catch_366

    goto :goto_367

    :catch_366
    move-exception v0

    :goto_367
    :try_start_367
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_TECHNOLOGIES_CIVS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_373
    .catch Ljava/lang/NoSuchFieldError; {:try_start_367 .. :try_end_373} :catch_374

    goto :goto_375

    :catch_374
    move-exception v0

    :goto_375
    :try_start_375
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_ARMIES:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_381
    .catch Ljava/lang/NoSuchFieldError; {:try_start_375 .. :try_end_381} :catch_382

    goto :goto_383

    :catch_382
    move-exception v0

    :goto_383
    :try_start_383
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_POPULATION:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_38f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_383 .. :try_end_38f} :catch_390

    goto :goto_391

    :catch_390
    move-exception v0

    :goto_391
    :try_start_391
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_ECONOMY:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_39d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_391 .. :try_end_39d} :catch_39e

    goto :goto_39f

    :catch_39e
    move-exception v0

    :goto_39f
    :try_start_39f
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_GOVERNMENT:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_3ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39f .. :try_end_3ab} :catch_3ac

    goto :goto_3ad

    :catch_3ac
    move-exception v0

    :goto_3ad
    :try_start_3ad
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_BUILDINGS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_3b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3ad .. :try_end_3b9} :catch_3ba

    goto :goto_3bb

    :catch_3ba
    move-exception v0

    :goto_3bb
    :try_start_3bb
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_CORES:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_3c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3bb .. :try_end_3c7} :catch_3c8

    goto :goto_3c9

    :catch_3c8
    move-exception v0

    :goto_3c9
    :try_start_3c9
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_RELIGION:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_3d5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c9 .. :try_end_3d5} :catch_3d6

    goto :goto_3d7

    :catch_3d6
    move-exception v0

    :goto_3d7
    :try_start_3d7
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_RELATIONS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_3e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d7 .. :try_end_3e3} :catch_3e4

    goto :goto_3e5

    :catch_3e4
    move-exception v0

    :goto_3e5
    :try_start_3e5
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_ALLIANCES:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_3f1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e5 .. :try_end_3f1} :catch_3f2

    goto :goto_3f3

    :catch_3f2
    move-exception v0

    :goto_3f3
    :try_start_3f3
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_VASSALS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_3ff
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f3 .. :try_end_3ff} :catch_400

    goto :goto_401

    :catch_400
    move-exception v0

    :goto_401
    :try_start_401
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_TRUCES:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_40d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_401 .. :try_end_40d} :catch_40e

    goto :goto_40f

    :catch_40e
    move-exception v0

    :goto_40f
    :try_start_40f
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_DECLARE_WAR:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_41b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40f .. :try_end_41b} :catch_41c

    goto :goto_41d

    :catch_41c
    move-exception v0

    :goto_41d
    :try_start_41d
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_NON_AGGRESSION:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_429
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41d .. :try_end_429} :catch_42a

    goto :goto_42b

    :catch_42a
    move-exception v0

    :goto_42b
    :try_start_42b
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_MILITARY_ACCESS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_437
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42b .. :try_end_437} :catch_438

    goto :goto_439

    :catch_438
    move-exception v0

    :goto_439
    :try_start_439
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_CREATE_ALLIANCE:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_445
    .catch Ljava/lang/NoSuchFieldError; {:try_start_439 .. :try_end_445} :catch_446

    goto :goto_447

    :catch_446
    move-exception v0

    :goto_447
    :try_start_447
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_CREATE_ALLIANCE_EDIT:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_453
    .catch Ljava/lang/NoSuchFieldError; {:try_start_447 .. :try_end_453} :catch_454

    goto :goto_455

    :catch_454
    move-exception v0

    :goto_455
    :try_start_455
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_DEFENSIVE:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_461
    .catch Ljava/lang/NoSuchFieldError; {:try_start_455 .. :try_end_461} :catch_462

    goto :goto_463

    :catch_462
    move-exception v0

    :goto_463
    :try_start_463
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_GUARANTEE:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_46f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_463 .. :try_end_46f} :catch_470

    goto :goto_471

    :catch_470
    move-exception v0

    :goto_471
    :try_start_471
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_PREVIEW:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_47d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_471 .. :try_end_47d} :catch_47e

    goto :goto_47f

    :catch_47e
    move-exception v0

    :goto_47f
    :try_start_47f
    sget-object v0, Laoc/kingdoms/lukasz/menu/MenuManager$2;->$SwitchMap$aoc$kingdoms$lukasz$menu$View:[I

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_SETTINGS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/View;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_48b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47f .. :try_end_48b} :catch_48c

    goto :goto_48d

    :catch_48c
    move-exception v0

    :goto_48d
    return-void
.end method
