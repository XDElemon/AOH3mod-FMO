# -*- coding: utf-8 -*-
# r6d058_fakekey.py —— ①R 规则收窄（R1 只看机队；R2 加“确实跨过省”护栏；R3 不变）
#                      ②A+B：绘制层“身份校验 + 假 key 自愈”（替换只判前缀的旧逻辑）
#   门禁 118：真解释器跑 tickInvars(9例) 与 airDrawAsPlane(6例) + 反转敏感性
import io, re, sys

R = '/tmp/revx/'
DLG = R + 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
MIS = R + 'aoc/kingdoms/lukasz/map/battles/AirMission.smali'
PDA = R + 'aoc/kingdoms/lukasz/map/province/ProvinceDrawArmy.smali'
M_T = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
DLG_T = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
AFM_T = 'Laoc/kingdoms/lukasz/map/battles/AirForceManager;'
AD_T = 'Laoc/kingdoms/lukasz/map/army/ArmyDivision;'
CFG_T = 'Laoc/kingdoms/lukasz/jakowski/CFG;'
ST_T = 'Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;'
AP_T = 'Laoc/kingdoms/lukasz/map/battles/Airport;'
ORD = {'PLANNING': 0, 'EN_ROUTE': 1, 'EXECUTING': 2, 'RETURNING': 3, 'COMPLETED': 4, 'ABORTED': 5}

# ---------- ① R1 收窄：删掉“状态判定”，只看机队 ----------
R1_OLD = '''    iget-object v0, p0, %(M)s->state:%(ST)s

    invoke-virtual {v0}, %(ST)s->ordinal()I

    move-result v1
    if-eqz v1, :ri_air

    goto :ri_abort

    :ri_air
    iget-object v0, p0, %(M)s->assignedAircraft:Ljava/util/List;
''' % {'M': M_T, 'ST': ST_T}
R1_NEW = '''    iget-object v0, p0, %(M)s->assignedAircraft:Ljava/util/List;
''' % {'M': M_T}

# ---------- ① R2 护栏：必须“确实跨过省”（prev>=0 且 prev != at） ----------
R2_OLD = '''    iget v5, p0, %(M)s->airDivisionAtProvinceID:I

    if-ne v5, v3, :ri_r3
''' % {'M': M_T}
R2_NEW = '''    iget v5, p0, %(M)s->airDivisionAtProvinceID:I

    iget v6, p0, %(M)s->airDivPrevProvinceID:I

    if-ltz v6, :ri_r3
    if-eq v6, v5, :ri_r3

    if-ne v5, v3, :ri_r3
''' % {'M': M_T}

# ---------- ② 绘制层：把“只看前缀”换成“身份校验 + 自愈” ----------
PDA_OLD = '''    move-object v3, v1

    const-string v2, "airhq_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47
'''
PDA_NEW = '''    move-object v3, v1

    invoke-static {v1, v8}, %(D)s->airDrawAsPlane(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1
    if-eqz v1, :cond_47
''' % {'D': DLG_T}

HELPER = '''.method public static airDrawAsPlane(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 6
    # r6d058 A+B：key 前缀命中后，必须“任务真的认领这个师”才画飞机；假 key 就地摘除
    if-eqz p0, :ad_no

    const-string v0, "airhq_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    if-eqz v0, :ad_no

    invoke-static {p0}, %(AFM)s->getAirMissionByKey(Ljava/lang/String;)%(M)s

    move-result-object v1
    if-eqz v1, :ad_strip


    iget-object v2, v1, %(M)s->airhqDivision:%(AD)s

    if-eqz v2, :ad_yes
    if-eq v2, p1, :ad_yes

    :ad_strip
    invoke-static {p1}, %(D)s->stripFakeKey(Ljava/lang/Object;)V

    const/4 v0, 0x0
    return v0

    :ad_yes
    const/4 v0, 0x1
    return v0

    :ad_no
    const/4 v0, 0x0
    return v0
.end method
.method public static stripFakeKey(Ljava/lang/Object;)V
    .registers 6
    # 假 airhq key ⇒ 换随机 tag（数据自愈），并把计数打出来（前 40 次）
    if-eqz p0, :sk_out

    check-cast p0, %(AD)s

    invoke-static {}, %(CFG)s->extraRandomTag()Ljava/lang/String;

    move-result-object v0
    iput-object v0, p0, %(AD)s->key:Ljava/lang/String;

    sget v1, %(D)s->fkN:I

    const/16 v2, 0x28
    if-ge v1, v2, :sk_log

    :sk_out
    return-void

    :sk_log
    add-int/lit8 v1, v1, 0x1

    sput v1, %(D)s->fkN:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FK strip="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    invoke-static {v5}, %(D)s->dWrite(Ljava/lang/String;)V

    return-void
.end method
''' % {'AFM': AFM_T, 'M': M_T, 'AD': AD_T, 'CFG': CFG_T, 'D': DLG_T}

