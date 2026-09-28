.class public Laoc/kingdoms/lukasz/jakowski/AndroidLauncher;
.super Lcom/badlogic/gdx/backends/android/AndroidApplication;
.source "AndroidLauncher.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 12
    invoke-super {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->onCreate(Landroid/os/Bundle;)V

    # r6d018 DEMO 启动说明弹窗（原生 AlertDialog；点外部即关）
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "AI 空军 DEMO ｜ 作者：薛定谔的柠檬"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "第一版 DEMO（BuildConfig 1.035-DEMO.1）\n\n· 新增：AI 也会建造空军 —— 战斗机 / 截击机 / 攻击机 / 轰炸机 混编出厂\n· 玩家侧：机场「自动打击」「自动巡逻」可用，可指定目标省\n· 参数可在 files/strike_config.json 调整（概率 / 上限 / 机型权重）\n· 本版为测试版，数值可能不平衡，欢迎反馈\n\n交流群：1095433326\n作者：薛定谔的柠檬"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V


    .line 13
    new-instance p1, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    invoke-direct {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;-><init>()V

    .line 15
    new-instance v0, Laoc/kingdoms/lukasz/jakowski/AA_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/AA_Game;-><init>()V

    invoke-virtual {p0, v0, p1}, Laoc/kingdoms/lukasz/jakowski/AndroidLauncher;->initialize(Lcom/badlogic/gdx/ApplicationListener;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    return-void
.end method
