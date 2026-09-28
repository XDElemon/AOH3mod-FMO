.class public Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking$SortedElements;
.super Ljava/lang/Object;
.source "CivilizationRanking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortedElements"
.end annotation


# instance fields
.field public hoverElement:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

.field public value:F


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;F)V
    .registers 3
    .param p1, "hoverElement"    # Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;
    .param p2, "value"    # F

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking$SortedElements;->hoverElement:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    .line 431
    iput p2, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking$SortedElements;->value:F

    .line 432
    return-void
.end method
