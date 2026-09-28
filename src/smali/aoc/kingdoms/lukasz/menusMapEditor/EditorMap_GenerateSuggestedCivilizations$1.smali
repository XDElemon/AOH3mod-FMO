.class Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1;
.super Ljava/lang/Object;
.source "EditorMap_GenerateSuggestedCivilizations.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;

    .line 41
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 44
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1$1;

    invoke-direct {v1, p0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1$1;-><init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method
