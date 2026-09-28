.class public Laoc/kingdoms/lukasz/jakowski/SoundsManager;
.super Ljava/lang/Object;
.source "SoundsManager.java"


# static fields
.field public static ARMY_CLICK:I

.field public static BUDGET_CLICK:I

.field public static BUILD0:I

.field public static BUILD1:I

.field public static CIV_OPTIONS_CLICK:I

.field public static CIV_OPTIONS_CLICK1:I

.field public static DIPLOMACY0:I

.field public static DIPLOMACY1:I

.field public static DIPLOMACY_CLICK:I

.field public static EVENT:I

.field public static EVENT_INFO:I

.field public static FLAG_CLICK:I

.field public static GENERALS_CLICK:I

.field public static INFO_BOX:I

.field public static LEGACY_0:I

.field public static LEGACY_1:I

.field public static LEGACY_2:I

.field public static MAP_MODE0:I

.field public static MAP_MODE1:I

.field public static MOVE_0:I

.field public static MOVE_1:I

.field public static MOVE_2:I

.field public static MOVE_3:I

.field public static MOVE_4:I

.field public static MOVE_SEA_0:I

.field public static MOVE_SEA_1:I

.field public static PERC_VOLUME_KEYBOARD:F

.field public static PERC_VOLUME_SELECT_PROVINCE:F

.field public static PLAY:I

.field public static SIEGE:I

.field public static SOUND_ADVANTAGE0:I

.field public static SOUND_ADVANTAGE1:I

.field public static SOUND_ADVANTAGE2:I

.field public static SOUND_BATTLE:I

.field public static SOUND_BATTLE2:I

.field public static SOUND_CLICK2:I

.field public static SOUND_CLICK3:I

.field public static SOUND_CLICK_MAIN:I

.field public static SOUND_CLICK_MAIN2:I

.field public static SOUND_CLICK_PAGE:I

.field public static SOUND_CLICK_PAGE_1:I

.field public static SOUND_CLICK_TOP:I

.field public static SOUND_CLICK_WAR:I

.field public static SOUND_COIN_0:I

.field public static SOUND_COIN_1:I

.field public static SOUND_COIN_2:I

.field public static SOUND_CORES:I

.field public static SOUND_CREATE_ARMY:I

.field public static SOUND_ECONOMY_0:I

.field public static SOUND_ECONOMY_1:I

.field public static SOUND_FORMABLE:I

.field public static SOUND_GOLD_0:I

.field public static SOUND_GOLD_1:I

.field public static SOUND_GOLD_2:I

.field public static SOUND_GOLD_3:I

.field public static SOUND_GOLD_4:I

.field public static SOUND_GOLD_LEVEL_0:I

.field public static SOUND_GOLD_LEVEL_1:I

.field public static SOUND_GOLD_LEVEL_2:I

.field public static SOUND_GROWTH_RATE:I

.field public static SOUND_GROWTH_RATE2:I

.field public static SOUND_HOVER_0:I

.field public static SOUND_HOVER_1:I

.field public static SOUND_HOVER_2:I

.field public static SOUND_HOVER_3:I

.field public static SOUND_HOVER_4:I

.field public static SOUND_HOVER_5:I

.field public static SOUND_HOVER_6:I

.field public static SOUND_HOVER_7:I

.field public static SOUND_HOVER_8:I

.field public static SOUND_INCREASE_MANPOWER:I

.field public static SOUND_INCREASE_MANPOWER2:I

.field public static SOUND_INFRASTRUCTURE:I

.field public static SOUND_INFRASTRUCTURE_1:I

.field public static SOUND_LOAN:I

.field public static SOUND_LOAN_REPAY:I

.field public static SOUND_NUKE:I

.field public static SOUND_NUKE2:I

.field public static SOUND_PLAY_NEW_GAME:I

.field public static SOUND_PROVINCE:I

.field public static SOUND_RECRUIT_ARMY_0:I

.field public static SOUND_RECRUIT_ARMY_1:I

.field public static SOUND_RECRUIT_CANCEL:I

.field public static SOUND_SELECTED_ARMY_0:I

.field public static SOUND_SELECTED_ARMY_1:I

.field public static SOUND_WAR_END:I

.field public static TAB_0:I

.field public static TAB_1:I

