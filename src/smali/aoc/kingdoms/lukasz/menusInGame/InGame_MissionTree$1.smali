.class Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$1;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleTechTree;
.source "InGame_MissionTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;Ljava/lang/String;IZZ)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iHeight"    # I
    .param p4, "moveable"    # Z
    .param p5, "resizable"    # Z

    .line 148
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleTechTree;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .registers 6
    .param p1, "oSB"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .param p2, "nPosX"    # I
    .param p3, "nPosY"    # I
    .param p4, "nWidth"    # I
    .param p5, "titleStatus"    # Laoc/kingdoms/lukasz/menu_element/Status;

    .line 156
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree$1;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    .line 157
    return-void
.end method

.method public getTime()J
    .registers 3

    .line 151
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_MissionTree;->lTime:J

    return-wide v0
.end method
