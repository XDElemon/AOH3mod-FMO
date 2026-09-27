# -*- coding: utf-8 -*-
# r5c026_patch.py（v2，已自查修正跳转方向与 k=4 探针位置）
# P1a = 启用 AI 派发 + 判据改"或" + 概率门 0.1 + 视野过滤选靶 + 结算开门 + 探针
# 铁证：executeAIAssignmentForAirport 第一行 return-void 为原版自带（底座 tarball 亦然）⇒ 原版 AI 派发是空壳
#
# 【关键跳转真值表（写死，施工后复核用）】
#  C1 判据：mode==AI            → :p0_disp（派发；玩家委派仍生效）
#            mode!=AI, player==null → :cond_20（跳过；保持原语义）
#            mode!=AI, civ==player  → :cond_20（跳过；玩家机场走玩家链）
#            mode!=AI, civ!=player  → :p0_disp（AI 文明派发）
#  C2 概率门：rnd>=0.1 → :p0_blk1（k=1 返回）；rnd<0.1 → 继续执行方法体
#  C3 选靶：aiPickVisibleTarget<0 → :p0_blk3（k=3 返回）
#  C4a 任务空手：assignedAircraft.isEmpty()==1 → :p0_blk4（k=4 返回）
#  C4b 成功入队后 → p0K(0)
#  C5 tick：player==null → 返回；civ==player → 返回；!isAtWar(civ) → 返回；否则执行体（nA5b 门后探针）
import io, os, shutil, sys

R = '/tmp/w3a/smali/'
B = R + 'aoc/kingdoms/lukasz/map/battles/'
AFM = B + 'AirForceManager.smali'
LOG = B + 'AirDbgLog.smali'
def rd(p): return io.open(p, encoding='utf-8').read()
def wr(p, t): io.open(p, 'w', encoding='utf-8').write(t)

if u'aiPickVisibleTarget' in rd(AFM):
    print('!! 已打过 r5c026，退出'); sys.exit(1)
for p in (AFM, LOG):
    bak = p + '.pre_r5c026'
    if not os.path.exists(bak):
        shutil.copy2(p, bak)
print('[备份] .pre_r5c026 x2 OK')

def need(txt, s, tag):
    c = txt.count(s)
    if c != 1:
        print('!! 锚点不唯一 [%s] count=%d' % (tag, c)); sys.exit(1)

afm = rd(AFM); log = rd(LOG)

# ---------- 1. AirDbgLog: p0K / p0V ----------
HELPERS = u'''
# ===== r5c026 P1a 探针 helper =====
.method public static p0K(I)V
    .registers 3
    const-string v0, "nA4e k="
    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    return-void
.end method
.method public static p0V(II)V
    .registers 4
    const-string v0, "nA4v cand="
    invoke-static {v0, p0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    const-string v0, "nA4v vis="
    invoke-static {v0, p1}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->e5i(Ljava/lang/String;I)V
    return-void
.end method
'''
if u'p0K' in log:
    print('[helper] 已存在，跳过')
else:
    if not log.endswith(u'\n'):
        log += u'\n'
    wr(LOG, log + HELPERS)
    print('[helper] AirDbgLog +2 helper OK')

