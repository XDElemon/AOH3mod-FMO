.class Laoc/kingdoms/lukasz/jakowski/Keyboard$34;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Laoc/kingdoms/lukasz/jakowski/Keyboard$Keyboard_Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/Keyboard;->showKeyboard(Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/jakowski/Keyboard;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/jakowski/Keyboard;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/jakowski/Keyboard;

    .line 1515
    iput-object p1, p0, Laoc/kingdoms/lukasz/jakowski/Keyboard$34;->this$0:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionType(Ljava/lang/String;)V
    .registers 4
    .param p1, "nChar"    # Ljava/lang/String;

    .line 1518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    .line 1519
    sget-object v0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    iput-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    .line 1520
    return-void
.end method

.method public delete()V
    .registers 4

    .line 1524
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1a

    .line 1525
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    goto :goto_1e

    .line 1527
    :cond_1a
    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    .line 1530
    :goto_1e
    sget-object v0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    iput-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    .line 1531
    return-void
.end method

.method public save()V
    .registers 3

    .line 1535
    sget-object v0, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMessage:Ljava/lang/String;

    iput-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    .line 1536
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/Keyboard$34;->this$0:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    .line 1537
    return-void
.end method
