.class Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$7;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_Notification_Flag_Red;
.source "InGame_Notifications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;Ljava/lang/String;Ljava/lang/String;IIIIIIJI)V
    .registers 27
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "sText2"    # Ljava/lang/String;
    .param p4, "nPosX"    # I
    .param p5, "nPosY"    # I
    .param p6, "nWidth"    # I
    .param p7, "nHeight"    # I
    .param p8, "imageID"    # I
    .param p9, "notificationID"    # I
    .param p10, "lTime"    # J
    .param p12, "civID"    # I

    .line 197
    move-object v12, p0

    move-object v13, p1

    iput-object v13, v12, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$7;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-wide/from16 v9, p10

    move/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Notification_Flag_Red;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIJI)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 8

    .line 200
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Notification_Flag_Red;->actionElement()V

    .line 202
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$7$1;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$7;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$7;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$7;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->getMenuPosX()I

    move-result v2

    add-int v3, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$7;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$7;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$7;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications;->getMenuPosY()I

    move-result v2

    add-int v4, v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$7;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$7;->getHeight()I

    move-result v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$7$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Notifications$7;IIII)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->addClickAnimation(Laoc/kingdoms/lukasz/menu/ClickAnimation;)V

    .line 208
    return-void
.end method