# ---------- 2. AFM: aiPickVisibleTarget ----------
NEWMETHOD = u'''
.method private static aiPickVisibleTarget(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;Ljava/util/Random;)I
    .registers 14
    .param p0, "ap"    # Laoc/kingdoms/lukasz/map/battles/Airport;
    .param p1, "type"    # Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    .param p2, "rnd"    # Ljava/util/Random;
    # r5c026: v0=实例 v1=候选List v2=候选数 v3=可视List v4=下标 v5=pid v6=Province/装箱 v7=x v8=y v9=civID v10=float/bool
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v0
    if-eqz v0, :apv_none
    invoke-direct {v0, p0, p1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getEnemyProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;
    move-result-object v1
    if-eqz v1, :apv_none
    invoke-interface {v1}, Ljava/util/List;->size()I
    move-result v2
    if-nez v2, :apv_none
    new-instance v3, Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    const/4 v4, 0x0
    :apv_loop
    if-ge v4, v2, :apv_done
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    move-result v5
    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    move-result-object v6
    if-eqz v6, :apv_next
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterX_Real()I
    move-result v7
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getCenterY_Real()I
    move-result v8
    iget v9, p0, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I
    const/high16 v10, 0x3f800000    # 1.0f (stealthMul: 不减半径)
    invoke-static {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiVisRadarPass(IIIF)Z
    move-result v10
    if-nez v10, :apv_apt
    const/4 v10, 0x1
    goto :apv_seen
    :apv_apt
    const/high16 v10, 0x3f800000    # 1.0f
    invoke-static {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiVisAirportPass(IIIF)Z
    move-result v10
    :apv_seen
    if-eqz v10, :apv_next
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :apv_next
    add-int/lit8 v4, v4, 0x1
    goto :apv_loop
    :apv_done
    invoke-interface {v3}, Ljava/util/List;->size()I
    move-result v4
    invoke-static {v2, v4}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0V(II)V
    if-nez v4, :apv_none
    invoke-virtual {p2, v4}, Ljava/util/Random;->nextInt(I)I
    move-result v5
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object v5
    check-cast v5, Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    move-result v5
    return v5
    :apv_none
    const/4 v10, -0x1
    return v10
.end method
'''
if u'\n.end class' in afm:
    i = afm.rstrip().rfind(u'\n.end class')
    afm = afm[:i] + u'\n' + NEWMETHOD + afm[i:]
else:
    if not afm.endswith(u'\n'):
        afm += u'\n'
    afm = afm + NEWMETHOD
print('[helper] AFM +aiPickVisibleTarget OK')

# ---------- 3. C1 + C1b ----------
C1_OLD = u'''    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    iget-object v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->AI:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    if-ne v3, v4, :cond_20

    const-string v3, "nA2m"

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Air(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->executeAIAssignmentForAirport(Laoc/kingdoms/lukasz/map/battles/Airport;)V

    :cond_20'''
C1_NEW = u'''    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Airport;

    # r5c026 C1b: 无条件探针（原插入点落在 mode==AI 分支内，已移出）
    const-string v3, "nA2m"

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Air(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)V

    # r5c026 C1: 判据 = (mode == AI) || (civID != 玩家 civ)；无玩家时退化为只看 mode
    iget-object v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->mode:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    sget-object v4, Laoc/kingdoms/lukasz/map/battles/Airport$Mode;->AI:Laoc/kingdoms/lukasz/map/battles/Airport$Mode;

    if-eq v3, v4, :p0_disp

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    const/4 v4, -0x1

    if-eqz v3, :p0_nopl

    iget v4, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    :p0_nopl
    if-gez v4, :cond_20

    iget v3, v2, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I

    if-eq v3, v4, :p0_disp

    goto :cond_20

    :p0_disp
    invoke-direct {p0, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->executeAIAssignmentForAirport(Laoc/kingdoms/lukasz/map/battles/Airport;)V

    :cond_20'''
need(afm, C1_OLD, 'C1 判据块'); afm = afm.replace(C1_OLD, C1_NEW, 1)
print('[插桩] C1/C1b OK（mode==AI 或 非玩家文明 ⇒ 派发）')

# ---------- 4. C2：启用方法 + 概率门 0.1 ----------
C2_OLD = u'''    .param p1, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;

    return-void

    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I'''
C2_NEW = u'''    .param p1, "airport"    # Laoc/kingdoms/lukasz/map/battles/Airport;

    # r5c026 C2: 原版此处为一行 return-void ⇒ 整个 AI 派发方法是空壳；本批启用
    # 概率门 0.1（P4 再接难度）
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-ltz v0, :p0_blk1

    iget v0, p1, Laoc/kingdoms/lukasz/map/battles/Airport;->civID:I'''
