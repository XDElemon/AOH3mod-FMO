# -*- coding: utf-8 -*-
# r6d059_compkey.py —— 修正“画飞机”判据：改用**编制判据**（编制里真有航空兵种才是飞机）
#   A) airDrawAsPlane(key, division):  key 前缀 airhq_ ∧ 该师编制含航空兵种 ⇒ 画飞机；否则摘 key（自愈）
#   B) 反向修复：tickInvars 入口，若 airhqDivision 的 key 不是 airhq_ 开头（被上一批误摘）⇒ 用 mission.airhqKey 恢复
#   门禁 119：真解释器跑 airDrawAsPlane（8 例）+ 反转敏感性
import io, re, sys

R = '/tmp/revx/'
DLG = R + 'aoc/kingdoms/lukasz/map/battles/AirDbgLog.smali'
MIS = R + 'aoc/kingdoms/lukasz/map/battles/AirMission.smali'
DLG_T = 'Laoc/kingdoms/lukasz/map/battles/AirDbgLog;'
M_T = 'Laoc/kingdoms/lukasz/map/battles/AirMission;'
AD_T = 'Laoc/kingdoms/lukasz/map/army/ArmyDivision;'
AR_T = 'Laoc/kingdoms/lukasz/map/army/ArmyRegiment;'
ST_T = 'Laoc/kingdoms/lukasz/map/battles/AirMission$MissionState;'

NEW_HELPER = '''.method public static airDrawAsPlane(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 9
    # r6d059 只有“编制里真有航空兵种”的 airhq_ 师才画飞机；否则摘 key（自愈）
    if-eqz p0, :ad_no

    const-string v0, "airhq_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    if-eqz v0, :ad_no

    check-cast p1, %(AD)s

    iget-object v1, p1, %(AD)s->lArmyRegiment:Ljava/util/List;

    if-eqz v1, :ad_strip

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :ad_loop
    if-ge v3, v2, :ad_strip

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4
    check-cast v4, %(AR)s

    iget v5, v4, %(AR)s->uID:I

    invoke-static {v5}, %(D)s->isAirUnitID(I)Z

    move-result v6
    if-nez v6, :ad_yes

    add-int/lit8 v3, v3, 0x1
    goto :ad_loop

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
''' % {'D': DLG_T, 'AD': AD_T, 'AR': AR_T}

# 旧的 airDrawAsPlane（r6d058 版）整体替换
OLD_START = '.method public static airDrawAsPlane(Ljava/lang/String;Ljava/lang/Object;)Z'
OLD_END = '.method public static stripFakeKey(Ljava/lang/Object;)V'

# tickInvars 入口插入“反向修复 key”
FIX = '''    iget-object v0, p0, %(M)s->airhqDivision:%(AD)s

    if-eqz v0, :rk_done

    iget-object v1, v0, %(AD)s->key:Ljava/lang/String;

    if-nez v1, :rk_set

    const-string v2, "airhq_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    if-nez v2, :rk_set

    goto :rk_done

    :rk_set
    iget-object v2, p0, %(M)s->airhqKey:Ljava/lang/String;

    if-eqz v2, :rk_done

    iput-object v2, v0, %(AD)s->key:Ljava/lang/String;

    :rk_done
''' % {'M': M_T, 'AD': AD_T}

INV_SIG = '.method public tickInvars()Z\n    .registers 8\n'

def rd(p):
    return io.open(p, encoding='utf-8').read()

def wr(p, s):
    io.open(p, 'w', encoding='utf-8').write(s)

def patch():
    d = rd(DLG); m = rd(MIS)
    i = d.find(OLD_START)
    assert i >= 0, '找不到 airDrawAsPlane'
    j = d.find(OLD_END, i)
    assert j > i, '找不到 stripFakeKey 边界'
    d = d[:i] + NEW_HELPER + d[j:]
    wr(DLG, d)
    assert m.count(INV_SIG) == 1, 'tickInvars 入口锚点 %d' % m.count(INV_SIG)
    m = m.replace(INV_SIG, INV_SIG + FIX, 1)
    wr(MIS, m)
    print('patch OK（编制判据 + 反向修复 key）')

