# -*- coding: utf-8 -*-
# r5c033_patch.py —— P1b：AI 造机（每机场每回合最多 1 架）+ 扣钱（玩家与 AI 共用 startBuild 路径）
#   依据：r6s5/P1b_终批审计_防写反_v1.md
#   改动清单：
#     [Airport.smali]
#       1) startBuild 内部、两道 guard 之后插入 p1bChargeForBuild 调用（只有真入队才扣钱）
#       2) 新增 p1bCost(AirType)I                        —— 照 getBuildTime 的守卫写法取 CostGold
#       3) 新增 p1bPickAffordable(Airport,AirType)AirType —— 可负担阶梯（首选→ATTACKER→FIGHTER→INTERCEPTOR）
#       4) 新增 p1bChargeForBuild(Airport,AirType)V      —— 用 Civilization.addGold(负数) 扣钱
#     [AirForceManager.smali]
#       5) update(I) 第一圈（updateBuild 之后）插入 updateAIBuildUp 调用
#       6) 新增 private updateAIBuildUp(Airport)V        —— 只对 AI、空队列、非建造中时补 1 架
#     [AirDbgLog.smali]
#       7) 新增 p0Gold(int,String)V                      —— 验收探针：打印该 civ 的金
import io, os, shutil, sys

B = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles'
AP = B + '/Airport.smali'
AF = B + '/AirForceManager.smali'
LG = B + '/AirDbgLog.smali'
MARK = 'r5c033 P1b'

# ---------------------------------------------------------------- 新增方法文本
COST = u'''
.method public static p1bCost(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I
    .registers 5

    # r5c033 P1b: 机型成本（守卫写法照抄 getBuildTime；取不到返回 -1）
    sget-object v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager;->types:[Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;

    if-eqz v0, :p1b_c_ret

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I

    move-result v1

    array-length v2, v0

    if-ge v1, v2, :p1b_c_ret

    aget-object v0, v0, v1

    if-eqz v0, :p1b_c_ret

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/AircraftDataManager$AircraftTypeData;->CostGold:I

    return v0

    :p1b_c_ret
    const/4 v0, -0x1

    return v0
.end method
'''

PICK = u'''
.method public static p1bPickAffordable(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    .registers 10

    # r5c033 P1b: 可负担阶梯 —— 候选顺序 = [首选, ATTACKER, FIGHTER, INTERCEPTOR]
    #   返回 null 表示"都买不起"（调用方应跳过本回合）
    const/4 v0, 0x4

    new-array v0, v0, [Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->FIGHTER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->INTERCEPTOR:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    aput-object v2, v0, v1

    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    if-eqz v2, :p1b_p_null

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    const/4 v1, 0x0

    :p1b_p_loop
    array-length v3, v0

    if-ge v1, v3, :p1b_p_null

    aget-object v3, v0, v1

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/battles/Airport;->p1bCost(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I

    move-result v4

    if-lez v4, :p1b_p_next

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    # v4 < 0 表示 gold < cost ⇒ 买不起 ⇒ 下一候选（if-ltz = 小于0才跳）
    if-ltz v4, :p1b_p_next

    return-object v3

    :p1b_p_next
    add-int/lit8 v1, v1, 0x1

    goto :p1b_p_loop

    :p1b_p_null
    const/4 v3, 0x0

    return-object v3
.end method
'''

CHARGE = u'''
.method public static p1bChargeForBuild(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)V
    .registers 6

    # r5c033 P1b: 扣钱（负数为扣；取不到成本则不扣）
    invoke-static {p1}, Laoc/kingdoms/lukasz/map/battles/Airport;->p1bCost(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)I

    move-result v0

    if-lez v0, :p1b_ch_ret

    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    if-eqz v1, :p1b_ch_ret

    int-to-float v0, v0

    neg-float v2, v0

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->addGold(F)V

    :p1b_ch_ret
    return-void
.end method
'''

UPD = u'''
.method private updateAIBuildUp(Laoc/kingdoms/lukasz/map/battles/Airport;)V
    .registers 12

    # r5c034 fix: 本方法是实例方法 ⇒ p0=this(AFM)、p1=机场（原先误用 p0）
    # r5c033 P1b: AI 造机 —— 每机场每回合最多补 1 架
    # 1) 观战（无玩家）不做事
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    if-eqz v0, :p1b_u_skip

    # 2) 只处理 AI（玩家走 UI，但扣钱同样走 startBuild）
    iget v1, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    iget v2, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v1, v2, :p1b_u_skip

    # 3) 正在建造 ⇒ 本回合不排新
    iget-object v3, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    if-nez v3, :p1b_u_skip

    # 4) 队列非空 ⇒ 不排新（引擎队列上限 3；这里更保守：一次只补 1）
    iget-object v3, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->buildQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :p1b_u_skip

    # 5) 首选机型：轰炸机占比 < 50% ⇒ BOMBER，否则 ATTACKER
    iget-object v3, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->aircraft:Ljava/util/Map;

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->totalAircraft:I

    mul-int/lit8 v4, v4, 0x2

    # bombers*2 < total ⇒ 跳去"选轰炸机"（if-lt = 小于才跳）
    if-lt v4, v5, :p1b_u_bomber

    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    goto :p1b_u_have

    :p1b_u_bomber
    sget-object v6, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    :p1b_u_have
    invoke-static {p1, v6}, Laoc/kingdoms/lukasz/map/battles/Airport;->p1bPickAffordable(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    move-result-object v6

    if-nez v6, :p1b_u_skip

    # 6) 入队（容量/队列/扣钱都在 startBuild 内）
    invoke-virtual {p1, v6}, Laoc/kingdoms/lukasz/map/battles/Airport;->startBuild(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Z

    move-result v7

    if-eqz v7, :p1b_u_skip

    # 7) 探针：选中机型 ordinal + 扣钱后的金
    const-string v8, "p1bT"

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ordinal()I

    move-result v9

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    iget v8, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    const-string v9, "p1b"

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Gold(ILjava/lang/String;)V

    :p1b_u_skip
    return-void
.end method
'''

