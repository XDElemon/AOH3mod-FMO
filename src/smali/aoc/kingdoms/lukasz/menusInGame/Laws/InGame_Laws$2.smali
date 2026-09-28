.class Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$2;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_Law3_Red;
.source "InGame_Laws.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .registers 21
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;
    .param p2, "sText2"    # Ljava/lang/String;
    .param p3, "sDesc"    # Ljava/lang/String;
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "imageID"    # I
    .param p8, "lawID"    # I
    .param p9, "lawID2"    # I

    .line 70
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law3_Red;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 6

    .line 73
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Government"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget-object v3, Laoc/kingdoms/lukasz/map/LawsManager;->laws:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$2;->getValue1()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/LawsManager$Law;->RequiredGovernmentID:[I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Laws/InGame_Laws$2;->getValue2()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Name:Ljava/lang/String;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->government:I

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastNegative(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    return-void
.end method
