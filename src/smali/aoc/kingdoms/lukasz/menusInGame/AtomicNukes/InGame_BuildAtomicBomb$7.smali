.class Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb$7;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;
.source "InGame_BuildAtomicBomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb;Ljava/lang/String;ZZI)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "moveable"    # Z
    .param p4, "resizable"    # Z
    .param p5, "imageID"    # I

    .line 162
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb$7;->this$0:Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public getTime()J
    .registers 3

    .line 165
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/AtomicNukes/InGame_BuildAtomicBomb;->lTime:J

    return-wide v0
.end method
