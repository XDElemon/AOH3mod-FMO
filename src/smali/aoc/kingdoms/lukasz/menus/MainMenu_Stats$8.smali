.class Laoc/kingdoms/lukasz/menus/MainMenu_Stats$8;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;
.source "MainMenu_Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/MainMenu_Stats;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/MainMenu_Stats;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/MainMenu_Stats;III)V
    .registers 5
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menus/MainMenu_Stats;
    .param p2, "statsFlagID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I

    .line 317
    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/MainMenu_Stats$8;->this$0:Laoc/kingdoms/lukasz/menus/MainMenu_Stats;

    invoke-direct {p0, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Stats;-><init>(III)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 1

    .line 321
    return-void
.end method
