.class public final Laoc/kingdoms/lukasz/map/province/AirUx;
.super Ljava/lang/Object;
.source "AirUx.smali"

# ============================================================================
# M1c（v96/v97）空军绘制 / 选中的 smali 桥
#
# 为什么必须 smali：
#   1) drawAll 要把活着的 SpriteBatch 透传给 ProvinceDrawArmy.drawAirDivisionAsPlane；
#      Java 侧桩把 SpriteBatch 退化成 Object，javac 生成的 descriptor 与真机方法
#      (LSpriteBatch;IILjava/lang/String;)V 不匹配 ⇒ 真机 NoSuchMethodError。
#   2) trySelect / reassert 要 new Game$HoveredArmy 并写 activeArmy；嵌套类桩生成器
#      造不出合法类名（v90 已踩过），只能靠 smali 的天然类型。
#
# 逻辑都在 Java：
#   AirIcons.prepare()  每帧算 X/Y/KEY（在飞任务 + 停机编队）
#   AirIcons.setDgFor() 逐个重设 dgAir* 接力（原版省循环里的那段）
#   AirIcons.pick()     屏幕坐标 → 最近在飞任务/停机编队；写 pick*/sel*
#   AirDivStore.*       M1c 空军编队注册表（不再进省军队列表）
#
# 闸门：baseline/smali_exceptions.txt 已登记 map/province/AirUx；
#       B45 用 Dalvik 解释器真跑 drawAll/keepActive/trySelect/reassert。
# ============================================================================

# ---------------------------------------------------------------------------
# drawAll(SpriteBatch)：每帧一次，在 drawProvincesArmy 尾部调用
# ---------------------------------------------------------------------------
.method public static drawAll(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .registers 7
    :try_start_0
    # v97：选中项被菜单/省份动作清掉时补回 activeArmy（只补列表，不重开菜单）
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/AirUx;->reassert()V
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
# reassert()：每帧补选
#   I want: activeArmy 非空就不动；为空且 selKey 存在时，只把 HoveredArmy 补回列表
#           （不调用 addActiveArmy，避免每帧重开菜单；只更新 activeArmySize）
# ---------------------------------------------------------------------------
.method public static reassert()V
    .registers 6
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I
    if-nez v0, :ret
    sget-object v1, Laoc/kingdoms/lukasz/map/battles/AirIcons;->selKey:Ljava/lang/String;
    if-eqz v1, :ret
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmy:Ljava/util/List;
    if-eqz v0, :ret
    new-instance v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;
    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;-><init>()V
    iput-object v1, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->key:Ljava/lang/String;
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirIcons;->selProv:I
    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iProvinceID:I
    const/4 v3, -0x1
    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iArmyID:I
    sget v3, Laoc/kingdoms/lukasz/map/battles/AirIcons;->selCiv:I
    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/Game$HoveredArmy;->iCivID:I
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    invoke-interface {v0}, Ljava/util/List;->size()I
    move-result v3
    sput v3, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I
    :ret
    return-void
.end method

# ---------------------------------------------------------------------------
# trySelect(int, int)：替换 MapTouchManager.actionUp 里的 trySelectAirUnit 调用
#   命中飞机（在飞或停机）→ 先清空 activeArmy 再加（getActiveDivKey 只读 [0]）
#   没命中 → 走原机场 90px 的旧路径（AirIcons.pick 内部已清掉补选状态）
# ---------------------------------------------------------------------------
.method public static trySelect(II)V
    .registers 6
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pick(II)Z
    move-result v0
    if-eqz v0, :orig
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AirIcons;->pickKey:Ljava/lang/String;
    if-eqz v0, :orig
    # v97：必须先清空 —— getActiveDivKey/选区逻辑只读 activeArmy[0]
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->clearActiveArmy()V
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
    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceTouchExtraAction;->actionUp_SetActiveArmy()V
    return-void
    :orig
    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->trySelectAirUnit(II)V
    return-void
.end method

# ---------------------------------------------------------------------------
# keepActive(int)：替换 drawProvincesArmy_Just 里的 Game.removeActiveArmy(I)
#   空军选中项的 iArmyID 天然是 -1（不在省列表里），不能因为查不到而把选中删掉
#   I want: startsWith("airhq_")==0 时才走原删除逻辑
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
