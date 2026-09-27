# -*- coding: utf-8 -*-
# R5c013 / B2：攻击机「扑空提示 + 就地重瞄（重新出击）」
# 依据：计划书 附-13（口径）+ 附-13.7（雷区扫描 v2：照抄 tryHunt 的"重新出击"配方）
# 关键：①EXECUTING 是停驻态、EN_ROUTE 才是飞行态 ⇒ 必须切回 EN_ROUTE
#       ②切完必须"当帧 return"（否则被 shouldReturn→RETURNING 覆盖）
#       ③出口不得读可能未初始化的寄存器（r5c011 的教训）
import io

BASE = '/tmp/w3a/smali/aoc/kingdoms/lukasz/map/battles/'
AFM = BASE + 'AirForceManager.smali'
AM  = BASE + 'AirMission.smali'
AFMC = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
AMC  = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
AMN  = 'Laoc/kingdoms/lukasz/map/battles/AirMission'

for p in (AFM, AM):
    io.open(p + '.bak_r5c013', 'w', encoding='utf-8').write(io.open(p, encoding='utf-8').read())

# ---------- ① AFM：public static a1bRetarget(II)I ----------
AFM_METHOD = '''.method public static a1bRetarget(II)I
    .registers 16
    # B2: 为"扑空后就地重瞄"选新目标省（口径 A：只认当前有交战敌军的省）
    # 副作用：先清掉 fromPid 的记忆记录（附-13.1 议题2）
    const/4 v0, -0x1
    sget-object v9, ''' + AFMC + '''->a1Gsee:[I
    if-eqz v9, :rt_scan
    if-ltz p0, :rt_scan
    array-length v10, v9
    if-ge p0, v10, :rt_scan
    const/4 v10, -0x1
    aput v10, v9, p0
:rt_scan
    if-ltz p0, :rt_early
    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lProvinces:Ljava/util/List;
    if-eqz v9, :rt_early
    invoke-interface {v9}, Ljava/util/List;->size()I
    move-result v2
    if-lez v2, :rt_early
    invoke-static {}, ''' + AFMC + '''->getInstance()''' + AFMC + '''
    move-result-object v8
    if-eqz v8, :rt_early
    sget-object v11, Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;->ATTACKER:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;
    invoke-static {v11}, ''' + AFMC + '''->getAircraftRange(Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)F
    move-result v6
    const v12, 0x7f7fffff
    move v4, v12
    const/4 v1, 0x0
:rt_loop
    if-ge v1, v2, :rt_done
    if-eq v1, p0, :rt_next
    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    move-result-object v3
    if-eqz v3, :rt_next
    invoke-virtual {v3, p1}, Laoc/kingdoms/lukasz/map/province/Province;->isEnemyArmyInProvince(I)Z
    move-result v10
    if-eqz v10, :rt_next
    invoke-static {v1}, ''' + AFMC + '''->a1bInflight(I)I
    move-result v7
    const/4 v10, 0x2
    if-ge v7, v10, :rt_next
    invoke-direct {v8, p0, v1}, ''' + AFMC + '''->provinceDistance(II)F
    move-result v5
    cmpl-float v10, v5, v6
    if-gtz v10, :rt_next
    cmpl-float v10, v5, v4
    if-gez v10, :rt_next
    move v4, v5
    move v0, v1
:rt_next
    add-int/lit8 v1, v1, 0x1
    goto :rt_loop
:rt_done
    float-to-int v10, v6
    const/16 v11, 0x29
    const/4 v12, 0x0
    invoke-static {p0, v10, v11, v12}, ''' + AFMC + '''->a1bLog(IIILjava/lang/String;)V
    const/16 v10, 0x28
    const/4 v12, 0x0
    invoke-static {p0, v0, v10, v12}, ''' + AFMC + '''->a1bLog(IIILjava/lang/String;)V
    return v0
:rt_early
    return v0
.end method
'''

# ---------- ② AirMission：字段 a1bTold ----------
AM_FIELD = '.field public a1bTold:Z\n'