FANCH = '.method public static isAirUnitID(I)Z\n'
FTOP = '.field private static tickMs:J\n'

def rd(p):
    return io.open(p, encoding='utf-8').read()

def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    m = rd(MIS); d = rd(DLG); p = rd(PDA)
    assert m.count(R1_OLD) == 1, 'R1 锚点 %d' % m.count(R1_OLD)
    m = m.replace(R1_OLD, R1_NEW, 1)
    assert m.count(R2_OLD) == 1, 'R2 锚点 %d' % m.count(R2_OLD)
    m = m.replace(R2_OLD, R2_NEW, 1)
    wr(MIS, m)
    assert 'airDrawAsPlane' not in d
    assert d.count(FANCH) == 1
    d = d.replace(FANCH, HELPER + FANCH, 1)
    assert d.count(FTOP) == 1
    d = d.replace(FTOP, FTOP + '.field public static fkN:I\n', 1)
    wr(DLG, d)
    assert p.count(PDA_OLD) == 1, '绘制锚点 %d' % p.count(PDA_OLD)
    wr(PDA, p.replace(PDA_OLD, PDA_NEW, 1))
    print('patch OK（R 收窄 + 绘制层身份校验/自愈）')

# ---------------- 解释器（覆盖两个方法用到的指令） ----------------
def interp(lines, ctx, missions=None):
    instrs = []
    for ln in lines:
        s = ln.strip()
        if not s or s.startswith('#') or s.startswith('.line') or s.startswith('.registers') or s.startswith('.param'):
            continue
        instrs.append(re.sub(r'\bp1\b', 'v101', re.sub(r'\bp0\b', 'v100', s)))
    labels = {s[1:]: i for i, s in enumerate(instrs) if s.startswith(':')}
    SENT = object(); reg = {100: ctx.get('key'), 101: ctx.get('division')}; pend = [None]; trace = []; pc = 0; steps = 0
    missions = missions or {}
    while pc < len(instrs) and steps < 4000:
        steps += 1; s = instrs[pc]
        def jmp(lab): return labels[lab.lstrip(':')]
        m = re.match(r'^(const/\S+)\s+v(\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)$', s)
        if m: reg[int(m.group(2))] = int(m.group(3), 0); pc += 1; continue
        m = re.match(r'^iget(-object)?\s+v(\d+),\s*v(\d+),\s*\S+->(\w+):', s)
        if m:
            dst = int(m.group(2)); srcv = int(m.group(3)); fld = m.group(4)
            if srcv == 100:
                reg[dst] = ctx.get(fld)
            else:
                sv = reg.get(srcv)
                reg[dst] = sv.get(fld) if isinstance(sv, dict) else None
            pc += 1; continue
        m = re.match(r'^iget-object\s+v(\d+),\s*p(\d+),', s)
        if m:
            pi = int(m.group(2)); fld = s.split('->')[-1].split(':')[0]
            reg[int(m.group(1))] = ctx.get('p%d' % pi, {}).get(fld, ctx.get(fld)) if pi else None
            pc += 1; continue
        m = re.match(r'^iget\s+v(\d+),\s*p(\d+),', s)
        if m:
            fld = s.split('->')[-1].split(':')[0]
            reg[int(m.group(1))] = ctx.get(fld, 0); pc += 1; continue
        m = re.match(r'^sget-object\s+v(\d+),\s*\S+MissionState;->(\w+):', s)
        if m: reg[int(m.group(1))] = m.group(2); pc += 1; continue
        m = re.match(r'^move-object\s+v(\d+),\s*v(\d+)$', s)
        if m: reg[int(m.group(1))] = reg.get(int(m.group(2))); pc += 1; continue
        m = re.match(r'^move-result(?:-object)?\s+v(\d+)$', s)
        if m: reg[int(m.group(1))] = pend[0]; pc += 1; continue
        m = re.match(r'^const-string\s+v(\d+),\s*"(.*)"$', s)
        if m: reg[int(m.group(1))] = m.group(2); pc += 1; continue
        m = re.match(r'^invoke-virtual\s+\{v(\d+),\s*v(\d+)\},\s*Ljava/lang/String;->startsWith', s)
        if m:
            a = reg.get(int(m.group(1))); b = reg.get(int(m.group(2)))
            pend[0] = isinstance(a, str) and isinstance(b, str) and a.startswith(b)
            pc += 1; continue
        m = re.match(r'^invoke-static\s+\{v(\d+)\},\s*\S+AirForceManager;->getAirMissionByKey', s)
        if m:
            pend[0] = missions.get(reg.get(int(m.group(1)))); pc += 1; continue
        m = re.match(r'^invoke-static\s+\{v(\d+)\},\s*%s->stripFakeKey' % re.escape(DLG_T), s)
        if m: trace.append('strip'); pc += 1; continue
        m = re.match(r'^invoke-static\s+\{v(\d+)\},\s*%s->ivLog' % re.escape(DLG_T), s)
        if m: trace.append('ivLog'); pc += 1; continue
        m = re.match(r'^invoke-virtual\s+\{v(\d+)\},\s*\S+MissionState;->ordinal', s)
        if m: pend[0] = ORD.get(reg.get(int(m.group(1))), 0); pc += 1; continue
        m = re.match(r'^invoke-interface\s+\{v(\d+)\},\s*Ljava/util/List;->size', s)
        if m:
            v = reg.get(int(m.group(1))); pend[0] = 0 if v is None else len(v); pc += 1; continue
        m = re.match(r'^check-cast\s+v(\d+),', s)
        if m: pc += 1; continue
        m = re.match(r'^if-(\w+)\s+v(\d+)(?:,\s*v(\d+))?,\s*:(\S+)$', s)
        if m:
            raw = m.group(1); zflag = raw.endswith('z'); op = raw[:-1] if zflag else raw
            a_raw = reg.get(int(m.group(2)), SENT)
            if a_raw is SENT: return ('UNDEF', trace + ['undef@' + s])
            if zflag:
                z = (a_raw is None) or (isinstance(a_raw, int) and a_raw == 0)
                av = 0 if a_raw is None else (a_raw if isinstance(a_raw, int) else 1)
                ok = {'ne': av != 0, 'eq': av == 0, 'lt': av < 0,
                      'ge': av >= 0, 'gt': av > 0, 'le': av <= 0}[op]
            else:
                b_raw = reg.get(int(m.group(3)), SENT)
                if b_raw is SENT: return ('UNDEF', trace + ['undef@' + s])
                ok = {'ne': a_raw != b_raw, 'eq': a_raw == b_raw, 'ge': a_raw >= b_raw,
                      'lt': a_raw < b_raw, 'le': a_raw <= b_raw, 'gt': a_raw > b_raw}[op]
            pc = jmp(m.group(4)) if ok else pc + 1
            continue
        m = re.match(r'^goto\s+:(.+)$', s)
        if m: pc = jmp(m.group(1)); continue
        m = re.match(r'^iput-object\s+v(\d+),\s*p0,\s*\S+ArmyDivision;->key', s)
        if m: trace.append('put-key'); pc += 1; continue
        m = re.match(r'^iput-object\s+v(\d+),\s*v100,\s*\S+AirMission;->state:', s)
        if m:
            val = reg.get(int(m.group(1))); trace.append('state=%s' % val)
            if val in ('ABORTED', 'EXECUTING', 'COMPLETED'):
                return ({'ABORTED': 'abort', 'EXECUTING': 'arrive', 'COMPLETED': 'complete'}[val], trace)
            pc += 1; continue
        if 'placeAirDivision(I)V' in s or 'returnAirDivisionHome()V' in s or 'returnToBase()V' in s:
            trace.append(s.split('->')[-1]); pc += 1; continue
        m = re.match(r'^return(?:\s+v(\d+))?$', s)
        if m:
            if m.group(1) is not None: return ('ret:%s' % reg.get(int(m.group(1))), trace)
            pc += 1; continue
        pc += 1
    return ('none', trace)