.field public static TECHNOLOGY:I

.field public static TECHNOLOGY_CLICK:I

.field public static WAR:I

.field public static ambienceVolume:F

.field public static iCivOptionsSound:I

.field public static iGrowthRate:I

.field public static isWarMusicPlaying:Z

.field public static masterVolume:F

.field public static musicVolume:F

.field public static soundsVolume:F


# instance fields
.field public SOUNDS_RANDOM_TIME:J

.field public WAR_MUSIC_LAST_TIME_PLAYED:J

.field public currentMusic:Lcom/badlogic/gdx/audio/Music;

.field public hoverVolume:F

.field public iCurrentMusicID:I

.field public iDiplomacyButton:I

.field public iEconomy:I

.field public iHoverID:I

.field public iIncreaseManpower:I

.field public iRecruitArmy:I

.field public iSelectArmy:I

.field public lHoverTime:J

.field public lRecruitTime:J

.field public lSounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/audio/Sound;",
            ">;"
        }
    .end annotation
.end field

.field public lSoundsRandom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/audio/Sound;",
            ">;"
        }
    .end annotation
.end field

.field public lTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lTitlesWar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public soundsRandomSize:I

.field public tabNum:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    .line 16
    const v0, 0x3ecccccd    # 0.4f

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    .line 17
    const v0, 0x3e4ccccd    # 0.2f

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsVolume:F

    .line 18
    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->ambienceVolume:F

    .line 20
    const v0, 0x3f733333    # 0.95f

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->PERC_VOLUME_SELECT_PROVINCE:F

    .line 21
    const v0, 0x3f666666    # 0.9f

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->PERC_VOLUME_KEYBOARD:F

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->isWarMusicPlaying:Z

    .line 786
    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCivOptionsSound:I

    .line 797
    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iGrowthRate:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSoundsRandom:Ljava/util/List;

    .line 39
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsRandomSize:I

    .line 498
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->WAR_MUSIC_LAST_TIME_PLAYED:J

    .line 810
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iHoverID:I

    .line 811
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    .line 813
    iput-wide v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lHoverTime:J

    .line 877
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iSelectArmy:I

    .line 901
    iput-wide v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lRecruitTime:J

    .line 902
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iRecruitArmy:I

    .line 992
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->tabNum:I

    .line 1014
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iDiplomacyButton:I

    .line 1036
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iEconomy:I

    .line 1065
    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iIncreaseManpower:I

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitlesWar:Ljava/util/List;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_MAIN:I

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_MAIN2:I

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK2:I

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click3."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK3:I

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click_page_0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_PAGE:I

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "click_page_1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_PAGE_1:I

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clickProvince."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_PROVINCE:I

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hover0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_0:I

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hover1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_1:I

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hover2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_2:I

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hover3."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_3:I

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hover4."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_4:I

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hover5."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_5:I

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hover6."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_6:I

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hover7."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_7:I

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hover8."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_8:I

    .line 201
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->VOLUME_MASTER:F

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    .line 202
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->VOLUME_SOUNDS:F

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->setSoundsVolume(F)V

    .line 203
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->VOLUME_AMBIENCE:F

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->setAmbienceVolume(F)V

    .line 204
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->VOLUME_MUSIC:F

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->setMusicVolume(F)V

    .line 206
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->VOLUME_HOVER:F

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    .line 207
    return-void
.end method

.method public static getClickSound_CivOptions()I
    .registers 2

    .line 789
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCivOptionsSound:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCivOptionsSound:I

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_12

    .line 793
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->CIV_OPTIONS_CLICK1:I

    return v0

    .line 791
    :pswitch_e
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->CIV_OPTIONS_CLICK:I

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method

.method public static final getFileExtension()Ljava/lang/String;
    .registers 1

    .line 46
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->isiOS:Z

    if-eqz v0, :cond_7

    const-string v0, "mp3"

    goto :goto_9

    :cond_7
    const-string v0, "ogg"

    :goto_9
    return-object v0
.end method

