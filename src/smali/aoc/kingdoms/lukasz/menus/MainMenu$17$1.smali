.class Laoc/kingdoms/lukasz/menus/MainMenu$17$1;
.super Laoc/kingdoms/lukasz/menu/ClickAnimation;
.source "MainMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/MainMenu$17;->actionElement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Laoc/kingdoms/lukasz/menus/MainMenu$17;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/MainMenu$17;IIII)V
    .registers 6

    iput-object p1, p0, Laoc/kingdoms/lukasz/menus/MainMenu$17$1;->this$1:Laoc/kingdoms/lukasz/menus/MainMenu$17;

    invoke-direct {p0, p2, p3, p4, p5}, Laoc/kingdoms/lukasz/menu/ClickAnimation;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .registers 2

    sget-object v0, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_WAR:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method
