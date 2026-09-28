.class public Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;
.super Ljava/lang/Object;
.source "EventsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/events/EventsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event_ExactDate"
.end annotation


# instance fields
.field public day:I

.field public eventID:I

.field public month:I

.field public year:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "eventID"    # I
    .param p2, "day"    # I
    .param p3, "month"    # I
    .param p4, "year"    # I

    .line 2783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2784
    iput p1, p0, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->eventID:I

    .line 2785
    iput p2, p0, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->day:I

    .line 2786
    iput p3, p0, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->month:I

    .line 2787
    iput p4, p0, Laoc/kingdoms/lukasz/events/EventsManager$Event_ExactDate;->year:I

    .line 2788
    return-void
.end method
