.class Laoc/kingdoms/lukasz/menusInGame/InGame_Event$2;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;
.source "InGame_Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Event;-><init>(Laoc/kingdoms/lukasz/events/Event;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Event;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .registers 13
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/InGame_Event;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Z
    .param p5, "x3"    # Z
    .param p6, "x4"    # I

    .line 184
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$2;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Event;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;-><init>(Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public getTime()J
    .registers 3

    .line 186
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->lTime:J

    return-wide v0
.end method