# ---------- ③ AirMission：private a1bReHunt()Z ----------
AM_METHOD = '''.method private a1bReHunt()Z
    .registers 12
    # B2: 攻击机扑空（该省已无交战敌军）→ 每任务一次提示 + 就地重瞄（照抄 tryHunt 的重新出击配方）
    const/4 v2, 0x0
    const-string v0, "AIRDBG"
    const-string v5, "nB2 entry"
    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    iget-object v0, p0, ''' + AMC + '''->type:''' + AMN + '''$MissionType;
    sget-object v1, ''' + AMN + '''$MissionType;->ATTACK_ARMY:''' + AMN + '''$MissionType;
    if-ne v0, v1, :rh_done
    iget-object v0, p0, ''' + AMC + '''->state:''' + AMN + '''$MissionState;
    sget-object v1, ''' + AMN + '''$MissionState;->EXECUTING:''' + AMN + '''$MissionState;
    if-ne v0, v1, :rh_done
    iget v3, p0, ''' + AMC + '''->targetProvinceID:I
    if-ltz v3, :rh_done
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;
    move-result-object v1
    if-eqz v1, :rh_done
    iget v0, p0, ''' + AMC + '''->civID:I
    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/map/province/Province;->isEnemyArmyInProvince(I)Z
    move-result v0
    if-nez v0, :rh_done
    const-string v0, "AIRDBG"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "nB2 miss tgt="
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    iget-boolean v0, p0, ''' + AMC + '''->a1bTold:Z
    if-nez v0, :rh_pick
    const/4 v0, 0x1
    iput-boolean v0, p0, ''' + AMC + '''->a1bTold:Z
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;
    if-eqz v0, :rh_pick
    const-string v1, "在最后一个已知位置未找到敌人"
    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V
    const-string v0, "AIRDBG"
    const-string v5, "nB2 toast"
    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I
:rh_pick
    iget v3, p0, ''' + AMC + '''->airDivisionAtProvinceID:I
    if-ltz v3, :rh_done
    iget v0, p0, ''' + AMC + '''->civID:I
    invoke-static {v3, v0}, ''' + AFMC + '''->a1bRetarget(II)I
    move-result v4
    const-string v0, "AIRDBG"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "nB2 new="
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v5, " from="
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    if-ltz v4, :rh_done
    iput v3, p0, ''' + AMC + '''->sourceProvinceID:I
    iput v4, p0, ''' + AMC + '''->targetProvinceID:I
    invoke-direct {p0}, ''' + AMC + '''->calculateDistance()I
    move-result v8
    iput v8, p0, ''' + AMC + '''->distanceToTarget:I
    const-string v0, "AIRDBG"
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "nB2 relaunch d="
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v5, " t="
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v0, v5}, Laoc/kingdoms/lukasz/map/battles/AirDbgLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    sget-object v0, ''' + AMN + '''$MissionState;->EN_ROUTE:''' + AMN + '''$MissionState;
    iput-object v0, p0, ''' + AMC + '''->state:''' + AMN + '''$MissionState;
    const/4 v0, 0x0
    iput v0, p0, ''' + AMC + '''->flightProgress:F
    iput v0, p0, ''' + AMC + '''->roundsInFlight:I
    iput v0, p0, ''' + AMC + '''->attackRoundsExecuted:I
    iget v0, p0, ''' + AMC + '''->airDivSegDurMs:I
    iput v0, p0, ''' + AMC + '''->airDivSegAnimMs:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v6
    iput-wide v6, p0, ''' + AMC + '''->animStartMs:J
    iput-wide v6, p0, ''' + AMC + '''->animPrevMs:J
    iput-wide v6, p0, ''' + AMC + '''->lastTickMs:J
    const-wide/16 v6, 0x0
    iput-wide v6, p0, ''' + AMC + '''->animElapsedMs:J
    const/4 v2, 0x1
:rh_done
    return v2
.end method
'''

# ---------- ④ AirMission.update()：EXECUTING case 里加调用（照抄 tryHunt 调用方） ----------
CALL_OLD = '    invoke-direct {p0}, ' + AMC + '->executeAttack()V\n'
CALL_NEW = (CALL_OLD +
            '    # B2: 扑空 → 就地重瞄（成功则切 EN_ROUTE 并当帧 return，避免被 shouldReturn 覆盖）\n'
            '    invoke-direct {p0}, ' + AMC + '->a1bReHunt()Z\n'
            '    move-result v0\n'
            '    if-eqz v0, :rhb_cont\n'
            '    return-void\n'
            ':rhb_cont\n')

