.class Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_FormCiv$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Formable;
.source "InGame_FormCiv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_FormCiv;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_FormCiv;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_FormCiv;III)V
    .registers 5
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_FormCiv;
    .param p2, "flagID"    # I
    .param p3, "iPosX"    # I
    .param p4, "iPosY"    # I

    .line 76
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_FormCiv$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_FormCiv;

    invoke-direct {p0, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Formable;-><init>(III)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .registers 1

    .line 80
    return-void
.end method