GOLD = u'''
.method public static p0Gold(ILjava/lang/String;)V
    .registers 4

    # r5c033 P1b 探针：打印某文明的当前金（取整）
    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    if-eqz v0, :p0g_ret

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    float-to-int v0, v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V

    :p0g_ret
    return-void
.end method
'''


def body_range(text, hdr):
    s = text.index(hdr)
    e = text.index('\n.end method', s) + len('\n.end method')
    return s, e


def main():
    ap = io.open(AP, encoding='utf-8').read()
    af = io.open(AF, encoding='utf-8').read()
    lg = io.open(LG, encoding='utf-8').read()
    if MARK in ap:
        print('r5c033 已应用（幂等退出）')
        return 0

    for f in (AP, AF, LG):
        if not os.path.exists(f + '.pre_r5c033'):
            shutil.copy2(f, f + '.pre_r5c033')
            print('backup ->', f.split('/')[-1] + '.pre_r5c033')

    # ---- 1) Airport.startBuild：两道 guard 之后扣钱 ----
    hdr = '.method public startBuild(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Z\n'
    s, e = body_range(ap, hdr)
    m = ap[s:e]
    old = (':cond_20\n'
           '    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->sbOK(II)V\n')
    assert m.count(old) == 1, 'startBuild 锚点不唯一/缺失'
    new = (':cond_20\n'
           '    # r5c033 P1b: 扣钱（两道 guard 之后 ⇒ 只有真正入队才扣；玩家与 AI 共用此路径）\n'
           '    invoke-static {p0, p1}, Laoc/kingdoms/lukasz/map/battles/Airport;->p1bChargeForBuild('
           'Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)V\n\n'
           '    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->sbOK(II)V\n')
    m = m.replace(old, new, 1)
    ap = ap[:s] + m + ap[e:]
    print('  [Airport] startBuild 扣钱调用插入  OK')

    # ---- 2) Airport 三个新方法（EOF 追加）----
    assert '.method public static p1bCost(' not in ap and '.method public static p1bChargeForBuild(' not in ap
    ap = ap.rstrip('\n') + '\n' + COST + PICK + CHARGE
    print('  [Airport] p1bCost / p1bPickAffordable / p1bChargeForBuild 追加  OK')

    # ---- 3) AFM.update(I)：第一圈 updateBuild 之后插 hook ----
    hdr = '.method public update(I)V\n'
    s, e = body_range(af, hdr)
    m = af[s:e]
    old = ('    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/battles/Airport;->updateBuild()V\n')
    assert m.count(old) == 1, 'updateBuild 调用锚点不唯一/缺失'
    new = (old +
           '\n    # r5c033 P1b: AI 造机（每机场每回合最多补 1 架；扣钱在 Airport.startBuild 内）\n'
           '    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->updateAIBuildUp('
           'Laoc/kingdoms/lukasz/map/battles/Airport;)V\n')
    m = m.replace(old, new, 1)
    af = af[:s] + m + af[e:]
    print('  [AFM] update(I) hook 插入  OK')

    # ---- 4) AFM 新方法（EOF 追加）----
    assert '.method private updateAIBuildUp(' not in af
    af = af.rstrip('\n') + '\n' + UPD
    print('  [AFM] updateAIBuildUp 追加  OK')

    # ---- 5) AirDbgLog 探针（EOF 追加）----
    assert '.method public static p0Gold(' not in lg
    lg = lg.rstrip('\n') + '\n' + GOLD
    print('  [AirDbgLog] p0Gold 追加  OK')

    # ---- 6) 保护断言：P1a 判据不许被动 ----
    for keep in ('if-nez v1, :cond_23', 'if-ltz v4, :cond_20', 'if-ne v3, v4, :p0_disp',
                 'if-gez v0, :p0_blk1', 'if-ltz v3, :p0_blk3', 'if-nez v5, :p0_blk4'):
        assert af.count(keep) >= 1, 'P1a 判据被动过: %r' % keep

    io.open(AP, 'w', encoding='utf-8').write(ap)
    io.open(AF, 'w', encoding='utf-8').write(af)
    io.open(LG, 'w', encoding='utf-8').write(lg)
    print('r5c033 P1b 补丁完成')
    return 0


if __name__ == '__main__':
    sys.exit(main())