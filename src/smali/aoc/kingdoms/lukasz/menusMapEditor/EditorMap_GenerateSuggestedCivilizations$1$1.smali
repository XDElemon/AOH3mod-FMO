.class Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1$1;
.super Ljava/lang/Object;
.source "EditorMap_GenerateSuggestedCivilizations.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1;)V
    .registers 2
    .param p1, "this$1"    # Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1;

    .line 44
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1$1;->this$1:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 47
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1$1;->this$1:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1;

    iget-object v0, v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations$1;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;

    # invokes: Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;->loadData()V
    invoke-static {v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;->access$000(Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_GenerateSuggestedCivilizations;)V

    .line 48
    return-void
.end method