def rep(path, old, new, expect, tag):
    s = io.open(path, encoding='utf-8').read()
    n = s.count(old)
    assert n == expect, 'XX 锚点[%s]命中 %d 次（期望 %d）' % (tag, n, expect)
    s = s.replace(old, new)
    io.open(path, 'w', encoding='utf-8').write(s)
    print('OK 锚点[%s]' % tag)

# ① AFM 方法
rep(AFM, '.method private static a1bInflight(I)I\n', AFM_METHOD + '.method private static a1bInflight(I)I\n', 1, 'AFM.a1bRetarget 插入')
# ② AirMission 字段
rep(AM, '.field public msFxSpd:F\n', '.field public msFxSpd:F\n' + AM_FIELD, 1, 'AirMission.a1bTold 字段')
# ③ AirMission 方法
rep(AM, '.method private getAirDivKey()Ljava/lang/String;\n', AM_METHOD + '.method private getAirDivKey()Ljava/lang/String;\n', 1, 'AirMission.a1bReHunt 插入')
# ④ 调用点
rep(AM, CALL_OLD, CALL_NEW, 1, 'AirMission.update 调用点')

# ---------- 极性真值表自检（逐条对照"意图 vs 指令语义"） ----------
am = io.open(AM, encoding='utf-8').read()
af = io.open(AFM, encoding='utf-8').read()
ck = [
    ('AM 扑空判定：有敌军(1)才跳走 ⇒ if-nez', 'if-nez v0, :rh_done' in am),
    ('AM 已提示过(1)⇒跳过提示 ⇒ if-nez', 'if-nez v0, :rh_pick' in am),
    ('AM menuManager==null(0)⇒跳过 ⇒ if-eqz', 'if-eqz v0, :rh_pick' in am),
    ('AM tgt<0 与 airDivAt<0 ⇒ if-ltz（<0才跳）', am.count('if-ltz v3, :rh_done') == 2),
    ('AM retarget 无结果(<0)⇒不切向 ⇒ if-ltz', 'if-ltz v4, :rh_done' in am),
    ('AM 切 EN_ROUTE', '->EN_ROUTE:' in am and 'iput-object v0, p0, ' + AMC + '->state:' in am),
    ('AM calculateDistance 用 invoke-direct（private 实例）', 'invoke-direct {p0}, ' + AMC + '->calculateDistance()I' in am),
    ('AM 复位攻击轮数', 'iput v0, p0, ' + AMC + '->attackRoundsExecuted:I' in am),
    ('AM 调用方：未重瞄(0)⇒继续 ⇒ if-eqz', 'if-eqz v0, :rhb_cont' in am),
    ('AFM 候选：无敌军(0)⇒跳过 ⇒ if-eqz', 'if-eqz v10, :rt_next' in af),
    ('AFM 候选：d>range(cmp>0)⇒跳过 ⇒ if-gtz', 'if-gtz v10, :rt_next' in af),
    ('AFM 候选：d>=best(cmp>=0)⇒跳过 ⇒ if-gez', 'if-gez v10, :rt_next' in af),
    ('AFM 排除当前省', 'if-eq v1, p0, :rt_next' in af),
    ('AFM 在飞>=2 跳过 ⇒ if-ge', 'if-ge v7, v10, :rt_next' in af),
    ('AFM 清记录 = aput -1', 'const/4 v10, -0x1\n    aput v10, v9, p0' in af),
    ('AFM 出口不读未初始化寄存器（早退走 :rt_early）', af.count('if-ltz p0, :rt_early') == 1 and af.count('if-eqz v9, :rt_early') == 1 and ':rt_early\n    return v0' in af),
    ('AFM 新方法为 public static（跨类可 invoke-static）', '.method public static a1bRetarget(II)I' in af),
]
bad = 0
for name, ok in ck:
    print(('  ✔ ' if ok else '  ✘ ') + name)
    if not ok:
        bad += 1
assert bad == 0, 'XX 极性自检未通过 %d 项' % bad

# ---------- 控制字符体检 ----------
for p in (AFM, AM):
    t = io.open(p, encoding='utf-8').read()
    badc = [hex(ord(c)) for c in t if ord(c) < 32 and c not in '\n\r\t']
    assert not badc, 'XX %s 含异常控制字符 %s' % (p, badc[:8])
print('OK 控制字符体检')
print('OK: r5c013 / B2 补丁完成（备份 .bak_r5c013）')