.method public static getGrowthRate()I
    .registers 2

    .line 800
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iGrowthRate:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iGrowthRate:I

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_12

    .line 804
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GROWTH_RATE2:I

    return v0

    .line 802
    :pswitch_e
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GROWTH_RATE:I

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public final addSound(Ljava/lang/String;)I
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;

    .line 643
    const-string v0, "audio/sounds/"

    :try_start_2
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_22} :catch_23

    .line 652
    goto :goto_4e

    .line 644
    :catch_23
    move-exception v1

    .line 645
    .local v1, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->printStackTrace()V

    .line 648
    :try_start_27
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_27 .. :try_end_49} :catch_4a

    .line 651
    goto :goto_4e

    .line 649
    :catch_4a
    move-exception v0

    .line 650
    .local v0, "exr":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->printStackTrace()V

    .line 654
    .end local v0    # "exr":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v1    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_4e
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final addSoundSFX(Ljava/lang/String;)I
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;

    .line 659
    const-string v0, "audio/sfx/"

    :try_start_2
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_22} :catch_23

    .line 668
    goto :goto_4e

    .line 660
    :catch_23
    move-exception v1

    .line 661
    .local v1, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->printStackTrace()V

    .line 664
    :try_start_27
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_27 .. :try_end_49} :catch_4a

    .line 667
    goto :goto_4e

    .line 665
    :catch_4a
    move-exception v0

    .line 666
    .local v0, "exr":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->printStackTrace()V

    .line 670
    .end local v0    # "exr":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v1    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_4e
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final addSoundSFXRandom(Ljava/lang/String;)I
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;

    .line 675
    const-string v0, "audio/random/"

    :try_start_2
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSoundsRandom:Ljava/util/List;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_22} :catch_23

    .line 684
    goto :goto_4e

    .line 676
    :catch_23
    move-exception v1

    .line 677
    .local v1, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->printStackTrace()V

    .line 680
    :try_start_27
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSoundsRandom:Ljava/util/List;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/Audio;->newSound(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Sound;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_27 .. :try_end_49} :catch_4a

    .line 683
    goto :goto_4e

    .line 681
    :catch_4a
    move-exception v0

    .line 682
    .local v0, "exr":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->printStackTrace()V

    .line 686
    .end local v0    # "exr":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    .end local v1    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_4e
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSoundsRandom:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final dispose()V
    .registers 3

    .line 777
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 778
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Sound;->dispose()V

    .line 777
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 781
    .end local v0    # "i":I
    :cond_17
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    .line 782
    return-void
.end method

.method public final disposeCurrentMusic()V
    .registers 2

    .line 629
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    if-eqz v0, :cond_e

    .line 630
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->stop()V

    .line 631
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->dispose()V

    .line 633
    :cond_e
    return-void
.end method

.method public getBuild()I
    .registers 3

    .line 1006
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 1010
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->BUILD1:I

    return v0

    .line 1008
    :pswitch_d
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->BUILD0:I

    return v0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public getClickIncreaseManpower()I
    .registers 3

    .line 1068
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iIncreaseManpower:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iIncreaseManpower:I

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_12

    .line 1072
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_INCREASE_MANPOWER2:I

    return v0

    .line 1070
    :pswitch_e
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_INCREASE_MANPOWER:I

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method

.method public getClickMain()I
    .registers 3

    .line 1057
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 1061
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_MAIN2:I

    return v0

    .line 1059
    :pswitch_d
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_MAIN:I

    return v0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public getCoin()I
    .registers 3

    .line 1026
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 1032
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_COIN_2:I

    return v0

    .line 1030
    :pswitch_d
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_COIN_1:I

    return v0

    .line 1028
    :pswitch_10
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_COIN_0:I

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public final getCurrentMusicTittle()Ljava/lang/String;
    .registers 6

    .line 722
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_55

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    goto :goto_63

    :cond_55
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_63
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiplomacy()I
    .registers 3

    .line 1017
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iDiplomacyButton:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iDiplomacyButton:I

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_12

    .line 1021
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->DIPLOMACY1:I

    return v0

    .line 1019
    :pswitch_e
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->DIPLOMACY0:I

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method

.method public getEconomy()I
    .registers 3

    .line 1039
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iEconomy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iEconomy:I

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_12

    .line 1043
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ECONOMY_1:I

    return v0

    .line 1041
    :pswitch_e
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ECONOMY_0:I

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method

.method public getFileType()Ljava/lang/String;
    .registers 2

    .line 636
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isIOS()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ".mp3"

    goto :goto_b

    :cond_9
    const-string v0, ".ogg"

    :goto_b
    return-object v0
