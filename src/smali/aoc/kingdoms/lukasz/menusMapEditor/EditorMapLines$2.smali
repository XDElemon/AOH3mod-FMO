.class Laoc/kingdoms/lukasz/menusMapEditor/EditorMapLines$2;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "EditorMapLines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapLines;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapLines;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusMapEditor/EditorMapLines;Ljava/lang/String;IIIIIZ)V
    .registers 19
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusMapEditor/EditorMapLines;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "fontID"    # I
    .param p4, "iTextPositionX"    # I
    .param p5, "iPosX"    # I
    .param p6, "iPosY"    # I
    .param p7, "nWidth"    # I
    .param p8, "isClickable"    # Z

    .line 46
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapLines$2;->this$0:Laoc/kingdoms/lukasz/menusMapEditor/EditorMapLines;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 9

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Lines_Sea.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 55
    .local v0, "fileSave":Lcom/badlogic/gdx/files/FileHandle;
    const-string v1, "\n"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 57
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_30
    sget-object v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapLines;->shipLine:Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    const-string v5, ";"

    if-ge v3, v4, :cond_62

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapLines;->shipLine:Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 61
    .end local v3    # "i":I
    :cond_62
    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_66
    sget-object v3, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapLines;->shipLine:Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    if-ge v1, v3, :cond_96

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapLines;->shipLine:Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v4

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_66

    .line 68
    .end local v1    # "i":I
    :cond_96
    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapLines;->shipLine:Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->addShipLine(Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;)V

    .line 70
    new-instance v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    invoke-direct {v1}, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapLines;->shipLine:Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    .line 71
    return-void
.end method

.method public updateLanguage()V
    .registers 3

    .line 49
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Save"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMapLines$2;->setText(Ljava/lang/String;)V

    .line 50
    return-void
.end method
