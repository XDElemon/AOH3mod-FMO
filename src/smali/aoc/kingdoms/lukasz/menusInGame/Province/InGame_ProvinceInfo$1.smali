.class Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$1;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "InGame_ProvinceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;
    .param p2, "taskKey"    # Ljava/lang/String;
    .param p3, "id"    # I

    .line 201
    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$1;->this$0:Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .registers 2

    .line 204
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo$1;->id:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->provinceIMG_ID:I

    .line 205
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Province/InGame_ProvinceInfo;->loadProvinceIMG()V

    .line 206
    return-void
.end method
