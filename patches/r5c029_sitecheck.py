# -*- coding: utf-8 -*-
# r5c029_sitecheck.py —— dex 级"定点极性"门禁 v2（语义级，不依赖标签名）
# 唯一真值 = 产物 dex 经 baksmali 反汇编后的指令序列。
# 断言方式：找"上下文指令序列"（寄存器级）⇒ 要求紧随其后的 if 必须是某个极性
#           ⇒ 再检查该 if 的跳转目标块确实包含预期指令（防跳错块）。
# 用法: python3 r5c029_sitecheck.py <classes.dex> [dump_dir]  （退出码 = 失败点数）
import io, os, re, subprocess, sys

LIB = '/sdcard/GLG/历史23/toolchain/lib'
CP = ':'.join([LIB + '/' + j for j in ('baksmali-2.5.2.jar', 'dexlib2-2.5.2.jar', 'guava.jar')] +
              ['/usr/share/java/smali-util-2.5.2.git2771eae.jar'])
TGT = 'aoc/kingdoms/lukasz/map/battles/AirForceManager.smali'
TGT_AP = 'aoc/kingdoms/lukasz/map/battles/Airport.smali'
TGT_LG = 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
SIG_OUT = 'executeAIAssignment(I)V'
SIG_IN = 'executeAIAssignmentForAirport(Laoc/kingdoms/lukasz/map/battles/Airport;)V'


def dump(dex, out):
    if os.path.isdir(out) and os.path.exists(os.path.join(out, TGT)):
        print('[dump] 复用: %s' % out)
        return out
    if os.path.isdir(out):
        subprocess.call(['rm', '-rf', out])
    if subprocess.call(['java', '-cp', CP, 'org.jf.baksmali.Main', 'd', dex, '-o', out]) != 0 \
            or not os.path.exists(os.path.join(out, TGT)):
        raise SystemExit('[dump] baksmali 失败: %s' % dex)
    print('[dump] OK -> %s' % out)
    return out


def body(text, sig):
    m = re.search(r'^\.method[^\n]*%s\s*$' % re.escape(sig), text, re.M)
    if not m:
        return None
    e = text.find('\n.end method', m.start())
    raw = text[m.start():e if e > 0 else len(text)]
    return [ln.strip() for ln in raw.split('\n') if ln.strip() and not ln.strip().startswith('#')]


def seq_after(lines, i, needle, span=14):
    for j in range(i + 1, min(i + span, len(lines))):
        if needle in lines[j]:
            return j
    return -1


def nxt_if(lines, i):
    for j in range(i + 1, min(i + 40, len(lines))):
        t = lines[j]
        if t.startswith('if-'):
            return j, t, t.split(',')[-1].strip()
    return -1, None, None


def blk_has(lines, label, needle, span=6):
    for j, t in enumerate(lines):
        if t == label or t.startswith(label + ':'):
            return needle in ' | '.join(lines[j:j + span])
    return False