def body(txt, sig):
    return txt.split(sig, 1)[1].split('.end method', 1)[0].splitlines()

def gate():
    f = []; m = rd(MIS); d = rd(DLG); p = rd(PDA)
    tl = body(m, '.method public tickInvars()Z')
    cases = [
        (dict(airhqDivision=None, assignedAircraft=['a']), 'none', 'R1 有机队 ⇒ 不动'),
        (dict(airhqDivision=None, assignedAircraft=[]), 'abort', 'R1 机队空 ⇒ 清'),
        (dict(airhqDivision=None, assignedAircraft=None), 'abort', 'R1 机队null ⇒ 清'),
        (dict(airhqDivision='d', state='EN_ROUTE', targetProvinceID=5995, airDivisionAtProvinceID=5995,
              airDivPrevProvinceID=5994), 'arrive', 'R2 跨省后到位 ⇒ 到达'),
        (dict(airhqDivision='d', state='EN_ROUTE', targetProvinceID=5995, airDivisionAtProvinceID=5998,
              airDivPrevProvinceID=5997), 'none', 'R2 未到位 ⇒ 不动'),
        (dict(airhqDivision='d', state='EN_ROUTE', targetProvinceID=5995, airDivisionAtProvinceID=5995,
              airDivPrevProvinceID=5995), 'none', 'R2 未跨省 ⇒ 不动（新护栏）'),
        (dict(airhqDivision='d', state='RETURNING', sourceAirport={'provinceID': 6337},
              airDivisionAtProvinceID=6337), 'complete', 'R3 到家 ⇒ 结算'),
        (dict(airhqDivision='d', state='RETURNING', sourceAirport={'provinceID': 6337},
              airDivisionAtProvinceID=6259), 'none', 'R3 未到家 ⇒ 不动'),
        (dict(airhqDivision='d', state='EXECUTING'), 'none', '执行中 ⇒ 不动'),
    ]
    ok = 0
    for ctx, want, name in cases:
        got, tr = interp(tl, ctx)
        if got == 'ret:0': got = 'none'
        if got == want: ok += 1
        else: f.append('118-1 tickInvars 用例“%s” got=%s want=%s tr=%s' % (name, got, want, tr))
    dl = body(d, '.method public static airDrawAsPlane(Ljava/lang/String;Ljava/lang/Object;)Z')
    dcs = [
        (dict(key=None, division='d'), {}, 'ret:0', '无 key ⇒ 不画飞机'),
        (dict(key='abc', division='d'), {}, 'ret:0', '非 airhq ⇒ 不画飞机'),
        (dict(key='airhq_1', division='d'), {}, 'ret:0', '任务不存在 ⇒ 摘 key 且不画飞机'),
        (dict(key='airhq_1', division='d'), {'airhq_1': {'airhqDivision': None}}, 'ret:1', '任务尚未认领 ⇒ 仍画飞机'),
        (dict(key='airhq_1', division='d'), {'airhq_1': {'airhqDivision': 'd'}}, 'ret:1', '任务认领的就是它 ⇒ 画飞机'),
        (dict(key='airhq_1', division='d'), {'airhq_1': {'airhqDivision': 'other'}}, 'ret:0', '认领的是别的师 ⇒ 摘 key 不画'),
    ]
    ok2 = 0
    for ctx, missions, want, name in dcs:
        got, tr = interp(dl, ctx, missions)
        if got == want: ok2 += 1
        else: f.append('118-2 airDrawAsPlane 用例“%s” got=%s want=%s tr=%s' % (name, got, want, tr))
    # 结构：宿主调用点
    if 'airDrawAsPlane(Ljava/lang/String;Ljava/lang/Object;)Z' not in p: f.append('118-3 绘制层未改走 airDrawAsPlane')
    if 'const-string v2, "airhq_"' in p.split('.method public static final drawProvinceArmyWithFlag')[1][:1500]:
        f.append('118-3b 绘制层仍残留“只看前缀”的旧判定')
    # 反转敏感性
    sens = 0
    for sig, lines, ctx, missions, old, new in (
        ('.method public tickInvars()Z', tl, dict(airhqDivision='d', state='EN_ROUTE', targetProvinceID=5995,
                                                  airDivisionAtProvinceID=5995, airDivPrevProvinceID=5994), {}, 'if-eq v6, v5, :ri_r3', 'goto :ri_r3'),
        ('.method public tickInvars()Z', tl, dict(airhqDivision=None, assignedAircraft=['a']), {}, 'if-eqz v0, :ri_abort', 'if-nez v0, :ri_abort'),
        ('.method public static airDrawAsPlane(Ljava/lang/String;Ljava/lang/Object;)Z', dl,
         dict(key='airhq_1', division='d'), {'airhq_1': {'airhqDivision': 'other'}}, 'if-eq v2, p1, :ad_yes', 'if-ne v2, p1, :ad_yes'),
    ):
        txt = '\n'.join(lines)
        if old not in txt: f.append('118-4 找不到待翻转 %s' % old); continue
        mut = txt.replace(old, new, 1).splitlines()
        a, _ = interp(lines, ctx, missions); b, _ = interp(mut, ctx, missions)
        if a != b: sens += 1
        else: f.append('118-5 翻转 %s 后结果不变（模拟器与产物脱节）' % old)
    print('== 门禁 118 ==  tickInvars %d/9  airDrawAsPlane %d/6  反转敏感性 %d/3' % (ok, ok2, sens))
    if ok < 9: f.append('118 tickInvars %d/9' % ok)
    if ok2 < 6: f.append('118 airDrawAsPlane %d/6' % ok2)
    if sens < 3: f.append('118 反转敏感性 %d/3' % sens)
    if f:
        print(' X 不通过:')
        for x in f: print('  -', x)
        return False
    print(' OK 全过')
    return True

if __name__ == '__main__':
    if sys.argv[1] == 'patch': patch()
    else: sys.exit(0 if gate() else 1)