.end method

.method public getGold()I
    .registers 3

    .line 978
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 988
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_4:I

    return v0

    .line 986
    :pswitch_d
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_3:I

    return v0

    .line 984
    :pswitch_10
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_2:I

    return v0

    .line 982
    :pswitch_13
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_1:I

    return v0

    .line 980
    :pswitch_16
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_0:I

    return v0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method public getInfrastructure()I
    .registers 3

    .line 1048
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 1052
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_INFRASTRUCTURE_1:I

    return v0

    .line 1050
    :pswitch_d
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_INFRASTRUCTURE:I

    return v0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public final getMasterVolume()F
    .registers 2

    .line 771
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    return v0
.end method

.method public final getMusicVolume()F
    .registers 2

    .line 745
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    return v0
.end method

.method public getRecruitArmy()I
    .registers 3

    .line 923
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iRecruitArmy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iRecruitArmy:I

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_12

    .line 927
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_RECRUIT_ARMY_1:I

    return v0

    .line 925
    :pswitch_e
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_RECRUIT_ARMY_0:I

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method

.method public getSelectedArmy()I
    .registers 3

    .line 891
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iSelectArmy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iSelectArmy:I

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_12

    .line 895
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_SELECTED_ARMY_1:I

    return v0

    .line 893
    :pswitch_e
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_SELECTED_ARMY_0:I

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method

.method public final getSoundsVolume()F
    .registers 2

    .line 757
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsVolume:F

    return v0
.end method

.method public final getSoundsVolumeMaster()F
    .registers 3

    .line 761
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsVolume:F

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float v0, v0, v1

    return v0
.end method

.method public getTab()I
    .registers 2

    .line 995
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->tabNum:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->tabNum:I

    .line 997
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->tabNum:I

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_16

    .line 1001
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->TAB_1:I

    return v0

    .line 999
    :pswitch_12
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->TAB_0:I

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method

.method public final loadMusic_List()V
    .registers 8

    .line 340
    const-string v0, ";"

    :try_start_2
    const-string v1, "audio/music/list.txt"

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 341
    .local v1, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "tempT":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "tagsSPLITED":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_11
    array-length v5, v3

    if-ge v4, v5, :cond_1e

    .line 345
    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    aget-object v6, v3, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_2 .. :try_end_1b} :catch_1f

    .line 344
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 349
    .end local v1    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "tempT":Ljava/lang/String;
    .end local v3    # "tagsSPLITED":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_1e
    goto :goto_23

    .line 347
    :catch_1f
    move-exception v1

    .line 348
    .local v1, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/Throwable;)V

    .line 352
    .end local v1    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_23
    :try_start_23
    const-string v1, "audio/music/listWar.txt"

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 353
    .local v1, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v2

    .line 354
    .restart local v2    # "tempT":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "tagsSPLITED":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_32
    array-length v4, v0

    if-ge v3, v4, :cond_3f

    .line 357
    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitlesWar:Ljava/util/List;

    aget-object v5, v0, v3

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_23 .. :try_end_3c} :catch_40

    .line 356
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 361
    .end local v0    # "tagsSPLITED":[Ljava/lang/String;
    .end local v1    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v2    # "tempT":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_3f
    goto :goto_44

    .line 359
    :catch_40
    move-exception v0

    .line 360
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/Throwable;)V

    .line 363
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_44
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->randomizePlayList()V

    .line 364
    return-void
.end method

.method public final loadNextMusic()V
    .registers 7

    .line 388
    const-string v0, "audio/music/"

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->disposeCurrentMusic()V

    .line 390
    const/4 v1, 0x0

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->isWarMusicPlaying:Z

    .line 391
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    .line 393
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1d

    .line 394
    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    .line 395
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->randomizePlayList()V

    .line 399
    :cond_1d
    :try_start_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 400
    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 402
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 403
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 404
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float v1, v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 406
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager$1;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$1;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    goto/16 :goto_124

    .line 413
    :cond_9a
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 414
    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 416
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 417
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 418
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float v1, v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 420
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager$2;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$2;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    goto :goto_124

    .line 428
    :cond_11a
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager$3;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$3;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_124} :catch_125

    .line 435
    :goto_124
    goto :goto_129

    .line 433
    :catch_125
    move-exception v0

    .line 434
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 436
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_129
    return-void