# ---------------- 解释器（airDrawAsPlane 子集） ----------------
def body(txt, sig):
    return txt.split(sig, 1)[1].split('.end method', 1)[0].splitlines()

def interp_air(lines, ctx):
    ins = []
    for ln in lines:
        s = ln.strip()
        if not s or s.startswith(('#', '.line', '.registers', '.param')):
            continue
        ins.append(re.sub(r'\bp1\b', 'v101', re.sub(r'\bp0\b', 'v100', s)))
    lab = {s[1:]: i for i, s in enumerate(ins) if s.startswith(':')}
    SENT = object(); reg = {100: ctx.get('key'), 101: ctx.get('division')}
    pend = [None]; trace = []; pc = 0; steps = 0
    AIR = {7, 8, 9, 10}
    while pc < len(ins) and steps < 3000:
        steps += 1; s = ins[pc]
        jmp = lambda l: lab[l.lstrip(':')]
        m = re.match(r'^(const/\S+)\s+v(\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)$', s)
        if m: reg[int(m.group(2))] = int(m.group(3), 0); pc += 1; continue
        m = re.match(r'^const-string\s+v(\d+),\s*"(.*)"$', s)
        if m: reg[int(m.group(1))] = m.group(2); pc += 1; continue
        m = re.match(r'^iget(-object)?\s+v(\d+),\s*v(\d+),\s*\S+->(\w+):', s)
        if m:
            dst = int(m.group(2)); srcv = int(m.group(3)); fld = m.group(4)
            sv = reg.get(srcv)
            reg[dst] = sv.get(fld) if isinstance(sv, dict) else None
            pc += 1; continue
        m = re.match(r'^invoke-virtual\s+\{v(\d+),\s*v(\d+)\},\s*Ljava/lang/String;->startsWith', s)
        if m:
            a = reg.get(int(m.group(1))); b = reg.get(int(m.group(2)))
            pend[0] = isinstance(a, str) and isinstance(b, str) and a.startswith(b)
            pc += 1; continue
        m = re.match(r'^invoke-interface\s+\{v(\d+)\},\s*Ljava/util/List;->size', s)
        if m:
            v = reg.get(int(m.group(1))); pend[0] = 0 if v is None else len(v); pc += 1; continue
        m = re.match(r'^invoke-interface\s+\{v(\d+),\s*v(\d+)\},\s*Ljava/util/List;->get', s)
        if m:
            v = reg.get(int(m.group(1))); k = reg.get(int(m.group(2)))
            pend[0] = v[k] if isinstance(v, list) and isinstance(k, int) and 0 <= k < len(v) else None
            pc += 1; continue
        m = re.match(r'^invoke-static\s+\{v(\d+)\},\s*%s->isAirUnitID\(I\)Z' % re.escape(DLG_T), s)
        if m: pend[0] = reg.get(int(m.group(1))) in AIR; pc += 1; continue
        m = re.match(r'^invoke-static\s+\{v(\d+)\},\s*%s->stripFakeKey' % re.escape(DLG_T), s)
        if m: trace.append('strip'); pc += 1; continue
        m = re.match(r'^move-result(?:-object)?\s+v(\d+)$', s)
        if m: reg[int(m.group(1))] = pend[0]; pc += 1; continue
        m = re.match(r'^check-cast\s+v(\d+),', s)
        if m: pc += 1; continue
        m = re.match(r'^add-int/lit8\s+v(\d+),\s*v(\d+),\s*(-?0x[0-9a-fA-F]+|-?\d+)$', s)
        if m:
            src = reg.get(int(m.group(2)), 0)
            reg[int(m.group(1))] = (0 if src is None else src) + int(m.group(3), 0)
            pc += 1; continue
        m = re.match(r'^if-(\w+)\s+v(\d+)(?:,\s*v(\d+))?,\s*:(\S+)$', s)
        if m:
            raw = m.group(1); z = raw.endswith('z'); op = raw[:-1] if z else raw
            a = reg.get(int(m.group(2)), SENT)
            if a is SENT: return ('UNDEF', trace)
            if z:
                av = 0 if a is None else (a if isinstance(a, int) else 1)
                ok = {'ne': av != 0, 'eq': av == 0, 'lt': av < 0, 'ge': av >= 0, 'gt': av > 0, 'le': av <= 0}[op]
            else:
                b = reg.get(int(m.group(3)), SENT)
                if b is SENT: return ('UNDEF', trace)
                ok = {'ne': a != b, 'eq': a == b, 'ge': a >= b, 'lt': a < b, 'le': a <= b, 'gt': a > b}[op]
            pc = jmp(m.group(4)) if ok else pc + 1
            continue
        m = re.match(r'^goto\s+:(.+)$', s)
        if m: pc = jmp(m.group(1)); continue
        m = re.match(r'^return(?:\s+v(\d+))?$', s)
        if m:
            if m.group(1) is not None: return ('ret:%s' % reg.get(int(m.group(1))), trace)
            pc += 1; continue
        pc += 1
    return ('none', trace)

