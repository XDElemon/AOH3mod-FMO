.class Laoc/kingdoms/lukasz/map/map/MapModeManager$39;
.super Laoc/kingdoms/lukasz/map/map/MapMode;
.source "MapModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapModeManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapModeManager;Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V
    .registers 4
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/map/map/MapModeManager;
    .param p2, "drawProvinces"    # Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;
    .param p3, "provinceHoverBuild"    # Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;

    .line 984
    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager$39;->this$0:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    invoke-direct {p0, p2, p3}, Laoc/kingdoms/lukasz/map/map/MapMode;-><init>(Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;Laoc/kingdoms/lukasz/map/province/ProvinceHover$ProvinceHoverBuild;)V

    return-void
.end method


# virtual methods
.method public disableViewAction()V
    .registers 1

    .line 1002
    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->disableViewAction()V

    .line 1003
    return-void
.end method

.method public enableViewAction()V
    .registers 5

    .line 987
    invoke-super {p0}, Laoc/kingdoms/lukasz/map/map/MapMode;->enableViewAction()V

    .line 990
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    :try_start_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 991
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->formableCivs:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_FormCiv;->formCivID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/FormableCivManager$FormableCiv;->Provinces:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/province/Province;->drawInMapMode:Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_2a

    .line 990
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 995
    .end local v0    # "i":I
    :cond_29
    goto :goto_2e

    .line 993
    :catch_2a
    move-exception v0

    .line 994
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    .line 997
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2e
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->updateDrawProvinces_Standard()V

    .line 998
    return-void
.end method
