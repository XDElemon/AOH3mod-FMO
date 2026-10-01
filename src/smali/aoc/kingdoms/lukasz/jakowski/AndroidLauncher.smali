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

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->demoLoadCfg()V

    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->boot()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "AI \u7a7a\u519b DEMO \uff5c \u4f5c\u8005\uff1a\u859b\u5b9a\u8c14\u7684\u67e0\u6aac"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7b2c\u4e00\u7248 DEMO\uff08BuildConfig 1.035-DEMO.1\uff09\n\n\u00b7 \u65b0\u589e\uff1aAI \u4e5f\u4f1a\u5efa\u9020\u7a7a\u519b \u2014\u2014 \u6218\u6597\u673a / \u622a\u51fb\u673a / \u653b\u51fb\u673a / \u8f70\u70b8\u673a \u6df7\u7f16\u51fa\u5382\n\u00b7 \u73a9\u5bb6\u4fa7\uff1a\u673a\u573a\u300c\u81ea\u52a8\u6253\u51fb\u300d\u300c\u81ea\u52a8\u5de1\u903b\u300d\u53ef\u7528\uff0c\u53ef\u6307\u5b9a\u76ee\u6807\u7701\n\u00b7 \u53c2\u6570\u53ef\u5728 files/strike_config.json \u8c03\u6574\uff08\u6982\u7387 / \u4e0a\u9650 / \u673a\u578b\u6743\u91cd\uff09\n\u00b7 \u672c\u7248\u4e3a\u6d4b\u8bd5\u7248\uff0c\u6570\u503c\u53ef\u80fd\u4e0d\u5e73\u8861\uff0c\u6b22\u8fce\u53cd\u9988\n\n\u4ea4\u6d41\u7fa4\uff1a1095433326\n\u4f5c\u8005\uff1a\u859b\u5b9a\u8c14\u7684\u67e0\u6aac"

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
