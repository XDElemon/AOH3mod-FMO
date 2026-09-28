.class Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$1;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleTechTree;
.source "InGame_TechnologyTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;Ljava/lang/String;IZZ)V
    .registers 6
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;
    .param p2, "sText"    # Ljava/lang/String;
    .param p3, "iHeight"    # I
    .param p4, "moveable"    # Z
    .param p5, "resizable"    # Z

    .line 130
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleTechTree;-><init>(Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method public getTime()J
    .registers 3

    .line 133
    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J

    return-wide v0
.end method