def gate():
    f = []; d = rd(DLG); m = rd(MIS)
    dl = body(d, '.method public static airDrawAsPlane(Ljava/lang/String;Ljava/lang/Object;)Z')
    cases = [
        (dict(key=None, division={'lArmyRegiment': [{'uID': 7}]}), 'ret:0', [], '无 key ⇒ 不画'),
        (dict(key='abc', division={'lArmyRegiment': [{'uID': 7}]}), 'ret:0', [], '非 airhq ⇒ 不画'),
        (dict(key='airhq_1', division={'lArmyRegiment': [{'uID': 7}]}), 'ret:1', [], '★真空军师(编制有飞机) ⇒ 画'),
        (dict(key='airhq_1', division={'lArmyRegiment': [{'uID': 1}, {'uID': 9}]}), 'ret:1', [], '★混编(含飞机) ⇒ 画'),
        (dict(key='airhq_1', division={'lArmyRegiment': [{'uID': 1}, {'uID': 0}]}), 'ret:0', ['strip'], '★假身份(纯陆军) ⇒ 摘 key'),
        (dict(key='airhq_1', division={'lArmyRegiment': []}), 'ret:0', ['strip'], '编制空 ⇒ 摘 key'),
        (dict(key='airhq_1', division={'lArmyRegiment': None}), 'ret:0', ['strip'], '编制 null ⇒ 摘 key'),
        (dict(key='airhq_', division={'lArmyRegiment': [{'uID': 10}]}), 'ret:1', [], '前缀即命中 ⇒ 画'),
    ]
    ok = 0
    for ctx, want, wtr, name in cases:
        got, tr = interp_air(dl, ctx)
        if got == want and tr == wtr: ok += 1
        else: f.append('119-1 “%s” got=%s/%s want=%s/%s' % (name, got, tr, want, wtr))
    sens = 0
    for old, new in (('if-nez v6, :ad_yes', 'if-eqz v6, :ad_yes'),
                     ('if-ge v3, v2, :ad_strip', 'if-lt v3, v2, :ad_strip'),
                     ('if-eqz v1, :ad_strip', 'if-nez v1, :ad_strip')):
        txt = '\n'.join(dl)
        if old not in txt: f.append('119-2 找不到待翻转 %s' % old); continue
        mut = txt.replace(old, new, 1).splitlines()
        diff = any(interp_air(dl, c[0]) != interp_air(mut, c[0]) for c in cases)
        if diff: sens += 1
        else: f.append('119-3 翻转 %s 后结果不变' % old)
    # 反向修复块存在
    if 'airhqKey:Ljava/lang/String;' not in m: f.append('119-4 缺反向修复（airhqKey 恢复）')
    print('== 门禁 119 ==  编制判据 %d/8  反转敏感性 %d/3' % (ok, sens))
    if ok < 8: f.append('119 编制判据 %d/8' % ok)
    if sens < 3: f.append('119 反转敏感性 %d/3' % sens)
    if f:
        print(' X 不通过:')
        for x in f: print('  -', x)
        return False
    print(' OK 全过')
    return True

if __name__ == '__main__':
    if sys.argv[1] == 'patch': patch()
    else: sys.exit(0 if gate() else 1)