def main():
    if len(sys.argv) < 2:
        print('usage: r5c029_sitecheck.py <classes.dex> [dump_dir]')
        return 2
    dex = sys.argv[1]
    out = sys.argv[2] if len(sys.argv) > 2 else '/tmp/bk_' + os.path.basename(dex).replace('.dex', '')
    print('=== r5c029 定点极性门禁 v2 ===\ndex = %s' % dex)
    dump(dex, out)
    t = io.open(os.path.join(out, TGT), encoding='utf-8').read()
    tap = io.open(os.path.join(out, TGT_AP), encoding='utf-8').read()
    tlg = io.open(os.path.join(out, TGT_LG), encoding='utf-8').read()
    TGT_FOW = 'aoc/kingdoms/lukasz/jakowski/Player/More/PlayerFogOfWar.smali'
    TGT_PDA = 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
    tfow = io.open(os.path.join(out, TGT_FOW), encoding='utf-8').read()
    tpda = io.open(os.path.join(out, TGT_PDA), encoding='utf-8').read()
    L, Lin = body(t, SIG_OUT), body(t, SIG_IN)
    FULL = 500  # 整个方法体内查找（默认 span 只看附近）
    if L is None or Lin is None:
        print('  [FAIL] 方法缺失 out=%s in=%s' % (L is not None, Lin is not None))
        return 9

    fails = []

    def chk(ok, tag, detail):
        print('  [%s] %-46s %s' % ('PASS' if ok else 'FAIL', tag, detail))
        if not ok:
            fails.append(tag)

    # ②a 无玩家判定：iget Player.iCivID ⇒ 其后第一条 if 必须是 if-ltz v4，且目标块不含派发
    i = seq_after(L, 0, 'Player/Player;->iCivID:I', span=FULL)
    if i < 0:
        chk(False, '②a 无玩家判定极性', '找不到 iget Player.iCivID')
    else:
        j, tif, lab = nxt_if(L, i)
        ok = bool(tif) and tif == 'if-ltz v4, %s' % lab
        ok2 = ok and not blk_has(L, lab, 'executeAIAssignmentForAirport', span=6)
        chk(ok2, '②a 无玩家判定(if-ltz v4) + 跳去跳过块',
            '%s%s' % (tif, '' if ok2 else '  <= 应为 if-ltz v4 且目标块内不得含派发'))

    # ②b 文明比较：iget Airport.civID ⇒ 其后第一条 if 必须是 if-ne v3,v4，且目标块含派发
    i = seq_after(L, 0, 'Airport;->civID:I', span=FULL)
    if i < 0:
        chk(False, '②b 文明比较极性', '找不到 iget Airport.civID')
    else:
        j, tif, lab = nxt_if(L, i)
        ok = bool(tif) and tif == 'if-ne v3, v4, %s' % lab
        ok2 = ok and blk_has(L, lab, 'executeAIAssignmentForAirport', span=4)
        chk(ok2, '②b 文明比较(if-ne) + 跳去派发块',
            '%s%s' % (tif, '' if ok2 else '  <= 应为 if-ne 且目标块含派发调用'))

    # ③ 概率门：cmpl-float v0,v0,v1 ⇒ 其后第一条 if 必须是 if-gez v0，目标块 return-void
    i = seq_after(Lin, 0, 'cmpl-float v0, v0, v1')
    if i < 0:
        chk(False, '③ 概率门极性', '找不到 cmpl-float v0, v0, v1')
    else:
        j, tif, lab = nxt_if(Lin, i)
        ok = bool(tif) and tif == 'if-gez v0, %s' % lab
        ok2 = ok and blk_has(Lin, lab, 'return-void', span=6)
        chk(ok2, '③ 概率门(rnd>=0.1 => 返回) + 目标块 return-void',
            '%s%s' % (tif, '' if ok2 else '  <= 应为 if-gez v0 且目标块 return-void'))

    # ④ 选靶门：aiPickVisibleTarget ⇒ move-result v3 ⇒ 其后第一条 if 必须是 if-ltz v3，目标块 return-void
    i = seq_after(Lin, 0, 'AirForceManager;->aiPickVisibleTarget', span=FULL)
    if i < 0:
        chk(False, '④ 选靶门极性', '找不到 aiPickVisibleTarget 调用')
    else:
        i = seq_after(Lin, i, 'move-result v3', span=4)
        j, tif, lab = nxt_if(Lin, i if i >= 0 else 0)
        ok = bool(tif) and tif == 'if-ltz v3, %s' % lab
        ok2 = ok and blk_has(Lin, lab, 'return-void', span=6)
        chk(ok2, '④ 选靶门(v3<0 => 返回，不传 -1) + 目标块 return-void',
            '%s%s' % (tif, '' if ok2 else '  <= 应为 if-ltz v3 且目标块 return-void'))

    # ⑥ 循环守卫：isEmpty() ⇒ move-result v1 ⇒ 之后第一条 if 必须是 if-nez v1（空表才 return）
    i = seq_after(L, 0, 'Ljava/util/List;->isEmpty()Z', span=FULL)
    if i < 0:
        chk(False, '⑥ 循环守卫极性', '找不到 isEmpty()')
    else:
        i = seq_after(L, i, 'move-result v1', span=4)
        j, tif, lab = nxt_if(L, i if i >= 0 else 0)
        ok = bool(tif) and tif == 'if-nez v1, %s' % lab
        ok2 = ok and blk_has(L, lab, 'return-void', span=8)
        chk(ok2, '⑥ 循环守卫(isEmpty => if-nez v1) + 目标块 return-void',
            '%s%s' % (tif, '' if ok2 else '  <= 应为 if-nez v1（非空才进循环），原版 if-eqz 是死代码'))

    # ⑩【r5c035b】P1b 可负担判定：cmpg-float v4,v2,v4 ⇒ v4=sign(gold-cost) ⇒ 之后第一条 if 必须是
    #     if-ltz v4（v4<0 = 买不起 ⇒ 换下一候选），且目标块是循环推进（含 goto）
    b_pick = body(tap, 'p1bPickAffordable(Laoc/kingdoms/lukasz/map/battles/Airport;'
                       'Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)'
                       'Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;')
    if b_pick is None:
        chk(False, '⑩ P1b 可负担判定极性', 'p1bPickAffordable 缺失')
    else:
        i = seq_after(b_pick, 0, 'cmpg-float', span=FULL)
        if i < 0:
            chk(False, '⑩ P1b 可负担判定极性', '找不到 cmpg-float')
        else:
            j, tif, lab = nxt_if(b_pick, i)
            ok = bool(tif) and tif == 'if-ltz v4, %s' % lab
            ok2 = ok and blk_has(b_pick, lab, 'goto', span=6)
            chk(ok2, '⑩ P1b 可负担(if-ltz v4 = 买不起才换候选) + 目标块为循环推进',
                '%s%s' % (tif, '' if ok2 else '  <= 应为 if-ltz v4（买不起=sign<0），写 if-gez 会导致"买得起反而被跳过"'))

    # ⑪【r5c035a】p1bStat 的 B 标志（buildingType）：iget-object ⇒ 之后第一条 if 必须是 if-eqz（非空=在建=1）
    b_stat = body(tap, 'p1bStat(Laoc/kingdoms/lukasz/map/battles/Airport;Ljava/lang/String;)V')
    if b_stat is None:
        chk(False, '⑪ P1b 状态探针 B 标志', 'p1bStat 缺失')
    else:
        i = seq_after(b_stat, 0, 'Airport;->buildingType:Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;', span=FULL)
        if i < 0:
            chk(False, '⑪ P1b 状态探针 B 标志', '找不到 buildingType 读取')
        else:
            j, tif, lab = nxt_if(b_stat, i)
            ok = bool(tif) and tif == 'if-eqz v2, %s' % lab and 'const/4 v3, 0x1' in ' | '.join(b_stat[j:j + 4])
            chk(ok, '⑪ P1b 状态探针 B(buildingType) 语义 = 在建',
                '%s%s' % (tif, '' if ok else '  <= 应为 if-eqz v2（非 null 才置 1）'))

    # ⑫【r5c035a】跨类可访问性：p0Tag 必须 public（Airport.p1bStat 在别的类里调它）
    chk('.method public static p0Tag(' in tlg,
        '⑫ 跨类调用 p0Tag 可见性(public)', 'AirDbgLog.p0Tag 必须是 public')

    # ⑬【r5c037】updateAIBuildUp 的"选机型结果判空"：p1bPickAffordable ⇒ move-result-object v6
    #     ⇒ 之后第一条 if 必须是 if-eqz v6（null=没得造 ⇒ 跳过），且目标块 return-void
    b_up = body(t, 'updateAIBuildUp(Laoc/kingdoms/lukasz/map/battles/Airport;)V')
    if b_up is None:
        chk(False, '⑬ P1b 选机型判空极性', 'updateAIBuildUp 缺失')
    else:
        i = seq_after(b_up, 0, 'Airport;->p1bPickAffordable', span=FULL)
        if i < 0:
            chk(False, '⑬ P1b 选机型判空极性', '找不到 p1bPickAffordable 调用')
        else:
            i = seq_after(b_up, i, 'move-result-object v6', span=4)
            j, tif, lab = nxt_if(b_up, i if i >= 0 else 0)
            ok = bool(tif) and tif == 'if-eqz v6, %s' % lab
            ok2 = ok and blk_has(b_up, lab, 'return-void', span=8)
            chk(ok2, '⑬ P1b 选机型(if-eqz v6 = 选到了才继续) + 目标块 return-void',
                '%s%s' % (tif, '' if ok2 else '  <= 应为 if-eqz v6（写 if-nez ⇒ 选到机型反而被跳过、永不造机）'))

    # ⑤ 结算门回归：strikeTick_A1 仍在且三要素齐
    b = body(t, 'strikeTick_A1(I)V')
    if b is None:
        chk(False, '⑤ 结算门回归', 'strikeTick_A1 缺失')
    else:
        txt = ' '.join(b)
        has = ('Player;->iCivID:I' in txt, 'isAtWar' in txt, 'return-void' in txt)
        chk(all(has), '⑤ 结算门三要素未被破坏', 'player/iciv/isAtWar=%s' % '|'.join(map(str, has)))
    # ⑭【r5c038】侦测门：任务"当前所在省"必须改为 Real 域插值坐标（禁 iget airDivisionAtProvinceID + if-ltz 死门）
    b_det = body(tfow, 'detectEnemyMissions()V')
    if b_det is None:
        chk(False, '⑭ 侦测门:当前坐标=Real域插值', 'detectEnemyMissions 缺失')
    else:
        ok = ('AirForceManager;->curAirRealX(' in ' | '.join(b_det)) and ('AirForceManager;->curAirRealY(' in ' | '.join(b_det))
        dead = any(b_det[j].endswith('airDivisionAtProvinceID:I') and b_det[j + 1].startswith('if-ltz')
                   for j in range(len(b_det) - 1))
        chk(ok and not dead, '⑭ 侦测门:当前坐标=Real域插值(无死门)',
            'curAirRealX/Y=%s 死门(getProvince->if-ltz)=%s%s' % (ok, dead, '' if (ok and not dead) else '  <= 必须走 AFM.curAirRealX/Y'))
    # ⑮【r5c038】两个渲染门必须调用 myOrDetectedMission（己方 ∨ 已侦测），不得回退 isMyMission
    n_myor = tpda.count('ProvinceDrawArmy;->myOrDetectedMission(')
    b_dfm = body(tpda, 'drawAirForceMissions(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V')
    b_rad = body(tpda, 'drawAircraftRadar(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V')
    clean = all(b is not None and not any('ProvinceDrawArmy;->isMyMission(' in x for x in b) for b in (b_dfm, b_rad))
    chk(n_myor == 2 and clean, '⑮ 渲染门: myOrDetectedMission(己方∨已侦测)',
        '调用数=%d 两层均无回退=%s%s' % (n_myor, clean, '' if (n_myor == 2 and clean) else '  <= 两个渲染门必须调用 myOrDetectedMission'))
    # ⑰【r5c038b】myOrDetectedMission 的判据极性：isMyMission 之后必须是 if-eqz（非己方⇒去查 airDetSeen），
    #     跳转目标块必须含 contains；fall-through 必须是 const/4 v0, 0x1（己方⇒直接返回真）
    b_mo = body(tpda, 'myOrDetectedMission(Laoc/kingdoms/lukasz/map/battles/AirMission;)Z')
    if b_mo is None:
        chk(False, '⑰ 己方∨已侦测 极性(if-eqz)', 'myOrDetectedMission 缺失')
    else:
        i = seq_after(b_mo, 0, 'ProvinceDrawArmy;->isMyMission(')
        i = seq_after(b_mo, i if i >= 0 else 0, 'move-result v0', span=4)
        j, tif, lab = nxt_if(b_mo, i if i >= 0 else 0)
        ok = bool(tif) and tif == 'if-eqz v0, %s' % lab
        ok2 = ok and blk_has(b_mo, lab, 'contains', span=14)
        ft = b_mo[j + 1] if (j >= 0 and j + 1 < len(b_mo)) else ''
        ok3 = ok2 and ft == 'const/4 v0, 0x1'
        chk(ok3, '⑰ myOrDetectedMission: if-eqz(非己方⇒查airDetSeen)',
            '%s 目标块含contains=%s fall-through=%s%s' % (
                tif, blk_has(b_mo, lab, 'contains', span=14) if lab else None, ft,
                '' if ok3 else '  <= 写 if-nez ⇒ 敌方全画(透视)+己方不画'))
    # ⑱【r5c038b】detectEnemyMissions 的坐标无效门极性：curAirRealY 之后必须是 if-ltz（<0⇒跳过本任务），
    #     跳转目标块必须是"跳过"块（含 goto、不含侦测体）；fall-through 必须进入侦测体（getInstance）
    i = seq_after(b_det or [], 0, 'AirForceManager;->curAirRealY(', span=300)
    i = seq_after(b_det or [], i if i >= 0 else 0, 'move-result v14', span=4)
    j, tif, lab = nxt_if(b_det or [], i if i >= 0 else 0)
    ok = bool(tif) and tif == 'if-ltz v13, %s' % lab
    ok2 = ok and blk_has(b_det, lab, 'goto', span=4) and not blk_has(b_det, lab, 'calcInEllipse', span=6)
    ok3 = ok2 and j >= 0 and 'getInstance' in ' | '.join(b_det[j + 1:j + 13])
    chk(ok3, '⑱ 侦测门: if-ltz(坐标无效⇒跳过) + 目标块为跳过块',
        '%s 目标块跳过=%s fall-through含getInstance=%s%s' % (
            tif, ok2, (j >= 0 and 'getInstance' in ' | '.join(b_det[j + 1:j + 4])),
            '' if ok3 else '  <= 写 if-gez ⇒ 有效坐标反被跳过、-1 反进侦测体'))
    # ⑲【r5c039】选靶必须只针对交战国（禁打中立国）
    b_ep = body(t, 'getEnemyProvincesInRange(Laoc/kingdoms/lukasz/map/battles/Airport;Laoc/kingdoms/lukasz/map/battles/AirUnit$AirType;)Ljava/util/List;')
    if b_ep is None:
        chk(False, '⑲ 选靶: 只打交战国(isAtWar)', 'getEnemyProvincesInRange 缺失')
    else:
        txt = ' | '.join(b_ep)
        ok = 'DiplomacyManager;->isAtWar(' in txt
        chk(ok, '⑲ 选靶: 只打交战国(isAtWar)',
            'isAtWar=%s%s' % (ok, '' if ok else '  <= 只排除了自国/无主省 ⇒ 会打中立国'))
    # ⑳【r5c039】可见性放宽必须含"目标省属于玩家 ⇒ 可见"
    if b_mo is None:
        chk(False, '⑳ 可见: 打我方者必见(targetProvinceID→civID)', 'myOrDetectedMission 缺失')
    else:
        txt = ' | '.join(b_mo)
        ok = ('AirMission;->targetProvinceID:I' in txt) and ('Province;->getCivID()I' in txt) and ('Player;->iCivID:I' in txt)
        chk(ok, '⑳ 可见: 打我方者必见(targetProvinceID→civID)',
            'target=%s civID=%s playerCiv=%s%s' % (
                'AirMission;->targetProvinceID:I' in txt, 'Province;->getCivID()I' in txt, 'Player;->iCivID:I' in txt,
                '' if ok else '  <= 缺"目标是玩家省⇒可见"这一路'))
    # ㉑【r5c039a】airDetSeen 判空极性：sget airDetSeen 之后首条 if 必须 if-eqz（null ⇒ 去查目标省），fall-through 含 contains
    if b_mo is not None:
        txt = ' | '.join(b_mo)
        k = next((i for i, x in enumerate(b_mo) if 'PlayerFogOfWar;->airDetSeen:Ljava/util/HashSet;' in x), -1)
        tif1, lab1 = (b_mo[k + 1] if 0 <= k < len(b_mo) - 1 else None), None
        if tif1:
            lab1 = tif1.split(',')[-1].strip()
        ok = bool(tif1) and tif1.startswith('if-eqz v1,')
        ok2 = ok and blk_has(b_mo, lab1, 'targetProvinceID', span=14)
        ok3 = ok2 and 'contains' in ' | '.join(b_mo[k + 1:k + 14])
        chk(ok3, '㉑ airDetSeen 判空: if-eqz(null⇒查目标省)',
            '%s%s' % (tif1, '' if ok3 else '  <= 写 if-nez ⇒ 已侦测路被跳过 + null 时 NPE(contains)'))
        # ㉒【r5c039a】contains 之后首条 if 必须 if-eqz（未侦测 ⇒ 去查目标省），fall-through 必须 return true
        k2 = next((i for i, x in enumerate(b_mo) if 'Set;->contains(' in x), -1)
        k2 = next((i for i in range(k2 + 1, min(k2 + 4, len(b_mo))) if b_mo[i].startswith('move-result')), -1) if k2 >= 0 else -1
        tif2 = b_mo[k2 + 1] if 0 <= k2 < len(b_mo) - 1 else None
        lab2 = tif2.split(',')[-1].strip() if tif2 else None
        ft2 = ' | '.join(b_mo[k2 + 1:k2 + 4]) if k2 >= 0 else ''
        okb = bool(tif2) and tif2.startswith('if-eqz v0,') and 'const/4 v0, 0x1' in ft2
        chk(okb, '㉒ contains 判定: if-eqz(未侦测⇒查目标省)',
            '%s fall-through=%s%s' % (tif2, ft2[:40], '' if okb else '  <= 写 if-nez ⇒ 已侦测反而不返回真'))
    # ㉓【r5c041】AI 派发必须用 pickIdleDivKey 取"空闲 airhq 师键"并传入工厂（有师才出兵）
    b_ai = body(t, 'executeAIAssignmentForAirport(Laoc/kingdoms/lukasz/map/battles/Airport;)V')
    n_pick = sum(1 for x in (b_ai or []) if 'AirForceManager;->pickIdleDivKey(' in x)
    n_skip = sum(1 for x in (b_ai or []) if x.startswith('if-eqz v4, :'))
    ok23 = (n_pick == 2) and (n_skip >= 2) and ('->tagAirhqKey' not in t)
    chk(ok23, '㉓ AI 派发: pickIdleDivKey 取师键 + 空则跳过',
        'pickIdleDivKey=%d 空键跳过=%d tagAirhqKey残留=%s%s' % (n_pick, n_skip, '->tagAirhqKey' in t,
            '' if ok23 else '  <= 不传 divKey ⇒ 任务无 airhqKey ⇒ dedupAirhqDivision 直接 return（不真飞/拦不住）'))
    # ㉕【r5c042】自动拦截判读探针齐全（入口计数 + 无可用机出口 + 选中机场）
    need = [('"nDSPTc"', 1), ('"nDSPT4"', 1), ('"nDSPT8"', 1)]
    ok25 = all(t.count(tag) == n for tag, n in need) and ('.method public static dspLogAp(' in t) and t.count('->dspLogAp(') == 2
    chk(ok25, '㉕ 拦截判读探针: nDSPTc/nDSPT4/nDSPT8 + dspLogAp',
        'tags=%s dspLogAp=%s/%s' % ([t.count(tag) for tag, _ in need], '.method public static dspLogAp(' in t, t.count('->dspLogAp(')))
    # ㉖【r5c043】dispatchAutoIntercept 射程门极性：contains 之后必须是 if-eqz（在圈内才成为候选）
    b_dsp = body(t, 'dispatchAutoIntercept(Laoc/kingdoms/lukasz/map/battles/AirMission;)V')
    if b_dsp is None:
        chk(False, '㉖ 拦截射程门极性(if-eqz)', 'dispatchAutoIntercept 缺失')
    else:
        ok_cnt = sum(1 for j, x in enumerate(b_dsp)
                     if x.endswith('Set;->contains(Ljava/lang/Object;)Z') and j + 2 < len(b_dsp)
                     and b_dsp[j + 1] == 'move-result v5' and b_dsp[j + 2].startswith('if-eqz v5,'))
        bad_cnt = sum(1 for j, x in enumerate(b_dsp)
                      if x.endswith('Set;->contains(Ljava/lang/Object;)Z') and j + 2 < len(b_dsp)
                      and b_dsp[j + 1] == 'move-result v5' and b_dsp[j + 2].startswith('if-nez v5,'))
        chk(ok_cnt == 2 and bad_cnt == 0, '㉖ 拦截射程门: contains 后必须 if-eqz(在圈内→候选)',
            'if-eqz=%d if-nez=%d%s' % (ok_cnt, bad_cnt, '' if (ok_cnt == 2 and bad_cnt == 0) else '  <= 写 if-nez ⇒ 敌机进圈反而被跳过（贴脸不拦截）'))

    # ㉗【r5c044】hasActiveChaser 的"活猎手"语义：命中 = mission.civID == 传入 civ(防守方)
    #     设计文档 §四/§七 明写命中条件为 civ==防守方；三个调用点传的都是"我方/防守方"文明。
    #     ⇒ helper 本体必须是 if-ne（不等⇒换下一条）；写 if-eq ⇒ 只认"别的文明"的拦截 ⇒ 去重门从未生效。
    b_hac = body(t, 'hasActiveChaser(JI)Z')
    if b_hac is None:
        chk(False, '㉗ 活猎手判据: civ==防守方(if-ne)', 'hasActiveChaser 缺失')
    else:
        # 注意：baksmali 会把"参数寄存器"还原成别名 p*（本方法 (J,I) ⇒ 长参占 p0/p1，int 参 = p2）
        #      ⇒ 必须同时接受 v11 与 p2，否则门禁自己会误报（同年 r4c166c 就是踩了 p1 别名错位）
        ok_ne = any(re.match(r'^if-ne v5, (v11|p2),', x) for x in b_hac)
        bad_eq = any(re.match(r'^if-eq v5, (v11|p2),', x) for x in b_hac)
        chk(ok_ne and not bad_eq, '㉗ 活猎手判据: civ==防守方(if-ne)',
            'if-ne=%s if-eq=%s%s' % (ok_ne, bad_eq,
                '' if (ok_ne and not bad_eq) else '  <= 写 if-eq ⇒ 只认"别的文明"的拦截 ⇒ 去重门失效(多派)'))
    # ㉗b FOW 配对门：helper 调用前最近的一条 if 必须 if-eqz（未侦测⇒照常去侦测）
    #     与 helper 修正后共同构成 skip ⇔ 已侦测 ∧ 有猎手（与 AI 链一致）
    if b_det is None:
        chk(False, '㉗b FOW 配对门: if-eqz(未侦测⇒照常侦测)', 'detectEnemyMissions 缺失')
    else:
        k = next((i for i, x in enumerate(b_det) if 'AirForceManager;->hasActiveChaser(' in x), -1)
        cand = [x for x in (b_det[k - 2] if k >= 2 else '', b_det[k - 1] if k >= 1 else '') if x.startswith('if-')]
        ok_f = bool(cand) and cand[0].startswith('if-eqz v5,')
        chk(ok_f, '㉗b FOW 配对门: if-eqz(未侦测⇒照常侦测)',
            '%s%s' % (cand[0] if cand else '?',
                '' if ok_f else '  <= 与修正后的 helper 组合 ⇒ 未见∧有猎手 反而不侦测(可见性隐患)'))

    print('=== 失败点 = %d %s ===' % (len(fails), ('[' + ', '.join(fails) + ']') if fails else ''))
    return len(fails)


if __name__ == '__main__':
    sys.exit(main())