need(afm, C2_OLD, 'C2 空壳 return-void'); afm = afm.replace(C2_OLD, C2_NEW, 1)
print('[插桩] C2 启用方法 + 概率门 0.1 OK')

# ---------- 5. C2b：方法尾插入 :p0_blk1 / :p0_blk3 / :p0_blk4 ----------
C2B_OLD = u'''    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b
.end method'''
C2B_NEW = u'''    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    :p0_blk1
    const/4 v0, 0x1

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0K(I)V

    return-void

    :p0_blk3
    const/4 v0, 0x3

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0K(I)V

    return-void

    :p0_blk4
    const/4 v0, 0x4

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0K(I)V

    return-void
.end method'''
need(afm, C2B_OLD, 'C2b 方法尾'); afm = afm.replace(C2B_OLD, C2B_NEW, 1)
print('[插桩] C2b :p0_blk1/:p0_blk3/:p0_blk4 OK')

# ---------- 6. C3：选靶改用 aiPickVisibleTarget ----------
C3_OLD = u'''    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    invoke-direct {p0, p1, v2}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getEnemyProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3'''
C3_NEW = u'''    sget-object v2, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->BOMBER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;

    # r5c026 C3: 一体化选靶（航程内 → 过视野 → 随机），探针 nA4v 在 helper 内
    invoke-static {p1, v2, v1}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->aiPickVisibleTarget(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;Ljava/util/Random;)I

    move-result v3

    if-gez v3, :p0_blk3'''
need(afm, C3_OLD, 'C3 选靶块'); afm = afm.replace(C3_OLD, C3_NEW, 1)
print('[插桩] C3 视野过滤选靶 OK')

# ---------- 7. C4a：任务空手 ⇒ k=4 ----------
C4A_OLD = u'''    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Empty(I)V

    if-nez v5, :cond_3b'''
C4A_NEW = u'''    invoke-static {v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Empty(I)V

    if-nez v5, :p0_blk4'''
need(afm, C4A_OLD, 'C4a 空手跳转'); afm = afm.replace(C4A_OLD, C4A_NEW, 1)
print('[插桩] C4a 空手 ⇒ :p0_blk4 OK')

# ---------- 8. C4b：成功入队 ⇒ k=0 ----------
C4B_OLD = u'''    if-nez v5, :p0_blk4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z'''
C4B_NEW = u'''    if-nez v5, :p0_blk4

    iget-object v5, p0, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->activeMissions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0K(I)V'''
need(afm, C4B_OLD, 'C4b 成功入队'); afm = afm.replace(C4B_OLD, C4B_NEW, 1)
print('[插桩] C4b 成功 ⇒ k=0 OK')

# ---------- 9. C5 + C6：tick 开门 + 战争门 + nA5b ----------
C5_OLD = u'''    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    if-eqz v0, :st_ret
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    if-ne p0, v1, :st_ret
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bClock()V'''
C5_NEW = u'''    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;
    if-eqz v0, :st_ret
    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I
    # r5c026 C5: 极性反转 —— 玩家国仍走原链（避免重复结算），其余文明放行
    if-eq p0, v1, :st_ret
    # r5c026 C5: 战争门（未开战不跑）
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->getInstance()Laoc/kingdoms/lukasz/map/battles/AirForceManager;
    move-result-object v2
    if-eqz v2, :st_ret
    invoke-direct {v2, p0}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->isAtWar(I)Z
    move-result v2
    if-eqz v2, :st_ret
    # r5c026 C6: 门后探针（证明体真的执行）
    const-string v0, "nA5b"
    invoke-static {p0, v0}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->p0Civ(ILjava/lang/String;)V
    invoke-static {}, Laoc/kingdoms/lukasz/map/battles/AirForceManager;->a1bClock()V'''
need(afm, C5_OLD, 'C5 tick 门'); afm = afm.replace(C5_OLD, C5_NEW, 1)
print('[插桩] C5/C6 OK（玩家国返回 / 非交战国返回 / 其余执行 + nA5b）')

wr(AFM, afm)
print('r5c026 补丁完成')