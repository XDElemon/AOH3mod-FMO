.class Laoc/kingdoms/lukasz/jakowski/Keyboard$6$3;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/Keyboard$6;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laoc/kingdoms/lukasz/jakowski/Keyboard$6;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/jakowski/Keyboard$6;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$1"    # Laoc/kingdoms/lukasz/jakowski/Keyboard$6;
    .param p2, "taskKey"    # Ljava/lang/String;
    .param p3, "id"    # I

    .line 420
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Keyboard$6$3;->this$1:Laoc/kingdoms/lukasz/jakowski/Keyboard$6;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 3

    .line 423
    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/Keyboard$6$3;->id:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->buildProvNameData(IZ)V

    .line 424
    return-void
.end method
