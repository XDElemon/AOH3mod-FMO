.class public Laoc/kingdoms/lukasz/map/RulersManager$Rulers;
.super Ljava/lang/Object;
.source "RulersManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/map/RulersManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rulers"
.end annotation


# instance fields
.field public BornDay:I

.field public BornMonth:I

.field public BornYear:I

.field public ImageID:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public ReignYear:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