.end method

.method public final loadNextMusic(Ljava/lang/String;)V
    .registers 7
    .param p1, "fileName"    # Ljava/lang/String;

    .line 440
    const-string v0, "audio/music/"

    :try_start_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->disposeCurrentMusic()V

    .line 442
    const/4 v1, 0x0

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->isWarMusicPlaying:Z

    .line 443
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    .line 445
    iget v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1d

    .line 446
    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    .line 447
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->randomizePlayList()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_101

    .line 451
    :cond_1d
    :try_start_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_85

    .line 452
    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 454
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 455
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 456
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float v1, v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 458
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager$4;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$4;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    goto :goto_fb

    .line 465
    :cond_85
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 466
    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 468
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 469
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 470
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float v1, v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 472
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager$5;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$5;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V

    goto :goto_fb

    .line 480
    :cond_f1
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager$6;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$6;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_fb} :catch_fc

    .line 487
    :goto_fb
    goto :goto_100

    .line 485
    :catch_fc
    move-exception v0

    .line 486
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_fd
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_100} :catch_101

    .line 489
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_100
    return-void

    .line 490
    :catch_101
    move-exception v0

    .line 491
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 494
    .end local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->loadNextMusic()V

    .line 495
    return-void
.end method

.method public final loadNextMusic(Ljava/lang/String;I)V
    .registers 10
    .param p1, "sTitle"    # Ljava/lang/String;
    .param p2, "id"    # I

    .line 556
    const-string v0, "audio/music/"

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->disposeCurrentMusic()V

    .line 557
    iput p2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    .line 560
    const/4 v1, 0x0

    :try_start_8
    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v2

    iput-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 562
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 563
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v2}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 564
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget v3, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v4, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float v3, v3, v4

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 566
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/SoundsManager$9;

    invoke-direct {v3, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$9;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_4c
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_8 .. :try_end_4c} :catch_52
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4c} :catch_4d

    goto :goto_a8

    .line 601
    :catch_4d
    move-exception v0

    .line 602
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_a9

    .line 578
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_52
    move-exception v2

    .line 580
    .local v2, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_53
    sget-object v3, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 582
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 583
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 584
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v3, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float v1, v1, v3

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 586
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager$10;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$10;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_a3} :catch_a4

    .line 600
    goto :goto_a8

    .line 598
    :catch_a4
    move-exception v0

    .line 599
    .local v0, "exr":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 603
    .end local v0    # "exr":Ljava/lang/Exception;
    .end local v2    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_a8
    nop

    .line 604
    :goto_a9
    return-void
.end method

