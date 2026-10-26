.class public final Laoc/kingdoms/lukasz/map/province/AirUx;
.super Ljava/lang/Object;
.source "AirUx.smali"

# ============================================================================
# M1c（v96）空军绘制 / 选中的 smali 桥
#
# 为什么必须 smali：
#   1) drawAll 要把活着的 SpriteBatch 透传给 ProvinceDrawArmy.drawAirDivisionAsPlane；
#      Java 侧的桩把 SpriteBatch 退化成 Object，javac 生成的 descriptor 与真机方法
#      (LSpriteBatch;IILjava/lang/String;)V 不匹配 ⇒ 真机 NoSuchMethodError。
#   2) trySelect 要 new Game$HoveredArmy 并 addActiveArmy(HoveredArmy)；嵌套类桩生成器
#      造不出合法类名（v90 已踩过），只能靠 smali 的天然类型。
#
# 逻辑都在 Java：
#   AirIcons.prepare()  每帧算 X/Y/KEY（在飞任务 + 停机编队）
#   AirIcons.setDgFor() 逐个重设 dgAir* 接力（原版省循环里的那段）
#   AirIcons.pick()     屏幕坐标 → 最近在飞任务
#   AirDivStore.*       M1c 空军编队注册表（不再进省军队列表）
#
# 闸门：baseline/smali_exceptions.txt 已登记 map/province/AirUx（文件内确有
#       Lcom/badlogic/gdx/ 引用，满足例外规则）。
# ============================================================================

# ---------------------------------------------------------------------------
# drawAll(SpriteBatch)：每帧一次，在 drawProvincesArmy 尾部调用
# ---------------------------------------------------------------------------
.method public static drawAll(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->prepare()I
    move-result v0
    const/4 v1, 0x0
    :goto_1
    if-ge v1, v0, :goto_end
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirIcons;->KEY:[Ljava/lang/String;
    aget-object v3, v2, v1
    if-eqz v3, :goto_next
    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->setDgFor(Ljava/lang/String;)V
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirIcons;->X:[I
    aget v4, v2, v1
    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirIcons;->Y:[I
    aget v5, v2, v1
    invoke-static {p0, v4, v5, v3}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawAirDivisionAsPlane(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IILjava/lang/String;)V
    :goto_next
    add-int/lit8 v1, v1, 0x1
    goto :goto_1
    :goto_end
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    return-void
    :catch_0
    move-exception v0
    return-void
.end method

# ---------------------------------------------------------------------------
# trySelect(int, int)：替换 MapTouchManager.actionUp 里的 trySelectAirUnit 调用
#   先按 AirPos 找在飞任务；没命中再走原机场 90px 的旧路径（不改变机场选中行为）
# ---------------------------------------------------------------------------
.method public static trySelect(II)V
    .registers 6
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pick(II)Z
    move-result v0
    if-eqz v0, :orig
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickKey:Ljava/lang/String;
    if-eqz v0, :orig
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->isAlreadyActiveArmy(Ljava/lang/String;)Z
    move-result v1
    # I want: 已选中就取消，未选中就加入
    if-eqz v1, :add
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->removeActiveArmy(Ljava/lang/String;)V
    goto :commit
    :add
    # 未选中 → 新建 HoveredArmy（iArmyID=-1 是既有设计：面板走 tDivID<0 分支）
    new-instance v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    invoke-direct {v1}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V
    iput-object v0, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickProv:I
    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I
    const/4 v2, -0x1
    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I
    sget v2, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickCiv:I
    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->addActiveArmy(Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;)V
    goto :commit
    :commit
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V
    return-void
    :orig
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->trySelectAirUnit(II)V
    return-void
.end method

# ---------------------------------------------------------------------------
# keepActive(int)：替换 drawProvincesArmy_Just 里的 Game.removeActiveArmy(I)
#   空军选中项的 iArmyID 天然是 -1（不在省列表里），不能因为查不到而把选中删掉
# ---------------------------------------------------------------------------
.method public static keepActive(I)V
    .registers 4
    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;
    if-eqz v0, :orig
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v0
    if-eqz v0, :orig
    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;
    if-eqz v0, :orig
    # I want: 空军 key 就保留，非空军走原逻辑移除 —— 即 startsWith==0 时跳 :orig
    const-string v1, "airhq_"
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :orig
    return-void
    :orig
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->removeActiveArmy(I)V
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :catch_0
    move-exception v0
    return-void
.end method
