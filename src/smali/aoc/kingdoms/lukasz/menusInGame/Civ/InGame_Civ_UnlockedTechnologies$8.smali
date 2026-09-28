.class Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$8;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;
.source "InGame_Civ_UnlockedTechnologies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;IIIIZI)V
    .registers 15
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;
    .param p2, "btnIMG"    # I
    .param p3, "iTechnologyID"    # I
    .param p4, "iPosX"    # I
    .param p5, "iPosY"    # I
    .param p6, "inTechTree"    # Z
    .param p7, "iPosInQueue"    # I

    .line 262
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies$8;->this$0:Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_UnlockedTechnologies;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;-><init>(IIIIZI)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 1

    .line 264
    return-void
.end method