.method public final loadNextMusicWar()V
    .registers 8

    .line 501
    const-string v0, "audio/music/"

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->isWarMusicPlaying:Z

    if-nez v1, :cond_d4

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v3, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->WAR_MUSIC_LAST_TIME_PLAYED:J

    sub-long/2addr v1, v3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->WAR_MUSIC_BREAK_BETWEEN_LAST_TIME_PLAYED:I

    int-to-long v3, v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_d4

    .line 502
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->disposeCurrentMusic()V

    .line 504
    const/4 v1, 0x1

    sput-boolean v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->isWarMusicPlaying:Z

    .line 505
    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->WAR_MUSIC_LAST_TIME_PLAYED:J

    .line 508
    const/4 v1, 0x0

    :try_start_1f
    sget-object v2, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitlesWar:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget-object v6, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitlesWar:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v2

    iput-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 510
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v2, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 511
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v2}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 512
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget v3, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v4, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float v3, v3, v4

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 514
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/SoundsManager$7;

    invoke-direct {v3, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$7;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_77
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1f .. :try_end_77} :catch_7d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_77} :catch_78

    goto :goto_d3

    .line 549
    :catch_78
    move-exception v0

    .line 550
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_d4

    .line 526
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_7d
    move-exception v2

    .line 528
    .local v2, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :try_start_7e
    sget-object v3, Lcom/badlogic/gdx/Gdx;->audio:Lcom/badlogic/gdx/Audio;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iCurrentMusicID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/badlogic/gdx/Audio;->newMusic(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/audio/Music;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    .line 530
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setLooping(Z)V

    .line 531
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V

    .line 532
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v3, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float v1, v1, v3

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 534
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager$8;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager$8;-><init>(Laoc/kingdoms/lukasz/jakowski/SoundsManager;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setOnCompletionListener(Lcom/badlogic/gdx/audio/Music$OnCompletionListener;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_ce} :catch_cf

    .line 548
    goto :goto_d3

    .line 546
    :catch_cf
    move-exception v0

    .line 547
    .local v0, "exr":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 551
    .end local v0    # "exr":Ljava/lang/Exception;
    .end local v2    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_d3
    nop

    .line 553
    :cond_d4
    :goto_d4
    return-void
.end method

.method public final loadSFXRandom()V
    .registers 6

    .line 325
    :try_start_0
    const-string v0, "audio/random/list.txt"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 326
    .local v0, "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "split":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    array-length v3, v1

    if-ge v2, v3, :cond_37

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFXRandom(Ljava/lang/String;)I
    :try_end_34
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_34} :catch_38

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 333
    .end local v0    # "tempFileT":Lcom/badlogic/gdx/files/FileHandle;
    .end local v1    # "split":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_37
    goto :goto_3c

    .line 331
    :catch_38
    move-exception v0

    .line 332
    .local v0, "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 335
    .end local v0    # "ex":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :goto_3c
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSoundsRandom:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsRandomSize:I

    .line 336
    return-void
.end method

.method public final loadSounds()V
    .registers 5

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "battle."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_BATTLE:I

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "battle2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_BATTLE2:I

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nuke."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSound(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_NUKE:I

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->PLAY:I

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectedArmy0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_SELECTED_ARMY_0:I

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectedArmy1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_SELECTED_ARMY_1:I

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recruitArmy0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_RECRUIT_ARMY_0:I

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recruitArmy1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_RECRUIT_ARMY_1:I

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recruitArmyCancel."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_RECRUIT_CANCEL:I

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cores."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CORES:I

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gold0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_0:I

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gold1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_1:I

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gold2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_2:I

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gold3."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_3:I

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gold4."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_4:I

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tab0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->TAB_0:I

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tab1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->TAB_1:I

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "goldLevel0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_LEVEL_0:I

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "goldLevel1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_LEVEL_1:I

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "goldLevel2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_LEVEL_2:I

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "coin0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_COIN_0:I

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "coin1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_COIN_1:I

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "coin2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_COIN_2:I

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createArmy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CREATE_ARMY:I

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clickWar."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_WAR:I

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "formable."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_FORMABLE:I

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "infrastructure."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_INFRASTRUCTURE:I

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "infrastructure1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_INFRASTRUCTURE_1:I

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "economy0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ECONOMY_0:I

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "economy1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ECONOMY_1:I

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "increaseManpower."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_INCREASE_MANPOWER:I

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "increaseManpower2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_INCREASE_MANPOWER2:I

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "growthRate."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GROWTH_RATE:I

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "growthRate2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GROWTH_RATE2:I

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "advantage0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ADVANTAGE0:I

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "advantage1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ADVANTAGE1:I

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "advantage2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ADVANTAGE2:I

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clickTop."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_CLICK_TOP:I

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->EVENT:I

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eventInfo2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->EVENT_INFO:I

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loan."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_LOAN:I

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loanRepay."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_LOAN_REPAY:I

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_0:I

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_1:I

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_2:I

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move3."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_3:I

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "move4."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_4:I

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveSea."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_SEA_0:I

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveSea1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_SEA_1:I

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "warEnd."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_WAR_END:I

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playNewGame."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_PLAY_NEW_GAME:I

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacy0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->LEGACY_0:I

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacy1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->LEGACY_1:I

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacy2."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->LEGACY_2:I

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "technology."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->TECHNOLOGY:I

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "technologyClick."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->TECHNOLOGY_CLICK:I

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "armyClick."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->ARMY_CLICK:I

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generals."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->GENERALS_CLICK:I

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mapMode0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MAP_MODE0:I

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mapMode1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MAP_MODE1:I

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "build."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->BUILD0:I

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "build1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->BUILD1:I

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "diplomacy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->DIPLOMACY0:I

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "diplomacy1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->DIPLOMACY1:I

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "diplomacyClick."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->DIPLOMACY_CLICK:I

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "war."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->WAR:I

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "siege."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SIEGE:I

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flagClick."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->FLAG_CLICK:I

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "budgetClick."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->BUDGET_CLICK:I

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "civOptionsClick."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->CIV_OPTIONS_CLICK:I

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "civOptionsClick1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->CIV_OPTIONS_CLICK1:I

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "infoBox."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getFileExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->addSoundSFX(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->INFO_BOX:I

    .line 319
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->loadSFXRandom()V

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->SOUNDS_RANDOM_MIN:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->SOUNDS_RANDOM_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUNDS_RANDOM_TIME:J

    .line 321
    return-void
.end method

.method public playGold()V
    .registers 3

    .line 958
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    .line 972
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_4:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_28

    .line 969
    :pswitch_10
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_3:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 970
    goto :goto_28

    .line 966
    :pswitch_16
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_2:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 967
    goto :goto_28

    .line 963
    :pswitch_1c
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_1:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 964
    goto :goto_28

    .line 960
    :pswitch_22
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_0:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 961
    nop

    .line 975
    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1c
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method

.method public playHover()V
    .registers 6

    .line 816
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lHoverTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x24

    cmp-long v4, v0, v2

    if-lez v4, :cond_63

    .line 817
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lHoverTime:J

    .line 823
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iHoverID:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iHoverID:I

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_64

    .line 849
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_8:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    goto :goto_62

    .line 846
    :pswitch_22
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_7:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    .line 847
    goto :goto_62

    .line 843
    :pswitch_2a
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_6:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    .line 844
    goto :goto_62

    .line 840
    :pswitch_32
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_5:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    .line 841
    goto :goto_62

    .line 837
    :pswitch_3a
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_4:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    .line 838
    goto :goto_62

    .line 834
    :pswitch_42
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_3:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    .line 835
    goto :goto_62

    .line 831
    :pswitch_4a
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_2:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    .line 832
    goto :goto_62

    .line 828
    :pswitch_52
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_1:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    .line 829
    goto :goto_62

    .line 825
    :pswitch_5a
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_HOVER_0:I

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->hoverVolume:F

    invoke-virtual {p0, v0, v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    .line 826
    nop

    .line 852
    :goto_62
    return-void

    .line 820
    :cond_63
    return-void

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_52
        :pswitch_4a
        :pswitch_42
        :pswitch_3a
        :pswitch_32
        :pswitch_2a
        :pswitch_22
    .end packed-switch
.end method

.method public playMove()V
    .registers 3

    .line 938
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    .line 952
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_4:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_28

    .line 949
    :pswitch_10
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_3:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 950
    goto :goto_28

    .line 946
    :pswitch_16
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_2:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 947
    goto :goto_28

    .line 943
    :pswitch_1c
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_1:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 944
    goto :goto_28

    .line 940
    :pswitch_22
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->MOVE_0:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 941
    nop

    .line 955
    :goto_28
    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1c
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method

.method public playRandomSounds()V
    .registers 6

    .line 856
    :try_start_0
    iget-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUNDS_RANDOM_TIME:J

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_37

    .line 857
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsRandomSize:I

    if-lez v0, :cond_37

    .line 858
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    iget v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsRandomSize:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 860
    .local v0, "id":I
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSoundsRandom:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v1}, Lcom/badlogic/gdx/audio/Sound;->stop()V

    .line 861
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSoundsRandom:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/audio/Sound;

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsVolume:F

    sget v3, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float v2, v2, v3

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float v2, v2, v3

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/audio/Sound;->play(F)J

    .line 863
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->updateSoundsRandomTime()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    .line 868
    .end local v0    # "id":I
    :cond_37
    goto :goto_3c

    .line 866
    :catch_38
    move-exception v0

    .line 867
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 869
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_3c
    return-void
.end method

.method public playRecruitArmy()V
    .registers 6

    .line 905
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lRecruitTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v4, v0, v2

    if-lez v4, :cond_27

    .line 906
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lRecruitTime:J

    .line 912
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iRecruitArmy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iRecruitArmy:I

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_28

    .line 917
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_RECRUIT_ARMY_1:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_26

    .line 914
    :pswitch_20
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_RECRUIT_ARMY_0:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 915
    nop

    .line 920
    :goto_26
    return-void

    .line 909
    :cond_27
    return-void

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_20
    .end packed-switch
.end method

.method public playRecruitArmyCancel()V
    .registers 2

    .line 932
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_RECRUIT_CANCEL:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 933
    return-void
.end method

.method public playSelectedArmy()V
    .registers 3

    .line 880
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iSelectArmy:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->iSelectArmy:I

    rem-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_18

    .line 885
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_SELECTED_ARMY_1:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_17

    .line 882
    :pswitch_11
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_SELECTED_ARMY_0:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    .line 883
    nop

    .line 888
    :goto_17
    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_11
    .end packed-switch
.end method

.method public final playSound(I)V
    .registers 3
    .param p1, "id"    # I

    .line 691
    if-ltz p1, :cond_d

    .line 692
    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_4
    invoke-virtual {p0, p1, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_d

    .line 694
    :catch_8
    move-exception v0

    .line 695
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_e

    .line 696
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_d
    :goto_d
    nop

    .line 697
    :goto_e
    return-void
.end method

.method public final playSound(IF)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "fPercOfVolume"    # F

    .line 701
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Sound;->stop()V

    .line 702
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Sound;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsVolume:F

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float v1, v1, v2

    mul-float v1, v1, p2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Sound;->play(F)J
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 705
    goto :goto_23

    .line 703
    :catch_1f
    move-exception v0

    .line 704
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 706
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method public final playStartMusic()V
    .registers 1

    .line 20
    invoke-static {}, Lteam/rainfall/fontFix/FontFix;->playStartMusic()V

    .line 21
    return-void
.end method

.method public final randomizePlayList()V
    .registers 6

    .line 369
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 371
    .local v0, "oR":Ljava/util/Random;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v1, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 374
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 377
    .end local v2    # "i":I
    :cond_21
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 379
    :goto_26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_43

    .line 380
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 382
    .local v2, "tempR":I
    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lTitles:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 384
    .end local v2    # "tempR":I
    goto :goto_26

    .line 385
    :cond_43
    return-void
.end method

.method public final setAmbienceVolume(F)V
    .registers 2
    .param p1, "ambienceVolume"    # F

    .line 753
    sput p1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->ambienceVolume:F

    .line 754
    return-void
.end method

.method public final setMasterVolume(F)V
    .registers 3
    .param p1, "masterVolume"    # F

    .line 765
    sput p1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    .line 767
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getMusicVolume()F

    move-result v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->setMusicVolume(F)V

    .line 768
    return-void
.end method

.method public final setMusicVolume(F)V
    .registers 5
    .param p1, "nMusicVolume"    # F

    .line 726
    sput p1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    .line 729
    :try_start_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    if-eqz v0, :cond_2d

    .line 730
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    sget v2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->masterVolume:F

    mul-float v1, v1, v2

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/audio/Music;->setVolume(F)V

    .line 732
    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->musicVolume:F

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_20

    .line 733
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->pause()V

    goto :goto_2d

    .line 735
    :cond_20
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 736
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->currentMusic:Lcom/badlogic/gdx/audio/Music;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Music;->play()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2e

    .line 741
    :cond_2d
    :goto_2d
    goto :goto_2f

    .line 739
    :catch_2e
    move-exception v0

    .line 742
    :goto_2f
    return-void
.end method

.method public final setSoundsVolume(F)V
    .registers 2
    .param p1, "soundsVolume"    # F

    .line 749
    sput p1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->soundsVolume:F

    .line 750
    return-void
.end method

.method public final stopLegacySound()V
    .registers 3

    .line 711
    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->LEGACY_0:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Sound;->stop()V

    .line 712
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->LEGACY_1:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Sound;->stop()V

    .line 713
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->lSounds:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->LEGACY_2:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/audio/Sound;

    invoke-interface {v0}, Lcom/badlogic/gdx/audio/Sound;->stop()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 716
    goto :goto_2c

    .line 714
    :catch_28
    move-exception v0

    .line 715
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 717
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2c
    return-void
.end method

.method public updateSoundsRandomTime()V
    .registers 5

    .line 872
    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->SOUNDS_RANDOM_MIN:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->SOUNDS_RANDOM_RANDOM:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUNDS_RANDOM_TIME:J

    .line 873
    return-void
.end method
